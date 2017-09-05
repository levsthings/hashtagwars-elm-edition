const HtmlWebpackPlugin = require('html-webpack-plugin')
const webpack = require('webpack')
const path = require('path')

module.exports = {
    devtool: 'cheap-module-source-map',
    entry: {
        App: [
            './src/js/app.js'
        ]
    },
    output: {
        path: path.resolve(__dirname, '../public'),
        publicPath: '/',
        filename: '[name].bundle.js'
    },
    module: {
        noParse: /\.elm$/,
        rules: [
            {
                test: /\.pug$/,
                use: [
                    {
                        loader: 'html-loader'
                    },
                    {
                        loader: 'pug-html-loader'
                    }
                ]
            },
            {
                test: /\.sass$/,
                use: [
                    {
                        loader: 'style-loader',
                        options: {
                            sourceMap: true
                        }
                    },
                    {
                        loader: 'css-loader',
                        options: {
                            sourceMap: true
                        }
                    },
                    {
                        loader: 'sass-loader',
                        options: {
                            sourceMap: true
                        }
                    }
                ]
            },
            {
                test: /\.elm$/,
                exclude: [/elm-stuff/, /node_modules/],
                use: [{
                    loader: 'elm-webpack-loader',
                    options: {
                        verbose: true,
                        warn: true,
                        debug: true
                    }
                }]
            }
        ]
    },
    devServer: {
        contentBase: path.join(__dirname, '../public'),
        compress: true,
        hot: true,
        inline: true,
        port: 3000,
        stats: 'errors-only'
    },
    plugins: [
        new HtmlWebpackPlugin({
            title: 'App',
            hash: true,
            filename: 'index.html',
            template: './src/templates/app.pug',
            inject: 'body'
        }),
        new webpack.HotModuleReplacementPlugin(),
        new webpack.NamedModulesPlugin()
    ]
}
