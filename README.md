[![golangci-lint](https://github.com/BaseMax/MoviesGoAPI/actions/workflows/golangci-lint.yml/badge.svg?branch=main)](https://github.com/BaseMax/MoviesGoAPI/actions/workflows/golangci-lint.yml)


# Movies Go API

## Endpoints

| Method | URL Pattern               | Action                                          |
|--------|---------------------------|-------------------------------------------------|
| GET    | /v1/healthcheck           | Show application health and version information |
| GET    | /v1/movies                | Show the details of all movies                  |
| GET    | /v1/movies/{id}           | Show a details of a specific movie              |
| GET    | /debug/vars               | Display application metrics                     |
| POST   | /v1/movies                | Create a new movie                              |
| POST   | /v1/users                 | Register a new user                             |
| POST   | /v1/tokens/authentication | Generate a new authentication token             |
| POST   | /v1/tokens/password-rest  | Generate a new password rest token              |
| PATCH  | /v1/movies/{id}           | Update the details of a specific movie          |
| DELETE | /v1/movies/{id}           | Delete a specific movie                         |
| PUT    | /v1/users/activated       | Activate a specific user                        |
| PUT    | /v1/users/password        | Update the password for a specific user         |
