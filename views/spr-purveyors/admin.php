<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.03.2016
 * Time: 13:47
 */
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2> Поставщики</h2>
<?= Html::button('Добавить', ['value' => Url::to(['spr-purveyors/create']), 'title' => 'Добавление поставщика', 'class' => 'showModalButton btn btn-primary']); ?><br>
<div class="col-xs-8">
    <?php

    echo GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
            ['class'=> 'yii\grid\SerialColumn'],
            'Purveyor',
            'Name',
            'Surname',
            'Patronymic',
            [
                'attribute'=>'Tel',
                'value'=>function($data){
                    return $data->operator->CodeOperator.$data->Tel;
                }],

            'Site',
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
