<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "_elements".
 *
 * @property string $id
 * @property string $Name
 * @property string $Position
 * @property string $OwnerEl
 * @property string $Slave
 */
class Elements extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '_elements';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Name'], 'required'],
            [['Position', 'OwnerEl'], 'integer'],
            [['Name'], 'string', 'max' => 45],
            [['Slave'], 'string', 'max' => 1]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Name' => 'Name',
            'Position' => 'Position',
            'OwnerEl' => 'Owner El',
            'Slave' => 'Slave',
        ];
    }
}
