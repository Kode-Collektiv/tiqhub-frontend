<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js + TypeScript App"/>
    <TickerCard msg="TickerCard Works!"></TickerCard>
  </div>
</template>

<script lang="ts">
import { Options, Vue } from 'vue-class-component';
import HelloWorld from '@/components/HelloWorld.vue'; // @ is an alias to /src
import TickerCard from "@/components/TickerCard.vue";

@Options({
  components: {
    HelloWorld,
    TickerCard
  },
})
export default class Home extends Vue {}
</script>
