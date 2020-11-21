<template>
  <div class="starter-container">
    <h1>Join or Create Ticker</h1>
    <input v-model="tickerId" id="ticker-starter" placeholder="Enter Ticker-ID...">
    <button class="go-button" @click="go">GO!</button>
  </div>
</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';

@Options({
  props: {

  }
})
export default class TickerCard extends Vue {
  tickerId = '';

  go() {
    console.log(this.tickerId)
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

h1 {
  letter-spacing: 2px;
}

.starter-container {
  display: grid;
  grid-template-columns: auto;
  grid-gap: 1em;
  border: rgba(100, 100 , 100, 0.8) solid 0.1em;
  border-radius: 20px;
  box-shadow: 0 2px 4px 0 rgba(0,0,0,0.4);
  padding: 1em;
  align-items: center;
  align-content: center;
  justify-content: center;
}

input[type=text]{
  border: rgba(100, 100 , 100, 1.0) solid 0.2em;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.1);
  border-radius: 10px;
  background-color: white;
  padding: 1em 1.5em;
  font-size: 1em;
  font-weight: bold;
  letter-spacing: 2px;
}

.go-button {
  background-color: #2c3e50;
  color: white;
  border: rgba(255, 255 , 255, 1.0) solid 0.2em;
  border-radius: 10px;
  padding-top: 8px;
  padding-bottom: 8px;
  letter-spacing: 3px;
  font-weight: bold;
}

</style>
