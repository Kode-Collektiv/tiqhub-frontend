module.exports = {
    publicPath: process.env.NODE_ENV === 'production'
        ? '/tiqhub.io/'
        : '/staging-tiqhub.io/'
}
