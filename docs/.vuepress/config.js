//to use .env
require('dotenv').config();

module.exports = {
  base: '/cv/',
  themeConfig: {
    navbar: false,
    sidebar: [
      ['/', 'Home'],
      ['/info', 'Info'],
      ['/skills', 'Soft Skills']
    ],
  },
  externalLinks: [
    {target: '_blank', rel: 'noopener noreferrer'}
  ]
}
