<?php
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\LikeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = 'Nearby Shops';
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
                        <?= Html::a('<button onclick="like();" class="btn btn-success">Like</button>') ?>
                        <?= Html::a('<button onclick="dislike();" class="btn btn-success">Dislike</button>') ?>
                    </div>
                </div>
            </div>
            <?php
        }
        ?>
    </div>

</div>

<script>

    function like(){
        $.ajax({
            url: '<?php echo $_SERVER['REQUEST_URI'] . '&racc=' ?>' + raccord,
            type: 'GET',
            success: function(data, statut){
                var obj = JSON.parse(data);
                if(obj.res == "true") {
                    if(obj.external != ''){
                        extern.each(function() {
                            $(this).attr('value', obj.external);
                        });
                        label.each(function() {
                            $(this).html(obj.label);
                        });
                    }
                }
                return false;
            }
        }).fail(function() {
            alert('Error');
            return false;
        });
    }

    function dislike(){
        $.ajax({
            url: '<?php echo $_SERVER['REQUEST_URI'] . '&racc=' ?>' + raccord,
            type: 'GET',
            success: function(data, statut){
                var obj = JSON.parse(data);
                if(obj.res == "true") {
                    if(obj.external != ''){
                        extern.each(function() {
                            $(this).attr('value', obj.external);
                        });
                        label.each(function() {
                            $(this).html(obj.label);
                        });
                    }
                }
                return false;
            }
        }).fail(function() {
            alert('Error');
            return false;
        });
    }

</script>