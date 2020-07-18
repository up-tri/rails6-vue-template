const PnpWebpackPlugin = require("pnp-webpack-plugin");

module.exports = {
  test: /\.tsx?(\.erb)?$/,
  use: [
    {
      loader: "ts-loader",
      options: PnpWebpackPlugin.tsLoaderOptions({
        appendTsSuffixTo: [/\.vue$/]
      }),
    },
  ],
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    },
  }
};
