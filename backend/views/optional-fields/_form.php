<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\OptionalFields */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="optional-fields-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'titles')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'desc')->textInput(['maxlength' => true]) ?>

    <?php // $form->field($model, 'status')->textInput() ?>

    <?php echo $form->field($model, 'status')->dropDownList(['1' => 'Activate', '0' => 'Deactivate']); ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
