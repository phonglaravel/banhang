<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/admincp/js/raphael-min.js"></script>
<script src="/admincp/js/morris.js"></script>
<script src="/admincp/js/bootstrap.js"></script>
<script src="/admincp/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/admincp/js/scripts.js"></script>
<script src="/admincp/js/jquery.slimscroll.js"></script>
<script src="/admincp/js/jquery.nicescroll.js"></script>
<script src="/ckeditor/ckeditor.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
	CKEDITOR.replace('ck1');
</script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="/admincp/js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<script>
	$( "#start" ).datepicker({
		prevText:'Tháng trước',
		nextText:'Tháng sau',
		dateFormat:'dd/mm/yy',
		dayNamesMin:["Thứ 2",'Thứ 3','Thứ 4','Thứ 5','Thứ 6','Thứ 7','CN',],
		duration:'slow'

	});
	$( "#end" ).datepicker({
		prevText:'Tháng trước',
		nextText:'Tháng sau',
		dateFormat:'dd/mm/yy',
		dayNamesMin:["Thứ 2",'Thứ 3','Thứ 4','Thứ 5','Thứ 6','Thứ 7','CN',],
		duration:'slow'
	});
</script>
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
			
			],
			lineColors:['#eb6f6f','#926383','#eb6f6f'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>
<!-- calendar -->
	<script type="text/javascript" src="js/monthly.js"></script>
	<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				
			});

			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				setWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});

		switch(window.location.protocol) {
		case 'http:':
		case 'https:':
		// running on a server, should be good.
		break;
		case 'file:':
		alert('Just a heads-up, events will not work when run locally.');
		}

		});
	</script>
	<script type="text/javascript">
		
			$('.phivanchuyen').change(function(){
				const id = $(this).data('id');
				const phi = $(this).val();
				var _token = $('input[name="_token"]').val();
				
				$.ajax({
          			url : "{{url('/editphivanchuyen')}}",
          			method: "POST",
          			data : {id:id,phi:phi ,_token:_token},
          			success:function(data)
          			{
              			
          			}
          		})
				})
				
	</script>
	<script>
      
		$('.danhmuccha').change(function(){
			const danhmuccha = $(this).val();
			
			
			
			$.ajax({
				url: '{{url('/danhmuccon')}}',
				
				data: {danhmuccha:danhmuccha},
				success:function(data){
					$('#danhmuccon').html(data);
				}
			})
		})
   
 </script>
<script>
	$(document).ready( function () {
    $('#abc').DataTable();
} );
</script>