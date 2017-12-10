# NPM-provise
## Automatic Environment Provisioning
### Run nodejs scripts you aren't prepared for 

At the top of any nodejs file, invoke this script, optionally passing a desired node version, and npmrovise will create a system folder containing the necessary node modules and invoke your script with this NODE\_PATH.

I read through all the require statements in your files and any file referenced in require directives, and check if I have a folder with all those node modules already, and if so, set that folder as the node path and get on with it. Otherwise, I create a new folder, name it the hash of the required modules, and npm init npm install all the modules, and then run the script.

You never have to touch npm, you can just drop `#!/bin/bash npmrovise` at the top of the script and make it executable or put npmrovise in your path and run `npmrovise whateryourfileis.js` and I'll take care of it. 

### Inspect and nprovise
```
#!/bin/bash npmprovise node=4

console.log(process.versions)
/* 
{ http_parser: '2.7.0',
  node: '4.8.7',
  v8: '4.5.103.53',
  uv: '1.9.1',
  zlib: '1.2.11',
  ares: '1.10.1-DEV',
  icu: '56.1',
  modules: '46',
  openssl: '1.0.2n' }
*/
```

A friend of condavision, which provides similar functionality for python