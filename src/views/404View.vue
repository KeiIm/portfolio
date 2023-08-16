<template>
  <div class="nav">
    <Navbar />
  </div>

  <main>
    <h1>Sorry, that page doesn't exist!</h1>
    <RouterLink to="/"><i>Back to Home</i></RouterLink>
  </main>
</template>

<script setup lang="ts">
import Navbar from '../components/Navbar.vue'
</script>

<style scoped>
/* Desktop Style */
.nav {
  position: sticky;
  top: 0;
  left: 0;
}

main {
  overflow: auto;
  overflow-x: hidden;
  height: 100%;
  min-height: 100vh;
  width: var(--width-content-side);
  left: 18vw;
  padding: 3rem 5rem 3rem 3rem;
  scroll-padding: 1rem 0 0 0;
  display: flex;
  flex-direction: column;
  justify-content: center; 
  align-items: left;
  gap: 0.7rem;
}

a {
    padding: 0.3rem 0;
}

/* Border Limit */
@media screen and (max-width: 1100px), screen and (max-device-width: 1100px) {
  main {
    height: 82vh;
    min-height: auto;
    width: 100vw;
    left: 0;
    padding: 1rem 3rem;
    justify-content: flex-start; 
  }
}

/* Tablet Style */
@media screen and (max-width: 768px), screen and (max-device-width: 768px) {

}

/* Mobile Style */
@media screen and (max-width: 414px), screen and (max-device-width: 414px) {

}
</style>