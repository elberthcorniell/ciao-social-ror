# Ciao! - The free speech social network
 A free social metwork for sharing ideas without limitations

![Vectores de personas](./public/images/banner.png) <br>
<a href='https://www.freepik.es/vectores/personas'>Vector de Personas creado por pikisuperstar - www.freepik.es</a>

<!-- otro banner: https://www.freepik.es/vector-gratis/grupo-personas-socializando-varios-idiomas_6296241.htm -->

## Built With 

- Ruby v2.7.0
- Ruby on Rails v5.2.4

## Live Demo

[Live Demo on Heroku](https://ciao-social-ror.herokuapp.com)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Github Actions

To make sure the linters' checks using Github Actions work properly, you should follow the next steps:

1. On your recently forked repo, enable the GitHub Actions in the Actions tab.
2. Create the `feature/branch` and push.
3. Start working on your milestone as usual.
4. Open a PR from the `feature/branch` when your work is done.


### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

For testing please escute the next steps:

- Execute the following code on the terminal to get the Gems needed:

```
    bundle install
```

- Make sure to have the testing database running:

```
    rails db:create db:migrate RAILS_ENV=test
```

- Run the test with the following command:

```
    rpsec --format documentation
```

> Tests will be added by Microverse students. There are no tests for initial features in order to make sure that students write all tests from scratch.

### Deployment

TBA

## Authors

👤 **Elbert Corniel**

- GitHub: [@elberthcorniell](https://github.com/elberthcorniell)
- Twitter: [@elberthcorniell](https://twitter.com/elberthcorniell)
- LinkedIn: [Elbert Corniell](https://www.linkedin.com/in/elbert-corniell-989183159/)

👤 **Devkc**

- Github: [@cvilla714](https://github.com/cvilla714)
- Twitter: [@kckeyti](https://twitter.com/kckeyti)
- LinkedIn: [Cosmel Villalobos](https://www.linkedin.com/in/cosvilla/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

TBA

## 📝 License

TBA
