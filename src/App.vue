<template>
  <div class="page" :class="[{'home-style': isHomeView}, {'other-style': !isHomeView}]">
    <header>
      <h1 class="name">Kei Imamura</h1>
      <h2 class="bio" v-show="isHomeView">Full Stack Web Developer</h2>

      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About Me</RouterLink>
        <RouterLink to="/projects">Projects</RouterLink>
        <RouterLink to="/contact">Contact</RouterLink>
      </nav>
    </header>

    <main>
      <RouterView />
    </main>
  </div>
</template>

<script lang="ts">
import { defineComponent, computed } from 'vue'
import { useRoute } from 'vue-router'
import ColorBox from './components/ColorBox.vue'

export default defineComponent({
  name: 'App',
  components: { ColorBox },
  setup() {
    const isHomeView = computed(() => {
      return useRoute().path === '/';
    })

    return { isHomeView }
  }
})
</script>

<style>
.page {
  height: 100vh;
  display: grid;
  align-items: center;
  overflow-x: hidden;
  overflow-y: hidden;
  grid-template-columns: minmax(260px, 1fr) minmax(1080px, 4fr);
}
.home-style {
    grid-template-columns: 1fr 0fr;
    background-image: linear-gradient(100deg, var(--color2-2), var(--color2-3));
    /* transition: grid-template-columns 250ms; */
}

.name {
  top: -10px;
  font-family: var(--header-font);
  text-transform: uppercase;
  color: var(--color2-4);
  z-index: 1;
  font-size: 2.6rem;
  text-align: left;
  line-height: 1em;
  padding: 0 1rem;
}
.home-style .name {
  font-size: 8rem;
  text-align: center;
  padding: none;
}

.bio {
  font-family: var(--header-font);
  font-size: 2.6rem;
  text-align: center;
  text-transform: uppercase;
}

main {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background: var(--color2-3);
  padding: 2rem;
  margin-right: -7%;
  padding-right: 7%;
}
.other-style main {
  border-left: 10px solid var(--color2-1);
  transform: skewX(var(--angle));
  transform-origin: 0% 60%;
  animation: mainSlideIn 200ms ease-out;
}

@keyframes mainSlideIn {
    from {
        /* opacity: 0; */
        transform: translateX(100%) skew(var(--angle));
    }
    to {
        /* opacity: 1; */
        transform: translateX(0%) skew(var(--angle));
    }
}

/* .page,
.name,
main {
  transition: all 0.2s ease-out;
} */

nav {
  display: flex;
  width: 100%;
  font-size: 18px;
  flex-direction: column;
}
.home-style nav {
  flex-direction: row;
  justify-content: center;
}

nav a {
  display: inline-block;
  font-family: Konkhmer;
  padding: 0 1rem;
  border-left: 1px solid var(--color2-5);
}
nav a:first-of-type {
  border: 0;
}
.other-style nav a {
  border: 0;
}

nav a.router-link-exact-active {
  color: var(--color-text);
}
nav a.router-link-exact-active:hover {
  background-color: transparent;
  cursor: default;
}

/* @media (hover: hover) {
  a:hover {
    background-image: linear-gradient(90deg, var(--color-hover), var(--color2-2));
  }
} */

@media screen and (max-width: 768px), screen and (max-device-width: 768px) {
  .page {
    grid-template-columns: 1fr 1fr;
  }
}

/*
Desktop Style (not in media query)
Tablet Style (max-width: 768px)
Mobile Style (max-width: 414px)
*/

/* with nesting, use &:hover, &.page and such unless you expect spacing/nesting. Can also use @media */
</style>