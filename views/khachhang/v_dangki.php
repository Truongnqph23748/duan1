<?php
$error=[];

if(isset($_POST["dangki"])) {
    $ho_ten = $_POST["ho_ten"];
    $mat_khau = $_POST["mat_khau"];
    $hinh = $_FILES["hinh"]["name"];
    $kich_hoat = $_POST["kich_hoat"];
    $email = $_POST["email"];
    $vai_tro = $_POST["vai_tro"];

    if(isset($_FILES["hinh"])){
        $target_dir="image/";
        $file=$_FILES["hinh"]["name"];
        $targetfile=$target_dir.$file;
        $allowupload=true;
        $imagetype=pathinfo($targetfile,PATHINFO_EXTENSION);
        $alootype=["PNG","JPG"];
        $size=200000000;
        if($_FILES["hinh"]["size"]>$size){
            $error["size"]="kích cỡ size ảnh không đc lớn hơn ";
            $allowupload=false;
        }
        if(!in_array($imagetype,$alootype)){
            $error["anh"]="chỉ được image ảnh có định dạng PNG JPG";
            $allowupload=true;
        }


        if($allowupload==true){
            move_uploaded_file($_FILES["hinh"]["tmp_name"],$targetfile);
        }

    }
    if(!$error){
        $sqll="insert into khach_hang values (null,'$mat_khau','$ho_ten','$kich_hoat','$hinh','$email','$vai_tro')";
        $resultt=$conn->exec($sqll);
        echo"đăng kí thành công";
    }

}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<div class="container">
    <h2>Đăng kí</h2>
    <form action="" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>Họ tên</td>
                <td> <input type="text" name="ho_ten"  required></td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td><input type="password" name="mat_khau" required></td>
            </tr>
            <tr>
                <td>Kích hoạt</td>
                <td><input type="number" name="kich_hoat" required></td>
            </tr>
            <tr>
                <td>ảnh</td>
                <td><input type="file" name="hinh" required></td>
            </tr>
            <tr>
                <td>Email </td>
                <td><input type="email" name="email" required></td>
            </tr>
            <tr>
                <td>vai trò</td>
                <td>
                    <select name="vai_tro" id="">
                        <option value="0">Admin</option>
                        <option value="1">Người Dùng</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><input type="submit"  name="dangki" value="Đăng Kí"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>





?>
