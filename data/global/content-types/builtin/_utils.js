//CHECKSUM:bbc8386ce6f11f882c999c1bfc9bb8d362f9078afde75cd75a0e66667e11ce85
const URL = require("url").URL;

function isBpUrl(str) {
  const re = /^\/api\/.*\/bots\/.*\/media\/.*/

  return re.test(str)
}

function isUrl(str) {
  try {
    new URL(str)
    return true
  } catch {
    return false
  }
}

function formatURL(baseUrl, url) {
  if (isBpUrl(url)) {
    return `${baseUrl}${url}`
  } else {
    return url
  }
}

module.exports = { 
  formatURL: formatURL,
  isUrl: isUrl
}
