<template>
  <div class="card-container">
    <img :src="imgURL" alt="Sample Screenshot">
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

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
  props: {
    imgURL: {
        required: true,
        type: String
    }
  }
})
</script>

<style scoped>
img {
  height: 225px;
  width: 440px;
  /* max-width: 100%;
  height: auto; */
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

button {
  cursor: not-allowed;
  box-shadow: none;
}
button:hover {
  background: var(--color2-2)
}

/* Image Limit */
@media screen and (max-width: 900px), screen and (max-device-width: 900px) {
  img {
    display: none;
  }
}
</style>
