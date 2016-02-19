<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_podrazdelenie_status".
 *
 * @property integer $id
 * @property string $PodrazdelenieStatus
 */
class SprPodrazdelenieStatus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_podrazdelenie_status';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PodrazdelenieStatus'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'PodrazdelenieStatus' => 'Podrazdelenie Status',
        ];
    }
}
