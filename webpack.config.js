const path = require('path');

module.exports = {
  entry: {
    cauldron: './src',
  },
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'magica11y.[name].js',
    library: ['magica11y', '[name]'],
    libraryTarget: 'umd',
  },
  devtool: 'source-map',
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
    ],
  },
};
