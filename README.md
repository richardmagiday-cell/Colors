# Colors

A LAMP stack demo: users log in, then add and search their own list of colors. Frontend is plain HTML/CSS/JS talking to a PHP REST-style API over AJAX/JSON; data is stored in MySQL.

## Setup

1. Import `schema.sql` into your MySQL database to create the `Users` and `Colors` tables (includes a `demo` / `demo123` test user).
2. Edit `LAMPAPI/db.php` with your database host, user, password, and database name.
3. Deploy the `LAMPAPI` folder to your PHP server, and edit `urlBase` in `js/code.js` to point at it.
4. Serve `index.html` / `color.html` from your LAMP stack (or open them via the web server, not `file://`, since they make AJAX calls).

## Pages

- `index.html` — login
- `color.html` — add / search colors for the logged-in user

## API

- `LAMPAPI/Login.php` — validates username/password, returns user id and name
- `LAMPAPI/AddColor.php` — inserts a color for a user
- `LAMPAPI/SearchColors.php` — partial-match search of a user's colors
