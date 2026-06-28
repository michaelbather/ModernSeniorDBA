# Changelog

All notable changes to this project will be documented in this file.

---

## Sprint 1 - Development Environment & Local SQL Lab

**Date:** 28 June 2026

### Repository

* Created personal GitHub repository
* Initialised Git repository
* Added `.gitignore`
* Published project to GitHub
* Established Git commit workflow

### Development Environment

* Installed VS Code
* Configured GitHub integration
* Installed recommended extensions
* Enabled Auto Save
* Installed Git Bash
* Installed Docker Desktop
* Updated WSL2

### Project Structure

Created initial project folders:

* `docker/`
* `sql/`
* `scripts/`
* `docs/`
* `learning/`
* `sample-data/`

Added initial README files.

### Docker

* Created SQL Server 2022 Docker Compose configuration
* Configured environment variables
* Added persistent Docker volume for SQL Server data
* Added bind mount for database backup files
* Successfully deployed SQL Server 2022 Developer Edition in Docker

### SQL Server

Created initial SQL scripts:

* `001_server_information.sql`
* `010_restore_adventureworks.sql`
* `011_validate_restore.sql`

Successfully:

* Connected from VS Code
* Restored AdventureWorks2022
* Validated database restore
* Executed `DBCC CHECKDB`

### Documentation

* Added project documentation structure
* Created `CLAUDE.md` for AI-assisted development guidance
* Created project changelog

### Skills Covered

* Git
* GitHub
* Docker
* Docker Compose
* Bind mounts
* Docker volumes
* SQL Server on Linux
* Backup and Restore
* VS Code SQL development
* Markdown
* AI-assisted software development

---

### Outcome

Established a modern SQL Server development environment that combines traditional DBA skills with contemporary engineering tools and practices. This repository will serve as the foundation for future work in PowerShell automation, AWS, Infrastructure as Code, and CI/CD.

