import Vuex from "vuex";
import Vue from "vue";
const debug = process.env.NODE_ENV === "development";

Vue.use(Vuex);
const store = new Vuex.Store({
  modules: {
  },
  strict: debug
});
export default store;
