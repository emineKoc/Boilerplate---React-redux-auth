import express from 'express';
import path from 'path';
import bodyParser from 'body-parser';

import webpack from 'webpack';
import webpackMiddleware from 'webpack-dev-middleware';
import webpackHotMiddleware from 'webpack-hot-middleware';
import webpackConfig from '../webpack.config.dev';


let app = express();

app.use(bodyParser.json());
// server.use(bodyParser.urlencoded({ extended: false }));
// server.use(compression());


// import api ROUTES
import jobs from './api/jobs';
import auth from './api/auth';
import applicants from './api/applicants';
// const ApplicantsRoutes = require(path.join(__dirname, '/api/applicants'));


// app.use routes
app.use('/api/jobs', jobs);
app.use('/api/auth', auth);
app.use('/api/applicants', applicants);


const compiler = webpack(webpackConfig);

app.use(webpackMiddleware(compiler, {
  hot: true,
  publicPath: webpackConfig.output.publicPath,
  noInfo: true
}));
app.use(webpackHotMiddleware(compiler));

app.get('/*', (req, res) => {
  res.sendFile(path.join(__dirname, './index.html'));
});

app.listen(3000, () => console.log('Running on localhost:3000'));
