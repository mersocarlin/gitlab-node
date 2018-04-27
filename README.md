# mersocarlin/gitlab-node

Builds NodeJS apps in GitLab and deploys to Heroku.

## ⭐ Features

✅ [alpine/node](https://github.com/mhart/alpine-node): Minimal Node.js Docker Images built on Alpine Linux

✅ [Dpl](https://github.com/travis-ci/dpl): deploy tool made for continuous deployment

✅ [node-gyp](https://github.com/nodejs/node-gyp): Node.js native addon build tool

✅ [bcrypt](https://github.com/kelektiv/node.bcrypt.js) build support

## 📖 How to

In `.gitlab-ci.yml` file: 

```yml
image: mersocarlin/gitlab-node:latest

stages: 
  - Test
  - Production

test:
  stage: Test
  script:
    - yarn test

production:
  stage: Production
  script:
    - dpl --provider=heroku --app=YOUR_HEROKU_APP_NAME --api-key=HEROKU_PRODUCTION_API_KEY
```

Get Heroku api key in [https://dashboard.heroku.com/account](https://dashboard.heroku.com/account).
