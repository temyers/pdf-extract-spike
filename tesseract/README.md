# tesseract

OCR scanned PDFs to extract text.

Goal: extract text from PDFs for further processing, e.g. store in Elasticsearch

Running:

```
docker-compose run --rm pdf-to-image
docker-compose run --rm tesseract
```

Note: both containers are pretty slow.

## PDF To Text

The `pdfToText` tool is a faster alternative.

The accuracy of text extraction may be lower, depending on the input PDF.