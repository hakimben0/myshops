<?php
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\LikeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = 'My preferred Shops';
$this->params['breadcrumbs'][] = $this->title;
?>


<div class="container">

    <h1 class="my-4"><?= $this->title ?></h1>

    <div class="row">
        <?php
            foreach ($shops as $key => $shop){
        ?>
        <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Shop name</a>
                    </h4>
                    <p class="card-text">Description</p>
                    <?= Html::a('<button onclick="load_params();" class="btn btn-success">'.Yii::t('app', 'Simuler').'</button>') ?>
                    <?= Html::a('<button onclick="load_params();" class="btn btn-success">'.Yii::t('app', 'Simuler').'</button>') ?>
                </div>
            </div>
        </div>
        <?php
            }
        ?>
    </div>

</div>