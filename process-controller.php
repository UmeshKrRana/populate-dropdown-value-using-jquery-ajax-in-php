<?php
    require_once './data-controller.php';
    
    if(isset($_POST['langId'])) {
        $langId              =           $_POST['langId'];

        $dController         =           new DataController();

        $frameworks          =           $dController->frameworkListing($langId);

        echo json_encode($frameworks);
    }

    elseif(isset($_POST['framId'])) {
        $framId              =           $_POST['framId'];

        $dController         =           new DataController();
        
        $version             =           $dController->versionListing($framId);

        echo json_encode($version);

    }
?>