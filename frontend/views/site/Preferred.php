<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\LikeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'MyPreferred Shops';
$this->params['breadcrumbs'][] = $this->title;
?>

<h1 class="my-4"><?= $this->title ?></h1>

<div class="row">
    <?php
    if(count($shops) > 0){
        foreach ($shops as $key => $shop){
            ?>
            <div id="item-<?= $shop['id'] ?>" class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="<?= $shop['pic'] ?>" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#"><?= $shop['name'] ?></a>
                        </h4>
                        <p class="card-text"><?= $shop['email'] ?></p>
                        <?= Html::a('<button onclick="remove('.$shop['id'].');" class="btn btn-danger">Remove</button>') ?>
                    </div>
                </div>
            </div>
            <?php
        }
    } else {
        echo 'Nothing to show!';
    }
    ?>
</div>

<script>
    function remove(id){
        $.ajax({
            url: '<?php echo Yii::$app->urlManager->createUrl('/action').'/remove?id=' ?>' + id,
            type: 'GET',
            success: function(data, statut){
                var obj = JSON.parse(data);
                if(obj.done == "y") {
                    document.getElementById('item-'+id).style.display = "none";
                }
                return false;
            }
        }).fail(function() {
            alert('Error');
            return false;
        });
    }
</script>