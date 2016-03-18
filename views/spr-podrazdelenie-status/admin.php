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
<h2>Статус Подразделения</h2>
<?= Html::button('Добавить', ['value' => Url::to(['spr-podrazdelenie-status/create']), 'title' => 'Добавление статуса подразделения', 'class' => 'showModalButton btn btn-primary']); ?><br>
<div class="col-xs-2">
    <?php

    echo GridView::widget([
        'dataProvider'=>$dataProvider,
        'filterModel'=>$searchModel,
        'columns'=>[
            ['class'=> 'yii\grid\SerialColumn'],

            'PodrazdelenieStatus',

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
