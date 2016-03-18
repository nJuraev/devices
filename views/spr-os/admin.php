<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 8:31
 */
use yii\bootstrap\Html;
use yii\grid\GridView;
use yii\helpers\Url;

?>
<h2>Тип ОС</h2>
<?= Html::button('Добавить',['class'=>'btn btn-primary showModalButton','title'=>'Добавление типа ОС','value'=>Url::to(['spr-os/create'])]);?><br>
<div class="col-xs-2">
<?= GridView::widget([
    'dataProvider'=>$dataProvider,
    'filterModel'=>$searchModel,
    'columns'=>[
        ['class'=>'yii\grid\SerialColumn'],
        'Os',
        [
            'class' => 'yii\grid\ActionColumn',
            'header'=>'Действия',
            'headerOptions' => ['width' => '80'],
            'template' => '{update} {delete}{link}',
        ]
    ]
]);
?>
</div>