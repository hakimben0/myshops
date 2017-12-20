<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
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

<!--<div class="wrap">-->
<!--    --><?php
//    NavBar::begin([
//        'brandLabel' => Yii::$app->name,
//        'brandUrl' => Yii::$app->homeUrl,
//        'options' => [
//            'class' => 'navbar-inverse navbar-fixed-top',
//        ],
//    ]);
//    if (Yii::$app->user->isGuest) {
//        $menuItems[] = ['label' => 'Signup', 'url' => ['/site/signup']];
//        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
//    } else {
//        $menuItems = [
//            ['label' => 'Nearby shops', 'url' => ['/site/index']],
//            ['label' => 'My prefered shops', 'url' => ['/site/prefered']],
//        ];
//        $menuItems[] = '<li>'
//            . Html::beginForm(['/site/logout'], 'post')
//            . Html::submitButton(
//                'Logout (' . Yii::$app->user->identity->username . ')',
//                ['class' => 'btn btn-link logout']
//            )
//            . Html::endForm()
//            . '</li>';
//    }
//    echo Nav::widget([
//        'options' => ['class' => 'navbar-nav navbar-right'],
//        'items' => $menuItems,
//    ]);
//    NavBar::end();
//    ?>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">My Shops</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <?php
                    if (Yii::$app->user->isGuest) {
                        echo '<li class="nav-item">
                                  <a class="nav-link" href="/site/signup">Signup</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="/site/login">Login</a>
                              </li>';
                    } else {
                        echo '<li class="nav-item active">
                                  <a class="nav-link" href="#">Nearby Shops
                                      <span class="sr-only"></span>
                                  </a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="#">My preferred Shops</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="/site/logout">Logout ('. Yii::$app->user->identity->username .'</a>
                              </li>';
                    }
                    ?>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
<!--</div>-->

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
