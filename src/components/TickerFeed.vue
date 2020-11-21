<template>

  <div id="ticker-feed" class="container">

    <h1 class="title">{{title}}</h1>

    <TickerInput/>

    <div class="ticker-card" v-for="item of items" :key="item.id">
      <TickerCard :title="item.title" :subtitle="item.subtitle" :logoSrc="item.logo" :content="item.content"/>
    </div>
  </div>


</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';
import TickerCard from "@/components/TickerCard.vue";
import TickerInput from "@/components/TickerInput.vue";
import { Manager } from "socket.io-client";

@Options({
  components: {
    TickerCard,
    TickerInput
  },
  props: {
    title: String,
    id: String,
  },
  methods: {
    createSocket () {
      const manager = new Manager("ws://localhost:3000");
      const socket = manager.socket("/");

      socket.on("connect", () => {
          console.log(`connect ${socket.id}`);
      });
    }
  },
  mounted () {
    this.createSocket()
  }
})
export default class TickerFeed extends Vue {

  items = [
    {
      id: '1',
      title: 'Goal for Eintracht Frankfurt 1:0',
      subtitle: '45 min ago',
      logo: 'eintracht.svg.png',
      content: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content'
    },
    {
      id: '2',
      title: 'Red Card Eintrach Frankfurt',
      subtitle: '23 min ago',
      logo: 'eintracht.svg.png',
      content: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content'
    },
    {
      id: '3',
      title: 'Goal for Bayern Munich',
      subtitle: '32 min ago',
      logo: 'logo.png',
      content: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content'
    },
    {
      id: '4',
      title: 'Hello World 4',
      subtitle: '43 min ago',
      logo: 'logo.png',
      content: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content'
    },
    {
      id: '5',
      title: 'Hello World 5',
      subtitle: '54 min ago',
      logo: 'logo.png',
      content: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content'
    },
    {
      id: '6',
      title: 'Hello World 6',
      subtitle: '12 min ago',
      logo: 'logo.png',
      content: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content'
    }
  ]

}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

.card-container {
  margin: 1em 0px;
}


</style>
