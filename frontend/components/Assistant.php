<?php
namespace frontend\components;
use Yii;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
class Assistant
{
    public function getNearbyShops(){
        $user = Yii::$app->user->id;
        $ip = Yii::$app->getRequest()->getUserIP();
        $geo = Yii::$app->geoip->ip("41.249.12.1");
        $lat = $geo->location->lat;
        $lng = $geo->location->lng;
//        $city = $geo->city;
//        $cntry = $geo->country;
        if($lat != '' && $lng != ''){
            $connection = Yii::$app->getDb();
            $result = $connection->createCommand('	
                        SELECT 
                                S.shop_id as id,
                                S.shop_name AS name,
                                S.shop_picture AS pic,
                                S.shop_email AS email,
                                SQRT(
                                POW(69.1 * (SUBSTRING_INDEX(S.shop_location_coordinates, ",", -1) - '.$lat.'), 2) +
                                POW(69.1 * ('.$lng.' - SUBSTRING_INDEX(S.shop_location_coordinates, ",", 1)) * COS(SUBSTRING_INDEX(S.shop_location_coordinates, ",", -1) / 57.3), 2)) AS distance
                            FROM shop S 
                            WHERE S.shop_id NOT IN (
                                SELECT L.shop_id FROM likes L WHERE L.user_id = '.$user.' AND L.status = 1
                                    UNION 
                                SELECT D.shop_id FROM dislikes D WHERE D.user_id = '.$user.' AND D.date < "'.date("Y-m-d H:i:s", strtotime("-2 hours")).'"
                            )
                            HAVING distance < 3 
                            ORDER BY distance
                              ')->queryAll();
        }
        return isset($result)?$result:array();
    }
    public function getPreferredShops(){
        $user = Yii::$app->user->id;
        $connection = Yii::$app->getDb();
        $result = $connection->createCommand('
                              SELECT 
                                S.shop_id as id,
                                S.shop_name AS name,
                                S.shop_picture AS pic,
                                S.shop_email AS email
                                FROM shop S
                                INNER JOIN likes L ON L.shop_id = S.shop_id
                                WHERE L.user_id = '.$user.' 
                                AND L.status = 1
                                ORDER BY L.date DESC LIMIT 0, 20
                              ')->queryAll();
        return isset($result)?$result:array();
    }
}
?>