<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 04.03.2016
 * Time: 16:31
 */
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2> Типы подразделений</h2>
<?= Html::button('Добавить',['class'=>'btn btn-primary showModalButton','value'=>Url::to(['spr-podrazdelenie-type/create']), 'title'=>'Добавление типа подразделения']);?><br>
<div class="col-xs-2">
<?= GridView::widget([
    'dataProvider'=>$dataProvider,
    'filterModel'=>$searchModel,
    'columns'=>[
        ['class'=>'yii\grid\SerialColumn'],
        'Name',
        [
            'class' => 'yii\grid\ActionColumn',
            'header'=>'Действия',
            'headerOptions' => ['width' => '80'],
            'template' => '{update} {delete}{link}',
        ]
    ]
]);?>
</div>