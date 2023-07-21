<template>
<div class="about">
  <h1>About Me</h1>
  <p>I'm a self-taught, <b>full stack</b> web developer. With a background in engineering and research, I'm pursuing my passion of creativity and creation in the field of coding.</p>
  <p>My focus is on front-end development, but I'm experienced in a full stack environment. My recent preference is using Typescript with Vue.js to create responive and dynamic, single-page web apps.</p>
  <p>Please take a look at some of the apps I worked on! You will probably discover that I'm also quite passionate about trading card games.</p>
  <button onclick="resume.showModal()">Resume</button>

  <dialog id="resume">
    <button id="close-resume" onclick="resume.close()">Close</button>
    <p>blah blah resume here.</p>
    <!-- <iframe src="../src/assets/resume.pdf" frameborder="0" width="600" height="780"></iframe>
    <embed src="../src/assets/resume.pdf" type="" height="500" width="1000"> -->
    <object data="../resume.pdf" type="application/pdf" width="1440" height="1000">
      <p>This browser does not support PDFs. Please download the PDF to view it:</p>
    </object>
    
    <br>

    <a href="../resume.pdf">Download PDF</a>
  </dialog>

  <br>
  <br>

  <h2>Skills</h2>
  <div class="skills">
    <div class="block front">
      <h3>Front End</h3>
      <div class="icons">
        <img src="../assets/logo-HTML.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-CSS.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-JS.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-TS.png" alt="HTML5" style="width:15%;">
        <!-- HTML, CSS, Javascript, Typescript -->
      </div>
    </div>
    
    <div class="block back">
      <h3>Back End</h3>
      <div class="icons">
        <img src="../assets/logo-php.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-express.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-mysql.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-Mongo.png" alt="HTML5" style="width:15%;">
      </div>
    </div>
    
    <div class="block tools">
      <h3>Tools & Libraries</h3>
      <div class="icons">
        <img src="../assets/logo-Git.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-node.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-bootstrap.png" alt="HTML5" style="width:15%;">
        <img src="../assets/logo-Vue.png" alt="HTML5" style="width:15%;">
      </div>
    </div>
  </div>
</div>
</template>

<style scoped>
.about {
  transform: skewX(var(--angle-reverse));
}

dialog::backdrop {
  background-color: rgba(0, 0, 0, 0.2);
}
dialog {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  opacity: 0;
  scale: 0;
  background: grey;
  display: block;
  position: fixed;
  /* transition: all 0.2s; */
  overflow-y: hidden;
}
dialog[open] {
  opacity: 1;
  scale: 1;
}
.about {
  /* background: darkcyan; */
  display: flex;
  flex-direction: column;
  width: 90%;
}

h1 {
  font-weight: 500;
  font-size: 2.6rem;
  font-family: var(--header-font);
  text-transform: uppercase;
  color: #FFC300;
}

button {
  width: 90px;
  padding: 0.6rem 0rem;
}

#close-resume {
  width: 70px;
  position: absolute;
  top: 10px;
  right: 10px;
  z-index: 1;
}

.skills {
  display: flex;
  flex-direction: row;
}

.skills h3 {
  font-size: 1.2rem;
  position: absolute;
  top: 0;
  margin-top: 0.8rem;
}

.skills .block {
  width: 30%;
  height: 200px;
  background: rgba(255,255,255, 0.1);
  margin: 5px;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.icons {
  display: flex;
  justify-content: center;
  align-items: center;
}

img {
  width: 15%;
  margin: 2%;
}

.pdfobject-container {
  height: 30rem;
  border: 1rem solid rgba(0,0,0,.1);
}
</style>
