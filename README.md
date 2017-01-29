# CukeStart WIP

CukeStart generates and help you to maintain a Cucumber project structure from the command line.

![](<link>)

## Installation

```bash
$gem install cukestart
```

## Features
- Create a cucumber project structure
    - setup capybara
    - setup siteprism
- Generate a feature file from template
- List all features, steps  by folder 

## Usage

### Create Project

```bash
$cukestart project myproject
$cukestart p myproject --front --page_object
$cukestart p myproject -fp
```

### Generate Feature

```bash
$cukestart feature login
$cukestart f login
```

## License

CukeStart is released under the [MIT License](LICENSE).
