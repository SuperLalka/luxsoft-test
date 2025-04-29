<!-- PROJECT LOGO -->
<div align="center">
  <h2>luxsoft-test</h2>
  <a href="https://lsfusion-erp.com/">
    <img src="https://lsfusion-erp.com/imgs/news/lsFusion_logo_horizontal.png" alt="Logo" width="auto" height="300">
  </a>
  <h3 align="center">README тестового задания</h3>

  <p align="center">
    Приложение на платформе lsFusion: "Турнирная таблица". Задание по расширению функционала примера
  </p>
</div>

<a name="readme-top"></a>

<hr>

<!-- ABOUT THE PROJECT -->
## About The Project

Задание предполагает расширение функционала примера

### Функциональные требования:

#### Разработать логику (в том числе интерфейс) поддерживающую:

- Составы команд.
- Ввод и отображение авторов забитых голов в матчах. Предусмотреть ограничение на принадлежность автора гола команде, участвующей в матче.
- Автоматический расчет и отображение таблицы бомбардиров турнира.

### Технические требования
* Использовать платформу lsFusion.
* Использовать PostgreSQL.

### Built With

* [![lsFusion][lsFusion-badge]][lsFusion-url]
* [![Postgres][Postgres-badge]][Postgres-url]
* [![Docker][Docker-badge]][Docker-url]


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

Скопировать проект в репозиторий на локальной машине (HTTPS или SSH)
  ```sh
  git clone https://github.com/SuperLalka/luxsoft-test.git
  ```
  ```sh
  git clone git@github.com:SuperLalka/luxsoft-test.git
  ```

### Installation

Для запуска проекта необходимо собрать и запустить контейнеры Docker.
```sh
docker-compose -f docker-compose.yml up -d --build
```

Установить дамп в БД (не работает).
```sh
docker exec -i lx_postgres psql luxsoft_db debug < ./compose/db/dump.sql
```

### Documentation

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[lsFusion-badge]: https://img.shields.io/badge/lsfusion-%23008FC7.svg?style=for-the-badge&logo=none&logoColor=white
[lsFusion-url]: https://lsfusion-erp.com/
[Postgres-badge]: https://img.shields.io/badge/postgresql-%234169E1.svg?style=for-the-badge&logo=postgresql&logoColor=white
[Postgres-url]: https://www.postgresql.org/
[Docker-badge]: https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white
[Docker-url]: https://www.docker.com/
