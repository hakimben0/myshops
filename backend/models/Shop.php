<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "shop".
 *
 * @property integer $shop_id
 * @property string $shop_oid
 * @property string $shop_picture
 * @property string $shop_name
 * @property string $shop_email
 * @property string $shop_city
 * @property string $shop_location_type
 * @property string $shop_location_coordinates
 */
class Shop extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'shop';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['shop_oid', 'shop_picture', 'shop_name', 'shop_email', 'shop_city', 'shop_location_type', 'shop_location_coordinates'], 'required'],
            [['shop_oid', 'shop_name', 'shop_email', 'shop_location_type', 'shop_location_coordinates'], 'string', 'max' => 100],
            [['shop_picture'], 'string', 'max' => 250],
            [['shop_city'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'shop_id' => 'Shop ID',
            'shop_oid' => 'Shop Oid',
            'shop_picture' => 'Shop Picture',
            'shop_name' => 'Shop Name',
            'shop_email' => 'Shop Email',
            'shop_city' => 'Shop City',
            'shop_location_type' => 'Shop Location Type',
            'shop_location_coordinates' => 'Shop Location Coordinates',
        ];
    }
}
