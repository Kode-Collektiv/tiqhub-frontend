<template>

  <div class="timeline-item">
    <div class="timeline-marker"></div>
    <div class="timeline-content">
      <p class="heading">{{getAbsolutTime()}}</p>
      <p>{{text}}</p>
    </div>
  </div>
</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';

@Options({
  props: {
    timestamp: Number,
    text: String
  },
})
export default class TickerCard extends Vue {
  timestamp!: number;
  text!: string;

  public getAbsolutTime(): string {
    return new Date(this.timestamp).toLocaleTimeString("en-US")
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.timeline-content {
  text-align: left;
}
</style>
