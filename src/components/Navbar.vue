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
      <a href="https://www.linkedin.com/in/keiimamura/" target="_blank" rel="noopener"><i class="fa-brands fa-linkedin"></i></a>
      <a href="https://github.com/KeiIm" target="_blank" rel="noopener"><i class="fa-brands fa-github"></i></a>
      <a href="mailto:@k.e.imamura@outlook.com"><i class="fa-solid fa-envelope"></i></a>
    </div>

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
}
.background .name {
  padding-left: 1rem;
}

nav {
  display: flex;
  flex-direction: column;
  font-size: 1.1rem;
}
nav a {
  padding-left: 1rem;
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
  padding: 0.5rem 1rem;
  font-size: 1.7rem;
  left: -0.6rem;
}
.links i {
  padding: 0 0.6rem;
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
  }
  nav {
    flex-direction: row;
  }
  nav a {
    white-space: nowrap;
    text-align: center;
    padding: 0 1rem;
    border-left: 1px solid var(--color2-5);
  }
  nav a:first-of-type {
    border: 0;
  }
  .links {
    left: 0;
    padding: 0 0.5rem 2rem;
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
