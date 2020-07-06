@foreach($blogs as $key => $blog)
<?php 
    $dateTime = $blog->created_at;
    $date = $dateTime->format('d/m/Y');
    $link = json_decode($blog->b_image);
?>
<tr>
    <td>
        {{ $key }}
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
    })
</script>