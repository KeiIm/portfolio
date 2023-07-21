<template>
<div class="projects">
  <h1>Projects</h1>

  <div class="wrapper">
    <ProjectCard class="card">
      <template #title>Card Collection Manager</template>
      <template #tools>HTML, CSS, PHP, MySQL, Bootstrap</template>
      A full-stack web application to help sort through your trading card game collections with easy to use
      drag-and-drop functionalities.
      <a href="https://vitejs.dev/" target="_blank" rel="noopener">Vite</a>
      <template #github>github link</template>
      <template #demo>Live Demo</template>
    </ProjectCard>

    <ProjectCard class="card">
      <template #title>TCG Grid Drafting</template>
      <template #tools>HTML, CSS, Typescript, Vue.js, Pinia, Bootstrap-Vue</template>
      A web application for two players to mock draft a deck of cards that they can import from select
      databases, then export the drafted decks for online play.
      <template #github>github link</template>
      <template #demo>Live Demo</template>
    </ProjectCard>

    <ProjectCard class="card">
      <template #title>Yelp Camp</template>
      <template #tools>HTML, CSS, Javascript, Express, MongoDB, Bootstrap</template>
      A full-stack website with authorization & authentication, allowing users to rate and comment campsites, with full
      CRUD capabilities. Also uses map APIs.
      <template #github>github link</template>
      <template #demo>Live Demo</template>
    </ProjectCard>

    <!-- Netify link? -->

    <!-- <ProjectCard class="card">
      <template #title>Front Page Design</template>
      <template #tools>HTML, CSS, Javascript</template>
      Mock websites to developt front-end skills, mimicking existing websites.
      <template #github>github link</template>
      <template #demo>Live Demo (Netify?)</template>
    </ProjectCard> -->
  </div>

    <!-- Github account: Front-end software engineer -->
    <!-- in github: built with / key concepts -->
    <!-- https://www.youtube.com/watch?v=Eb6yFhkzpmI -->

</div>
</template>

<script setup lang="ts">
import ProjectCard from '../components/ProjectCard.vue'
</script>

<style scoped>
.projects {
  transform: skewX(var(--angle-reverse));
  padding-left: 7%;
}

h1 {
  font-weight: 500;
  font-size: 2.6rem;
  top: -10px;
  font-family: var(--header-font);
  text-transform: uppercase;
  text-align: center;
  color: #FFC300;
}

.wrapper {
  display: flex;
  flex-direction: column;
}

h3 {
  font-size: 1.2rem;
}

.card {
  position: relative;
}

.card:after {
  content: "";
  background: var(--color-border);
  position: absolute;
  bottom: 0;
  transform: translateY(83px); /* CHANGE THIS TO SOMETYHING DYNAMIC */
  left: 25%;
  height: 1px;
  width: 50%;
}

.card:nth-of-type(even) {
  flex-direction: row-reverse;
}
</style>