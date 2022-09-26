<script>
export default {
  data: () => ({}),
  props: {
    people: Array,
  },
  mounted() {},
  methods: {},
};
</script>

<template>
  <div v-for="person in people" :key="person" class="card">
    <p>
      Name: {{ person.name.title }} {{ person.name.first }}
      {{ person.name.last }}
    </p>
    <img :src="person.picture.thumbnail" alt="person photo" />
  </div>
</template>

<style scoped>
.card {
  display: flex;
  border-style: solid;
  border-width: 10px;
  margin-top: 5px;
  width: 250px;
  height: 50px;
}
</style>
