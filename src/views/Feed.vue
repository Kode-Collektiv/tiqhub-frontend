<template>
  <div class="feed">
    <TickerFeed/>
  </div>
</template>

<script lang="ts">
import { Options, Vue } from 'vue-class-component';
import TickerFeed from "@/components/TickerFeed.vue";
import TickerCard from "@/components/TickerCard.vue";

@Options({
  components: {
    TickerFeed,
    TickerCard
  },
})
export default class Home extends Vue {}
</script>