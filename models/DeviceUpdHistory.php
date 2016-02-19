<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "device_upd_history".
 *
 * @property integer $id
 * @property integer $DeviceId
 * @property string $Description
 * @property string $Date
 * @property integer $AddBy
 * @property string $DateAdd
 * @property integer $ChangedBy
 * @property string $DateChange
 */
class DeviceUpdHistory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'device_upd_history';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['DeviceId', 'AddBy', 'ChangedBy'], 'integer'],
            [['Description'], 'string'],
            [['Date', 'DateAdd', 'DateChange'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'DeviceId' => 'Device ID',
            'Description' => 'Description',
            'Date' => 'Date',
            'AddBy' => 'Add By',
            'DateAdd' => 'Date Add',
            'ChangedBy' => 'Changed By',
            'DateChange' => 'Date Change',
        ];
    }
}
