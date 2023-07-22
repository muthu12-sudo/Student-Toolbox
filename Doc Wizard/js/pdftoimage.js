
const http = require('http');
const fs = require('fs');

const server = http.createServer((req, res) => {
  // Serve the HTML file
  if (req.url === '/') {
    fs.readFile('pdf to image.html', (err, data) => {
      if (err) {
        res.writeHead(404, {'Content-Type': 'text/html'});
        return res.end('404 Not Found');
      }
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(data);
      return res.end();
    });
  }
});

server.listen(3000, () => {
  console.log('Server listening on port 3000');
});


const pdfPoppler = require('pdf-poppler');

// Input PDF file path
const pdfPath = 'img/BCA.pdf';
// Output image file path
const imagePath = 'img/BCA.jpg';

// Function to convert PDF to image
const convertPdfToImage = async (pdfPath, imagePath) => {
  try {
    // Convert PDF to image
    const opts = {
      format: 'jpeg', // Output image format (you can change it to png, bmp, gif, etc.)
      out_dir: 'img/', // Output directory for temporary files
      out_prefix: 'image_', // Prefix for output image files
      pages: 'all' // Page number to convert (you can change it to convert specific pages)
    };
    await pdfPoppler.convert(pdfPath, opts);
    
    // Return the generated image path
    return imagePath;
  } catch (err) {
    console.error('Error converting PDF to image:', err);
  }
};

// Call the function to convert PDF to image
convertPdfToImage(pdfPath, imagePath)
  .then((imagePath) => {
    console.log(`PDF converted to image successfully! Image saved at: ${imagePath}`);
  })
  .catch((err) => {
    console.error('Error converting PDF to image:', err);
  });
