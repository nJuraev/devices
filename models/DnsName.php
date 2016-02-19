<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "dns_name".
 *
 * @property integer $id
 * @property string $DnsName
 * @property string $IpAdress
 * @property integer $Podrazdelenie
 * @property integer $Status
 */
class DnsName extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dns_name';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Podrazdelenie'], 'required'],
            [['Podrazdelenie', 'Status'], 'integer'],
            [['DnsName'], 'string', 'max' => 30],
            [['IpAdress'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'DnsName' => 'Dns Name',
            'IpAdress' => 'Ip Adress',
            'Podrazdelenie' => 'Podrazdelenie',
            'Status' => 'Status',
        ];
    }
}
