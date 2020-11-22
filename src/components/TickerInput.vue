<template>
  <div class="field">

    <div class="field is-grouped">
      <p class="control is-expanded">
        <input class="input is-primary" v-model="message" @keyup.enter="go" type="text">
      </p>
      <p class="control">
        <a class="button is-link is-primary" @click="go">
          FEED!
        </a>
      </p>
    </div>
  </div>

</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';
@Options({
  components: {},
  props: {}
})
export default class TickerInput extends Vue {
  message = "";

  go() {
    const parent: any = this.$parent;
    const output = JSON.stringify({text: this.message, timestamp: Date.now()})
    console.log('message from input' + this.message)
    parent.socket.emit(parent.tickerId, output);
    this.message= "";
  }
}

</script>
