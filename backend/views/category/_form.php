<?php   

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
//use kartik\widgets\FileInput;
use backend\models\Category;
use kartik\widgets\Select2;

/* @var $this yii\web\View */
/* @var $model backend\models\Category */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="category-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']] ); ?>

    <?= $form->field($model, 'title')->textInput() ?>

    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>
    
    <?php
    
    ### The below code get the create/update parameter from URL and 
    ##apply if/elseif condition to display image on view and update screen
    
    $url = $_GET['r'];    
    if($url == 'category/create'){
        echo $form->field($model, 'image')->fileInput();
    }
    elseif ($url == 'category/update'){
        echo '<img width="180" src= ' . Yii::$app->request->baseUrl.'/uploads/'.$model->image . '>';
        echo $form->field($model, 'image')->fileInput();    
    }
    
    ?>  


    <?php 
//    echo '<label class="control-label">Add Attachments</label>';
//    echo FileInput::widget([
//    'model' => $model,
//    'attribute' => 'image',
//    'options' => ['multiple' => false]
//
//    ]);

    ?>

    <?php //$form->field($model, 'parent_id')->textInput() ?>

    <?php $category=Category::find()->all();
    $listData=ArrayHelper::map($category, 'id', 'title');
    echo $form->field($model, 'parent_id')->dropDownList(
        $listData,
        ['prompt'=>'Parent Category'])->label('Select Category');
        //['prompt' => ])->['label' => 'Please Choose', 'class' => 'drop-down-prompt', 'value' => '-1'];

    ?>    
	
	 <?php 
         $options=  array();
         if (!empty($caf)){
        foreach($caf as $cafs){
            $options[]=$cafs['optional_field_id'];
            
           // $options[$cafs['optional_field_id']]=array('selected'=>true);
//            exit();
         
            
        
         }
         //print_r($options);
                    
  $optionalfield= backend\models\OptionalFields::find()->all();
    $listData=ArrayHelper::map($optionalfield, 'id', 'titles');    
            
    //$data = [$cafs['titles']];
// without model
echo Select2::widget([
   'name' => 'additionalfields[]',
   'value' => $options, // value to initialize
   'data' => $listData,
    'options' => [ 
              'multiple' => true ,
    //'options'=>$options,
     ],
]);

   # }
         }
         else{
             
    $optionalfield= backend\models\OptionalFields::find()->all();
    $listData=ArrayHelper::map($optionalfield, 'id', 'titles');
   
    echo '<label class="control-label">Additional Fields</label>'; 
    echo Select2::widget([
    'name' => 'additionalfields[]',
    'data' => $listData,
    'options' => [ 
        'placeholder' => 'Select Optional Fields ...',
        'multiple' => true  ],
    
]);
         }
    ?>
    
    
    <?php // $form->field($model, 'status')->textInput() ?>
   
   <?= $form->field($model, 'credits')->textInput(['type' => 'number','min'=>0,'max'=>100]) ?>

    <?php echo $form->field($model, 'status')->dropDownList(['1' => 'Activate', '0' => 'Deactivate']); ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
