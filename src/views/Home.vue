<template>
  <TickerStarter/>
  <TickerFeed/>
  <div class="home">
  </div>
</template>

<script lang="ts">
import { Options, Vue } from 'vue-class-component';
import TickerFeed from "@/components/TickerFeed.vue";
import TickerCard from "@/components/TickerCard.vue";
import TickerStarter from "@/components/TickerStarter.vue";

@Options({
  components: {
    TickerStarter,
    TickerFeed,
    TickerCard
  },
})
export default class Home extends Vue {}
</script>
