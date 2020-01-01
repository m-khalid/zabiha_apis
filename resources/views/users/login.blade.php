<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>


<div class="row list-group-item">
    <form method="POST" action="login_2">
    {{ csrf_field() }}
        <div class="input-group">
          <input type="text" name="name" class="form-control" placeholder="E-mail or Phone . . ."><br>
        
          <input type="text" name="password" class="form-control" placeholder="password . . ."><br>
        
         
          <button class="btn btn-default" type="submit">Register</button>
          </span>
        </div>
    </form>
</div>  
</body>
</html>