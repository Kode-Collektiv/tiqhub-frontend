<template>
  <div class="field">
    <div class="control">
      <input class="input is-primary" type="text" placeholder="Primary input">
      <button class="button">Broadcast</button>
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

}

</script>
