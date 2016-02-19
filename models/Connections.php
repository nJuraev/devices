<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "connections".
 *
 * @property integer $id
 * @property integer $PodrazdelenieId
 * @property integer $ConnectionTypeId
 * @property integer $IpconfigId
 */
class Connections extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'connections';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PodrazdelenieId', 'ConnectionTypeId', 'IpconfigId'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'PodrazdelenieId' => 'Podrazdelenie ID',
            'ConnectionTypeId' => 'Connection Type ID',
            'IpconfigId' => 'Ipconfig ID',
        ];
    }
}
