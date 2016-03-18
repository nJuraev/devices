<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 04.03.2016
 * Time: 11:43
 */
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2>Провайдеры</h2>
<?= Html::button('Добавить',['class'=>'btn btn-primary showModalButton','title'=>'Добавление провайдера', 'value'=> Url::to(['spr-providers/create'])]);?><br>
<div class="col-lg-3">
<?= GridView::widget([
   'dataProvider'=>$dataProvider,
    'filterModel'=>$searchModel,
    'columns'=>[
        ['class'=>'yii\grid\SerialColumn']  ,
        'Provider',
        [
            'class'=>'yii\grid\ActionColumn',
            'header'=>'Действие',
            'headerOptions'=>['width'=>'80'],
            'template'=>'{update}{delete}{link}'
        ]
    ]
]); ?>
</div>
