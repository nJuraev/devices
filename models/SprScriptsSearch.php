<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 9:02
 */
namespace app\models;
use Yii;

class SprScriptsSearch extends SprScripts{

        function rules()
        {
            return [
                [['ScriptIdentification','Description','DeviceType'],'safe']
            ]; // TODO: Change the autogenerated stub
        }

    function attributeLabels()
    {
        return parent::attributeLabels(); // TODO: Change the autogenerated stub
    }

    function search($params)
    {
        $query = SprScripts::find();
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

        $this->addConditions($query, 'ScriptIdentification', true);
        $this->addConditions($query, 'Description', true);
        $this->addConditions($query, 'DeviceType', true);
        $this->addConditions($query, 'ManageScript', true);
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
        $attribute = "spr_scripts." . $attribute;

        if ($partialMatch) {
            $query->andWhere(['like', $attribute, $value]);
        } else {
            $query->andWhere([$attribute => $value]);

        }

    }
}