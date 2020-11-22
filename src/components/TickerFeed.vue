<template>

  <div id="ticker-feed" class="container">

    <h1 class="title">{{title}} / {{tickerId}}</h1>

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
import { io, Socket} from "socket.io-client";

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
    tickerId: String,
  },
  methods: {

  }
})

export default class TickerFeed extends Vue {

  public tickerId!: string
  public socket!: Socket

  items: any[]= []

  receiveDate(feedMsgString: string) {
    console.log('message from broadcast ' + feedMsgString);
    const feedMsg: any = JSON.parse(feedMsgString);
    this.items.unshift(feedMsg);
  }

  created () {
    const backend = process.env.NODE_ENV === "production"
        ? "wss:///tiqhub.azurewebsites.net"
        : process.env.NODE_ENV === "staging"
            ? "wss:///tiqhub.azurewebsites.net"
            : "ws:///127.0.0.1:3000"
    console.log(backend);
    this.socket = io( backend + '?tickerId=' + this.tickerId, {withCredentials: false});
    this.socket.on('broadcast', this.receiveDate)
  }

}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

.card-container {
  margin: 1em 0px;
}


</style>
