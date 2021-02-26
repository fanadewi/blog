# Simple-Ana-Blog

[https://simple-ana-blog.herokuapp.com/](https://simple-ana-blog.herokuapp.com/)

## Install

### Clone the repository

```shell
git clone git@github.com:fanadewi/blog.git
cd blog
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.7.2`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.7.2
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Set environment variables

Using [dotenv](https://github.com/bkeepers/dotenv):

See [.env_template](https://github.com/fanadewi/blog/blob/master/.env_template)

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve


```shell
rails s
```
