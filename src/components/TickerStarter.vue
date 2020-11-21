<template>
  <div class="starter-container">
    <h1>Join or Create Ticker</h1>
    <input id="ticker-starter" type="text" placeholder="Enter Ticker-ID...">
  </div>
</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';

@Options({
  props: {

  }
})
export default class TickerCard extends Vue {

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

h1 {
  letter-spacing: 2px;
}

.starter-container {
  border: rgba(100, 100 , 100, 0.8) solid 0.1em;
  border-radius: 20px;
  box-shadow: 0 2px 4px 0 rgba(0,0,0,0.4);
  padding: 1em;
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

</style>
