<?php

namespace frontend\models;

use Yii;
use backend\models\User;
use backend\models\Shop;

/**
 * This is the model class for table "like".
 *
 * @property integer $user_id
 * @property integer $shop_id
 * @property string $date_add
 * @property integer $status
 *
 * @property User $user
 * @property Shop $shop
 */
class Like extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'like';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'shop_id', 'status'], 'required'],
            [['user_id', 'shop_id', 'status'], 'integer'],
            [['date_add'], 'safe'],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
            [['shop_id'], 'exist', 'skipOnError' => true, 'targetClass' => Shop::className(), 'targetAttribute' => ['shop_id' => 'shop_id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'user_id' => 'User ID',
            'shop_id' => 'Shop ID',
            'date_add' => 'Date Add',
            'status' => 'Status',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getShop()
    {
        return $this->hasOne(Shop::className(), ['shop_id' => 'shop_id']);
    }
}
