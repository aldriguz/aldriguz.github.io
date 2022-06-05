---
layout: post
title:  "Running Jekyll on Docker"
date:   2020-07-25 10:30:00 -0500
categories: blog learning
tags: jekyll docker
description: Follow this guide to be able to run Jekyll with Docker, it's fun.
---

I will share my experience using jekyll with Github Pages, since I use windows is kind of dificult to me to have an [localhost](http://localhost) environment running Jekyll to se your blog with your eyes on your machine.

![/assets/img/running-jekyll-console.png](/assets/img/running-jekyll-console.png)

But, we have Docker now, a magical containering tool to have you running apps quickly, so this is the guide I follow to have running my repository of my Jekyll project using docker.

# Requirements

- docker
- console screen
- jekyll project
- git

# Prepare your code

First, we need your code in a folder, this will be your root path, the place we will run docker jekyll container

```bash
cd my_project_path
```

Now we will be ready, on this path you will add a new file a ***docker-compose.yml*** 

# Compose docker file

This new file will have your container environment running, so copy this content to the file

```yaml
version: '3'
services:
  jekyll:
    image: starefossen/github-pages
    environment:
      - "JEKYLL_GITHUB_TOKEN:${JEKYLL_GITHUB_TOKEN}"
    ports:
      - "4000:4000"
    volumes:
      - ./:/usr/src/app
    tty: true
```

# Running up your jekyll project

Now you need to run in your root folder this next command, the commmand that will get up and running your [localhost](http://localhost) environment

```bash
docker-compose up
```

next you will see an screen like this if everithing runs correctly

![/assets/img/blog-results.png](/assets/img/blog-results.png)

Finally, you need to go to this address in your browser to see your app running 🙂

```bash
http://localhost:4000/
```

I hope this helps you to save time and keep things running faster as I am do now