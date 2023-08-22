<template>
<header>
  <div class="border"></div>
  <div class="background">

    <h1 class="name">Kei.im</h1>
    <nav class="navlinks">
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About Me</RouterLink>
        <RouterLink to="/projects">Projects</RouterLink>
    </nav>

    <div class="links">
      <a href="https://www.linkedin.com/in/keiimamura/" alt="LinkedIn" target="_blank" rel="noopener"><i class="fa-brands fa-linkedin"></i></a>
      <a href="https://github.com/KeiIm" alt="Github" target="_blank" rel="noopener"><i class="fa-brands fa-github"></i></a>
      <a href="mailto:k.e.imamura@outlook.com" alt="Email"><i class="fa-solid fa-envelope"></i></a>
      <button alt="Resume" onclick="resume.showModal()"><i class="fa-regular fa-file"></i></button>
    </div>

    <dialog id="resume">
      <div class="buttons">
        <a href="/resume.pdf" target="_blank">Download PDF</a>
        <button id="close-resume" onclick="resume.close()">Close &times;</button>
      </div>

      <object data="/resume.pdf" type="application/pdf" title="resume" width="1440" height="1000">
        <p style="color:white">This browser does not support PDFs. Please download the PDF to view it</p>
      </object>
    </dialog>

  </div>
</header>
</template>

<style scoped>
/* Desktop Style */
header {
  position: absolute;
  height: 100vh;
  width: var(--width-navbar-side);
  min-width: 200px;
  overflow: hidden;
}

.border {
  height: 100%;
  clip-path: polygon(0 0, 100% 0, 80% 100%, 0 100%);
  background: var(--color2-1);
}

.background {
  position: absolute;
  background: var(--color2-2);
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  clip-path: polygon(0 0, 96% 0, 76% 100%, 0 100%);

  display: flex;
  flex-direction: column;
  justify-content: center;
  padding-left: clamp(1em, 10%, 3rem); 
  /* padding-left: 1rem;  */
}
.name {
  /* font-size: clamp(2.59rem, calc(1.78rem + 4.07vw), 4.93rem) */
  font-size: clamp(2.5rem, calc(1rem + 2vw), 4.5rem);
}

nav {
  display: flex;
  flex-direction: column;
  font-size: 1.1rem;
}
nav a.router-link-exact-active {
  color: var(--color-text);
}
nav a.router-link-exact-active:hover {
  background-color: transparent;
  cursor: default;
}

.links {
  display: flex;
  justify-content: flex-start;
  padding: 1rem 0;
  font-size: 1.7rem;
  left: -0.6rem;
  gap: 0.4rem;
}
.links i {
  padding: 0 0.6rem;
}
.links button {
  padding: none;
  font-size: 1.6rem;
  text-align: center;
  outline: none;
  /* color:  */
  /* background-color: none; */
  border: none;
  border-radius: 0;
  box-shadow: none;
  cursor: pointer;
  padding: 0.3rem 0.6rem 0.3rem 0.6rem;
}
.links button:hover {background-color: var(--color-hover)}
.links button:active {
  background-color: var(--color-hover);
  box-shadow: none;
  transform: none;
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
  /* width: 1441x; */
  display: flex;
  flex-direction: column;
  align-items: center;
}
dialog[open] {
  opacity: 1;
  scale: 1;
}
dialog .buttons {
  width: 100%;
  height: 40px;
  /* display: flex;
  flex-direction: row;
  align-items: center; */
}
dialog .buttons a {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  padding: 0.2rem;
}
dialog .buttons #close-resume {
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  box-shadow: none;
  padding: 0.25rem 0.5rem;
}

/* Border Limit */
@media screen and (max-width: 1100px), screen and (max-device-width: 1100px) {
  header {
    height: var(--height-navbar-top);
    min-height: 130px;
    width: 100vw;
    position: relative;
  }
  .border {
    /* clip-path: polygon(0 0, 100% 0, 100% 80%, 0 100%); */
    clip-path: polygon(0 0, 100% 0, 100% 100%, 0 80%);
  }
  .background {
    /* clip-path: polygon(0 0, 100% 0, 100% 78%, 0 98%); */
    clip-path: polygon(0 0, 100% 0, 100% 98%, 0 78%);
    padding-left: clamp(1em, 2%, 3rem); 
  }

  nav {
    flex-direction: row;
    /* left: -1rem; */
  }
  nav a {
    white-space: nowrap;
    text-align: center;
    padding: 0 1rem;
    border-left: 1px solid var(--color2-5);
  }
  nav a:first-of-type {
    border: 0;
    /* padding: 0 2rem;
    left: -1rem; */
  }
  .links {
    left: -0.5rem;
    padding: 0 0.5rem 2rem;
    /* gap: 1rem; */
  }
  .links i {
    padding: 0 1rem;
  }
}

/* Tablet Style */
@media screen and (max-width: 768px), screen and (max-device-width: 768px) {

}

/* Mobile Style */
@media screen and (max-width: 414px), screen and (max-device-width: 414px) {
  nav {
    flex-wrap: wrap;
  }
}
</style>
