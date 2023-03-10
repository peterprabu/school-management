# README

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.5.3]
- Rails [6.0.6.1]
- PostgreSQL [14.5]

##### 1. Check out the repository

```bash
git clone git@github.com/peterprabu/school-management.git
```

##### 2. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rails db:setup
rails db:migrate
rails db:seed
```
If needed (DB recreation):

```ruby
rails db:drop db:create db:migrate db:seed
```

##### 3. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000

Note: Students login/signup must be with the email id created by superadmin/admin.
