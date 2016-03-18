<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 09.03.2016
 * Time: 11:51
 */
namespace app\models;
use Yii;

class SprModelDeviceSearch extends SprModelDevice{

    function  rules()
    {
        return [
            [['Model','Device'], 'safe']
        ]; // TODO: Change the autogenerated stub
    }

    public function attributeLabels()
    {
        return parent::attributeLabels(); // TODO: Change the autogenerated stub
    }

    function search($params)
    {
        $query = SprModelDevice::find();
        $query->joinWith('sprDevices');
        $dataProvider = new \yii\data\ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'defaultOrder' => ['id' => SORT_ASC]
            ]
        ]);
        if (!$this->load($params) && $this->validate()) {
            return $dataProvider;
        }

        $this->addConditions($query, 'Model', true);
        $this->addConditions($query, 'Device', true);

        return $dataProvider;
    }


    protected function addConditions($query, $attribute, $partialMatch = false)
    {
        if (($pos = strrpos($attribute, '.')) !== false) {
            $modelAttribute = substr($attribute, $pos + 1);
        } else {
            $modelAttribute = $attribute;
        }

        $value = $this->$modelAttribute;
        if (trim($value) === '') {
            return;
        }

        /*
         * The following line is additionally added for right aliasing
         * of columns so filtering happen correctly in the self join
         */
        $attribute = "spr_model_device." . $attribute;

        if ($partialMatch) {
            $query->andWhere(['like', $attribute, $value]);
        } else {
            $query->andWhere([$attribute => $value]);

        }

    }
}