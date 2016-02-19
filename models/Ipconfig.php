<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "ipconfig".
 *
 * @property integer $id
 * @property integer $DeviceId
 * @property integer $ConnectionType
 * @property string $Ip
 * @property integer $Mask
 * @property string $Gateway
 * @property string $Dns1
 * @property string $Dns2
 * @property integer $CodeOperator
 * @property string $SimNumber
 * @property integer $Status
 * @property string $DateAdd
 * @property integer $AddBy
 * @property string $DateChange
 * @property integer $ChangedBy
 * @property string $Descriptions
 * @property integer $Provider
 * @property integer $Tarif
 * @property string $Speed
 * @property integer $Price
 * @property string $ContractNumber
 * @property string $ContractDate
 * @property string $ContractActionFrom
 * @property string $ContractActionTo
 */
class Ipconfig extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ipconfig';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['DeviceId', 'ConnectionType', 'Mask', 'CodeOperator', 'Status', 'AddBy', 'ChangedBy', 'Provider', 'Tarif', 'Price'], 'integer'],
            [['Descriptions'], 'string'],
            [['Ip', 'Gateway', 'Dns1', 'Dns2', 'SimNumber'], 'string', 'max' => 15],
            [['DateAdd', 'DateChange', 'ContractDate', 'ContractActionFrom', 'ContractActionTo'], 'string', 'max' => 20],
            [['Speed', 'ContractNumber'], 'string', 'max' => 55]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'DeviceId' => 'Device ID',
            'ConnectionType' => 'Connection Type',
            'Ip' => 'Ip',
            'Mask' => 'Mask',
            'Gateway' => 'Gateway',
            'Dns1' => 'Dns1',
            'Dns2' => 'Dns2',
            'CodeOperator' => 'Code Operator',
            'SimNumber' => 'Sim Number',
            'Status' => 'Status',
            'DateAdd' => 'Date Add',
            'AddBy' => 'Add By',
            'DateChange' => 'Date Change',
            'ChangedBy' => 'Changed By',
            'Descriptions' => 'Descriptions',
            'Provider' => 'Provider',
            'Tarif' => 'Tarif',
            'Speed' => 'Speed',
            'Price' => 'Price',
            'ContractNumber' => 'Contract Number',
            'ContractDate' => 'Contract Date',
            'ContractActionFrom' => 'Contract Action From',
            'ContractActionTo' => 'Contract Action To',
        ];
    }
}
