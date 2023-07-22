<?php
require 'vendor/autoload.php'; // Include the PhpSpreadsheet autoloader

use PhpOffice\PhpSpreadsheet\IOFactory;

// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
    // Check if a file was uploaded
    if (isset($_FILES['pdfFile']) && $_FILES['pdfFile']['error'] === UPLOAD_ERR_OK) {
        $fileTmpPath = $_FILES['pdfFile']['tmp_name'];
        $fileName = $_FILES['pdfFile']['name'];
        $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

        // Check if the uploaded file is a PDF
        if ($fileExtension === 'pdf') {
            // Load the PDF file
            $spreadsheet = IOFactory::load($fileTmpPath);

            // Convert the PDF to Excel
            // Add your conversion logic here using PhpSpreadsheet methods

            // Save the Excel file
            $excelFileName = 'converted_excel.xlsx'; // Set the desired name for the converted Excel file
            IOFactory::createWriter($spreadsheet, 'Xlsx')->save($excelFileName);

            // Send the Excel file to the client for download
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="' . $excelFileName . '"');
            header('Cache-Control: max-age=0');
            readfile($excelFileName);
            unlink($excelFileName); // Delete the temporary Excel file
            exit();
        } else {
            echo 'Error: Please upload a PDF file.';
        }
    } else {
        echo 'Error: Please choose a file to upload.';
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PDF to Excel</title>

    <!-- offline bootstrap-->

    <link rel="stylesheet" type="text/css" href="bootstrap\css\bootstrap.min.css">

    <!-- css files-->

    <link rel="stylesheet" href="css/doc card.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/upload1.css">
</head>

<body>
    <div class="title">
        <a href="docwizard.html" id="navbartitle">DocWizard</a>
    </div>
    <nav class="sticky-top">

        <div class="nav">
            <ul>
                <a href="docwizard.html">
                    <li>Home</li>
                </a>
                <a href="Merge.html">
                    <li>Merge PDF</li>
                </a>
                <a href="pdf to word.html">
                    <li>PDF to Word</li>
                </a>
                <a href="pdf to excel.html">
                    <li>PDF to Excel</li>
                </a>
                <a href="pdf to jpg.html">
                    <li>PDF to JPG</li>
                </a>
                <a href="word to pdf.html">
                    <li>Word to PDF</li>
                </a>
                <a href="jpg to pdf.html">
                    <li>JPG to PDF</li>
                </a>
            </ul>
        </div>
    </nav>


    <div class="water">
        <div class="drop">
            <h3><strong class="red">PDF to Excel</strong></h3>
            <div class="container">
                <div class="header-section">
                    <h1>Upload Files</h1>
                    <p>Upload files you want to share with your team members.</p>
                    <p>PDF only allowed.</p>
                </div>
                <div class="drop-section">
                    <div class="col">
                        <div class="cloud-icon">
                            <img src="img/icons/cloud.png" alt="cloud">
                        </div>
                        <span>Drag & Drop your files here</span>
                        <span>OR</span>
                        <button class="file-selector">Browse Files</button>
                        <form method="post" action="pdf-to-excel.php" enctype="multipart/form-data">
                        <input type="file" name="pdfFile" class="file-selector-input" multiple>
                            <input type="submit" name="submit" value="Convert to Excel">
                        </form>
                        
                    </div>
                    <div class="col">
                        <div class="drop-here">Drop Here</div>
                    </div>
                </div>
                <div class="list-section">
                    <div class="list-title">Uploaded Files</div>
                    <div class="list"></div>
                    <center><button class="key" type="button">UPLOAD</button></center>
                </div>

            </div>

        </div>
    </div>

    <!-- script files-->

    <script src="js/script.js"></script>

    <script src="js/upload1.js"></script>

    <script type="text/javascript" src="bootstrap\js\bootstrap.bundle.min.js"></script>

    <!-- <script type="text/javascript" src="bootstrap\js\bootstrap.esm.min.js"></script> -->


    <!-- online cdn bootsrap script -->

    <!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> -->

</body>

</html>