<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 16:20
 */
namespace app\controllers;
use app\models\AccessList;
use app\models\AccessListSearch;
use app\models\SprIpGroup;
use app\models\SprStatus;
use Yii;
use yii\web\Controller;

class AccessListController extends Controller{

    function actionAdmin()
    {
        $searchModel=new AccessListSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        $group=SprIpGroup::find()->all();
        $status=SprStatus::find()->all();

        return $this->render('admin',[
            'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel,
            'group'=>$group,
            'status'=>$status
        ]);

    }

    function actionCreate()
    {
        $group=SprIpGroup::find()->all();
        $status=SprStatus::find()->all();
        $model=new AccessList();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model,
                'group'=>$group,
                'status'=>$status
            ]);
        }else{
            return $this->render('create',[
                'model'=>$model,
                'group'=>$group,
                'status'=>$status
            ]);
        }
    }
}