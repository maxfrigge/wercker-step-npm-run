# Wercker step - npm run
Run scripts from `package.json` with `npm run`.

[![wercker status](https://app.wercker.com/status/3a9f128650a4d81ab429bb91188d22f9/m "wercker status")](https://app.wercker.com/project/bykey/3a9f128650a4d81ab429bb91188d22f9)

# Options
* `script` (required) Name of the script definition in package.json.

# Example
Define scripts in `package.json`.
```
{
  "name": "awesome-node-app",
  "scripts": {
    "build": "gulp build"
  }
}
```

Add `npm run` to your build steps.
```
build:
    steps:
        - maxon/npm-run:
            script: build
```
