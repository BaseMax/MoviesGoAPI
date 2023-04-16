# Movies Go API

## Design a Movies API with Search, Filtering, Pagination, and Sorting

Your task is to design a RESTful API for a movies site that allows users to search, filter, paginate, and sort movies. The API should be designed using Go programming language and a database of your choice.

The API should allow clients to search for movies based on title, genre, and release year. It should also allow clients to filter movies based on one or more genres, and sort movies based on title, release year.

The API should follow best practices in software engineering and adhere to RESTful design principles. It should also include error handling and should be secure.

## Endpoints

1. Get Movies `GET /v1/movies`: Retrieve a list of movies. You can optionally specify query parameters to filter, paginate, and sort the results.

Query Parameters:

  - `genres` (optional): Filter movies by genre. Accepts a comma-separated list of genres. Only movies that belong to at least one of the specified genres will be returned.
  - `year` (optional): Filter movies by release year. Accepts a single year or a range of years separated by a hyphen (e.g., 1990-1999).
  - `page` (optional): Page number. Used for pagination. Defaults to 1 if not specified.
  - `page_size` (optional): Number of movies to return per page. Used for pagination. Defaults to 20 if not specified.
  - `sort` (optional): Sort order. Accepts title, year, and rating. Use a minus sign (-) prefix to sort in descending order (e.g., -year).

Response:

  Status Code: 200 OK

  Body: An array of movie objects. Each object should include the following fields:
   - `id`: The movie's unique identifier.
   - `title`: The movie's title.
   - `genres`: An array of strings representing the movie's genres.
   - `year`: The movie's release year.
   - `runtime`: The movie runtime.

2. Get Movie `GET /v1/movies/{id}`: Retrieve a specific movie by its ID.

Path Parameters:

  - `id`: The ID of the movie to retrieve.

Response:

  Status Code: 200 OK

  Body: The movie object with the specified ID. The object should include the same fields as in the response for the GET /movies endpoint.

3. Add Movie `POST /v1/movies`: Add a new movie.

Request Body:

  A JSON object representing the movie to add. The object should include the following fields:
   - `title`: The movie's title.
   - `genres`: An array of strings representing the movie's genres.
   - `year`: The movie's release year.
   - `runtime`: That must with "N mins" format.

Response:

  Status Code: 201 Created

  Body: The movie object representing the newly added movie. The object should include the same fields as in the response for the GET /movies endpoint.

4. Update Movie `PATCH /v1/movies/{id}`: Update an existing movie by its ID.

Path Parameters:

  `id`: The ID of the movie to update.

Request Body:

  A JSON object representing the movie to update. The object should include the following fields:
    - `title`: The movie's new title (optional).
    - `genres`: An array of strings representing the movie's new genres (optional).
    - `year`: The movie's new release year (optional).
    - `runtime`: The movie runtime. (optional).

Response:

  Status Code: 200 OK

  Body: The updated movie object. The object should include the same fields as in the response for the GET /movies endpoint.

5. Delete Movie `DELETE /movies/{id}`: Delete a movie by its ID.

Path Parameters:

  id: The ID of the movie to delete.

## Examples

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

### Authors

- Maximilian Edison
- Max Base

Copyright 2023, Max Base
