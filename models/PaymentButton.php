<?php

namespace app\models;

/**
 *
 */
class PaymentButton
{
    public function __construct(
        public string  $name,
        public string  $commission,
        public ?string $imageUrl,
        public string  $payUrl
    )
    {
    }

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @return string
     */
    public function getCommission(): string
    {
        return $this->commission;
    }

    /**
     * @return string|null
     */
    public function getImageUrl(): ?string
    {
        return $this->imageUrl;
    }

    /**
     * @return string
     */
    public function getPayUrl(): string
    {
        return $this->payUrl;
    }
}