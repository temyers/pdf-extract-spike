# pdf-images

## What

Extract images from within PDF files for further processing.

Uses two stage process:
* pdfimages - extracts embedded images from within PDFs into `images` directory as `.ppm` files
* ppm2jpeg - converts `.ppm` files to `.jpeg`

Running: 
```
./run.sh
./ppm2jpeg.sh
```

