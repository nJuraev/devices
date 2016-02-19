<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "access_level".
 *
 * @property integer $id
 * @property integer $ProgrammistId
 * @property integer $ViewControlId
 * @property string $Add
 * @property string $Edit
 * @property string $Delete
 * @property string $DateAdd
 * @property integer $AddBy
 * @property string $DateChange
 * @property integer $ChangedBy
 */
class AccessLevel extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'access_level';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ProgrammistId', 'ViewControlId', 'AddBy', 'ChangedBy'], 'integer'],
            [['Add', 'Edit', 'Delete'], 'string'],
            [['DateAdd', 'DateChange'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ProgrammistId' => 'Programmist ID',
            'ViewControlId' => 'View Control ID',
            'Add' => 'Add',
            'Edit' => 'Edit',
            'Delete' => 'Delete',
            'DateAdd' => 'Date Add',
            'AddBy' => 'Add By',
            'DateChange' => 'Date Change',
            'ChangedBy' => 'Changed By',
        ];
    }
}
