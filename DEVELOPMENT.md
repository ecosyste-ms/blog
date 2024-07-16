# Development

## Setup

First things first, you'll need to fork and clone the repository to your local machine.

`git clone https://github.com/ecosyste-ms/blog.git`

The project uses ruby on rails which have a number of system dependencies you'll need to install. 

- [ruby 3.3.4](https://www.ruby-lang.org/en/documentation/installation/)
- [node.js 16+](https://nodejs.org/en/download/)

Once you've got all of those installed, from the root directory of the project run the following commands:

```
bundle install
bundle exec jekyll serve
```

You can then load up [http://127.0.0.1:4000/](http://127.0.0.1:4000/) to access the service.

### Docker

Alternatively you can use the existing docker configuration files to run the app in a container.

Run this command from the root directory of the project to start the service.

`docker-compose up --build`

You can then load up [http://127.0.0.1:4000/](http://127.0.0.1:4000/) to access the service.

## Deployment

A container-based deployment is highly recommended, we use [dokku.com](https://dokku.com/).