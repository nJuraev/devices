<?php
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;

$dData=ArrayHelper::map($devicesType,'id','DeviceType');?>
<h2>Модель устройств</h2>
<?= Html::button('Добавить',['class'=>'btn btn-primary showModalButton','title'=>'Добавление модели устройства','value'=>Url::to(['spr-model-device/create'])]);?><br>
<div class="col-xs-4">
    <?= GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
            ['class'=>'yii\grid\SerialColumn'],
            'Model',
            [
                'attribute'=>'Device',
                'value'=>'sprDevices.DeviceType',
                    'filter'=>$dData

            ],
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