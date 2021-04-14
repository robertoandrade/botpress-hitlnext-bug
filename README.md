# botpress-hitlnext-bug
Sample repo that runs a test bot in Botpress with the HITLNext module built from source. Happens with every version of the docker image and source repository revision starting when HITLNext was first shipped.

Repro steps:
1. Clone this repo.
1. Run `docker-compose up` on the cloned source.
1. Login to http://localhost:3000 with default super admin credentials: admin/admin
1. Access the HITLNext GUI for the sample bot: http://localhost:3000/studio/hitlnextbug/flows/main
1. Switch agent state from Offline to Online.
1. See error: 

```
An error occurred while loading the component
Cannot read property 'getCurrentStack' of undefined

commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2 TypeError: Cannot read property 'getCurrentStack' of undefined
    at pushCurrentDebugStack (botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./node_modules/react-dom/cjs/react-dom-server.browser.development.js:2665)
    at ReactDOMServerRenderer.read (botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./node_modules/react-dom/cjs/react-dom-server.browser.development.js:3366)
    at renderToStaticMarkup (botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./node_modules/react-dom/cjs/react-dom-server.browser.development.js:4003)
    at Initial.render (botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./node_modules/react-initial/lib/Initial.js:232)
    at ko (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at Lo (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at Do (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at Na (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at Ra (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at ks (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at bs (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at ys (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at Va (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at to (commons.abca7762bb6f076c08da.js?2f327d9fc229ce8f901b:2)
    at t.<anonymous> (botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./src/views/full/App.tsx:133)
    at step (botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./src/views/full/App.tsx:44)
    at Object.next (botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./src/views/full/App.tsx:25)
    at botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./src/views/full/App.tsx:19
    at S.n._execute (web.2c834267e289f500e474.js?2f327d9fc229ce8f901b:2)
    at S._resolveFromExecutor (web.2c834267e289f500e474.js?2f327d9fc229ce8f901b:2)
    at new S (web.2c834267e289f500e474.js?2f327d9fc229ce8f901b:2)
    at botpress.hitlnext../src/views/full/App.tsx.__awaiter (botpress = typeof botpress === "object" ? botpress : {}; botpress["hitlnext"]/./src/views/full/App.tsx:15) Object
```
