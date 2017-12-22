<?php
namespace frontend\components;

use Yii;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;

class ViewsAssistant
{

    public function getNearbyShops(){
        $user = Yii::$app->user->id;
//        $ip = Yii::$app->getRequest()->getUserIP();
        $geo = Yii::$app->geoip->ip();
        $lat = $geo->location->lat;
        $lng = $geo->location->lng;
        $city = $geo->city;
        $cntry = $geo->country;

        $connection = Yii::$app->getDb();
        $result = $connection->createCommand('
                              SELECT 
                                S.shop_id,
                                S.shop_name,
                                S.shop_address,
                                (
                                   6371 *
                                   acos(cos(radians('.$lat.')) * 
                                   cos(radians(SUBSTRING_INDEX(S.shop_location_coordinates, ",", 1))) * 
                                   cos(radians(SUBSTRING_INDEX(S.shop_location_coordinates, ",", -1) - 
                                   radians('.$lng.')) + 
                                   sin(radians('.$lat.')) * 
                                   sin(radians((S.shop_location_coordinates, ",", 1))))
                                ) AS distance 
                                FROM shop S
                                WHERE S.shop_id NOT IN (SELECT L.shop_id FROM like L WHERE L.user_id = '.$user.')
                                HAVING distance < 5 
                                ORDER BY distance LIMIT 0, 20
                              ')->queryAll();
        return isset($result)?$result:array();
    }

    public function getPreferredShops($user){
        $connection = Yii::$app->getDb();
        $result = $connection->createCommand('
                              SELECT 
                                S.shop_id,
                                S.shop_name,
                                S.shop_address,
                                L.date_add
                                FROM shop S
                                INNER JOIN like L ON L.shop_id = S.shop_id
                                WHERE L.user_id = '.$user.'
                                ORDER BY L.date_add DESC LIMIT 0, 20
                              ')->queryAll();
        return isset($result)?$result:array();
    }



}

?>