<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_devices".
 *
 * @property integer $id
 * @property string $DeviceType
 */
class SprDevices extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_devices';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['DeviceType'], 'string', 'max' => 30]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'DeviceType' => 'Device Type',
        ];
    }
}
