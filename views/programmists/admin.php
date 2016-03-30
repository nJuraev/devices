<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.02.2016
 * Time: 8:43
 */
use fedemotta\datatables\DataTables;
use yii\helpers\Html;
use yii\helpers\Url;

?>
<h2>Программисты</h2>
<?= Html::button('Добавить', ['value' => Url::to(['programmists/create']), 'title' => 'Добавление программиста', 'class' => 'showModalButton btn btn-primary']); ?><br>
<div class="col-xs-8">
<?php

echo DataTables::widget([
    'dataProvider'=>$dataProvider,
    'filterModel'=>$searchModel,
    'clientOptions' => [
        "lengthMenu"=> [[ 25, 50,-1], [ 25, 50, "All"] ],
        "info"=>false,
        "responsive"=>[
            'details'=>true
        ],

    ],
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
