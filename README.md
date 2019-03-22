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

Most of the website is generated from the data in three YAML files:

  * `_data/people.yml`
  * `_data/projects.yml`
  * `_data/publications.yml`

The schema is mostly "normalized" to favor updating in the common case (e.g.
adding a single new publications).

In general, `People` are uniquely identified by their `nick` (usually a
UNIX/GitHub handle) and `Projects` by their `id` (a short web slug-style name
for the project).

Projects have a list of "people" from SNS in the project, and publications have
both "people" (as authors) and, optionally, are associated with a particular
"project". This lets the website list publications alone, along with their
project, or with their authors, and centralizes information such as links to
publications and author websites.

All this means is that, in general, you'll only be updating one file depending
on what data you're adding. However, you should be somewhat meticulous (e.g.
just build the site and spot-check the generated content) that cross references
to people or projects are correct.

The schemas for each file are listed below

### Group members (people)

`_data/people.yml`

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

`_data/publications.yml`


| Field          | Required  | Description                                       |
|----------------|-----------|---------------------------------------------------|
| `title`        | Yes       | Paper title probably in quotes                    |
| `project`      | No        | The project id this publication belongs to        |
| `people`       | Yes       | Author list. For authors in SNS, use their `nick` |
| `venue`        | Yes       | File publication venue citation                   |
| `year`         | Yes       | Publication year                                  |
| `paper`        | Yes       | URL to publication PDF                            |
| `presentation  | No        | URL to conference presentation                    |
| `award`        | No        | List of awards (e.g. `Best Paper Award`)          |


### Projects

`_data/projects.yml`

| Field          | Required  | Description                                    |
|----------------|-----------|------------------------------------------------|
| `title`        | Yes       | Project title (probably in quotes)             |
| `id`           | Yes       | A unique identifier, used for URL slugs        |
| `active`       | Yes       | `true`/`false` whether anyone is working on it |
| `brief`        | No        | Punchy one line description of the project     |
| `opensource`   | No        | URL to a GitHub repo, community site, etc      |
| `people`       | No        | List of `nick`s of SNS `people` involved       |

