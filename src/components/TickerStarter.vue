<template>
  <div class="container">
    <div class="columns is-mobile is-centered asd">
      <div class="column is-half">
        <div class="box asd">
          <div class="box">
            <h1>Welcome to TIQHUB</h1>
          </div>

          <div class="field is-grouped">
            <p class="control is-expanded">
              <input v-model="tickerId" class="input" @keyup.enter="go" type="text" placeholder="Enter Ticker-ID...">
            </p>
            <p class="control">
              <a class="button is-link is-primary" @click="go">
                GET THE FEED!
              </a>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>

</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';
import axios, {AxiosResponse} from 'axios'
import { VueCookieNext } from 'vue-cookie-next'

@Options({
  props: {}
})

export default class TickerCard extends Vue {
  tickerId = "";

  go() {
    const backend = process.env.VUE_APP_TIQHUB_BACKEND_URL_CRUD;

    axios.post(backend + "/tickers",  { _id: this.tickerId })
        .then(response => VueCookieNext.setCookie(this.tickerId, response.data.accessToken))
        .catch(_ => console.log("Unable to create ticker. Probably ticker already created. Forwarding to it!"))
        .then(() => this.$router.push({name: 'feed', params: {tickerId: this.tickerId}}));
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="css">
</style>
