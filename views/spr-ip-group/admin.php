<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 09.03.2016
 * Time: 15:43
 */
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;

$sData=ArrayHelper::map($status,'id','StatusName');
?>
<h2>Ip Groups</h2>
<?= Html::button('Добавить', ['class'=>'btn btn-primary showModalButton','title'=>' Добавление IP группы','value'=>Url::to(['spr-ip-group/create'])]);?><br>
<div class="col-xs-5">
    <?= GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
            ['class'=>'yii\grid\SerialColumn'],
            'Name',
            'Description',
            [
                'attribute'=>'Status',
                'value'=>'status.StatusName',
                'filter'=>$sData
            ]
        ]
    ]) ;?>
</div>

