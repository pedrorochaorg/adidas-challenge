# Adidas Challenge

I've created a simple starter that has 2 projects as submodules, as requestes by the exercise.

I've failed to create all the test cases that were required during the challenge duration.

## Requesites

- Docker/Docker Compose 18.00.0+
- Java 8
- Gradle 4.6+

## Cloning this repo.

While cloning this repo please use the flag `--recurse-submodules` in the `git clone` cmd

## Running the project

Just run the command `docker-compose build` and then `docker-compose up` in the project dir.

The Api should be accessible through `http://localhost:8081`.

You can finder swagger docs in the path `/swagger-ui.html`.


## Api Authentication

The default authentication is Basic Auth, the usernames with lowest to highest permission level are:

- user:password
- admin:admin
