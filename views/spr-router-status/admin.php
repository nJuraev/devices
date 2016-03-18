<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 07.03.2016
 * Time: 13:21
 */
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2>Cтатус Роутера</h2>
<?= Html::button('Добавить',['class'=>'btn btn-primary showModalButton','value'=>Url::to(['spr-router-status/create']),'title'=>'Добавление статуса роутера']);?><br>
<div class="col-xs-2">
    <?= GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
            ['class'=>'yii\grid\SerialColumn'],
            'RouterStatus',
            [
                'class' => 'yii\grid\ActionColumn',
                'header'=>'Действия',
                'headerOptions' => ['width' => '80'],
                'template' => '{update} {delete}{link}',
            ]
        ]
    ]);?>
</div>
