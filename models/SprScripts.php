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
            [['ScriptIdentification'], 'required'],
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
            'ScriptIdentification' => 'Script Identification',
            'Description' => 'Description',
        ];
    }
}
