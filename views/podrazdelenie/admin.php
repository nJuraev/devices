<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.02.2016
 * Time: 17:04
 *
 */
use yii\helpers\Html;

?>
<div class="row">
    <div class="col-lg-12">

        <h2>Подразделения</h2>
        <?= Html::button('Добавить',['class'=>'btn btn-primary showModalButton','title'=>'Добавление DNS имени','value'=>Url::to(['dns-name/create'])]); ?>
    </div>
</div>

