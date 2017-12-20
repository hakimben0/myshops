<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Like */

$this->title = 'Update Like: ' . $model->user_id;
$this->params['breadcrumbs'][] = ['label' => 'Likes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->user_id, 'url' => ['view', 'user_id' => $model->user_id, 'shop_id' => $model->shop_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="like-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
