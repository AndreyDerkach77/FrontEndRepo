const mix = require('laravel-mix');
mix.sass('scss/index.scss', 'src').options({
    processCssUrls: false,
    postCss: [
        require('autoprefixer')({
            overrideBrowserslist: [">0.2%",
                "not dead",
                "not ie <= 11",
                "not op_mini all"],
            cascade: false
        }),
        require('cssnano')({
            preset: 'default',
        }),
    ]
});
