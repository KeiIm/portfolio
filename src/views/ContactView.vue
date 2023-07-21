<template>
  <div class="contact">
    <h1>Connect with me</h1>

    <a href="https://www.linkedin.com/in/keiimamura/" target="_blank" rel="noopener"><i class="fa-brands fa-linkedin"></i></a>
    <a href="https://github.com/KeiIm" target="_blank" rel="noopener"><i class="fa-brands fa-github"></i></a>

    <!-- <span> or...</span> -->

    <a href="mailto:@k.e.imamura@outlook.com">k.e.imamura@outlook.com</a>

    <form action="" @submit="testMethod" @submit.prevent onsubmit="reset();">
    <!-- <form action="" @submit.prevent onsubmit="sendEmail(); reset(); return false"> -->
      <!-- <fieldset> -->
        <!-- <legend>Quick Connect</legend> -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Your Name" required :v-model="test">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Your Email" required> <!-- v-model="fromEmail" -->
        <label for="message">Message:</label>
        <textarea name="message" id="message" placeholder="Your Message..." required cols="30" rows="10"></textarea>
        <button type="submit" @click="testMethod">Send</button>
      <!-- </fieldset> -->
      </form>
    <!-- give confirmation that message sent / error handling -->
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  setup() {
      const test:String = ''

      const testMethod = () => {
        console.log('i hitted submit and typed ' + test)
      }

    return { test, testMethod }
  }
})
</script>

<!-- 
<script lang="ts">
import { defineComponent, ref } from 'vue'
import { Email } from 'smtpjs';

export default defineComponent({
  setup() {
    const fromEmail = ref<string>('')
    const sendEmail = () => {
      const email = new Email();
      email.setFrom(fromEmail.value)
      email.setSubject('New Contact Form Enquiry')
      email.setBody('This is a test email')
      email.addTo('k.e.imamura@outlook.com')
      email.send()
      // Email.send({
      // Host : "smtp.live.com",
      // Username : "completely_legit@hotmail.com",
      // Password : "pimpGimpin69",
      // To : 'k.e.imamura@outlook.com',
      // From : document.getElementById("email").value,
      // Subject : "New Contact Form Enquiry",
      // Body : "And this is the body"
    }

    return { sendEmail, fromEmail }
  }
})
</script>
 -->

<style scoped>
.contact {
  transform: skewX(var(--angle-reverse));
}

h1 {
  font-weight: 500;
  font-size: 2.6rem;
  top: -10px;
  font-family: var(--header-font);
  text-transform: uppercase;
  color: #FFC300;
}

i {
  font-size: 2.6rem;
  padding: 0 15px;
}

span {
  font-family: var(--header-font);
  font-size: 1.8rem;
  color: #FFC300;
}

form {
  background: rgba(255,255,255, 0.2);
  width: 800px;
  height: 100%;
  margin-top: 2rem;
  padding: 1rem 2rem 2rem;
  border-radius: 15px;
  display: flex;
  flex-direction: column;
  box-shadow: 10px 10px black;
}

form label {
  color: #ffd500;
}

form button {
  padding: 15px;
  background: #ff5361;
  color: #fff;
  font-size: 18px;
  border: 0;
  outline: none;
  cursor: pointer;
  width: 150px;
  margin: 20px auto 0;
  border-radius: 30px;
}

@media (hover: hover) {
  a:hover {
    background-color: black;
  }
}
</style>
