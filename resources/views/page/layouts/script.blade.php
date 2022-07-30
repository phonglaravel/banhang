<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/page/js/bootstrap.min.js"></script>
	<script src="/page/js/jquery.scrollUp.min.js"></script>
	<script src="/page/js/price-range.js"></script>
    <script src="/page/js/jquery.prettyPhoto.js"></script>
    <script src="/page/js/main.js"></script>
    <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0" nonce="kCaMVXkE"></script>

<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

  <script>
		  $(document).ready(function(){
        $("input[name='quantity']").change(function(){
            const value =  $(this).val();
			const rowid = $(this).data('rowid');
			
            var _token = $('input[name="_token"]').val();
            
            $.ajax({
            url : "{{url('/changeqty')}}",
            method: "POST",
            data : {value:value,rowid:rowid ,_token:_token},
            success:function(data)
            {
                location.reload();
            }
            });
            })
        
    })
	</script>
    
    <script src='https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js'></script>
     <script>
    if (address_2 = localStorage.getItem('address_2_saved')) {
      $('select[name="calc_shipping_district"] option').each(function() {
        if ($(this).text() == address_2) {
          $(this).attr('selected', '')
        }
      })
      $('input.billing_address_2').attr('value', address_2)
    }
    if (district = localStorage.getItem('district')) {
      $('select[name="calc_shipping_district"]').html(district)
      $('select[name="calc_shipping_district"]').on('change', function() {
        var target = $(this).children('option:selected')
        target.attr('selected', '')
        $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
        address_2 = target.text()
        $('input.billing_address_2').attr('value', address_2)
        district = $('select[name="calc_shipping_district"]').html()
        localStorage.setItem('district', district)
        localStorage.setItem('address_2_saved', address_2)
      })
    }
    $('select[name="calc_shipping_provinces"]').each(function() {
      var $this = $(this),
        stc = ''
      c.forEach(function(i, e) {
        e += +1
        stc += '<option value=' + e + '>' + i + '</option>'
        $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
        if (address_1 = localStorage.getItem('address_1_saved')) {
          $('select[name="calc_shipping_provinces"] option').each(function() {
            if ($(this).text() == address_1) {
              $(this).attr('selected', '')
            }
          })
          $('input.billing_address_1').attr('value', address_1)
        }
        $this.on('change', function(i) {
          i = $this.children('option:selected').index() - 1
          var str = '',
            r = $this.val()
          if (r != '') {
            arr[i].forEach(function(el) {
              str += '<option value="' + el + '">' + el + '</option>'
              $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)
            })
            var address_1 = $this.children('option:selected').text()
            var district = $('select[name="calc_shipping_district"]').html()
            localStorage.setItem('address_1_saved', address_1)
            localStorage.setItem('district', district)
            $('select[name="calc_shipping_district"]').on('change', function() {
              var target = $(this).children('option:selected')
              target.attr('selected', '')
              $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
              var address_2 = target.text()
              $('input.billing_address_2').attr('value', address_2)
              district = $('select[name="calc_shipping_district"]').html()
              localStorage.setItem('district', district)
              localStorage.setItem('address_2_saved', address_2)
            })
          } else {
            $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')
            district = $('select[name="calc_shipping_district"]').html()
            localStorage.setItem('district', district)
            localStorage.removeItem('address_1_saved', address_1)
          }
        })
      })
    })
     </script>
     <script>
      $(document).ready(function(){
        $('.showcmt').click(function(){
          $('.formcmt').removeClass('hidden');
        })
      })
     </script>
     <script>
      $(document).on('mouseenter','.rating',function(){
        let index = $(this).data('index')
        let product_id = $(this).data('product_id')
        
        for(var i=1; i<=5;i++){
          $('#'+product_id+'-'+i).css('color','#ccc')
        }
        for(var i=1; i<=index;i++){
          $('#'+product_id+'-'+i).css('color','#ffcc00')
        }
      })
      $(document).on('mouseleave','.rating',function(){
        let index = $(this).data('index')
        let product_id = $(this).data('product_id')
        let rating = $(this).data('rating');
        
        for(var i=1; i<=5;i++){
          $('#'+product_id+'-'+i).css('color','#ccc')
        }
        for(var i=1; i<=rating;i++){
          $('#'+product_id+'-'+i).css('color','#ffcc00')
        }
      })
      $(document).on('click','.rating',function(){
        let index = $(this).data('index')
        let product_id = $(this).data('product_id')
        var _token = $('input[name="_token"]').val();
          
          $.ajax({
          url : "{{url('/post-rating')}}",
          method: "POST",
          data : {index:index,product_id:product_id ,_token:_token},
          success:function(data)
          {
            for(var i=1; i<=5;i++){
          $('#'+product_id+'-'+i).css('color','#ccc')
        }
        for(var i=1; i<=data;i++){
          $('#'+product_id+'-'+i).css('color','#ffcc00')
        }
       
          }
          });
          
      })
     </script>
     <script>
      $('.like').click(function(){
        product_id = $(this).data('product_id')
        user_id = $(this).data('user_id')
        var _token = $('input[name="_token"]').val();
          
          $.ajax({
          url : "{{url('/like')}}",
          method: "POST",
          data : {product_id:product_id,user_id:user_id ,_token:_token},
          success:function(data)
          {
           if(data==1){
            $('#like-'+product_id).css('color','blue')
           }
           if(data==2){
            $('#like-'+product_id).css('color','red')
           }
       
          }
          });
      })
     </script>
     <script>
      $(document).ready(function(){
        $('#sort').change(function(){
          let url = $(this).val()
          if(url){
            window.location = url
          }
          return false
        })
      })
     </script>
     