@extends('admin.base')

@section('content')
<div class="row">
	<div class="col-md-12">
		<h3 class="text-center">Transactions</h3>
		<br>
		<!-- @if($message = Session::get('success'))
			<div class="alert alert-success">
				<p>{{ $message }}</p>
			</div>
		@endif -->
	</div>
</div>
<div class="modal"></div>
<div class="row mt-3">
	<div class="col-md-12">
		<table class="table">
			<thead>
				<tr>	
					<th>#</th>
          			<th>Transaction ID</th>
					<th>Username</th>
					<th>Address</th>
					<th>Telephone</th>
					<th>Payment method</th>
					<th>Total </th>
					<th>Status</th>
					<th colspan="2"  class="text-center">Action</th>
				</tr>
			</thead>
			<tbody>
				@if(isset($transactions))
          @foreach($transactions as $key => $transaction)
          <tr>
				<td>
					{{  $key }}
				</td>
				<td>#{{ $transaction->id }}</td>
				<td>{{ isset($transaction->user->username) ? $transaction->user->username : '[N\A]'}}</td>
				<td>{{ $transaction->tr_address }}</td>
				<td>{{ $transaction->tr_phone }}</td>
				<td>{{ $transaction->tr_payment_method }}</td>
            <td>{{ $transaction->tr_total }}$</td>
            <td>
            @if( $transaction->tr_status   == 1)
              <a href="#" class="label-success label">Handled</a>
							@if($transaction->tr_confirm == 1)
								<p>(Customer was received)</p>
							@else
								<p>(Shipping)</p>
							@endif
			@elseif($transaction->tr_confirm == 2)
				<a href="" class="label-success label" data-toggle="modal" data-target="#exampleModalCenter">
				Customer requested to cancel this order
				</a>

				<!-- Modal -->
				<form action="{{ route('admin.confirmTransaction', ['id' => $transaction->id]) }}" method="POST">
				@csrf
					<input type="hidden" name="transaction_id" id="transaction_id">
					<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Request to cancel this order</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							Are you sure you confirm to cancel in this order?
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Confirm</button>
						</div>
						</div>
					</div>
					</div>
				</form>
			@elseif($transaction->tr_confirm == 3)
				<img src="{{ asset('upload/images/cancelled.jpg') }}" style="width: 100px; height: 50px;" alt="">
            @else
              	<a href="{{route('admin.sendEmailBill', $transaction->id)}}" class="label-default label">Waiting for progressing</a>
            @endif
            </td>
				<td>
					<a class="btn btn-danger btnDelete" id="{{$transaction->id}}" style="color: white">Delete</a>
					<a href="{{route('admin.getViewOrder',$transaction->id)}}" class="btn btn-light js_order_item" id="" data-id="{{ $transaction->id }}"><i class="fas fa-eye"></i></a>
				</td>
			</tr>
          @endforeach
        @endif
			</tbody>
		</table>
	  {{ $transactions->links() }}
		{{-- phan trang va tim kiem --}}
		{{-- {{ $link->appends(request()->query())->links() }} --}}
	</div>

  <div class="modal" tabindex="-1" role="dialog" id="myModalOrder">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Order detail #<b class="transaction_id"></b></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body" id="md_content">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
@push('js')
<script type="text/javascript">
    $(function(){
      $(".js_order_item").click(function(event){
        event.preventDefault();
        let $this = $(this);
        let url = $this.attr('href');
        $(".transaction_id").text('').text($this.attr('data-id'));

        $("#myModalOrder").modal('show');
        
        $.ajax({
          url: url,
        }).done(function(res){
          if(res){
            $("#md_content").html('').append(res);
          }
        });
      });
      $('.btnDelete').click(function(event){
      event.preventDefault();
      let self = $(this);
				let idTr = self.attr('id');
				if($.isNumeric(idTr)){
					$.ajax({
						url: "{{ route('admin.deleteTransaction') }}",
						type: "POST",
						data: {id: idTr},
						// beforeSend: function(){
						// 	$('.modal').css('display','block');
						// },
						success: function(result){
							self.text('Delete');
							result = $.trim(result);
							if(result === 'OK'){
								window.location.reload(true);
								$('#row_'+idTr).hide();
							} else {
								alert('Delete fail');
							}
							return false;
						}
					});
				}
    });
    });
    
</script>
@endpush