<?php
namespace frontend\controllers;
use Yii;
use backend\models\Shop;
use backend\models\User;
use frontend\models\Like;
use frontend\models\Dislike;
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

    public function actionLike($id)
    {
        $res['done'] = 'n';
        $user = Yii::$app->user->id;
        $model = new Like();
        $model->user_id = $user;
        $model->shop_id = $id;
        $model->date = date("Y-m-d H:i:s");
        if ($model->save()) $res['done'] = 'y';
        echo json_encode($res);
    }

    public function actionDislike($id)
    {
        $res['done'] = 'n';
        $user = Yii::$app->user->id;
        $model = Dislike::find()->where(['user_id'=>$user, 'shop_id'=>$id])->one();
        if(!$model){
            $model = new Dislike();
            $model->user_id = $user;
            $model->shop_id = $id;
        }
        $model->date = date("Y-m-d H:i:s");
        $model->nbr ++;
        if($model->save()) $res['done'] = 'y';
        echo json_encode($res);
    }

    public function actionRemove($id)
    {
        $res['done'] = 'n';
        $user = Yii::$app->user->id;
        $model = Like::find()->where(['user_id' => $user, 'shop_id' => $id])->one();
        if ($model) {
            $model->status = 0;
            $model->date = date("Y-m-d H:i:s");
            if ($model->save()) $res['done'] = 'y';
        }
        echo json_encode($res);
    }
}