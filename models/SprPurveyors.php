<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_purveyors".
 *
 * @property integer $id
 * @property string $Purveyor
 * @property string $Site
 * @property string $Surname
 * @property string $Name
 * @property string $Patronymic
 * @property integer $Operator
 * @property string $Tel
 */
class SprPurveyors extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_purveyors';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Operator'], 'integer'],
            [['Purveyor', 'Site', 'Surname', 'Name', 'Patronymic', 'Tel'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Purveyor' => 'Purveyor',
            'Site' => 'Site',
            'Surname' => 'Surname',
            'Name' => 'Name',
            'Patronymic' => 'Patronymic',
            'Operator' => 'Operator',
            'Tel' => 'Tel',
        ];
    }
}
