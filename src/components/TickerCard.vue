<template>
  <div class="card-container">
    <div class="card-header">
      <div class="card-logo">
        <h3>Logo</h3>
      </div>
      <div class="card-title">
        <h1>Title</h1>
      </div>
      <div class="card-subtitle">
        <h3>Subtitle</h3>
      </div>

    </div>
    <div class="card-content">
      <p>Some content that is inside the card</p>
    </div>

  </div>
</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';

@Options({
  props: {
    msg: String
  }
})
export default class TickerCard extends Vue {
  msg!: string
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

.card-container {
  display: grid;
  grid-template-rows: 1fr 4fr;
  height: 300px;
  border: rgba(100, 100 , 100, 0.8) solid 0.1em;
  border-radius: 20px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.4);
}

.card-header {
  border-bottom: rgba(100, 100 , 100, 0.8) solid 0.1em;
  margin-left: 1em;
  margin-right: 1em;

  display: grid;
  grid-template-columns: 1fr 4fr 1fr;

}

.card-title {

}

.card-subtitle {

}

.card-logo {

}

.card-content {

}


</style>
