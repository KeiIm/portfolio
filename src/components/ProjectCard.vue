<template>
  <div class="card-container">
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
        <button><slot name="links"></slot></button>
        <!-- <a <slot name="link"></slot> >
          Link
        </a> -->
      </div>

    </div>
  </div>
</template>

<style scoped>
img {
  height: 225px;
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

/* While projects are being cleaned up: */
.details .links {
  text-decoration: line-through;
}
button {
  cursor: not-allowed;
}

/* Image Limit */
@media screen and (max-width: 900px), screen and (max-device-width: 900px) {
  img {
    display: none;
  }
}
</style>
