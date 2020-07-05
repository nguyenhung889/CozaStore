@extends('admin.base')
@section('content')
<style>
.selection{
	display: flex;
}
.has-search{
	flex-grow: 2;
	margin-left: 10px;
}
.modal {
    display:    none;
    position:   fixed;
    z-index:    1000;
    top:        0;
    left:       0;
    height:     100%;
    width:      100%;
    background: rgba( 255, 255, 255, .8 ) 
                url('{{asset('/upload/images/loading2.gif')}}') 
                50% 50% 
                no-repeat;
}
</style>
<div class="row ">
	<div class="col-md-12 selection">
		<div>
			<a href="{{ route('admin.getAddBlogs') }}" class="btn btn-primary"> Add blogs + </a>
			<a href="{{ route('admin.blogs') }}" class="btn btn-primary">View all</a>
		</div>
		<form action="" method="post" style="width: 80%;">
			<div class="form-group has-search">
				<span class="fa fa-search form-control-feedback"></span>
				<input type="search" class="form-control" placeholder="Search" id="searchBlogs">
			</div>
		</form>
	</div>
</div>
<div class="modal"></div>
<div class="row mt-3">
	<div class="col-md-12">
		<table class="table">
			<thead>
				<tr>	
					<th>#</th>
          <th>Blog name</th>
          <th>Image</th>
          <th>Description</th>
          <th>Status</th>
          <th>Created at</th>
					<th colspan="2" width="10%" class="text-center">Action</th>
				</tr>
			</thead>
			<tbody class="content">
			@foreach($blogs as $key => $blog)
			<?php 
				$dateTime = $blog->created_at;
				$date = $dateTime->format('d/m/Y');
				$link = json_decode($blog->b_image);
			?>
					<tr>
						<td>
							{{ $key + 1 }}
						</td>
            <td style="width: 200px">
              {{ $blog->b_name }}
						</td>
            <td>
              <img src="{{ URL::to('/') }}/upload/images/{{ $link }}" alt="" width="100px" height="80px">
            </td>
            <td style="width: 300px">
            {{ $blog->b_description }}
            <td>
              <label class="label label-success" for="">{{ ($blog->b_active === 1) ? 'Public' : 'Private' }}</label>
            </td>
            <td>
              {{ $date }}
            </td>
						<td style="display: flex; justify-content: space-between;">
              <a href="{{ route('admin.editBlogs',$blog->id) }}" class="btn btn-info">Edit</a>
							<button class="btn btn-danger btnDelete" id="{{ $blog->id }}">Delete</button>
						</td>
					</tr>
				@endforeach
			</tbody>
		</table>
		{{-- {{ $link->links() }} --}}
		{{-- phan trang va tim kiem --}}
		{{-- {{ $link->appends(request()->query())->links() }} --}}
	</div>
</div>
@stop
@push('js')
	<script type="text/javascript">
		$(function(){
			$('.btnDelete').on('click',function() {
            let self = $(this);
            let idBlog = self.attr('id');
            console.log(idBlog);
            if($.isNumeric(idBlog)){
                $.ajax({
                    url: "{{ route('admin.deleteBlogs') }}",
                    type: "POST",
                    data: {id: idBlog},
                    beforeSend: function(){
                        $('.modal').css('display','block');
                    },
                    success: function(result){
                        self.text('Delete');
                        result = $.trim(result);
                        if(result === 'OK'){
                            window.location.reload(true);
                            $('#row_'+idBlog).hide();
                        } else {
                            console.log('Delete fail');
                        }
                        return false; 
                    }
                });
            }
        });
			$('#searchBlogs').keyup(function(){
				let value = $(this).val();
				$.ajax({
					url: "{{ route('admin.searchBlogs') }}",
					type: "post",
					data: { value: value },
					success: function(res){
						$('.content').html('');
						$('.content').append(res);
						//console.log(res);
					}
				})
			});
		})
	</script>
@endpush