<template>
  <div class="field">
    <div class="control">
      <input class="input is-primary" v-model="message" type="text" placeholder="Primary input">
      <button class="send-button" @click="go">Feed!</button>
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
  message!: string

  go() {
    console.log(this.message)
    const parent: any = this.$parent;
    parent.socket.emit("message", JSON.stringify({text: this.message, timestamp: 1605986524}))
  }

}

</script>
