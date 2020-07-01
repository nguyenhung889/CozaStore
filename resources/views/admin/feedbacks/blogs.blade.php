
    <thead>
        <tr>	
            <th>#</th>
            <th>User name</th>
            <th>Email</th>
            <th>Blog name</th>
            <th>Content</th>
            <th>Evaluation time</th>    
        </tr>
    </thead>
    <tbody>
        @foreach($data as $key => $item)
        <tr>
            <td>{{ $key + 1 }}</td>
            <td>{{ $item->co_name }}</td>
            <td>{{ $item->co_email }}</td>
            <td>{{ $item->b_name }}</td>
            <td>{{ $item->co_content }}</td>
            <td>{{ $item->created_at }}</td>
        </tr>
        @endforeach
    </tbody>