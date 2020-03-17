# Usage

```bash
# start group
docker-compose up
# stop group 
docker-compose down
```

- http://localhost:5984/_utils/index.html couchdb-1.7.1
- http://localhost:5984/_fti couchdb-lucene-2.1.0
- http://localhost:5984/_metrics prometheus metriky

to test if lucene is working use:
`http://localhost:5984/_fti/local/lucene-test/_design/lucene/by_param1?q=srncik`
