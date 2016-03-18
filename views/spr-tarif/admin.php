<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.02.2016
 * Time: 8:43
 */
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2>Тарифы</h2>
<?= Html::button('Добавить', ['value' => Url::to(['spr-tarif/create']), 'title' => 'Добавление тарифа', 'class' => 'showModalButton btn btn-primary']); ?><br>
<div class="col-xs-5">
    <?php

    echo GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
            ['class'=> 'yii\grid\SerialColumn'],
            'Tarif',
            [
                'attribute'=>'Provider',
                'value'=>'provider.Provider',
                'filter'=>\yii\helpers\ArrayHelper::map($provider,'id','Provider')
            ],
           [
                'class' => 'yii\grid\ActionColumn',
                'header'=>'Действия',
                'headerOptions' => ['width' => '80'],
                'template' => '{update} {delete}{link}',
            ],
        ]
    ])
    ?>
</div>
