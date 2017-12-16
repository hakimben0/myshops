<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\ShopSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="shop-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'shop_id') ?>

    <?= $form->field($model, 'shop_oid') ?>

    <?= $form->field($model, 'shop_picture') ?>

    <?= $form->field($model, 'shop_name') ?>

    <?= $form->field($model, 'shop_email') ?>

    <?php // echo $form->field($model, 'shop_city') ?>

    <?php // echo $form->field($model, 'shop_location_type') ?>

    <?php // echo $form->field($model, 'shop_location_coordinates') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
