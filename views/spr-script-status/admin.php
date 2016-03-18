<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 07.03.2016
 * Time: 11:49
 */
use yii\bootstrap\Html;
use yii\grid\GridView;
use yii\helpers\Url;

?>
<h2>Статус</h2>
<?= Html::button('Добавить' , ['class'=>'btn btn-primary showModalButton', 'value'=>Url::to(['spr-script-status/create']),'title'=> 'Cтатус']);?><br>
<div class="col-xs-3">
    <?= GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
            ['class'=>'yii\grid\SerialColumn'],
            'ScriptStatus',
            'StatusId',
            [
                'class' => 'yii\grid\ActionColumn',
                'header'=>'Действия',
                'headerOptions' => ['width' => '80'],
                'template' => '{update} {delete}{link}',
            ]
        ]
    ]);?>
</div>
