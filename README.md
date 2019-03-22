# SNS website

_In progress_

Proposed new website based on Jekyll instead of Wordpress. This isn't live anywhere yet.

Dependencies:

  * Ruby
  * Bundler

To run locally:

```
$ bundle install
$ bundle exec jekyll start
```

then go to <http://localhost:4000>

## Site data

### Group members (people)

The YAML file `data/people.yml` contains a database of group members. Changes
to that file will propagate throughout the site.

The file is a YAML list of records, one for each person. A record has
the following fields:

| Field          | Required  | Description                              |
|----------------|-----------|------------------------------------------|
| `first_name`   | Yes       | First name                               |
| `last_name`    | Yes       | Last name                                |
| `nick`         | Yes       | UNIX handle, or other shortname          |
| `type`         | Yes       | One of `leader`, `phd`, or `msc`         |
| `actuve`       | Yes       | `true`/`false`, are they around          |
| `graduated`    | No        | Graduation year if not `active`          |
| `now`          | No        | Where are the y now, if not `active`     |
| `url`          | Yes       | Personal website              `          |
| `picture`      | Yes       | Picture, ideally in `/assets/img/people` |

Pictures should be square and around 200x200 pixels. They are currently rounded
on the front page, so make sure your face is in the center.

### Publications

The YAML file `data/publications.yml` contains a database of publications.
Changes to that file will propagate throughout the site.

Each publication is a YAML object:

| Field          | Required  | Description                                   |
|----------------|-----------|-----------------------------------------------|
| `title`        | Yes       | Paper title probably in quotes                |
| `project`      | No        | The project id this publication belongs to    |
| `people`       | Yes       | Author list                                   |
| `venue`        | Yes       | File publication venue citation               |
| `year`         | Yes       | Publication year                              |
| `paper`        | Yes       | URL to publication PDF                        |
| `presentation  | No        | URL to conference presentation                |
| `award`        | No        | List of awards (e.g. `Best Paper Award`)      |


### Projects

The YAML file `data/projects.yml` contains a database of group projects.
Changes to that file will propagate throughout the site.

Each project is a YAML object:

| Field          | Required  | Description                                   |
|----------------|-----------|-----------------------------------------------|
| `title`        | Yes       | Project title (probably in quotes)            |
| `id`           | Yes       | A unique identifier, used for URL slugs       |
| `active`       | Yes       | `true`/false` whether anyone is working on it |
| `brief`        | No        | Punchy one line description of the project    |
| `opensource`   | No        | URL to a GitHub repo, community site, etc     |
| `people`       | No        | List of `nick`s of SNS `people` involved      |

