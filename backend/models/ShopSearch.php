<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Shop;

/**
 * ShopSearch represents the model behind the search form about `backend\models\Shop`.
 */
class ShopSearch extends Shop
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['shop_id'], 'integer'],
            [['shop_oid', 'shop_picture', 'shop_name', 'shop_email', 'shop_city', 'shop_location_type', 'shop_location_coordinates'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Shop::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'shop_id' => $this->shop_id,
        ]);

        $query->andFilterWhere(['like', 'shop_oid', $this->shop_oid])
            ->andFilterWhere(['like', 'shop_picture', $this->shop_picture])
            ->andFilterWhere(['like', 'shop_name', $this->shop_name])
            ->andFilterWhere(['like', 'shop_email', $this->shop_email])
            ->andFilterWhere(['like', 'shop_city', $this->shop_city])
            ->andFilterWhere(['like', 'shop_location_type', $this->shop_location_type])
            ->andFilterWhere(['like', 'shop_location_coordinates', $this->shop_location_coordinates]);

        return $dataProvider;
    }
}
