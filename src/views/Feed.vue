<template>
  <div class="feed">
    <TickerFeed :title="example_title" :tickerId="tickerId"/>
  </div>
</template>

<script lang="ts">
import { Options, Vue } from 'vue-class-component';
import TickerFeed from "@/components/TickerFeed.vue";
import TickerCard from "@/components/TickerCard.vue";

@Options({
  props: {
    tickerId: String,
  },
  components: {
    TickerFeed,
    TickerCard
  },
})
export default class Feed extends Vue {
  private tickerId!: string
  private example_title = "Ganz toole fussball feed";
}
</script>