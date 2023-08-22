<template>

<div class="nav">
  <Navbar />
</div>

<div class="about">
  <div class="flex-container">
    <h1 class="title">About Me</h1>

    <div class="bio">
      <p>Hi, I'm Kei, thanks for visiting!</p>
      <p>I'm a self-taught, <b>full stack</b> web developer with a preference towards front-end development with Vue.js
        to build dynamic, single-page web apps.</p>
      <p>Please take a look at some of the <RouterLink to="/projects">projects</RouterLink> I worked on! You will probably discover that I'm also quite passionate about trading card games.</p>
    </div>

    <h2>Skills</h2>
    <div class="skills-container">

      <div class="block">
        <h3>Front End</h3>
        <div class="skills">
          <div class="skill">
            <img src="../assets/logo-HTML.png" alt="HTML5">
            <span class="label">HTML5</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-CSS.png" alt="CSS3">
            <span class="label">CSS3</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-JS.png" alt="Javascript">
            <span class="label">Javascript</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-TS.png" alt="Typescript">
            <span class="label">Typescript</span>
          </div>
        </div>
      </div>
      
      <div class="block">
        <h3>Back End</h3>
        <div class="skills">
          <div class="skill">
            <img src="../assets/logo-php.png" alt="PHP">
            <span class="label">PHP</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-express.png" alt="Express">
            <span class="label">Express</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-mysql.png" alt="MySQL">
            <span class="label">MySQL</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-Mongo.png" alt="MongoDB">
            <span class="label">MongoDB</span>
          </div>
        </div>
      </div>
      
      <div class="block">
        <h3>Tools & Libraries</h3>
        <div class="skills">
          <div class="skill">
            <img src="../assets/logo-Git.png" alt="Git">
            <span class="label">Git</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-node.png" alt="Node">
            <span class="label">Node</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-bootstrap.png" alt="Bootstrap">
            <span class="label">Bootstrap</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-Vue.png" alt="Vue.js">
            <span class="label">Vue.js</span>
          </div>
          <div class="skill">
            <img src="../assets/logo-docker.png" alt="Docker">
            <span class="label">Docker</span>
          </div>
        </div>
      </div>
      
    </div>
    
  </div>
</div>
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
  z-index: 1;
}

.about {
  overflow: auto;
  overflow-x: hidden;
  height: 100%;
  min-height: 100vh;
  width: var(--width-content-side);
  left: 18vw;
  padding: 3rem 5rem 3rem 3rem;
  scroll-padding: 1rem 0 0 0;
  display: flex;
  justify-content: center;
}
.flex-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.title {
  display: flex;
  flex-wrap: wrap;
}
.bio {
  background-image: linear-gradient(90deg, var(--color2-32), var(--color2-3));
  padding: 1rem;
  left: -1rem;
  border-radius: 20px;
  margin: 1rem;
  width: clamp(75ch, 75vw, 1260px);
}
.bio p {
  width: clamp(45ch, 80vw, 75ch);
  font-size: clamp(1rem, calc(0.85rem + 0.3vw), 1.2rem);
}

.skills-container {
  display: flex;
  flex-wrap: wrap;
}
.skills-container .block {
  width: clamp(210px, 30%, 420px);
  height: 210px;
  margin: 0.5rem;
  left: -0.5rem;
  border-radius: 20px;
  background: var(--color2-32);

  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

    /* display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr 1fr;
  max-width: 400px;
  height: 400px;
  gap: 20px;
  margin: 80px auto;
  animation: 3000ms ease infinite both; */
}
.skills-container .block h3 {
  position: absolute; /* ignored by flex */
  top: 1rem;
}

.skills {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}
.skill {
  display: flex;
  flex-direction: column;
  justify-content:center;
  align-items: center;

  width: 60px;
  height: 75px;
  color: transparent;
}
.skill img {
  /* width: clamp(40px, 5vw, 60px); */
  width: 40px;
}
.skill .label {
  position: absolute;
  bottom: -10px;
}
.skill:hover {
  color: var(--color-text);
}

/* Border Limit */
@media screen and (max-width: 1100px), screen and (max-device-width: 1100px) {
  .about {
    display:block;
    height: var(--height-content-top);
    min-height: -moz-fit-content;
    min-height: fit-content;
    width: 100vw;
    left: 0;
    padding: 1rem 3rem;
    justify-content: flex-start; 
    /* align-items: flex-start; */
  }
  .skills-container {
    justify-content: center;
  }
  .block {
    width: clamp(180px, 30%, 420px);
  }
  .bio {
  padding: 1rem;
  left: -1rem;
  margin: 1rem;
  width: 80vw;
}
.bio p {
  width: clamp(20ch, calc(8ch + 60vw), 75ch);
  margin: 1rem 0;
}
}

/* Tablet Style */
@media screen and (max-width: 768px), screen and (max-device-width: 768px) {

}

/* Mobile Style */
@media screen and (max-width: 414px), screen and (max-device-width: 414px) {

}
</style>