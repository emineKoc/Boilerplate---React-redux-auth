import Express from 'express';
import path from 'path';
import bodyParser from 'body-parser';

import React from 'react';
import ReactDOMServer from 'react-dom/server';
import webpack from 'webpack';
import webpackMiddleware from 'webpack-dev-middleware';
import webpackHotMiddleware from 'webpack-hot-middleware';
import webpackConfig from '../webpack.config.dev';


let app = express();
let port = process.env.PORT || 3000;

// *********************** API ROUTES ****************** //

app.use(bodyParser.urlencoded({ extended: false }));
app.use(compression());
app.use(Express.static(path.join(__dirname, '../..', 'dist')));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');



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

app.listen(port, () => console.log('Running on localhost:3000'));
