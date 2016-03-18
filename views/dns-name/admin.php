<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.03.2016
 * Time: 9:04
 */
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2>DNS</h2>
<?= Html::button('Добавить', ['class'=>'btn btn-primary showModalButton','title'=>'Добавление DNS имени','value'=>Url::to(['dns-name/create'])]);?><br>
<div class="col-xs-6">
<?= GridView::widget([
    'dataProvider'=>$dataProvider,
    'filterModel'=>$searchModel,
    'columns'=>[
        ['class'=>'yii\grid\SerialColumn'],
        'DnsName',
        'IpAdress',
        [
            'attribute'=>'Status',
            'value'=>'status.StatusName',
            'filter'=>ArrayHelper::map($status,'id','StatusName'),
        ],
        [
            'class' => 'yii\grid\ActionColumn',
            'header'=>'Действия',
            'headerOptions' => ['width' => '80'],
            'template' => '{update} {delete}{link}',
        ]
    ]
]);?>

</div>