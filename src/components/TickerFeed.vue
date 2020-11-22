<template>

  <div id="ticker-feed" class="container">

    <div class="feed-title">
      <span class="title">Welcome to {{tickerId}} </span>
      <TickerShareModal :tickerId="tickerId"/>
    </div>

    <TickerInput v-if="isTickerAdmin()"/>


    <div class="timeline">
      <div class="ticker-card" v-for="item of items" :key="item.id">
        <TickerCard :text="item.text" :timestamp="item.timestamp"/>
      </div>

      <header class="timeline-header">
        <span class="tag is-medium is-success">Start of Feed</span>
      </header>

    </div>
  </div>

</template>

<script lang="ts">

import {Options, Vue} from 'vue-class-component';
import TickerCard from "@/components/TickerCard.vue";
import TickerInput from "@/components/TickerInput.vue";
import TickerShareModal from "@/components/TickerShareModal.vue";
import { io, Socket} from "socket.io-client";
import { VueCookieNext } from 'vue-cookie-next'

interface FeedMessage {
  text: string;
  timestamp: number;
}


@Options({
  components: {
    TickerCard,
    TickerInput,
    TickerShareModal
  },
  props: {
    title: String,
    tickerId: String
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
    const backend = process.env.VUE_APP_TIQHUB_BACKEND_URL;

    this.socket = io( backend + '?tickerId=' + this.$route.params.tickerId, {
      withCredentials: false
    });
    this.socket.on('broadcast', this.receiveDate)
  }

  isTickerAdmin(): boolean {
    return VueCookieNext.getCookie(this.tickerId) != undefined;
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

.card-container {
  margin: 1em 0px;
}

.container {
  padding: 2em;
}

.feed-title {
  margin: 1em 0;
}

</style>
