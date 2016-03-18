<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.03.2016
 * Time: 15:35
 */
namespace app\controllers;
use app\models\SprProviders;
use app\models\SprTarif;
use app\models\SprTarifSearch;
use Yii;
use yii\web\Controller;

class SprTarifController extends Controller{

    function actionAdmin()
    {
        $searchModel=new SprTarifSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        $provider=SprProviders::find()->all();
        return $this->render('admin',[
            'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel,
            'provider'=>$provider
        ]);
    }

    function actionCreate(){
        $model=new SprTarif();
        $provider=SprProviders::find()->all();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model,
                'provider'=>$provider,
            ]);
        }else{
            return $this->render('create',[
                'model'=>$model,
                'provider'=>$provider
            ]);
        }

    }
}