<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "log".
 *
 * @property integer $id
 * @property string $Router
 * @property string $SoftVersion
 * @property string $Model
 * @property string $GetDate
 * @property integer $Script
 * @property integer $Status
 */
class Log extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'log';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Script', 'Status'], 'integer'],
            [['Router'], 'string', 'max' => 50],
            [['SoftVersion', 'Model', 'GetDate'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Router' => 'Router',
            'SoftVersion' => 'Soft Version',
            'Model' => 'Model',
            'GetDate' => 'Get Date',
            'Script' => 'Script',
            'Status' => 'Status',
        ];
    }
}
