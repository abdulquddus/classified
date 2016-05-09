<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\Region;

/* @var $this yii\web\View */
/* @var $model backend\models\City */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Cities'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="city-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            
            //'region_id',
            [                      // the owner name of the model
            'label' => 'Region Name',
            $regions = \backend\models\Region::find()->where(['id'=>$model->region_id])->one(),
            'value' => $regions->name,
            ],
            'name',
            'slug',
            //'country_code',

            [                      // the owner name of the model
            'label' => 'Country Code',
            $country_codes = \backend\models\Country::find()->where(['id'=>$model->country_code])->one(),
            'value' => $country_codes->code,
            ],

            //'status',
            [
            'label' => 'Status',
            $status = \backend\models\City::find()->where(['status'=>$model->status])->one(),
            'value' => $status->status == 1 ? 'Activate' : 'Deactivate',
            ],
        ],
    ]) ?>

</div>
