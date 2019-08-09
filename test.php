<?php 
$path 'upload/AAA/test.jpg';
$sql_delete = 'DELETE FROM TRN_PICTURE WHERE PIC_ID = ID';
// query
// return rowcount
if($rowreturn > 0){
    unlink($path);
    
}

?>