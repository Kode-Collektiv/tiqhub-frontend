import {createApp} from 'vue'
import App from './App.vue'
import router from './router'
import {VueCookieNext} from 'vue-cookie-next'

import './../node_modules/bulma/css/bulma.css';

const app = createApp(App)

app.use(VueCookieNext)
app.use(router)
app.mount('#app')
