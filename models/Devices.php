<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "devices".
 *
 * @property integer $id
 * @property string $DeviceName
 * @property integer $PodrazdelenieId
 * @property integer $DeviceType
 * @property integer $Model
 * @property string $SerialNumber
 * @property integer $OsType
 * @property string $Version
 * @property string $CertName
 * @property integer $Operator
 * @property string $SimNumber
 * @property string $Description
 * @property string $DateAdd
 * @property integer $AddBy
 * @property string $DateChange
 * @property integer $ChangedBy
 * @property string $Login
 * @property string $Password
 * @property string $DataObtaining
 * @property string $DateExploitation
 * @property integer $Purveyor
 * @property string $TermGuarantee
 * @property integer $Status
 */
class Devices extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'devices';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PodrazdelenieId', 'DeviceType', 'Model', 'OsType', 'Operator', 'AddBy', 'ChangedBy', 'Purveyor', 'Status'], 'integer'],
            [['Login', 'Password'], 'string'],
            [['DeviceName', 'CertName'], 'string', 'max' => 70],
            [['SerialNumber'], 'string', 'max' => 50],
            [['Version', 'SimNumber', 'DateAdd', 'DateChange', 'DataObtaining', 'DateExploitation', 'TermGuarantee'], 'string', 'max' => 20],
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
            'DeviceName' => 'Device Name',
            'PodrazdelenieId' => 'Podrazdelenie ID',
            'DeviceType' => 'Device Type',
            'Model' => 'Model',
            'SerialNumber' => 'Serial Number',
            'OsType' => 'Os Type',
            'Version' => 'Version',
            'CertName' => 'Cert Name',
            'Operator' => 'Operator',
            'SimNumber' => 'Sim Number',
            'Description' => 'Description',
            'DateAdd' => 'Date Add',
            'AddBy' => 'Add By',
            'DateChange' => 'Date Change',
            'ChangedBy' => 'Changed By',
            'Login' => 'Login',
            'Password' => 'Password',
            'DataObtaining' => 'Data Obtaining',
            'DateExploitation' => 'Date Exploitation',
            'Purveyor' => 'Purveyor',
            'TermGuarantee' => 'Term Guarantee',
            'Status' => 'Status',
        ];
    }
}
