<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_model_device".
 *
 * @property integer $id
 * @property string $Model
 * @property integer $Device
 */
class SprModelDevice extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_model_device';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Device'], 'integer'],
            [['Model'], 'string', 'max' => 50],
            [['Model','Device'],'required','message'=>'Необходимо заполнить поле "{attribute}"']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Model' => 'Модель',
            'Device' => 'Устройства',
        ];
    }

    function getSprDevices()
    {
        return $this->hasOne(SprDevices::className(),['id'=>'Device']);
    }
}
