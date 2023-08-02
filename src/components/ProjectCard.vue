<template>
  <div>
    <img src="../assets/sample-screenshot.png" alt="">
    <div class="details">

      <h2>
        <slot name="title"></slot>
      </h2>
      
      <h3>
        <span style="color:var(--color-text)">Tools: </span><slot name="tools"></slot>
      </h3>
      
      <slot></slot>

      <div class="links">
        <button><slot name="github"></slot></button>
        <button><slot name="demo"></slot></button>
      </div>

    </div>
  </div>
</template>

<style scoped>
img {
  height: auto;
  width: clamp(150px, 45vw, 400px);
  border-radius: 15px;
  box-shadow: 5px 5px rgba(0, 0, 0, 0.2);
}

.details {
  margin: 0 2rem;
  width: clamp(75ch, 100%, 105ch);
}
.details h2 {
  font-size: 1.8rem;
}
.details h3 {
  padding: 0.5rem 0.5rem 0.5rem 0;
  color: var(--color2-4);
}
.details .links {
  display: flex;
  justify-content:center;
  align-items: center;
  gap: 2rem;
  padding: 1rem;
}
</style>
