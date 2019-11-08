---
inject: true
to: src/store/modules/<%= module %>.js
after: HYGEN_IMPORT_ACTION
---
  <%= h.changeCase.upper(h.inflection.underscore(name)) %>,