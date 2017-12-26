<?php
namespace frontend\controllers;
use Yii;
use backend\models\Shop;
use backend\models\User;
use frontend\models\Like;
use frontend\models\LikeSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
/**
 * ShopController implements the CRUD actions for Shop model.
 */
class ActionController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [

                ],
            ],
        ];
    }

    public function actionLike($shop)
    {
        $res['done'] = 'n';
        $user = Yii::$app->user->id;
        $model = new Like();
        $model->user_id = $user;
        $model->shop_id = $shop;
        if ($model->save()) {
            $res['done'] = 'y';
        }
        echo json_encode($res);
    }

    public function actionDislike($shop)
    {
        $res['done'] = 'n';
        $user = Yii::$app->user->id;
        $model = Like::find()->where(['user_id'=>$user, 'shop_id'=>$shop]);
        if($model){
            $model->
            $res['done'] = 'y';
        }
        echo json_encode($res);
    }

    public function actionRemove($shop)
    {
        $res['done'] = 'n';
        $user = Yii::$app->user->id;
        $model = Like::find()->where(['user_id'=>$user, 'shop_id'=>$shop]);
        if($model){
            $model->
            $res['done'] = 'y';
        }
        echo json_encode($res);
    }

    protected function findModel($id)
    {
        if (($model = Like::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}