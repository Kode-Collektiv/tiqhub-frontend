<template>
  <div class="feed">
    <TickerFeed :title="feeds[0].title" :id="feeds[0].id"/>
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
export default class Feed extends Vue {

  feeds = [
    {
      id: "1234",
      title: "Ganz toole fussball feed"
    }
  ]
}
</script>