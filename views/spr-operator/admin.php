<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 19.02.2016
 * Time: 10:12
 */
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

?><head><title>Операторы</title></head>
<h2>Сотовые операторы</h2>

<div class="col-xs-4">
    <?= Html::button('Добавить', ['value' => Url::to(['spr-operator/create']), 'title' => 'Добавление сотового оператора', 'class' => 'showModalButton btn btn-primary']); ?>
<?php
    echo GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
           ['class'=> 'yii\grid\SerialColumn'],
            'CodeOperator',
            'Nazvanie',
            [
                'class' => 'yii\grid\ActionColumn',
                'header'=>'Действия',
                'headerOptions' => ['width' => '80'],
                'template' => '{update} {delete}{link}',
            ],
        ]
    ])
?>
</div>
