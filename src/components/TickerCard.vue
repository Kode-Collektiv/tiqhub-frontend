<template>
  <div class="card-container">
    <div class="card-header">
      <div class="card-logo">
        <img :src="require('../assets/' + logoSrc + '')" alt="logo">
      </div>
      <div class="card-title">
        <h3>{{title}}</h3>
      </div>
      <div class="card-subtitle">
        <h5>{{subtitle}}</h5>
      </div>

    </div>
    <div class="card-content">
      <p>{{content}}</p>
    </div>

  </div>
</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';

@Options({
  props: {
    title: String,
    logoSrc: String,
    subtitle: String,
    content: String
  }
})
export default class TickerCard extends Vue {
  title!: string;
  logoSrc!: string;
  subtitle!: string;
  content!: string;

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

.card-container {
  display: grid;
  grid-template-rows: 1fr 4fr;
  border: rgba(100, 100 , 100, 0.8) solid 0.1em;
  border-radius: 20px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.4);
  padding: 1em;
}

.card-header {
  border-bottom: rgba(100, 100 , 100, 0.8) solid 0.1em;
  display: grid;
  grid-template-columns: 1fr 9fr 3fr;

}

.card-title {
  //border: rgba(100, 100 , 100, 0.8) solid 0.1em;
  text-align: start;
}

.card-subtitle {
  //border: rgba(100, 100 , 100, 0.8) solid 0.1em;
  text-align: end;
  color: rgba(100, 100, 100, 1.0);
}

.card-logo {
  //border: rgba(100, 100 , 100, 0.8) solid 0.1em;
  text-align: start;
  img {
    height: 36px;
  }
}

.card-content {
  text-align: start;
}


</style>
