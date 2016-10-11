'use strict';

const express = require('express');
const jobs = express.Router();
// const bodyParser = require('body-parser');

const db = require('./../db/db_apex');

jobs.route('/')
.get(db.showAllJobs, (req, res) => {
  res.send(res.rows);
})
.post(db.postAJob, (req, res) => {
  console.log('Job posting', req )
  res.status( 201 ).json( { data: 'success' } );
});

jobs.route('/:job_id')
.get( db.showOneJob, (req, res) => {
  res.send(res.rows);
});



module.exports = jobs;
