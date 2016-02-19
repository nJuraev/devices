<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_connections_type".
 *
 * @property integer $id_conn
 * @property string $Connection
 * @property integer $Kind
 */
class SprConnectionsType extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_connections_type';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Kind'], 'required'],
            [['Kind'], 'integer'],
            [['Connection'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_conn' => 'Id Conn',
            'Connection' => 'Connection',
            'Kind' => 'Kind',
        ];
    }
}
