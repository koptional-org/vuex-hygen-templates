# hygen-vuex

# vuex-hygen-templates
Some code-gen templates for developing with Vuex


## Usage

### New Project / Playground
After cloning this project: 
```bash
#create an action and some mutations
hygen action new fetchData

#create a module
#   users = the name of the module directory
hygen vuexmodule new --module=users

#inject the actions / mutations into the module
#  The  module and actions / mutations must exist first! ( see previous steps )
hygen vuexactions new fetchData --module=users
```

As you enter these commands, you can see the actions, mutations, modules, and module blocks being generated in ./src/store!

### Adding to an existing project 
Clone this project somewhere and move the _templates directory into your existing project root. Also install hygen with: 

```bash
npm i -g hygen
# Or yarn global add hygen
```

Then you should be able to use the commands. But some caveats:
* You must have a src/store directory with an index.js and a modules folder
* your src/store/index.js should look exactly like the one in this project, specifically:

```javascript
// This works
const store = new Vuex.Store({
  modules: {
  },
  strict: debug
});
```

```javascript
// This does not!!
const store = new Vuex.Store({
  modules: {},
  strict: debug
});
```

* Any modules you generate with the vuexmodule command will have special comments in them, that the vuexaction command uses. 
* * If you have a module that was not generated with the vuexmodule command, make sure to add the four comments in the same place as:
```javascript
import {
    // HYGEN_IMPORT_ACTION
} from "../actions.types";
import {
    // HYGEN_IMPORT_MUTATION
} from "../mutations.types";
const initialState = () => ({
})
const getters = {
}
const actions = {
    // HYGEN_ACTION
}
const mutations = {
    // HYGEN_MUTATION
}
export default {
    state : initialState,
    actions,
    getters,
    mutations
}
```
* * Make sure your autoformatting tool / linting tool doesn't strip away these comments!



## Project setup
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn run serve
```

### Compiles and minifies for production
```
yarn run build
```

### Run your tests
```
yarn run test
```

### Lints and fixes files
```
yarn run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

