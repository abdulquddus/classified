<?php 
use yii\helpers\html;
use yii\widgets\LinkPager;
?>

      <!--search-main-->
      
        <!--/search-main-top-->
        <!--/search-left-->
        <!--search-wide-->
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 search-wide">
            <?php
            if(!empty($result)){
            foreach($result as $cate){ 
                
                $img = \frontend\models\Images::findOne(['advertise_id'=>$cate->id]);
                
                ?>
          <div id="" class="selectedcat-box">
            <div class="image-box">
                <img class="img-responsive" src="<?= Yii::getAlias('@web')."/uploads/".$cate->id."/".$img['image'] ?>" alt="" />
			</div>
            <div class="caption">
                <a href="<?= Yii::$app->urlManager->createUrl(['advertisement/ad-view', 'id' => $cate->id]) ?>">
                <h3><?= $cate->advertise_title ?></h3>
            <!--<b>1,33,256 Ads</b>-->

            </a>
	    </div>
          </div>
            <?php }}else{
                
                echo "<h1> no result found </h1>";
            } ?>
         
        </div>
        <!--/search-wide-->
      <nav class="text-right">
   		 <?php  echo \yii\widgets\LinkPager::widget(['pagination'=>$pagination]);?>
	</nav>
       
	
      <!--/search-main-->

 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="template/js/jquery-1.9.1.min.js"></script>
<!--<script>
	
	jQuery(document).ready(function(){
        jQuery('#wwa').on('click', function(event) {        
             jQuery('#wwa-content').toggle('show');
        });
    });
	jQuery(document).ready(function(){
        jQuery('#wwa1').on('click', function(event) {        
             jQuery('#wwa1-content').toggle('show');
        });
    });
	jQuery(function ($) {
	$('.widget_head_type').each(function () {
		// closures
		var $toggle = $(this);
		var $parent = $toggle.closest('.some_parent_class');
		var $target = $parent.find('.widget_body_type');
		var $label = $toggle.find('.test');
		var bIsTweening = false;
		// OR var $target = $toggle.next('.widget_body_type');
		// event methods (closures)
		var fClickToggle = function () {
			if (!bIsTweening) {
				bIsTweening = true;
				$target.slideToggle('slow', fToggleCallback);
			}
		};
		var fToggleCallback = function () {
			bIsTweening = false;
			fSetLabel();
		};
		var fSetLabel = function () {
			var sLabel = $label.text().replace('see more', '').replace('less', '');
			sLabel = ($target.is(':visible') ? 'less' : 'see more') + sLabel;
			$label.html(sLabel);
		};
		// handle event
		$toggle.click(fClickToggle);
		$target.hide();
		fSetLabel();
	});
});
	-------this script use in list gallary--
	$('.detail').click(function(){
		$('.selectedcat-box').animate({width:'100%'},500);
		$('.image-box').animate({width:'28%'},500);
	});

    $('.small-icon').click(function(){
		$('.selectedcat-box').animate({width:'28%'},500);
		$('.image-box').animate({width:'100%'},500);
	});
	$('.compact').click(function(){
		$('.selectedcat-box').animate({width:'100%'},500);
		$('.image-box').animate({width:'100%'},500);
		
	});
	-------this script use in model popup--
     function city(id, item){
          
        $('#popup-hide').hide();
        $('#region').val($(item).text());
//        alert($(item).text());
        $('#'+id).fadeIn(100);
    
        }
     
        
//    $('#azad').click(function () {
//        $('#popup-hide').hide();
//        $('#show-kashmir').fadeIn(100);
//    });
//	$('#balochistan').click(function () {
//        $('#popup-hide').hide();
//        $('#show-balochistan').fadeIn(100);
//    });
//	$('#fata').click(function () {
//        $('#popup-hide').hide();
//        $('#show-fata').fadeIn(100);
//    });
//	$('#islamabad').click(function () {
//        $('#popup-hide').hide();
//        $('#show-islamabad').fadeIn(100);
//    });
//	$('#khyber').click(function () {
//        $('#popup-hide').hide();
//        $('#show-khyber').fadeIn(100);
//    });
//	$('#northen').click(function () {
//        $('#popup-hide').hide();
//        $('#show-northen').fadeIn(100);
//    });
//	$('#punjab').click(function () {
//        $('#popup-hide').hide();
//        $('#show-punjab').fadeIn(100);
//    });
//	$('#sindh').click(function () {
//        $('#popup-hide').hide();
//        $('#show-sindh').fadeIn(100);
//    });
//        subcities
      
        $('.back').click(function () {
        $('#popup-hide').fadeIn(100);
        
        $('.subcities').hide();
    });
//	$('.back').click(function () {
//        $('#popup-hide').fadeIn(100);
//        $('#show-kashmir').hide();
//		$('#show-balochistan').hide();
//		$('#show-fata').hide();
//		$('#show-islamabad').hide();
//		$('#show-khyber').hide();
//		$('#show-northen').hide();
//		$('#show-punjab').hide();
//		$('#show-sindh').hide();
//    });
	        	 	
	$(".myLi").click(function(){
    $('#location').val($(this).text());
	$('#myModal').fadeOut(100);	
	$('.modal-backdrop').fadeOut(100);

	
});
$("#category").click(function(){
    $('.header').show();
});
$(".myCategory").click(function(){
    $('#category').val($(this).text());
	$('.header').hide();
	return false;
	});
</script>-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="template/js/bootstrap.min.js"></script>
<!-- boostrap lightbox -->
<script src="template/js/bootstrap-lightbox.min.js"></script>
<!-- jquery -->
<script src="template/js/jquery.js"></script>
<!-- jquery -->
<script src="template/js/custom-script.js"></script>
<script>
    $(document).ready(function(){
        var cate = 'All';
        <?php if(isset($_GET['id'])){ ?>
       cate=<?= $_GET['id'] ?>; 
        <?php } ?>
            if(cate!= 'All') { 
                
//                ajax('<?php  echo Yii::$app->getUrlManager()->createUrl('category/getname'); ?>', 'id:jobb');
            $.ajax({ //create an ajax request to load_page.php
        type: "GET",

        url: "<?php echo Yii::$app->getUrlManager()->createUrl('category/getname'); ?>",
        data: {
            id: cate,
        },

        dataType: "JSON", //expect html to be returned                
        success: function(response) {
          document.getElementById('category').value=response;
          
                 $.ajax({type: "GET",
                     url: "<?php echo Yii::$app->getUrlManager()->createUrl('category/getfilters'); ?>",
                     data: {id: cate},
                     dataType: "JSON", //expect html to be returned                
                     success: function(response) {
                        
                     for(var i=0; i < response.length; i++){
                        
                          var obj = response[i];
                         $("#myList").append("<li><input name='optional' value="+obj.titles+" type='checkbox' /> " +obj.titles+"</li>");
//                        var node = document.createElement("LI");
//                        var textnode = document.createTextNode(obj.titles);
//                        node.appendChild(textnode);
//                        document.getElementById("myList").appendChild(node);
//                       console.log(obj.titles);
                     }
                        
                  }
                  });
          
        }
    });
    }
      
    });
</script>
 