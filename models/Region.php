<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "region".
 *
 * @property integer $id
 * @property string $Name
 * @property integer $ParentId
 * @property string $Slave
 * @property string $Position
 * @property integer $OwnerEl
 */
class Region extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'region';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ParentId', 'Position', 'OwnerEl'], 'integer'],
            [['Name'], 'string', 'max' => 100],
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
            'ParentId' => 'Parent ID',
            'Slave' => 'Slave',
            'Position' => 'Position',
            'OwnerEl' => 'Owner El',
        ];
    }
}
