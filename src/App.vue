<template>
  <div id="app">
    <form>
      <label>{{ $t('lang') }}</label>
      <select v-model="lang">
        <option value="ja">{{ $t('japanese') }}</option>
        <option value="en">{{ $t('english') }}</option>
      </select>
    </form>
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'app',
  components: {
    HelloWorld
  },
  data () {
    return { lang: 'en' }
  },
  watch: {
    lang: function (val) {
      this.$root.$i18n.locale = val
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

<i18n>
{
  "en": {
    "lang": "Languages",
    "japanese": "Japanese",
    "english": "English"
  },
  "ja": {
    "lang": "言語",
    "japanese": "日本語",
    "english": "英語"
  }
}
</i18n>