<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 09.03.2016
 * Time: 11:48
 */
namespace app\controllers;
use app\models\SprDevices;
use app\models\SprModelDevice;
use app\models\SprModelDeviceSearch;
use Yii;
use yii\web\Controller;

class SprModelDeviceController extends Controller{

    function actionAdmin()
    {
        $searchModel=new SprModelDeviceSearch();
        $deviceType=SprDevices::find()->all();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        return $this->render('admin',[
           'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel,
            'devicesType'=>$deviceType
        ]);
    }

    function actionCreate(){
        $model=new SprModelDevice();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            $deviceType=SprDevices::find()->all();
            return $this->renderAjax('create',[
                'model'=>$model,
                'deviceType'=>$deviceType
            ]);

        }else{
            $deviceType=SprDevices::find()->all();
            return $this->renderAjax('create',[
                'model'=>$model,
                'deviceType'=>$deviceType
            ]);
        }
    }
}
