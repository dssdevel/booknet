<?php

namespace app\controllers;

use app\models\PaymentTypeSelector;
use Yii;
use yii\db\Exception;
use yii\web\Controller;
use yii\web\Response;

class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return array
     * @throws Exception
     */
    public function actionIndex($productType, $amount, $lang, $countryCode, $userOs)
    {
        /*$model = new FormModel();
        if ($model->load(Yii::$app->request->get()) && $model->validate()) {
           init $productType, $amount, $lang, $countryCode, $userOs
        } else {
           throw new /Exception();
        }*/

        $paymentTypeSelector = new PaymentTypeSelector($productType, $amount, $lang, $countryCode, $userOs);
        $paymentButtons = $paymentTypeSelector->getButtons();

        $result = [];
        foreach ($paymentButtons as $btn) {
            $result[] = [
                $btn->getName(),
                $btn->getCommission(),
                $btn->getImageUrl(),
                $btn->getPayUrl()
            ];
        }

        Yii::$app->response->format = Response::FORMAT_JSON;
        return $result;
//        return $this->render('index');
    }
}
