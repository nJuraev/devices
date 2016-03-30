<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 28.03.2016
 * Time: 11:20
 */
namespace app\assets;

use yii\web\AssetBundle;

class MyAsset extends AssetBundle{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/style.css',
        'css/widgets.css',
        'css/xcharts.min.css',
        'css/line-icons.css',
        'css/jquery-ui-1.10.4.min.css',
        'css/font-awesome.min.css',
        'css/style-responsive.css',
        'css/owl.carousel.css',
        'css/elegant-icons-style.css',


    ];
    public $js = [


        'js/jquery-ui-1.9.2.custom.min.js',

        'js/lte-ie7.js',
        'js/jquery.scrollTo.min.js',
        'js/jquery.nicescroll.js',
        'js/jquery.sparkline.js',
        'js/owl.carousel.js',

        'js/jquery.customSelect.min.js',
        'js/xcharts.min.js',
        'js/jquery.autosize.min.js',
        'js/gdp-data.js',
        'js/jquery.placeholder.min.js',
        'js/morris.min.js',
        'js/charts.js',
        'js/sparklines.js',
        'js/jquery.slimscroll.min.js',
        'js/html5shiv.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}