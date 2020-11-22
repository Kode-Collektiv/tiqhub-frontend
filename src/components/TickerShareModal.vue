<template>
  <div class="is-inline">
    <button class="share-button button is-link is-light is-rounded" @click="showModal">Share</button>
    <div class="modal" v-bind:class="{ 'is-active': showEditModal }">
      <div class="modal-background" @click="cancelModal"></div>
      <div class="modal-content">
        <div class="box">
          <div class="tabs">
            <ul>
              <li :class="[ share === 'embed' ? 'is-active' : '']"><a @click="share='embed'">Embed this Feed</a></li>
              <li :class="[ share === 'link' ? 'is-active' : '']"><a @click="share='link'">Share feed</a></li>
            </ul>
          </div>

          <div>
            <section v-if="share ==='embed'" class="tab-content">
              <textarea class="textarea" readonly v-model="embedShare"/>
            </section>
            <section v-if="share ==='link'" class="tab-content">
              <textarea class="textarea" readonly v-model="linkShare"/>
            </section>
          </div>
        </div>
      </div>
      <button class="modal-close is-large" aria-label="close" @click="cancelModal"></button>
    </div>
  </div>

</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';

@Options({
  components: {},
  props: {
    tickerId: String
  }
})
export default class TickerShareModal extends Vue {
  share = "embed"
  showEditModal = false
  tickerId!: string

  linkShare = process.env.VUE_APP_TIQHUB_FRONTEND_URL + "feed/" + this.tickerId
  embedShare = "<iframe width='560' height='315' src='" + this.linkShare + "' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>"

  private cancelModal() {
    console.log('showEditModal value is', this.showEditModal);
    this.showEditModal = false;
  }

  private showModal() {
    this.showEditModal = true;
  }



}

</script>

<style scoped lang="scss">
.share-button {
  margin: 0px 20px;
}
</style>
