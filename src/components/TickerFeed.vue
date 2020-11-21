<template>

  <div id="ticker-feed" class="container">

    <h1 class="title">{{title}}</h1>

    <TickerInput/>

    <div class="timeline">
      <div class="ticker-card" v-for="item of items" :key="item.id">
        <TickerCard :text="item.text" :timestamp="item.timestamp"/>
      </div>

      <header class="timeline-header">
        <span class="tag is-medium is-primary">Start</span>
      </header>

    </div>
  </div>

</template>

<script lang="ts">

import {Options, Vue} from 'vue-class-component';
import TickerCard from "@/components/TickerCard.vue";
import TickerInput from "@/components/TickerInput.vue";
import { Manager, Socket} from "socket.io-client";

interface FeedMessage {
  text: string;
  timestamp: number;
}

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

  },
  mounted () {
    this.createSocket()
  }
})

export default class TickerFeed extends Vue {

  manager!: Manager
  socket!: Socket
  id!: string

  items: any[]= [
    {
      text: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content',
      timestamp: 1605986524,
    },
    {
      text: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content',
      timestamp: 1605986524,
    },
    {
      text: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content',
      timestamp: 1605986524,
    },
    {
      text: 'This is a demo text with some test content. This is a demo text with some test content. This is a demo text with some test content .This is a demo text with some test content',
      timestamp: 1605986524,
    }
  ]

  receiveDate(feedMsgString: string) {
    console.log(feedMsgString);
    const feedMsg: any = JSON.parse(feedMsgString);
    this.items.unshift(feedMsg);
  }

  createSocket () {
    this.manager = new Manager("ws://localhost:3000?tickerId=" + this.id);
    this.socket = this.manager.socket("/");
    this.socket.on("message", this.receiveDate)

    this.socket.on("connect", () => {
      this.socket.send(JSON.stringify({text:"hello", timestamp: 1605986524}))
    });
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

.card-container {
  margin: 1em 0px;
}


</style>
