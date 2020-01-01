<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body>

<span><b>Register</b></span>


<div class="row list-group-item">
    <form method="POST" action="createaccount">
    {{ csrf_field() }}
        <div class="input-group">
          <input type="text" name="name" class="form-control" placeholder="Name . . ."><br>
          <input type="text" name="mail" class="form-control" placeholder="E-mail. . ."><br>
          <input type="text" name="address" class="form-control" placeholder="Address . . ."><br>
          <input type="text" name="phone" class="form-control" placeholder="phone . . ."><br>
          <input type="text" name="password" class="form-control" placeholder="password . . ."><br>
          <input type="text" name="confirmpassword" class="form-control" placeholder="confirm password . . ."><br>
         
          <button class="btn btn-default" type="submit">Register</button>
          </span>
        </div>
    </form>
</div>  
</body>
</html>


