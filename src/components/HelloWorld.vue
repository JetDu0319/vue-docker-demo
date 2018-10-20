<template>
  <div class="hello">
      <h1>Vue docker 自动部署</h1>
      <h2>1: 云主机,安装docker</h2>
      <h2>2: vue init 初始化项目，配置Dockerfile</h2>
      <h2>3: DaoCloud Service 配置ci</h2>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
