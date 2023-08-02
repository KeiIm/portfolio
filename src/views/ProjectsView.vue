<template>

<Navbar />

<div class="projects">
  <h1>Projects</h1>

  <ProjectCard class="card">
    <template #title>Card Collection Manager</template>
    <template #tools>HTML, CSS, PHP, MySQL, Bootstrap</template>
    <p>A full-stack web application to help sort through your trading card game collections with easy to use
    drag-and-drop functionalities.</p>
    <template #github>github link</template>
    <template #demo>Live Demo</template>
  </ProjectCard>

  <ProjectCard class="card">
    <template #title>TCG Grid Drafting</template>
    <template #tools>HTML, CSS, Typescript, Vue.js, Pinia, Bootstrap-Vue</template>
    <p>A web application for two players to mock draft a deck of cards that they can import from select
    databases, then export the drafted decks for online play.</p>
    <template #github>github link</template>
    <template #demo>Live Demo</template>
  </ProjectCard>

  <ProjectCard class="card">
    <template #title>Yelp Camp</template>
    <template #tools>HTML, CSS, Javascript, Express, MongoDB, Bootstrap</template>
    <p>A full-stack website with authorization & authentication, allowing users to rate and comment campsites, with full
    CRUD capabilities. Also uses map APIs.</p>
    <template #github>github link</template>
    <template #demo>Live Demo</template>
  </ProjectCard>

  <ProjectCard class="card">
    <template #title>Front Page Design</template>
    <template #tools>HTML, CSS, Javascript</template>
    <p>Mock websites to developt front-end skills, mimicking existing websites.</p>
    <template #github>github link</template>
    <template #demo>Live Demo</template>
  </ProjectCard>

</div>
<p>hello world</p>
</template>

<script setup lang="ts">
import Navbar from '../components/Navbar.vue'
import ProjectCard from '../components/ProjectCard.vue'
</script>

<style scoped>
/* Desktop Style */


body {
  overflow: visible;
}


.projects {
  overflow: visible;
  overflow-x: hidden;
  height: 100%;
  min-height: 100vh;
  width: var(--width-content-side);
  left: 18vw;
  padding: 3rem 6rem 3rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: flex-start; 
  align-items: center;
  scroll-padding: 1rem 0 0 0;
}
.projects h1 {
  text-align: center;
}

.card {
  margin: 1rem 0;
  display: flex;
  min-height: 250px;
}
.card:nth-of-type(even) {
  flex-direction: row-reverse;
}

/* Border Limit */
@media screen and (max-width: 1100px), screen and (max-device-width: 1100px) {
  .projects {
    height: 82vh;
    min-height: auto;
    width: 100vw;
    left: 0;
    padding: 1rem 3rem;
  }
}

/* Tablet Style */
@media screen and (max-width: 768px), screen and (max-device-width: 768px) {

}

/* Mobile Style */
@media screen and (max-width: 414px), screen and (max-device-width: 414px) {

}
</style>