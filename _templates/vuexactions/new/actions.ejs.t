---
inject: true
to: src/store/modules/<%= module %>.js
after: HYGEN_ACTION
---
  [<%= h.changeCase.upper(h.inflection.underscore(name)) %>]({ commit }, {}) {
  },