# Wercker step - npm run
Run scripts from `package.json` with `npm run`.

[![wercker status](https://app.wercker.com/status/49d7c3919df2d65ed4679bcc86eb3477/m "wercker status")](https://app.wercker.com/project/bykey/49d7c3919df2d65ed4679bcc86eb3477)

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
        - maxon:npm-run
            script: build
```
