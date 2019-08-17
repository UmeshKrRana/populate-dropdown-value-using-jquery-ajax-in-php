<?php
    include_once './data-controller.php';

    $data               =           new DataController();
    $languages          =           $data->getLanguages();
?>

<!doctype html>
<html lang="en">

<head>
    <title>Dropdown Filter in PHP Using jQuery AJAX </title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 m-auto d-block shadow p-5">
                <form id="filterForm">
                    <label for="selectLang">Language </label>
                    <div class="form-group">
                        <select class="form-control form-control-md" id="selectLang">
                            <option selected disabled>Select Language </option>
                            <?php foreach($languages as $language): ?>
                            <option value="<?php echo $language['language_id']; ?> ">
                                <?php echo $language['language_name']; ?> </option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <label for="selectFrame">Framework </label>
                    <div class="form-group">
                        <select class="form-control form-control-md" id="selectFrame">
                            <option>Select Framework </option>
                        </select>
                    </div>

                    <label for="selectVersion">Current Version </label>
                    <div class="form-group">
                        <select class="form-control form-control-md" id="selectVersion">
                            <option>Select Version </option>
                        </select>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
        integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
        integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous">
    </script>

    <script>
    $(document).ready(function() {

        // ------------------ [ Language dropdown Change Event ] --------------
        $("#selectLang").change(function() {
            var languageId = $(this).val();
            $("#selectFrame").fadeIn('slow');

            $.ajax({
                url: 'process-controller.php',
                type: 'POST',
                data: {
                    langId: languageId
                },
                dataType: "JSON",

                success: function(result) {
                    var items = "";
                    $("#selectFrame").empty();
                    $("#selectVersion").empty();

                    $("#selectFrame").append(
                        "<option selected disabled> Select Framework </option>");
                    $("#selectVersion").append(
                        "<option selected disabled> Select Version </option>");

                    $.each(result, function(i, item) {
                        $("#selectFrame").append("<option value='" + item
                            .framework_id + "'>" + item.framework_name +
                            "</option>");
                    });
                }
            });
        });


        // ------------- [ Framework Dropdown Change ] ---------------

        $("#selectFrame").change(function() {
            var frameworkId = $(this).val();
            $(this).fadeIn();

            $.ajax({
                url: './process-controller.php',
                type: 'POST',
                data: {
                    framId: frameworkId
                },
                dataType: 'JSON',

                success: function(result) {
                    var version = "";
                    $("#selectVersion").empty();

                    $.each(result, function(i, version) {
                        $("#selectVersion").append("<option>" + version.version +
                            "</option>");
                    });
                }
            });
        });
    });
    </script>

</body>

</html>