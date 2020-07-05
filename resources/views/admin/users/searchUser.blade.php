@if(isset($users))
@foreach($users as $key => $user)
    <tr>
        <td>
            {{  $key }}
        </td>
        <td>{{ $user->username }}</td>
        <td>{{ $user->email }}</td> 
        <td>
        @if($user->user_image == '')
            <img src="{{ asset('frontend/images/icons/user-image.png') }}" style="width: 40px; height: 40px; border-radius: 50%;" alt="">
        @else
            <img src="{{ URL::to('/') }}/upload/images/{{ $user->user_image }}" style="width: 40px; height: 40px; border-radius: 50%;" alt="">
        @endif
        </td>
        <!-- <td>
            <a href="#" class="btn btn-info">Edit</a>
        </td> -->
        <td>
            <button class="btn btn-danger btnDelete" id="{{ $user->id }}">Delete</button>
        </td>
    </tr>
@endforeach
@endif
<script type="text/javascript">
$( document ).ready(function(){
    $('.btnDelete').click(function() {
				let self = $(this);
				const idU = self.attr('id');
				if($.isNumeric(idU)){
					$.ajax({
						url: "{{ route('admin.deleteUser') }}",
						type: "POST",
						data:{ id: idU },
						beforeSend: function(){
							$('.modal').css('display','block');
						},
						success: function(result){
							self.text('Delete');
							result = $.trim(result);
							if(result === 'OK'){
								window.location.reload(true);
								$('#row_'+idU).hide();
							} else {
								console.log('failed');
							}
							return false; 
						},
					});
				}
			});
});
</script>