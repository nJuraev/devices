<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.02.2016
 * Time: 17:01
 */
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2>Тип подключения</h2>
<?= Html::button('Добавить', ['value' => Url::to(['spr-connections-type/create']), 'title' => 'Добавление типа подкючения', 'class' => 'showModalButton btn btn-primary']); ?><br>
<div class="col-lg-5">
<?= GridView::widget([
    'dataProvider'=>$dataProvider,
    'filterModel'=>$searchModel,
    'columns'=>[
        ['class'=> 'yii\grid\SerialColumn'],
        'Connection',
        'connKind.Kind',
        [
            'class'=>'yii\grid\ActionColumn',
            'header'=>'Действие',
            'headerOptions'=>['width'=>80],
            'template'=>'{update}{delete}{link}'
        ]
    ]
]);?>
</div>
