<template>
  <h1>{{ val }}</h1>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "Demo",
  data: function () {
    return {
      val: "hello world!",
    };
  },
});
</script>
