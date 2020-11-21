<template>
  <div class="home">
    <TickerStarter/>
  </div>
</template>

<script lang="ts">
import { Options, Vue } from 'vue-class-component';
import TickerStarter from "@/components/TickerStarter.vue";

@Options({
  components: {
    TickerStarter,
  },
})
export default class Home extends Vue {}
</script>
