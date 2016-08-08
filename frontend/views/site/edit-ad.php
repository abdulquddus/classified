<?php
use yii\widgets\ActiveForm;
use yii\helpers\Html;

?>
<main>
  <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 submitad-wrap">
      <div class="container submitad-main-outer">
      <h4 class="form-ttl">Ad Details</h4>
        <!--<form role="form">-->
        <?php
        $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]);
        ?>
         <div class="col-md-7 col-md-offset-2 col-sm-7 col-sm-offset-2 submitad-main">
           <?= $form->field($model, 'advertise_title', ['template' => ' <div class="input-group custom-field-wrap">
              <label>Tittel<b class="asterisk">*</b></label>
              {input}<div style="text-align:right">{error}</div>
            </div>']) ?>
             
           <div class="form-group field-showcat required has-error validating">
<div id="cate" class="input-group hvr_div custom-field-wrap">
<label>
Category
<b class="asterisk">*</b>
</label>
<span id="cat_image">
<img width="60px" height="65px" src="admin/uploads/<?= $cat->image?>" style="padding-top:4px">
</span>
<a class="cat_image_name"> <?= $cat->title?> </a>
<a class="btn btn-primary tog" href="#" data-toggle="modal" data-target="#category">Change</a>
</div>
</div>
              <div class="hiddene" >
                 <input value="<?=$cat_id?>" id="advertisement-category_id" class="form-control" name="Advertisements[category_id]">
                 
             </div>
             
             <div id="optional">
               
             </div>
             <input type="hidden" name="perview_true" value="0" id="new_record" />
            <?= $form->field($model, 'description', ['template' => '  <div class="input-group custom-field-wrap">
              <label>Beskrivelse<b class="asterisk">*</b></label>
            {input}<div style="text-align:right">{error}</div>
            </div>'])->textarea(array('rows'=>3, 'class'=>'form-control abc')); ?>  
                 
        <?= $form->field($model, 'price', ['template' => '<div class="input-group custom-field-wrap">
              <label>Pris<b class="asterisk">*</b></label>
              {input}<div style="text-align:right">{error}</div>
            </div>']); ?>  
           

            <div class="input-group custom-field-wrap">
              <label>Last opp bilder</label>
              <div class="custom-file-input-wrap">
                <?php foreach($imgs as $img){?>
                                    <div>
                                        
                                        <img width="180" u="thumb" src="<?php echo Yii::getAlias('@web') ?>/uploads/<?= $img->advertise_id?>/<?= $img->image?>" />
                                        <?= $form->field($model, 'imageFiles[]')->fileInput(['multiple' => true, 'accept' => 'image/*']) ?><input type="button" onclick="delete_image('<?php echo $img->id; ?>')" value="delete" class="btn btn-danger" />

                                       <?php // $form->field($model, 'imageFiles[]', ['template'=>'{input}'])->fileInput(['multiple' => true, 'type'=>'file', 'accept' => 'image/*', 'class'=>'custom-file-input']) ?>
                                        <?php // Html::submitButton('Update Picture',['class'=>'btn btn-primary','id'=>'uploadButton']) ?>
                                    </div><br/>
                                    <?php }?>                     
                  
              </div>
             
            </div><!-- /custom-field-wrap-->
           
         </div><!-- /submitad-main-->
        
        <div class="col-md-3 col-sm-3 hidden-xs adpost-offer">
          <div class="adpost-offer-inr">
            <h4>Ad Posting Offers:</h4>
            <ul>
              <li>i) Lorem ipsum dolor sit amet Lorem ipsum </li>
              <li>ii) Lorem ipsum dolor sit amet Lorem ipsum </li>
              <li>iii) Lorem ipsum dolor sit amet Lorem ipsum </li>
              <li>iv)Lorem ipsum dolor sit amet Lorem ipsum </li>
            </ul>
          </div><!-- /adpost-offer-inr-->
        </div><!-- /adpost-offer-->
      <!--</form>-->
      <h4 class="form-ttl">Contact Details</h4>
      <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contact-dtl-wrap">
        <form role="form">
         <div class="col-md-7 col-md-offset-2 col-sm-7 col-sm-offset-2 contact-dtl-main">

              <?= $form->field($model, 'contact_name', ['template' => ' <div class="input-group contact-field-wrap">
              <label>Name<b class="asterisk">*</b></label>
              {input}<div style="text-align:right">{error}</div>
            </div>'])->textInput(['class'=>'form-control abc']); ?> 

            
             <?= $form->field($model, 'mobile_number', ['template' => '<div class="input-group contact-field-wrap">
              <label>Phone<b class="asterisk">*</b></label>
              {input}<div style="text-align:right">{error}</div>
            </div>'])->textInput(['class'=>'form-control abc']); ?> 
         

             <?= $form->field($model, 'state_id', ['template'=>'<div class="input-group contact-field-wrap">
              <label>State<b class="asterisk">*</b></label>
              {input}<div style="text-align:right">{error}</div>
            </div>'])->dropDownList($region, ['prompt'=>'Select...', 'onChange'=>'select_city(this)','class'=>'form-control abc']); ?>
             
            
             <div class="input-group contact-field-wrap" id="city">
              <label>City<b class="asterisk">*</b></label>
              <select class="form-control abc">
                <option>Choose</option>
                
              </select>
            </div><!-- /custom-field-wrap-->
               
            
             <?= $form->field($model, 'address', ['template' => '<div class="input-group contact-field-wrap">
              <label>Address</label>
              {input}<div style="text-align:right">{error}</div>
            </div>'])->textarea(array('rows'=>3, 'class'=>'form-control abc')); ?>  

               <?php if (isset($_GET['new']))
               { ?>
            <div class="submit-ad-button-box">
              <!--<a class="btn-submit-ad" href="#">Submit an Ad</a>-->
              <input type="hidden" name="new" value="1" />
              <?= Html::submitButton('Submit', ['class'=> 'btn-submit-ad']) ;?>
              <?= Html::submitButton('Preview', ['class'=> 'btn-submit-ad','onclick'=>'make_perview()' ,'name'=>'preview', 'id'=>'btn_preview']) ;?>

             
              <div class="tos-box">
                 By clicking "Submit", you accept our <a href="#">Terms of Use and conditions</a>
              </div>
            </div>
               <?php } else
               { ?>
            <div class="submit-ad-button-box">
              <!--<a class="btn-submit-ad" href="#">Submit an Ad</a>-->
              <?= Html::submitButton('Submit', ['class'=> 'btn-submit-ad']) ;?>
              <?= Html::submitButton('Preview', ['class'=> 'btn-submit-ad','onclick'=>'make_perview()' ,'name'=>'preview', 'id'=>'btn_preview']) ;?>
              <div class="tos-box">
                 By clicking "Submit", you accept our <a href="#">Terms of Use and conditions</a>
              </div>
            </div>
               <?php } ?>
            
           </div><!-- /contact-dtl-main-->
  
      <?php ActiveForm::end(); ?>
          <div class="col-md-3 col-sm-3 contact-dtl-right">
<!--            <div class="contact-dtl-user-img">
            </div> /contact-dtl-user-img-->
          </div><!-- /contact-dtl-right-->
        </form>
     </section>


<!-- category_select-->
<div id="category" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" class="modal fade custom-modal custom-modal2">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="col-lg-4 col-md-4 col-sm-4 col-xs-12 modal-title">Categories</h4>
            <h4 class="col-lg-4 col-md-4 col-sm-4 col-xs-12 modal-title example" id="categoryName">Categories Name</h4>
            <h4 class="col-lg-3 col-md-3 col-sm-3 col-xs-12 modal-title example" id="selectCategory">Selected Category</h4>
          </div>
          <div class="category-box-inr">
           
              
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 category-left-list category-list-active main" id="clickCategory">
              <ul id="saved-list">
                  <?php 
                  $a=[];
                  $b=[];
                  foreach($main_cat as $cat){
                      echo '<li class="" id="'.$cat->id.'">'.$cat->title.'<i class="fa fa-angle-right"></i></li>';
                  }
                  ?>
             
              </ul>  
            </div>
              
              
	        <div id="clickSubCategory" >
                            <?php foreach( $main_cat as $scat){ ?>
                          
            <!--------------------------2rd Step Start-------------------------------------------->
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 category-left-list example sub3 sub" id="s<?= $scat->id; ?>">
              <ul> 
                <?php
               
                 $child_cats = \frontend\models\Category::find()->where(['parent_id'=>$scat->id])->all();
                foreach( $child_cats as $scattit){ 
                    
                   $end;
                  $end = \frontend\models\Category::find()->where(['parent_id'=>$scattit->id])->one();
                 if(!isset($end)){
                    $end = "end2";
                 }else{  $end = "no"; 
                 array_push($a, $scattit->id);
                 
                 }
                  ?>
                  
                  <li class="<?= $end ?>" catid="<?= $scattit->id; ?>"  target="sb<?= $scattit->id; ?>"><?= $scattit->title; ?> <?php if( $end == "no"){ ?><i class="fa fa-angle-right"></i><?php } ?></li>
                
                <?php  } ?>
              </ul>  
            </div>
                                
                          <?php  } ?>
            
            <?php foreach( $main_cat as $scat){ ?>
                          
            <!--------------------------2rd Step Start-------------------------------------------->
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 category-left-list example sub3 sub sb ssb" id="sb<?= $scat->id; ?>">
              <ul> 
                <?php
               
                 $child_cats = \frontend\models\Category::find()->where(['parent_id'=>$scat->id])->all();
                foreach( $child_cats as $scattit){ 
                    
                   $end;
                  $end = \frontend\models\Category::find()->where(['parent_id'=>$scattit->id])->one();
                 if(!isset($end)){
                    $end = "end3";
                 }else{  $end = "no"; 
                 array_push($a, $scattit->id);
                 
                 }
                  ?>
                  
                  <li class="<?= $end ?>" catid="<?= $scattit->id; ?>"  target="sb<?= $scattit->id; ?>"><?= $scattit->title; ?> <?php if( $end == "no"){ ?><i class="fa fa-angle-right"></i><?php } ?></li>
                
                <?php  } ?>
              </ul>  
            </div>
                                
                          <?php  } ?>
            
            
                       
                        
                 <!--------------------------2rd Step end-------------------------------------------->    
	
		<!--------------------------3rd Step Start-------------------------------------------->
                
		
            <?php
//            print_r($a);
            foreach($a as $child){
                $schilds = \frontend\models\Category::find()->where(['parent_id'=>$child])->all();
//               echo $child;
                
                ?>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 category-left-list example sub sb ssb" id="sb<?= $child ?>">
                    <ul class="ssb">
            <?php
                foreach($schilds as $schild ){
                        $end;
                  $end = \frontend\models\Category::find()->where(['parent_id'=>$schild->id])->one();
                 if(!isset($end)){
                    $end = "end3";
                 }else{  $end = "no"; 
                 array_push($a, $scattit->id);
                 
                 } ?>
                    <li class="<?= $end ?>" catid="<?= $schild->id; ?>"  target="lst<?= $schild->id; ?>"><?= $schild->title; ?> <?php if( $end == "no"){ ?><i class="fa fa-angle-right"></i><?php } ?></li> 
               <?php } ?>
                    </ul>  
                     </div>                   
           <?php
            }
            ?>       
                
               

            
                
                
 <?php 
              $main_cat_lst = \frontend\models\Category::find()->all();
             foreach( $main_cat_lst as $scat){ ?>
                          
            <!--------------------------2rd Step Start-------------------------------------------->
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 category-left-list example sub3 sub sb ssb lst" id="lst<?= $scat->id; ?>">
              <ul> 
                <?php
               
                 $child_cats = \frontend\models\Category::find()->where(['parent_id'=>$scat->id])->all();
                foreach( $child_cats as $scattit){ 
                   
                  ?>
                  
                  <li catid="<?= $scattit->id; ?>"  target="sb<?= $scattit->id; ?>"><?= $scattit->title; ?></li>
                
                <?php  } ?>
              </ul>  
            </div>
                                
                          <?php  } ?>
                        
            </div>	
         
             
          </div>

        </div>

      </div><!-- /Modal content-->
     
    </div><!-- /Modal -->
   



<!-- Ads Boxes -->
  <div class="ads-vr ads-vr-left">Space Available For Ad</div>
  <div class="ads-vr ads-vr-right">Space Available For Ad</div>
<!-- /Ads Boxes -->
</main>
<script>
    var csrfToken = $('meta[name="csrf-token"]').attr("content");
             function make_perview()
    {
        $('#new_record').val('1');
    }   
            function select_city(item)
            { 
                
              //  alert(csrfToken)
//                alert(item.value);
$.ajax({
            
         
      type: "GET",
  url: "<?php echo Yii::$app->getUrlManager()->createUrl('site/select_city'); ?>",
  data: { id: item.value },
                          
success: function(data){
//  alert(data);
 document.getElementById("city").innerHTML = data;
      }
    });
    }
    
    function delete_image(id)
{
$.ajax({
            
         
      type: "GET",
  url: "<?php echo Yii::$app->getUrlManager()->createUrl('site/delete-image'); ?>",
  data: { id: id },
                          
success: function(data){
//  alert(data);
       location.reload();
// document.getElementById("city").innerHTML = data;
      }
    });
}
</script>
 