<?php

namespace app\models;

/**
 *
 */
class PaymentTypeSelector
{
    /**
     * @param string $productType
     * @param float  $amount
     * @param string $lang
     * @param string $countryCode
     * @param string $userOs
     */
    public function __construct(
        public string $productType,
        public float  $amount,
        public string $lang,
        public string $countryCode,
        public string $userOs
    )
    {
    }

    /**
     * @return PaymentButton[]
     * @throws \yii\db\Exception
     */
    public function getButtons(): array
    {
        $buttons = [];

        $result = $this->search();
        foreach ($result as $button) {
            $buttons[] = new PaymentButton(...$button);
        }

        return $buttons;
    }

    /**
     * @return array
     * @throws \yii\db\Exception
     */
    private function search(): array
    {
        $country = Country::find()->where(['code' => $this->countryCode])->cache()->one();
        $language = Language::find()->where(['code' => $this->lang])->cache()->one();
        $productType = ProductType::find()->where(['code' => $this->productType])->cache()->one();
        $userOs = UserOs::find()->where(['code' => $this->userOs])->cache()->one();

        $sql = "
           SELECT
             po.name,
             po.commission,
             IFNULL(pi.imageUrl, po.imageUrl) AS imageUrl,
             po.payUrl
           FROM (
               SELECT
                 pt.name,
                 po.commission,
                 po.imageUrl,
                 po.payUrl,
                 
                 pt.priority,
                 po.paymentId,
                 p.paymentTypeId,
                 SUM(IF(perm.isAllow, 1, 0)) AS countAllow,
                 COUNT(perm.paymentId) AS `count`
               FROM PaymentOption AS po 
               JOIN Payment AS p ON p.id = po.paymentId
               JOIN PaymentSystem AS ps ON ps.id = p.paymentSystemId
               JOIN PaymentType AS pt ON pt.id = p.paymentTypeId
               # for filtre by allow country
               LEFT JOIN PaymentPermission AS perm ON perm.paymentId = po.paymentId 
               WHERE p.isActive = 1 AND po.isActive = 1 AND ps.isActive = 1 AND pt.isActive = 1
                 AND po.productTypeId = :productTypeId
                 AND po.languageId = :languageId
                 AND po.userOsId = :userOsId
                 AND ROUND(:amount * 100, 0) >= ROUND(IFNULL(po.amountMin, 0) * 100, 0)  
               GROUP BY p.id
           ) AS po
           LEFT JOIN PaymentImage AS pi ON pi.paymentId = po.paymentId AND pi.countryId = :countryId
           # for filtre by allow country
           LEFT JOIN PaymentPermission AS perm
             ON perm.paymentId = po.paymentId
            AND perm.countryId = :countryId
            AND perm.isAllow = 1
           LEFT JOIN PaymentPermission AS permD
             ON permD.paymentId = po.paymentId
            AND permD.countryId = :countryId
            AND permD.isAllow = 0
           # for sort by payment of country
           LEFT JOIN PaymentPriority AS pp ON pp.paymentTypeId = po.paymentTypeId AND pp.countryId = :countryId

           WHERE po.`count` = 0
              OR  (po.countAllow AND NOT ISNULL(perm.paymentId) AND ISNULL(permD.paymentId))
              OR  (po.countAllow = 0 AND ISNULL(perm.paymentId) AND ISNULL(permD.paymentId))
           ORDER BY -pp.priority DESC, po.priority, po.commission
        ";

        $result = \Yii::$app->db->createCommand($sql, [
            ':productTypeId' => $productType->id,
            ':amount'        => $this->amount,
            ':languageId'    => $language->id,
            ':countryId'     => $country->id,
            ':userOsId'      => $userOs->id
        ])->queryAll();

        return $result;
    }
}