<template>
<div class="nav">
  <Navbar />
</div>

<div class="projects">
  <h1>Projects</h1>

  <ProjectCard class="card">
    <template #title>Card Collection Manager</template>
    <template #tools>HTML, CSS, PHP, MySQL, Bootstrap</template>
    <p>A full-stack web application to help sort through your trading card game collections with easy to use
    drag-and-drop functionalities.</p>
    <template #links>Links Coming Soon</template>
  </ProjectCard>

  <ProjectCard class="card">
    <template #title>TCG Grid Drafting</template>
    <template #tools>HTML, CSS, Typescript, Vue.js, Pinia, Bootstrap-Vue</template>
    <p>A web application for two players to mock draft a deck of cards that they can import from select
    databases, then export the drafted decks for online play.</p>
    <template #links>Links Coming Soon</template>
  </ProjectCard>

  <ProjectCard class="card">
    <template #title>Yelp Camp</template>
    <template #tools>HTML, CSS, Javascript, Express, MongoDB, Bootstrap</template>
    <p>A full-stack website with authorization & authentication, allowing users to rate and comment campsites, with full
    CRUD capabilities. Also uses map APIs.</p>
    <template #links>Links Coming Soon</template>
  </ProjectCard>

  <ProjectCard class="card">
    <template #title>Front Page Design</template>
    <template #tools>HTML, CSS, Javascript</template>
    <p>Mock websites to developt front-end skills, mimicking existing websites.</p>
  <template #links>Links Coming Soon</template>
  </ProjectCard>

</div>
</template>

<script setup lang="ts">
import Navbar from '../components/Navbar.vue'
import ProjectCard from '../components/ProjectCard.vue'
</script>

<style scoped>
/* Desktop Style */
.nav {
  position: sticky;
  top: 0;
  left: 0;
}

.projects {
  overflow: auto;
  overflow-x: hidden;
  height: 100%;
  min-height: 100vh;
  width: var(--width-content-side);
  left: var(--width-navbar-side);
  padding: 3rem 5rem 3rem 3rem;
  scroll-padding: 1rem 0 0 0;
  display: flex;
  flex-direction: column;
  justify-content: flex-start; 
  align-items: center;
}
.projects h1 {
  text-align: center;
}

.card {
  margin: 1rem 0;
  display: flex;
  height: 100%;
  /* min-height: 250px; */
  width: clamp(800px, calc(540px + 30vw), 1600px);
  background-image: linear-gradient(90deg, var(--color2-3), var(--color2-32));
  border-radius: 20px;
}
.card:nth-of-type(even) {
  flex-direction: row-reverse;
  background-image: linear-gradient(270deg, var(--color2-3), var(--color2-32));
}

/* Border Limit */
@media screen and (max-width: 1100px), screen and (max-device-width: 1100px) {
  .projects {
    height: var(--height-content-top);
    min-height: auto;
    width: 100vw;
    left: 0;
    padding: 1rem 3rem;
  }
}

/* Image Limit */
@media screen and (max-width: 900px), screen and (max-device-width: 900px) {
  .card {
    width: clamp(400px, calc(240px + 42vw), 800px);
    /* height: 300px; */
  }
}

/* Tablet Style */
@media screen and (max-width: 768px), screen and (max-device-width: 768px) {

}

/* Mobile Style */
@media screen and (max-width: 414px), screen and (max-device-width: 414px) {

}
</style>