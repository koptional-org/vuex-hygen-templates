---
inject: true
to: src/store/mutations.types.js
append: true
---

export const <%= h.changeCase.upper(h.inflection.underscore(name)) %>_START = "<%= h.inflection.titleize(h.inflection.humanize( h.inflection.underscore(name) )) %> Start";
export const <%= h.changeCase.upper(h.inflection.underscore(name)) %>_SUCCESS = "<%= h.inflection.titleize(h.inflection.humanize( h.inflection.underscore(name) )) %> Success";
export const <%= h.changeCase.upper(h.inflection.underscore(name)) %>_FAILURE = "<%=h.inflection.titleize(h.inflection.humanize( h.inflection.underscore(name) )) %> Failure";