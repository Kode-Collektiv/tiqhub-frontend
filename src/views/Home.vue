<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <TickerFeed/>
   <!-- <TickerCard title="TickerCard Works!" subtitle="23 min ago" logoSrc="logo.png"/>-->
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
