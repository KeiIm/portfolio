<template>
  <div class="card">
    <img src="../assets/sample-screenshot.png" alt="">
    <div class="details">
      <h2>
        <slot name="title"></slot>
      </h2>
      <h3>
        Tools: <slot name="tools"></slot>
      </h3>
      <slot></slot>
      <br>
      Tools: Vue, React, etc.
      <br>
      <div class="links">
        <button><slot name="github"></slot></button>
        <button><slot name="demo"></slot></button>
      </div>
    </div>
  </div>
</template>

<style scoped>
.card {
  margin-top: 2rem;
  display: flex;
  width: 90%;
}

.details {
  margin: 0 2rem;
}

img {
  display: flex;
  place-items: center;
  place-content: center;
  height: 200px;
  border-radius: 15px;
  box-shadow: 5px 5px rgba(0, 0, 0, 0.2);

  color: var(--color-text);
}

h3 {
  font-size: 1.2rem;
  font-weight: 500;
  margin-bottom: 0.4rem;
  color: var(--color-heading);
}

.links {
  display: flex;
}
</style>
