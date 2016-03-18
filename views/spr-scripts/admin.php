<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 9:44
 */
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2>Скрипты</h2>
<?= Html::button('Добавить',['class'=>'btn btn-primary showModalButton','title'=>'Добавление скрипта','value'=>Url::to(['spr-scripts/create'])]) ?><br>
<div class="col-xs-4">
    <?= GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
            ['class'=>'yii\grid\SerialColumn'],
            'ScriptIdentification',
            'Description',
            [
                'attribute'=>'DeviceType',
                'value'=>'sprDevices.DeviceType',
                'filter'=>ArrayHelper::map($deviceType,'id','DeviceType')
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'header'=>'Действия',
                'headerOptions' => ['width' => '80'],
                'template' => '{update} {delete}{link}',
            ]
        ]
    ]); ?>
</div>
