<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Shop */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="shop-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'shop_oid')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'shop_picture')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'shop_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'shop_email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'shop_city')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'shop_location_type')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'shop_location_coordinates')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
