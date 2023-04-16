import json
import random
import requests

BASE_URL = "http://localhost:8080/"

movie_titles = ["Moana", "The Lion King", "Finding Nemo", "Toy Story", "Up"]
movie_genres = ["animation", "adventure", "comedy", "drama", "family"]

for i in range(10000):
    title = random.choice(movie_titles)
    genres = random.sample(movie_genres, k=random.randint(1, len(movie_genres)))

    movie_data = {
        "title": title,
        "year": random.randint(2000, 2022),
        "runtime": f"{random.randint(60, 180)} mins",
        "genres": genres
    }

    json_data = json.dumps(movie_data)

    response = requests.post(BASE_URL + "v1/movies", data=json_data)

    print(f"Request {i+1}: Response status code:", response.status_code)
