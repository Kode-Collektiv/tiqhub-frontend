<template>
  <div class="container">
    <div class="columns is-centered asd">
      <div class="column">
        <div class="box asd">
          <h1 class="title">Welcome to TIQHUB!</h1>
          <hr>
          <div class="field">
            <p class="control is-expanded is-success">
              <input v-model="tickerId" class="input is-success" @keyup.enter="go" type="text" placeholder="Enter Ticker-ID...">
            </p>
            <p class="control" style="display: block; margin: 1em 0 1em 0">
              <button class="button is-link is-success is-rounded is-large is-fullwidth" @click="go">
                Join or Create
              </button>
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
import {VueCookieNext} from 'vue-cookie-next'

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
  .container {
    padding: 1em;
    margin: 1em;
  }

  .title {
    font-size: 2em;
    letter-spacing: 2px;
  }

  input {
    font-size: 1.5em;
    border-radius: 2em;
  }
</style>