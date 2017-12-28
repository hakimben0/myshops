<?php

namespace frontend\models;

use Yii;
use backend\models\User;
use backend\models\Shop;

/**
 * This is the model class for table "dislikes".
 *
 * @property integer $user_id
 * @property integer $shop_id
 * @property string $date
 * @property integer $nbr
 *
 * @property Shop $shop
 * @property User $user
 */
class Dislike extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dislikes';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'shop_id'], 'required'],
            [['user_id', 'shop_id', 'nbr'], 'integer'],
            [['date'], 'safe'],
            [['shop_id'], 'exist', 'skipOnError' => true, 'targetClass' => Shop::className(), 'targetAttribute' => ['shop_id' => 'shop_id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'user_id' => 'User',
            'shop_id' => 'Shop',
            'date' => 'Date',
            'nbr' => 'Nbr',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getShop()
    {
        return $this->hasOne(Shop::className(), ['shop_id' => 'shop_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
