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

@Options({
  props: {}
})

export default class TickerCard extends Vue {
  tickerId = "";

  go() {
    console.log(this.tickerId);
    this.$router.push({name: 'feed', params: {tickerId: this.tickerId}});
    this.tickerId = "";
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="css">
</style>
