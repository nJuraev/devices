<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_script_status".
 *
 * @property integer $id
 * @property string $ScriptStatus
 * @property integer $StatusId
 */
class SprScriptStatus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_script_status';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['StatusId'], 'integer'],
            [['ScriptStatus'], 'string', 'max' => 20],
            [['StatusId','ScriptStatus'],'required', 'message'=>'Необходимо заполнить поле "{attribute}"']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ScriptStatus' => 'Script Status',
            'StatusId' => 'Status ID',
        ];
    }
}
