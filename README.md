
# Movies Go API


## Endpoints

- `GET /v1/movies`


```console
curl localhost:8080/api/movies
```

Response body:

```json
{
	"metadata": {
		"current_page": 1,
		"page_size": 20,
		"first_page": 1,
		"last_page": 1,
		"total_records": 3
	},
	"movies": [
		{
			"id": 1,
			"title": "Moana",
			"year": 2016,
			"runtime": "107 mins",
			"genres": [
				"animation",
				"adventure"
			],
			"version": 1
		},
		{
			"id": 2,
			"title": "test",
			"year": 2018,
			"runtime": "134 mins",
			"genres": [
				"sci-fi",
				"action",
				"adventure"
			],
			"version": 2
		},
		{
			"id": 4,
			"title": "The Breakfast Club",
			"year": 1986,
			"runtime": "96 mins",
			"genres": [
				"drama"
			],
			"version": 1
		}
	]
}

```

```console
curl "localhost:4000/v1/movies?title=moana&genres=animation,adventure"
```

Response body:

```json
{
	"metadata": {
		"current_page": 1,
		"page_size": 20,
		"first_page": 1,
		"last_page": 1,
		"total_records": 1
	},
	"movies": [
		{
			"id": 1,
			"title": "Moana",
			"year": 2016,
			"runtime": "107 mins",
			"genres": [
				"animation",
				"adventure"
			],
			"version": 1
		}
	]
}

```


- `GET /v1/movie/{id}`

```console
curl localhost:8080/v1/movies/1
```

Response body:

```json
{
	"movie": {
		"id": 1,
		"title": "Moana",
		"year": 2016,
		"runtime": "107 mins",
		"genres": [
			"animation",
			"adventure"
		],
		"version": 1
	}
}
```


- `PATCH /v1/movies/{id}`

```console
curl -X PATCH -d '{"title": null, "year": null}' localhost:8080/v1/movies/4
```

Response body:

```json
{
	"movie": {
		"id": 4,
		"title": "The Breakfast Club",
		"year": 1986,
		"runtime": "96 mins",
		"genres": [
			"drama"
		],
		"version": 3
	}
}
```

- `DELETE /v1/movies/{id}`

```console
curl -X DELETE localhost:4000/v1/movies/3
```

Response body

```json
{
    "message": "movie successfully deleted"
}
```

- `POST /v1/movies`

```console
BODY='{"title":"Moana","year":2016,"runtime":"107 mins", "genres":["animation","adventure"]}'
curl -d "$BODY" localhost:4000/v1/movies
```

Response body:

```json
{
	"movie": {
		"id": 1,
		"title": "Moana",
		"year": 2016,
		"runtime": "107 mins",
		"genres": [
		"animation",
		"adventure"
		],
	"version": 1
	}
}
```
