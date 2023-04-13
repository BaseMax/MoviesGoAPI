[![golangci-lint](https://github.com/BaseMax/MoviesGoAPI/actions/workflows/golangci-lint.yml/badge.svg?branch=main)](https://github.com/BaseMax/MoviesGoAPI/actions/workflows/golangci-lint.yml)

# Movies Go API

## Design a Movies API with Search, Filtering, Pagination, and Sorting

Your task is to design a RESTful API for a movies site that allows users to search, filter, paginate, and sort movies. The API should be designed using Go programming language and a database of your choice.

The API should allow clients to search for movies based on title, genre, and release year. It should also allow clients to filter movies based on one or more genres, and sort movies based on title, release year, or rating.

The API should follow best practices in software engineering and adhere to RESTful design principles. It should also include error handling and should be secure.

## Endpoints

1. Get Movies `GET /movies`: Retrieve a list of movies. You can optionally specify query parameters to filter, paginate, and sort the results.

Query Parameters:

  - `q` (optional): Search query. Search for movies with a title that contains the specified string.
  - `genres` (optional): Filter movies by genre. Accepts a comma-separated list of genres. Only movies that belong to at least one of the specified genres will be returned.
  - `year` (optional): Filter movies by release year. Accepts a single year or a range of years separated by a hyphen (e.g., 1990-1999).
  - `page` (optional): Page number. Used for pagination. Defaults to 1 if not specified.
  - `limit` (optional): Number of movies to return per page. Used for pagination. Defaults to 20 if not specified.
  - `sort` (optional): Sort order. Accepts title, year, and rating. Use a minus sign (-) prefix to sort in descending order (e.g., -title).

Response:

  Status Code: 200 OK

  Body: An array of movie objects. Each object should include the following fields:
   - `id`: The movie's unique identifier.
   - `title`: The movie's title.
   - `genres`: An array of strings representing the movie's genres.
   - `year`: The movie's release year.
   - `rating`: The movie's rating (on a scale of 1 to 10).

2. Get Movie `GET /movies/{id}`: Retrieve a specific movie by its ID.

Path Parameters:

  - `id`: The ID of the movie to retrieve.

Response:

  Status Code: 200 OK

  Body: The movie object with the specified ID. The object should include the same fields as in the response for the GET /movies endpoint.


3. Add Movie `POST /movies`: Add a new movie.

Request Body:

  A JSON object representing the movie to add. The object should include the following fields:
   - `title`: The movie's title.
   -  `genres`: An array of strings representing the movie's genres.
   -  `year`: The movie's release year.
   -  `rating`: The movie's rating (on a scale of 1 to 10).

Response:

  Status Code: 201 Created
  
  Body: The movie object representing the newly added movie. The object should include the same fields as in the response for the GET /movies endpoint.

4. Update Movie `PUT /movies/{id}`: Update an existing movie by its ID.

Path Parameters:

  `id`: The ID of the movie to update.

Request Body:

  A JSON object representing the movie to update. The object should include the following fields:
    - `title`: The movie's new title (optional).
    - `genres`: An array of strings representing the movie's new genres (optional).
    - `year`: The movie's new release year (optional).
    - `rating`: The movie's new rating (on a scale of 1 to 10) (optional).

Response:

  Status Code: 200 OK

  Body: The updated movie object. The object should include the same fields as in the response for the GET /movies endpoint.

5. Delete Movie `DELETE /movies/{id}`: Delete a movie by its ID.

Path Parameters:

  id: The ID of the movie to delete.

Response:

  Status

## Requirements

Your solution should include the following:

- A Go application that implements the RESTful API.
- A database schema that defines the structure of the movies table.
- A set of endpoints that allows clients to search, filter, paginate, and sort movies.
- API documentation that explains the endpoints, their expected parameters and responses, and any other relevant information.
- Unit tests for the application and any helper functions you may create.
- You are free to use any third-party libraries or frameworks that you find useful, but you should be able to justify your choices. You should also use Git for version control and submit your solution as a Git repository.

### Evaluation Criteria

We will evaluate your solution based on the following criteria:

- Compliance with the requirements.
- Code quality, including readability, maintainability, and modularity.
- Use of best practices, including separation of concerns, error handling, security, and scalability.
- Unit test coverage and effectiveness.
- Your ability to justify your choices of libraries and frameworks.

### Submission

Please submit your solution as a Git repository and provide us with a link to it. We will clone your repository and evaluate your solution locally. You should include a README file that explains how to build, run, and test your application.

## Additional Resources

If you need help getting started, here are some resources that you may find useful:

- Creating a RESTful API With Golang: https://tutorialedge.net/golang/creating-restful-api-with-golang/
- Best Practices for Designing a Pragmatic RESTful API: https://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api

Copyright 2023, Max Base
