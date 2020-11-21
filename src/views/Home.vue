<template>
  <TickerStarter/>
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

.grid-container {
  display: grid;
  grid-template-columns: 1fr 10fr 1fr;
}


@media (min-width: 1200px) {
  .grid-container {
    display: grid;
    grid-template-columns: 3fr 3fr 3fr;
  }
}

</style>