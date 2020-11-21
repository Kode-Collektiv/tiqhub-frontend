<template>
  <div id="nav">
    <router-link to="/">Home</router-link> |
    <router-link to="/feed">Feed</router-link>
  </div>
  <router-view/>
</template>




<style lang="scss">

@import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');

@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap');


#app {
  font-family: 'Roboto', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
