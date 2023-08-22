<template>
<main>
  <h1><RouterLink to="/about">Kei Imamura</RouterLink></h1>
  <h2>Full Stack Web Developer</h2>
  <nav>
      <RouterLink to="/">Home</RouterLink>
      <RouterLink to="/about">About Me</RouterLink>
      <RouterLink to="/projects">Projects</RouterLink>
  </nav>
  <div class="links">
    <a href="https://www.linkedin.com/in/keiimamura/" title="LinkedIn" alt="LinkedIn" target="_blank" rel="noopener"><i class="fa-brands fa-linkedin"></i></a>
    <a href="https://github.com/KeiIm" title="Github" alt="Github" target="_blank" rel="noopener"><i class="fa-brands fa-github"></i></a>
    <a href="mailto:k.e.imamura@outlook.com" title="Email" alt="Email"><i class="fa-solid fa-envelope"></i></a>
    <a href="/resume.pdf" title="Resume" alt="Resume" target="_blank"><i class="fa-regular fa-file"></i></a>
  </div>
</main>
</template>

<style scoped>
/* Desktop Style */
main {
  height: 100vh;
  background-image: linear-gradient(100deg, var(--color2-2), var(--color2-3));
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  overflow-x: hidden;
  overflow-y: hidden;
}

h1 {
  font-size: clamp(3rem, 16vw, 8rem);
  line-height: 1;
  text-align: center;
  padding-bottom: 0.5rem;
}
h1 a:hover {
  background-color: transparent;
}

h2 {
  font-size: clamp(1.3em, 8vw, 2.5rem);
  text-align: center;
  padding-bottom: 2rem;
}

nav {
  display: flex;
  flex-direction: row;
  font-size: 1.2rem;
}

nav a {
  font-family: Konkhmer;
  white-space: nowrap;
  text-align: center;
  padding: 0 1rem;
  border-left: 1px solid var(--color2-5);
}
nav a:first-of-type {
  border: 0;
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
  justify-content: center;
  padding-top: 2rem;
  font-size: 2.5rem;
}
.links i {
  width: 70px;
  text-align: center;
}

/* Tablet Style */
@media screen and (max-width: 768px), screen and (max-device-width: 768px) {

}

/* Mobile Style */
@media screen and (max-width: 414px), screen and (max-device-width: 414px) {
  nav {
    flex-direction: column;
  }
  nav a {
    width: 125px;
    line-height: 1.5;
    padding: 0;
    border: 0;
  }
}
</style>