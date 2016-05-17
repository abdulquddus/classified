<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "commercial_search_ads".
 *
 * @property integer $id
 * @property string $title
 * @property integer $category_id
 * @property string $url
 * @property integer $image
 * @property integer $notes
 * @property integer $user_id
 */
class CommercialSearchAds extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'commercial_search_ads';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'title', 'category_id', 'url', 'image', 'notes', 'user_id'], 'required'],
            [['id', 'category_id', 'image', 'notes', 'user_id'], 'integer'],
            [['title', 'url'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'title' => Yii::t('app', 'Title'),
            'category_id' => Yii::t('app', 'Category ID'),
            'url' => Yii::t('app', 'Url'),
            'image' => Yii::t('app', 'Image'),
            'notes' => Yii::t('app', 'Notes'),
            'user_id' => Yii::t('app', 'User ID'),
        ];
    }
}
