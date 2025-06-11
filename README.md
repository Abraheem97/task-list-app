
# TaskList App

A simple task management app built with Ruby on Rails. This app allows users to create task lists and manage tasks within those lists. It supports nested task creation, filtering, priority management, and more.

## Features

- CRUD operations for Lists and Tasks
- Task filtering (All, Completed, Incomplete)
- Enum-based task priority (Low, Medium, High)
- List deletion prevention if incomplete tasks exist
- Nested form support for creating a list and its first task together
- Progress tracking (percentage completed)
- Task position management and sorting
- Flash messages for user feedback
- Bootstrap-based UI layout
- Breadcrumbs for better navigation

## Development Setup

### Requirements

- Docker & Docker Compose

### Getting Started

```bash
docker-compose build
docker-compose run --service-ports web
```

### Debugging with Rails `debug` gem

To use the debugger inside the Rails app:

1. Add `debugger` in your code.
2. Run the Rails server using:

```bash
docker-compose run --service-ports web
```

This ensures that the port is open to use the debugging console.

### .env File

You should create a `.env` file in the root of the project. Here’s a sample:

```env
POSTGRES_USER=postgres
POSTGRES_PASSWORD=password
POSTGRES_DB=tasklist_development
```

Make sure this file is **not** committed to version control.

## Running Tests with RSpec

If you have RSpec set up (optional), you can run:

```bash
docker-compose run web bundle exec rspec
```

To generate a coverage report (if SimpleCov is enabled):

```bash
docker-compose run web COVERAGE=true bundle exec rspec
```

---

Happy coding! 🎉
