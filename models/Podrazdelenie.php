<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "podrazdelenie".
 *
 * @property integer $id
 * @property string $Code
 * @property string $Name
 * @property string $Adres
 * @property integer $RegionId
 * @property string $ParentId
 * @property integer $PodrazdelenieType
 * @property integer $ProgrammistId
 * @property integer $OblastId
 * @property integer $Status
 * @property string $DateAdd
 * @property integer $AddBy
 * @property string $DateChange
 * @property integer $ChangedBy
 * @property string $Position
 * @property integer $Slave
 * @property string $FormingDate
 * @property string $Latitude
 * @property string $Longitude
 */
class Podrazdelenie extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'podrazdelenie';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['RegionId', 'ParentId', 'PodrazdelenieType', 'ProgrammistId', 'OblastId', 'Status', 'AddBy', 'ChangedBy', 'Position', 'Slave'], 'integer'],
            [['Code', 'DateAdd', 'DateChange', 'FormingDate', 'Longitude'], 'string', 'max' => 20],
            [['Name', 'Adres'], 'string', 'max' => 500],
            [['Latitude'], 'string', 'max' => 15]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Code' => 'Code',
            'Name' => 'Name',
            'Adres' => 'Adres',
            'RegionId' => 'Region ID',
            'ParentId' => 'Parent ID',
            'PodrazdelenieType' => 'Podrazdelenie Type',
            'ProgrammistId' => 'Programmist ID',
            'OblastId' => 'Oblast ID',
            'Status' => 'Status',
            'DateAdd' => 'Date Add',
            'AddBy' => 'Add By',
            'DateChange' => 'Date Change',
            'ChangedBy' => 'Changed By',
            'Position' => 'Position',
            'Slave' => 'Slave',
            'FormingDate' => 'Forming Date',
            'Latitude' => 'Latitude',
            'Longitude' => 'Longitude',
        ];
    }
}
