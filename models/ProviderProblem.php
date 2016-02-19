<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "provider_problem".
 *
 * @property integer $id
 * @property integer $PodrazdelenieId
 * @property integer $DeviceId
 * @property integer $ProviderId
 * @property string $Reason
 * @property string $DateBegin
 * @property string $DateEnd
 * @property string $Image
 */
class ProviderProblem extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'provider_problem';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PodrazdelenieId', 'DeviceId', 'ProviderId'], 'integer'],
            [['Reason', 'Image'], 'string', 'max' => 255],
            [['DateBegin', 'DateEnd'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'PodrazdelenieId' => 'Podrazdelenie ID',
            'DeviceId' => 'Device ID',
            'ProviderId' => 'Provider ID',
            'Reason' => 'Reason',
            'DateBegin' => 'Date Begin',
            'DateEnd' => 'Date End',
            'Image' => 'Image',
        ];
    }
}
