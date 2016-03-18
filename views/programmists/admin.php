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
<h2>Программисты</h2>
<?= Html::button('Добавить', ['value' => Url::to(['programmists/create']), 'title' => 'Добавление программиста', 'class' => 'showModalButton btn btn-primary']); ?><br>
<div class="col-xs-8">
<?php

echo GridView::widget([
    'dataProvider'=>$dataProvider,
    'filterModel'=>$searchModel,
    'columns'=>[
        ['class'=> 'yii\grid\SerialColumn'],
        'Surname',
        'Name',
        'Patronymic',
        'Email',
        [
            'attribute'=>'Tel',
            'value'=>function($data){
                return $data->operator->CodeOperator.$data->Tel;
            }],

        'Login',
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
