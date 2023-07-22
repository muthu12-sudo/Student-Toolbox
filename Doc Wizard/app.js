const express = require('express');
const fs = require('fs');
const path = require('path');
const multer = require('multer');
const {exec} = require('child_process');
const app = express();
const admZip = require('adm-zip')
app.use(express.static(path.join(__dirname , 'uploads')));
app.use(express.static('public'));
const bodyParser = require('body-parser');
const { ChildProcess } = require('child_process');
const { stdout } = require('process');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
const merge = require('pdf-merge');
const docxToPdf = require('docx-to-pdf');
const pdfjs = require('pdfjs-dist');
const ExcelJS = require('exceljs');


//multer config

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    const directory = 'uploads/';
    if (!fs.existsSync(directory)) {
      fs.mkdirSync(directory, { recursive: true });
    }
    cb(null, directory)
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + path.extname(file.originalname)) //Appending extension
  },
});

const upload = multer({storage:storage}).single('file')

app.get('/', (req, res) => {
  fs.readFile('index.html', (err, data) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Error reading file.');
    }
    res.setHeader('Content-Type', 'text/html');
    res.send(data);
  });
});

app.get('/merge', (req, res) => {
  fs.readFile('merge.html', (err, data) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Error reading file.');
    }
    res.setHeader('Content-Type', 'text/html');
    res.send(data);
  });
  });

app.get('/pdftoword', (req, res) => {
  fs.readFile('pdf to word.html', (err, data) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Error reading file.');
    }
    res.setHeader('Content-Type', 'text/html');
    res.send(data);
  });
});

app.get('/pdftoexcel', (req, res) => {
  fs.readFile('pdf to excel.html', (err, data) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Error reading file.');
    }
    res.setHeader('Content-Type', 'text/html');
    res.send(data);
  });
});

app.get('/pdftojpg', (req, res) => {
  res.sendFile(__dirname + '/pdf to jpg.html')
});

app.get('/wordtopdf', (req, res) => {
  fs.readFile('word to pdf.html', (err, data) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Error reading file.');
    }
    res.setHeader('Content-Type', 'text/html');
    res.send(data);
  });
});

app.get('/jpgtopdf', (req, res) => {
  fs.readFile('jpg to pdf.html', (err, data) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Error reading file.');
    }
    res.setHeader('Content-Type', 'text/html');
    res.send(data);
  });
});



//PDF TO IMAGE conversion
app.post('/convertpdfjpg', (req, res) => {
  upload(req, res, (err) => {
    if (err) {
      console.log(err)
    } else {
      console.log(req.file.path)
      const outputfile = Date.now() + "output.zip"

      const outputzip = new admZip();
      const directory = 'uploads/pdftojpg';
      exec(`magick convert  ${req.file.path} -quality 100 ${directory}/output-%3d.jpg`, (err, stdout, stderr) => {
        if (err) {
          console.log(err);
          return res.status(500).send('Error converting file.');
        }
        // Once the files are created, read them from disk and add them to the zip
        fs.readdir(__dirname, (err, files) => {
          if (err) {
            console.log(err);
            return res.status(500).send('Error reading files.');
          }
          const jpgfiles = files.filter((el) => path.extname(el) === '.jpg');
          if (jpgfiles.length === 0) {
            console.log('No jpg files found.');
            return res.status(500).send('Error creating zip file.');
          }
          // Add the files to the zip
          jpgfiles.forEach((file) => {
            const filePath = path.join(__dirname +'/uploads/'+'pdftojpg', file);
            outputzip.addLocalFile(filePath);
          });
          // Write the zip file to disk
          outputzip.writeZip(__dirname +'/uploads/pdftojpg/'+ outputfile);
          console.log("Coverted Successfully");
        });
      });
    }
  });
});

// Route to handle the PDF to Word conversion
app.post('/convertpdftoword', (req, res) => {
  upload(req, res, (err) => {
    if (err) {
      console.log(err);
    } else {
      console.log(req.file.path);
      const outputfile = Date.now() + '_output.docx';

      // Execute the PDF to Word conversion command
      exec(`unoconv --format=docx --output=${__dirname}/uploads/pdftoword/${outputfile} ${req.file.path}`, (err, stdout, stderr) => {
        if (err) {
          console.log(err);
          return res.status(500).send('Error converting file.');
        }
        console.log('Conversion successful');
        res.download(__dirname +'/uploads/pdftoword/'+ outputfile, (err) => {
          if (err) {
            console.log(err);
            return res.status(500).send('Error downloading file.');
          }
          console.log('File downloaded successfully');
          fs.unlinkSync(__dirname +'/uploads/pdftoword/'+ outputfile); //delete file from the server
        });
      });
    }
  });
});

