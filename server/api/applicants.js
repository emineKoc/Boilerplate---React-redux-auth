'use strict';

const express = require('express');
const applicants = express.Router();
// const bodyParser = require('body-parser');

const db = require('./../db/db_apex');

applicants.route('/')
  .get(db.showAllApplicants, (req, res) => {
    res.send(res.rows);
  })

applicants.route('/new')
  .post(db.postOneApplicant, (req, res) => {
    res.status( 201 ).json( { data: 'success' } );
  });

applicants.route('/:applicant_id')
  .get( db.showOneApplicant, (req, res) => {
    res.send(res.rows);
  });



module.exports = applicants;
