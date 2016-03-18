<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 11.03.2016
 * Time: 17:01
 */
namespace app\controllers;
use app\models\DnsName;
use app\models\DnsNameSearch;
use app\models\SprStatus;
use Yii;
use yii\web\Controller;

class DnsNameController extends Controller{

    function actionAdmin()
    {
        $searchModel= new DnsNameSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        $status=SprStatus::find()->all();
        return $this->render('admin',[
            'searchModel'=>$searchModel,
            'dataProvider'=>$dataProvider,
            'status'=>$status
        ]);
    }

    function actionCreate(){
        $model=new DnsName();
        $status=SprStatus::find()->all();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');
        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model,
                'status'=>$status
            ]);
        }else{
            return $this->render('create',[
                'model'=>$model,
                'status'=>$status
            ]);
        }
    }
}