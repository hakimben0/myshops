<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\ShopAsset;
use common\widgets\Alert;

ShopAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">My Shops</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <?php if (Yii::$app->user->isGuest) { ?>
                        <li class="nav-item">
                            <?= Html::a('Signup', ['site/signup'], ['class' => 'nav-link '. (($this->context->action->id == "signup") ? 'active' : '')]) ?>
                        </li>
                        <li class="nav-item">
                            <?= Html::a('Login', ['site/login'], ['class' => 'nav-link '. (($this->context->action->id == "login") ? 'active' : '')]) ?>
                        </li>
                    <?php } else { ?>
                        <li class="nav-item">
                            <?= Html::a('Nearby Shops', ['site/index'], ['class' => 'nav-link '. (($this->context->action->id == "index") ? 'active' : '')]) ?>
                        </li>
                        <li class="nav-item">
                            <?= Html::a('My preferred Shops', ['site/preferred'], ['class' => 'nav-link '. (($this->context->action->id == "preferred") ? 'active' : '')]) ?>
                        </li>
                        <li class="nav-item">
                            <?= Html::a('Logout ('. Yii::$app->user->identity->username .')', ['site/logout'], ['class' => 'nav-link']) ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
