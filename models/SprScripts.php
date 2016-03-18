<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_scripts".
 *
 * @property integer $id
 * @property integer $ScriptIdentification
 * @property string $Description
 */
class SprScripts extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_scripts';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ScriptIdentification','DeviceType','ManageScript'], 'required'],
            [['ScriptIdentification'], 'integer'],
            [['Description'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ScriptIdentification' => 'ID Скрипт',
            'Description' => 'Описание',
            'DeviceType'=>'Тип устройства',
            'ManageScript'=>'Скрипт'
        ];
    }

    function getSprDevices()
    {
        return $this->hasOne(SprDevices::className(),['id'=>'DeviceType']);
    }
}
