# CSVServer Solution

## Part I

1. Generate the input file:
```bash
chmod +x gencsv.sh
./gencsv.sh 2 8
```

2. Run the container:
```bash
docker run -d -v $(pwd)/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest
```

## Part II

Run the application using docker-compose:
```bash
docker-compose up -d
```

## Part III

The application and Prometheus are now configured:
- CSVServer is accessible at http://localhost:9393
- Prometheus is accessible at http://localhost:9090

To view metrics:
1. Open http://localhost:9090
2. Enter "csvserver_records" in the query box
3. Click Execute and switch to Graph tab