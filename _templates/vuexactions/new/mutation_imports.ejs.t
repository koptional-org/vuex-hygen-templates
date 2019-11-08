---
inject: true
to: src/store/modules/<%= module %>.js
after: HYGEN_IMPORT_MUTATION
---
  <%= h.changeCase.upper(h.inflection.underscore(name)) %>_START,
  <%= h.changeCase.upper(h.inflection.underscore(name)) %>_SUCCESS,
  <%= h.changeCase.upper(h.inflection.underscore(name)) %>_FAILURE,