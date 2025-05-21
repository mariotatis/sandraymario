# Sandra & Mario Wedding Website

## Project Overview
This is a wedding website for Sandra and Mario, originally created in 2014. The website allows guests to RSVP for the wedding, view event details, and access information about the ceremony and reception.

## Project Migration
This project was originally built with Ruby 2.1.0 and Rails 4.1.0, making it approximately 11 years old as of 2025. The codebase contained many deprecated gems, outdated syntax, and legacy code patterns.

The project has been successfully migrated to:
- Ruby 3.3.0 (from 2.1.0)
- Rails 7.2.2.1 (from 4.1.0)

## Migration Process
The migration was completed using Windsurf's Claude 3.7 Sonnet AI assistant on May 20, 2025. The entire migration process took approximately 20 minutes, which would have taken days or weeks if done manually.

Key updates included:
- Upgrading all gem dependencies to versions compatible with Ruby 3.3.0 and Rails 7.2.2.1
- Creating the required manifest.js file for Sprockets
- Updating ActiveAdmin configuration to use the new API
- Updating all migration files to specify Rails 7.2 version compatibility
- Adding the mutex_m gem for compatibility with future Ruby versions
- Fixing CSRF token authenticity issues
- Adding ransackable_attributes methods for ActiveAdmin/Ransack compatibility
- Updating email delivery methods to use Rails 7 syntax

## Running the Application
1. Ensure Ruby 3.3.0 is installed
2. Run `bundle install` to install dependencies
3. Run `rails db:create db:migrate` to set up the database
4. Start the server with `rails server`
5. Access the application at http://localhost:3000
6. Admin interface is available at http://localhost:3000/admin

## Admin Access
- Email: admin@example.com
- Password: password
