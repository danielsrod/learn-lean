<script>
import axios from "axios";
import PeopleCard from "./cards/PeopleCard.vue";
export default {
  data: () => ({
    fetchPeopleData: [],
    API: "https://randomuser.me/api?results=3",
  }),
  components: {
    PeopleCard,
  },
  props: {
    msg: String,
  },
  mounted() {},
  methods: {
    async findPeople() {
      this.fetchPeopleData = await axios
        .get(this.API)
        .then((response) => {
          return response.data.results;
        })
        .catch((err) => {
          console.log(err);
          return [];
        });
    },
  },
};
</script>

<template>
  <h1>{{ msg }}</h1>
  <button @click="findPeople">find people</button>
  <PeopleCard :people="fetchPeopleData" />
</template>

<style scoped></style>
