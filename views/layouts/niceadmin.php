<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 28.03.2016
 * Time: 10:25
 */
use app\assets\AppAsset;
use app\assets\MyAsset;
use yii\bootstrap\Modal;
use yii\helpers\Html;
use yii\helpers\Url;

AppAsset::register($this);
MyAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon.png">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>

<body>
<?php $this->beginBody() ?>
<!-- container section start -->
<section id="container" class="">


    <header class="header dark-bg">
        <div class="toggle-nav">
            <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
        </div>

        <!--logo start-->
        <a href="index.html" class="logo"><span class="lite">Devices</span></a>
        <!--logo end-->

        <div class="nav search-row" id="top_menu">
            <!--  search form start -->
            <ul class="nav top-menu">
                <li>
                    <form class="navbar-form">
                        <input class="form-control" placeholder="Search" type="text">
                    </form>
                </li>
            </ul>
            <!--  search form end -->
        </div>

        <div class="top-nav notification-row">
            <!-- notificatoin dropdown start-->
            <ul class="nav pull-right top-menu">




                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                               <?= Html::img('@web/css/img/logo.png', ['alt' => 'My logo']) ?>
                            </span>
                        <span class="username"><?=  Yii::$app->user->identity->Login ; ?></span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top">
                            <a href="#"><i class="icon_profile"></i> Мой профиль</a>
                        </li>

                        <li>
                            <a href="<?= Url::to(['/site/login','data-method' => 'post']); ?>"><i class="icon_key_alt"></i> Выход </a>
                        </li>

                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
        </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
        <div id="sidebar"  class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_house_alt"></i>
                        <span>Главная</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?= Url::to(['podrazdelenie/admin']);?>">Все подразденления</a></li>
                        <li><a href="<?= Url::to(['devices/admin']);?>">Устройства</a></li>
                        <li><a href="<?= Url::to(['ipconfig/admin']);?>">IP адреса</a> </li>
                        <li><a href="<?= Url::to(['ipconfig/simcard']);?>">Номера сим-карт</a></li>
                        <li><a href="<?= Url::to(['providerproblem/admin']);?>">Инциденты</a></li>
                        <li><a href="<?= Url::to(['router-script/admin']);?>">Отправка команд</a></li>
                        <li><a href="<?= Url::to(['routerscript/admin']);?>">Отправленные команды</a></li>

                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_desktop"></i>
                        <span>Cправочники</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?= Url::to(['programmists/admin']);?>">Программисты</a></li>
                        <li><a href="<?= Url::to(['spr-connections-type/admin']);?>">Тип подключения</a></li>
                        <li><a href="<?= Url::to(['spr-providers/admin']);?>">Интернет-провайдеры</a></li>
                        <li><a href="<?= Url::to(['spr-podrazdelenie-type/admin']);?>">Тип подразделения</a></li>
                        <li><a href="<?= Url::to(['spr-status/admin']);?>">Статус</a></li>
                        <li><a href="<?= Url::to(['spr-router-status/admin']);?>">Статус роутера</a></li>
                        <li><a href="<?= Url::to(['spr-podrazdelenie-status/admin']);?>">Статус подразделения</a></li>
                        <li><a href="<?= Url::to(['spr-script-status/admin']);?>">Статус скрипты</a></li>
                        <li><a href="<?= Url::to(['spr-operator/admin']);?>">Сотовые операторы</a></li>
                        <li><a href="<?= Url::to(['spr-model-device/admin']);?>">Модель устройства</a></li>
                        <li><a href="<?= Url::to(['spr-ip-group/admin']);?>">IP Group</a></li>
                        <li><a href="<?= Url::to(['spr-devices/admin']);?>">Тип устройства</a></li>
                        <li><a href="<?= Url::to(['spr-os/admin']);?>">Тип ОС</a></li>
                        <li><a href="<?= Url::to(['spr-scripts/admin']);?>">Скрипты</a></li>
                        <li><a href="<?= Url::to(['access-list/admin']);?>">Ассess List</a></li>
                        <li><a href="<?= Url::to(['dns-name/admin']);?>">DNS</a></li>
                        <li><a href="<?= Url::to(['spr-purveyors/admin']);?>">Поставщики</a></li>
                        <li><a href="<?= Url::to(['spr-tarif/admin']);?>">Тарифы</a></li>
                    </ul>
                </li>


                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_table"></i>
                        <span>Аналитика</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?= Url::to(['charts/charts']);?>">Графики</a></li>
                        <li><a href="<?= Url::to(['charts/providers']);?>">Инциденты с провайдерами</a></li>
                        <li><a href="<?= Url::to(['charts/last']);?>">Последние добавления</a></li>
                        <li><a href="<?= Url::to(['charts/lastchange']);?>">Последние изменения</a></li>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_documents_alt"></i>
                        <span>FTP</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?= Url::to(['/site/contact']);?>">Manage Users</a></li>

                    </ul>
                </li>

            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!--overview start-->
            <div class="row">

                <?= $content ?>
                </div>
            </div>
            <!-- project team & activity end -->

        </section>
    </section>
    <!--main content end-->
</section>
<!-- container section start -->
<?php
Modal::begin([
    'header'=>'<span id="modalHeaderTitle"></span>',
    'headerOptions' => ['id' => 'modalHeader'],
    'id' => 'modal',
    'closeButton' => ['label'],
    'size' => 'modal-lg',
//keeps from closing modal with esc key or by clicking out of the modal.
// user must click cancel or X to close
    'clientOptions' => ['backdrop' => 'static']
]);
echo "<div id='modalContent'></div>";
Modal::end();?>

?>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>