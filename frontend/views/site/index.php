<?php
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\LikeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = 'Nearby Shops';
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
                        <?= Html::a('<button onclick="like('.$shop['id'].');" class="btn btn-success">Like</button>') ?>
                        <?= Html::a('<button onclick="dislike('.$shop['id'].');" class="btn btn-danger">Dislike</button>') ?>
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

    function like(id){
        $.ajax({
            url: '<?php echo $_SERVER['REQUEST_URI'] . '/action/like?id=' ?>' + id,
            type: 'GET',
            success: function(data, statut){
                if(data == "true") {

                }
                return false;
            }
        }).fail(function() {
            alert('Error');
            return false;
        });
    }

    function dislike(id){
        $.ajax({
            url: '<?php echo $_SERVER['REQUEST_URI'] . '/action/dislike?id=' ?>' + id,
            type: 'GET',
            success: function(data, statut){
                if(data == "true") {

                }
                return false;
            }
        }).fail(function() {
            alert('Error');
            return false;
        });
    }

</script>