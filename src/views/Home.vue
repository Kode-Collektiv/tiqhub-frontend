<template>
  <div class="grid-container">
    <TickerStarter class="center"/>
  </div>
</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';
import TickerStarter from "@/components/TickerStarter.vue";

@Options({
  components: {
    TickerStarter,
  },
})
export default class Home extends Vue {
}
</script>

<style scoped lang="scss">

.center {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}


</style>