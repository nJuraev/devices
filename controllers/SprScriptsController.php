<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 9:34
 */
namespace  app\controllers;
use app\models\SprDevices;
use app\models\SprScripts;
use app\models\SprScriptsSearch;
use Yii;
use yii\web\Controller;

class  SprScriptsController extends Controller{

    function actionAdmin()
    {
        $searchModel=new SprScriptsSearch();
        $deviceType=SprDevices::find()->all();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        return $this->render('admin',[
            'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel,
            'deviceType'=>$deviceType
        ]);
    }

    function actionCreate()
    {
        $model=new SprScripts();
        $deviceType=SprDevices::find()->all();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model,
                'deviceType'=>$deviceType
            ]);
        }else{
            return $this->render('create',[
                'model'=>$model,
                'deviceType'=>$deviceType
            ]);
        }
    }

}
?>