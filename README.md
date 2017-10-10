# README

## Description

A single page app for booking your next escape on Juliet Airways.

## Installation

 To install this app clone the repository:
```bash
git clone git@github.com:peacestone/juliet_airways.git
```
`cd` into the repository, and migrate and seed the database:

```bash
cd juliet_airways
rails db:migrate db:seed
```
Startup the rails API server on port 3001:
```bash
rails s -p 3001
```

Open a new terminal window, `cd` into the client directory, and fire up the react server:
```bash
cd client
npm start && npm install
```
Once the server is running, your browser will launch and navigate to the port specified by terminal.

## Licence

This project is open source, under the terms of the [MIT license](https://opensource.org/licenses/MIT).

## Contributing

Bug reports and pull requests for this project are welcome at its [GitHub page](https://github.com/peacestone/juliet_airways). If you'd like to make a suggestion for new features, make them in the "Issues" section and I'll try to get around to implementing them.