// Route to handle the PDF merge functionality
app.post('/mergepdf', upload,(req, res) => {
  // Store all uploaded PDF files in an array
  const pdfFiles = [];
  upload(req, res, (err) => {
    if (err) {
      console.log(err);
    } else {
      pdfFiles.push(req.file.path);
      console.log(`PDF file ${req.file.path} uploaded successfully`);

      // Check if all files have been uploaded
      if (pdfFiles.length === req.body.numFiles) {
        // Merge all PDFs and create a new file
        const mergedPdf = Date.now() + '_merged.pdf';
        merge(pdfFiles, {output: __dirname + '/uploads/mergedpdf/' + mergedPdf})
          .then(() => {
            console.log('PDFs merged successfully');
            res.download(__dirname + '/uploads/mergedpdf/' + mergedPdf);
          })
          .catch((err) => {
            console.log(err);
            return res.status(500).send('Error merging PDFs.');
          });
      }
    }
  });
});

//JPG to PDF conversion
app.post('/convertjpgpdf', (req, res) => {
  upload(req, res, (err) => {
    if (err) {
      console.log(err);
    } else {
      console.log(req.file.path);
      const outputfile = Date.now() + "_output.zip";
      const outputzip = new admZip();
      const directory = 'uploads/jpgtopdf';
      exec(`magick convert ${req.file.path} ${directory}/output.pdf`, (err, stdout, stderr) => {
        if (err) {
          console.log(err);
          return res.status(500).send('Error converting file.');
        }
        else{
          console.log("Coverted Successfully");
          
        }
      });
    }
  });
});


// Route to handle the Word to PDF conversion
app.post('/convertwordpdf', (req, res) => {
  upload(req, res, (err) => {
    if (err) {
      console.log(err);
      return res.status(500).send('Error uploading file.');
    } else {
      console.log(req.file.path);
      const outputfile = Date.now() + '_output.pdf';

      // Convert the Word file to PDF using the docx-to-pdf package
      const converter = new docxToPdf();
      converter.convert(req.file.path, path.join(__dirname, '/uploads', outputfile), (err, result) => {
        if (err) {
          console.log(err);
          return res.status(500).send('Error converting file.');
        }
        console.log('File converted successfully');
      });
    }
  });
});


app.post('/convertpdftoexcel', (req, res) => {
  upload(req, res, (err) => {
    if (err) {
      console.log(err);
    } else {
      console.log(req.file.path);
      const outputfile = Date.now() + '_output.xlsx';
      const filePath = path.join(__dirname, req.file.path);
      const workbook = new ExcelJS.Workbook();

      // Read the PDF file using pdfjs-dist package
      pdfjs.getDocument(filePath).promise.then((pdfDoc) => {
        let pages = [];
        for (let i = 1; i <= pdfDoc.numPages; i++) {
          pages.push(pdfDoc.getPage(i));
        }
        return Promise.all(pages);
      }).then((pages) => {
        let rows = {}; // indexed by y-position
        let sheetIndex = 0;
        let rowIndex = 0;

        pages.forEach((page) => {
          page.getTextContent().then((content) => {
            content.items.forEach((item) => {
              // accumulate text items into rows object, per line
              (rows[item.transform[5]] = rows[item.transform[5]] || []).push(item.str);
            });

            // Add the rows to the Excel worksheet
            const worksheet = workbook.addWorksheet(`Sheet ${sheetIndex}`);
            Object.keys(rows).forEach((y) => {
              const row = rows[y];
              worksheet.addRow(row);
            });

            // Reset rows for next page
            rows = {};

            // Write the Excel file when we've processed all pages
            sheetIndex++;
            if (sheetIndex === pages.length) {
              workbook.xlsx.writeFile(`${__dirname}/uploads/pdftoexcel/${outputfile}`).then(() => {
                console.log('Excel file saved successfully.');
              });
            }
          });
        });
      });
    }
  });
});


const port = 4000;
app.listen(port, () => {
  console.log(`Server listening on http://localhost:${port}`);
});
