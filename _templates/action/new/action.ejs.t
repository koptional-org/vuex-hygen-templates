---
inject: true
to: src/store/actions.types.js
append: true
---

export const <%= h.changeCase.upper(h.inflection.underscore(name)) %> = "<%= h.inflection.titleize(h.inflection.humanize( h.inflection.underscore(name) )) %>";