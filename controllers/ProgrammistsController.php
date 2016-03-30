<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.02.2016
 * Time: 8:37
 */

namespace app\controllers;
use app\models\Programmists;
use app\models\ProgrammistsSearch;
use app\models\SprOperator;
use Yii;
use yii\web\Controller;

class ProgrammistsController extends Controller{

    function actionAdmin(){
        $this->layout='niceadmin';
        $searchModel=new ProgrammistsSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        return $this->render('admin',[
            'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel
        ]);
    }

    function actionCreate(){
        $model=new Programmists();
        $oper=SprOperator::find()->all();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model,
                'oper'=>$oper,
            ]);
        }else{
            return $this->render('create',[
                'model'=>$model,
                'oper'=>$oper
            ]);
        }

    }

}