<template>
  <div class="field">
    <div class="field">
      <textarea class="textarea is-success" placeholder="Start typing..." v-model="message" @keyup.enter="go" rows="1"></textarea>
      <p class="control" style="display: block; margin-top: 1em" >
        <button class="button is-link is-success is-large is-rounded" @click="go">Send</button>
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
    this.message = "";
  }
}

</script>
