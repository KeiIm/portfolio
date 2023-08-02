<template>

<Navbar />

<div class="about">
  <h1>About Me
    <button onclick="resume.showModal()">Resume</button>
  </h1>

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

  <dialog id="resume">
    <div class="buttons">
      <button id="close-resume" onclick="resume.close()">Close</button>
      <a href="../resume.pdf" target="_blank">Download PDF</a>
    </div>
    <object data="../resume.pdf" type="application/pdf" width="1440" height="1000">
      <p>This browser does not support PDFs. Please download the PDF to view it:</p>
    </object>
  </dialog>

</div>
</template>

<script setup lang="ts">
import Navbar from '../components/Navbar.vue'
</script>

<style scoped>
/* Desktop Style */
.about {
  overflow: auto;
  overflow-x: hidden;
  height: 100%;
  min-height: 100vh;
  width: var(--width-content-side);
  left: 18vw;
  padding: 3rem 6rem 3rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: left;
  scroll-padding: 1rem 0 0 0;
}
.about h1 {
  display: flex;
  align-items: center;
}
.about button {
  width: 90px;
  padding: 0.6rem 0rem;
  margin-left: 20px;
}

.bio {
  background-image: linear-gradient(90deg, var(--color2-32), var(--color2-3));
  padding: 1rem;
  left: -1rem;
  border-radius: 20px;
  margin: 1rem;
  width: clamp(75ch, 100%, 105ch);
}
.bio p {
  width: clamp(45ch, 100%, 75ch);
}

.skills-container {
  display: flex;
  flex-wrap: wrap;
  /* GRID! SO TOOLS TAKES UP 2 LENGTH IN BOTTOM // OR CLAMP block IN FLEX */
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


dialog::backdrop {
  background-color: rgba(0, 0, 0, 0.3);
}
dialog {
  /* position: absolute; */
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  opacity: 0;
  scale: 0;
  background: var(--color2-1);
  display: block;
  position: fixed;
  width: 1441x;
  display: flex;
  flex-direction: column;
  align-items: center;
}
dialog[open] {
  opacity: 1;
  scale: 1;
}
dialog .buttons {
  display: flex;
  flex-direction: row-reverse;
  align-items: center;
}
dialog .buttons a {
  padding: 0.2rem;
}
dialog .buttons button {
box-shadow: none;
}

/* Border Limit */
@media screen and (max-width: 1100px), screen and (max-device-width: 1100px) {
  .about {
    height: var(--height-content-top);
    min-height: auto;
    width: 100vw;
    left: 0;
    padding: 1rem 3rem;
    justify-content: flex-start; 
  }
  .block {
    width: clamp(180px, 30%, 420px);
  }
}

/* Tablet Style */
@media screen and (max-width: 768px), screen and (max-device-width: 768px) {

}

/* Mobile Style */
@media screen and (max-width: 414px), screen and (max-device-width: 414px) {

}
</style>