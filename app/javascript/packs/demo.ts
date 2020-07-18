import Vue from "vue";
import Demo from "./../vue/demo.vue";

document.addEventListener("DOMContentLoaded", () => {
  new Vue({
    el: "#js--demo",
    render: (h) => h(Demo),
  }).$mount();
});
