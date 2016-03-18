<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 15:42
 */
use yii\bootstrap\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;

?>
<h2>Access List</h2>
<?= Html::button('Добавить',['class'=>'btn btn-primary showModalButton','title'=>'Добавление Access List-a', 'value'=>Url::to(['access-list/create'])]);?><br>
<div class="col-xs-6">
<?= GridView::widget([
    'dataProvider'=>$dataProvider,
    'filterModel'=>$searchModel,
    'columns'=>[
        ['class'=>'yii\grid\SerialColumn'],
        'IP',
        'Description',
        [
            'attribute'=>'Group',
            'value'=>'ipGroup.Name',
            'filter'=>ArrayHelper::map($group,'id','Name'),
        ],
        [
            'attribute'=>'Status',
            'value'=>'status.StatusName',
            'filter'=>ArrayHelper::map($status,'id','StatusName'),
        ]
    ]
]) ?>
</div>
