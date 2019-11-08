---
inject: true
to: src/store/index.js
before: const
---
import <%= module %> from './modules/<%= module %>';