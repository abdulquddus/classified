<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "category".
 *
 * @property integer $id
 * @property integer $title
 * @property string $image
 * @property string $description
 * @property integer $parent_id
 * @property integer $status
 */
class Category extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'parent_id', 'status'], 'integer'],
            [['parent_id', 'status'], 'required'],
            [['image'], 'string', 'max' => 45],
            [['description'], 'string', 'max' => 55]
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
            'image' => Yii::t('app', 'Image'),
            'description' => Yii::t('app', 'Description'),
            'parent_id' => Yii::t('app', 'Parent ID'),
            'status' => Yii::t('app', 'Status'),
        ];
    }
    
    /**
     * This function take Parent id and return array of all child ides category.
     */
    public function getsubcateides($id)
    {
        $item=[$id];
      $lists = $this->findAll(['parent_id'=>$id]);
      foreach($lists as $list ){
          array_push($item, $list->id);
          $lists2 = $this->findAll(['parent_id'=>$list->id]);
          foreach($lists2 as $list2){
               array_push($item, $list2->id);
                }
          
      }
     return $item;
    }
    
    
    
    public function getsubcate($id)
    {
       $subcate = \frontend\models\Category::find()->where(['parent_id'=>$id])->all();
       
     foreach($subcate as $subcat){
       echo "<li class='myCategory'><a href='#'>$subcat->title</a></li>";
     }
     
       }
       
       
        public function getchildtlist($id)
    {
       $subcate = $this->find()->where(['parent_id'=>$id])->all();
       
    return $subcate;
     
       }
       
       
}
