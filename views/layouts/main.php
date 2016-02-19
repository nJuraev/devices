<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <div class="header">
        <h2 class="sitename">DEVICES</h2>
    </div>
    <?php
    NavBar::begin([
        'options' => [
            'class' => 'navbar-inverse nav-menu',
        ],
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-left'],
        'items' => [
            ['label' => 'Главная', 'url' => ['/devices/index'],
            'items'=>[
                [ 'label'=>'Все подразденления','url'=>['podrazdelenie/admin']],
                ['label'=>'Устройства','url'=>['devices/admin']],
                ['label'=>'IP адреса','url'=>['ipconfig/admin']],
                ['label'=>'Номера сим-карт','url'=>['ipconfig/simcard']],
                ['label'=>'Инциденты','url'=>['providerproblem/admin']],
                ['label'=>'Отправка команд','url'=>['router-script/admin']],
                ['label'=>'Отправленные команды','url'=>['routerscript/admin']],
            ]],

            ['label' => 'Справочники',
            'items'=>[
                ['label'=>'Программисты','url'=>['programmists/admin']],
                ['label'=>'Тип подключения','url'=>['spr-connection-type/admin']],
                ['label'=>'Интернет-провайдеры','url'=>['spr-providers/admin']],
                ['label'=>'Тип подразделения','url'=>['spr-podrazdelenie-type/admin']],
                ['label'=>'Статус','url'=>['sprstatus/admin']],
                ['label'=>'Статус роутера','url'=>['sprrouterstatus/admin']],
                ['label'=>'Статус подразделения','url'=>['spr-podrazdelenie-status/admin']],
                ['label'=>'Статус скрипты','url'=>['spr-script-status/admin']],
                ['label'=>'Сотовые операторы','url'=>['spr-operator/admin']],
                ['label'=>'Модель устройства','url'=>['spr-model-device/admin']],
                ['label'=>'IP Group','url'=>['spripgroup/admin']],
                ['label'=>'Тип устройства','url'=>['spr-devices/admin']],
                ['label'=>'Тип ОС','url'=>['spr-os/admin']],
                ['label'=>'Скрипты','url'=>['spr-scripts/admin']],
                ['label'=>'Ассess List','url'=>['access-list/admin']],
                ['label'=>'DNS','url'=>['dns/admin']],
                ['label'=>'Поставщики','url'=>['spr-purveyors/admin']],
                ['label'=>'Тарифы','url'=>['spr-tafif/admin']],
            ]],
            ['label' => 'Аналитика', 'url' => ['/site/contact'],
            'items'=>[
                    ['label'=>'Графики','url'=>['charts/charts']],
                    ['label'=>'Инциденты с провайдерами','url'=>['charts/providers']],
                    ['label'=>'Последние добавления','url'=>['charts/last']],
                    ['label'=>'Последние изменения','url'=>['charts/lastchange']],
            ]],
            ['label' => 'FTP',
                'items'=>[
                    ['label'=>'Manage Users','url' => ['/site/contact']]
                ]],
            Yii::$app->user->isGuest ?
                ['label' => 'Login', 'url' => ['/site/login']] :
                [
                    'label' => 'Выход (' . Yii::$app->user->identity->Login . ')',
                    'url' => ['/site/logout'],
                    'linkOptions' => ['data-method' => 'post']
                ],
        ],
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; My Company <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
