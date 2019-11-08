---
inject: true
to: src/store/modules/<%= module %>.js
after: HYGEN_MUTATION
---
  [<%= h.changeCase.upper(h.inflection.underscore(name)) %>_START](state) {
  },
  [<%= h.changeCase.upper(h.inflection.underscore(name)) %>_SUCCESS](state) {
  },
  [<%= h.changeCase.upper(h.inflection.underscore(name)) %>_FAILURE](state) {
  },