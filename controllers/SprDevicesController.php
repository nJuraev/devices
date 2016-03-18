<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 09.03.2016
 * Time: 16:38
 */
namespace app\controllers;
use app\models\SprDevices;
use app\models\SprDevicesSearch;
use Yii;
use yii\web\Controller;

class SprDevicesController extends Controller{

    function actionAdmin()
    {
        $searchModel=new SprDevicesSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        return $this->render('admin',[
            'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel
        ]);
    }

    function actionCreate()
    {
        $model=new SprDevices();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model
            ]);
        }else{
            return $this->renderAjax('create',[
                'model'=>$model
            ]);
        }
    }


}