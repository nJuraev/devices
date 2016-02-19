<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_conn_kind".
 *
 * @property integer $id
 * @property string $Kind
 */
class SprConnKind extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_conn_kind';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Kind'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Kind' => 'Kind',
        ];
    }
}
