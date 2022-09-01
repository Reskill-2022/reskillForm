<template>
<div class="parent-main">
  <div class="wrapper container">
<div class="">
    <div class="eight q-my-lg">
      <h4 class="header-text">Enrollment Form</h4>
    </div>
    <!-- End of This div needs to be changed -->
    <div class="group">
      <div class="left">
        <div class=" q-mb-lg">
          <p class="text-dark text-enroll">
          Welcome!
            <br /><br/>
            Reskill Americans is currently accepting enrollment for our 7-month software development training session in 2022. Please note, in order to be considered for enrollment for our upcoming session, you must meet the three minimum requirements listed below, and you must complete and submit the requested information in this enrollment application.


            <br>
            <br>

          <ul>
          <li class="q-my-xs icons"> <div class="icon-box"><img  style="margin-top: 7px;" src="images/radio-button-on.png" width="6px" alt=""> </div> <p class="text-enroll smal">You must self-identify as a historically underrepresented racial minority.</p></li >
          <li class="q-my-xs icons"> <div class="icon-box"><img  style="margin-top: 7px;" src="images/radio-button-on.png" width="6px" alt=""> </div> <p class="text-enroll smal"> You must be authorized to legally work in the United States.</p></li>
          <li class="q-my-xs icons"> <div class="icon-box"><img  style="margin-top: 7px;" src="images/radio-button-on.png" width="6px" alt=""> </div> <p class="text-enroll smal">You must maintain a current and accurate LinkedIn.com profile that includes a recent photo of yourself.
          </p></li>
          </ul>
          </p>
          <!-- <p class="text-details2 q-mt-lg">
           *Please provide the email linked to your Linkedin account</p> -->

        </div>
        <!-- <form @submit.prevent="submit">
          <div class="input-wrap">

            <div class=" box-main">
            <div class="input">
              <i class="ri-mail-line q-mr-md mail-icons"></i>

              <input
              name="email"
                v-model="form.email"
                type="email"
                placeholder="Email"
              />
            </div>
          <div class="button ">
            <q-btn type="submit" :loading='loading' class="btn buttonss">Enroll</q-btn>
          </div>
          </div>
          </div>


          


          





          <div class="error" v-if="inputErr">
            {{ inputErr }}
          </div>
          </form> -->
          <q-btn :loading='loading' class="btn buttonss" @click="loginWithLinkedin">
            Login with Linkedin
          </q-btn>
      </div>
    </div>

  </div>
  </div>
  <div><img src="images/Tasha at computer3.jpg" class="tasha" alt=""></div>
  </div>
</template>

<script>
import { useQuasar } from "quasar";
import { useField, useForm } from "vee-validate";

import axios from "axios";

export default {
  setup() {
    const $q = useQuasar();

    return {

    };
  },
  data() {
    return {
      inputErr: "",
       enrolled: '',
      loading:false,
      form: {
        email: "",
      },
    };
  },
  created(){
    localStorage.removeItem("userDetails");
  },

  mounted(){
      if(this.$route.query.code){
          let code = this.$route.query.code
                let redirect_uri = window.location.origin

                let loginData = {
                  code, redirect_uri
                }

                this.$api.post("https://linkedin-signin-prototype.herokuapp.com/api/users",loginData).then((resp)=>{
                  if(resp.status === 201){
                    localStorage.setItem(
                      "userDetails",
                      JSON.stringify(resp.data.payload)
                    );
                    this.$router.replace("/update");

                  }
                  console.log(resp)
                }).catch(({response})=>{
                  console.log(response)
                  this.$q.notify({
                    message: response.data.error,
                    color: "red",
                    position: "top",
                  });
                })
      
       }

  },
 
  methods: {
    loginWithLinkedin(){
      this.loading = true
      // if(!this.$route.query.code){
      //   location.href = 'https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=86p7qxbuxiqvqo&redirect_uri=http://localhost:8085&scope=r_emailaddress,r_liteprofile'
      // }else{
      // let code = this.$route.query.code
      // let redirect_uri = 'http://localhost:8085'

      // let loginData = {
      //   code, redirect_uri
      // }

      // this.$api.post("https://linkedin-signin-prototype.herokuapp.com/api/users",loginData).then((resp)=>{
      //   console.log(resp)
      // }).catch(({response})=>{
      //   console.log(response)
      // })
      // }
       if(this.$route.query.code === undefined){
            location.href = `https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=86p7qxbuxiqvqo&redirect_uri=${window.location.origin}&scope=r_emailaddress,r_liteprofile`
       }else{
         this.loading = false
       }

      //  if(this.$route.query.code){
      //     let code = this.$route.query.code
      //           let redirect_uri = window.location.origin

      //           let loginData = {
      //             code, redirect_uri
      //           }

      //           this.$api.post("https://linkedin-signin-prototype.herokuapp.com/api/users",loginData).then((resp)=>{
      //             console.log(resp)
      //           }).catch(({response})=>{
      //             console.log(response)
      //           })
      
      //  }

      

      console.log(window.location.origin, this.$route.query.code)
    },
    async submit() {
          this.loading = true

      await axios
        .post(
          "https://linkedin-signin-prototype.herokuapp.com/api/users",
          this.form
        )
        .then((resp) => {
          console.log(resp);
          this.loading = false

          localStorage.setItem(
            "userDetails",
            JSON.stringify(resp.data.payload)
          );
          this.$q.notify({
            message: "User successfully created, complete you enrollment",
            color: "primary",
            position: "top",
          });
          this.$router.replace("/update");

          console.log(resp);
        })
        .catch(({ response }) => {
          this.loading = false

          if(response.data.error ){
            console.log(response)
            this.inputErr = response.data.error;
            setTimeout(() => {
              this.inputErr = "";
            }, 4000);
            // this.$q.notify({
            //   message: response.data.error,
            //   color: "secondary",
            //   position: "bottom",
            // });

          }
          console.log(response);
          axios.get(`https://linkedin-signin-prototype.herokuapp.com/api/users/${this.form.email}`).then((resp)=>{
            let enrolled = resp.data.payload.enrolled
            let name = resp.data.payload.name
           if (response.data.error === "User Account Already Exists" && enrolled === false) {
              localStorage.setItem(
            "userDetails",
            JSON.stringify(resp.data.payload)
          );

          if(localStorage.getItem('userDetails')){
            this.$q.notify({
              message: `Nice to have you back ${name}, complete your enrollment`,
              color: "secondary",
              position: "top",
              timeout: 10000500,
              actions: [{ icon: 'close', color: 'white' }]
            });

          }else{
            this.$q.notify({
              message: `Nice to have you back ${name}, complete your enrollment`,
              color: "secondary",
              position: "top",
              timeout: 0,
              actions: [{ icon: 'close', color: 'white' }]
            });
          }
            this.$router.replace("/update");


          }else if(response.data.error === "User Account Already Exists" && enrolled === true){
            console.log(response);
            this.inputErr ='You already enrolled, click learn more to know more about us and this program';
            setTimeout(() => {
              this.inputErr = "";
            }, 4000);
            this.$q.notify({
              message: ' You already enrolled, click learn more to know more about us and this program',
              color: "primary",
              position: "top",
            });}



          })
        });

    },
  },
};
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap');
p {
  margin-bottom: 0;
}
.login-text {
  margin-top: -10px;
}
.group {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  /* grid-template-columns: repeat(2, 1fr); */
  gap: 2rem;
  align-items: flex-end;
}
.top-text {
  font-size: 1rem;
}
input::placeholder {

  opacity: 0.5;
  font-family: 'Open Sans';
font-style: normal;
font-weight: 300;
font-size: 20px;
line-height: 34px;
/* identical to box height, or 170% */

display: flex;
align-items: center;
letter-spacing: 0.3px;

color: #000000;
}

.wrapper {
  display: flex;
  flex-direction: column;

  max-width: 1440px;
  width: 70%;
  margin: auto;

  padding-bottom: 120px;

  overflow: hidden;
  height: 100%;
  padding-top: 7rem;

}
.text-enroll{
  width: 70%;
  font-family: 'Open Sans';
font-style: normal;
font-weight: 300;
font-size: 20px;
line-height: 130%;
/* or 26px */

letter-spacing: 0.3px;

color: #121928;
}
.box-main{
  display: flex;
}
.tasha{
  width: 120% !important;
  margin-top: -50px;
  margin-left: -72px;
}
.parent-main{
display: flex;
flex-direction: row;
width: 80%;
margin: auto;
max-width: 1440px;
align-items: center;
}
.error {
 font-family: 'Open Sans';
font-style: italic;
font-weight: 700;
font-size: 20px;
line-height: 130%;
/* identical to box height, or 26px */

letter-spacing: 0.3px;

color: #F2594B;
}
.text-details2{
  font-family: 'Open Sans';
font-style: normal;
font-weight: 700;
font-size: 20px;
line-height: 130%;
/* identical to box height, or 26px */

letter-spacing: 0.3px;

color: #3C64B1;
}
.smal{
  font-weight: 500;
  font-size: 18px;
}
.header-text{
  font-family: 'Open Sans';
font-style: normal;
font-weight: 700;
font-size: 53px;
line-height: 122%;
/* identical to box height, or 65px */

letter-spacing: 0.3px;

color: #121928;
}

.forgot {
  display: flex;
  justify-content: flex-end;
}
@media (max-width: 1200px) {

  .forgot {
    display: flex;
    justify-content: flex-start;
  }
  .group {
    display: grid;
    grid-template-columns: 1fr;
    /* grid-template-columns: repeat(2, 1fr); */
    gap: 2rem;
    align-items: flex-end;
  }
}
.tasha{
  width: 120% !important;
  margin-top: -50px;
  margin-left: -72px;
}
.wrapper {
  display: flex;
  flex-direction: column;

  max-width: 1440px;
  width: 70%;
  margin: auto;

  padding-bottom: 120px;

  overflow: hidden;
  height: 100%;
  padding-top: 7rem;

}

.heeder {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.heeder i {
  font-size: 35px;
}
.heeder .icon {
  cursor: pointer;
}
.heeder .logo {
  object-fit: contain;
  width: 40px;
  height: 40px;
}
.heeder .logo img {
  object-fit: contain;
}

.input-wrap,
select {
  width: 100%;

}
.buttonss{
   height: 73px;
   width: 260px;
   font-family: 'Open Sans';
font-style: normal;
font-weight: 800;
font-size: 18px !important;
line-height: 22px;
/* or 122% */
text-transform: none;
display: flex;
align-items: center;
text-align: center;
letter-spacing: 0.3px;

/* Light / White */

color: #FFFFFF;

}
.icons{
display: flex;
align-items: flex-start;

}
.icon-box{
  display: flex;
  padding-right: 6px;
  align-items: baseline;
}
.mail-icons{
  color: rgba(0, 0, 0, 0.22);
  font-size: 30px;
  padding-left: 12px;
}
.error {
  font-size: 0.9em;
  color: #ff0000;
}
.input-wrap .input {
  /* border: 1px solid #2b945b; */
  padding: 0.75rem;
width: 400px;
  margin-bottom: 2px;
  background: rgba(236, 236, 236, 0.67);
  border: 1px solid rgba(229, 229, 229, 0.2);
  box-sizing: border-box;

  display: flex;
  height: 73px;
  align-items: center;
}

.input-wrap .input input,
select {
  border: none;
  padding: 0.45rem;
  background: transparent;
  color: #959292;
  width: 100%;
  cursor: pointer;
}
.input-wrap .input input:focus,
select:focus {
  outline: none;
}
.input-wrap .input .input:hover {
  border: 1px solid #2b945b;
  transition: all 0.5s ease-in-out;
}

.btn {
  border: none;
  background: #f2594b;
  color: #fff;
  padding: 1rem;
}

.eight h3 {
  text-align: center;
  font-size: 2rem;
  letter-spacing: 1px;
  font-weight: bold;
  display: grid;
  grid-template-columns: 1fr auto 1fr;
  grid-template-rows: 16px 0;
  grid-gap: 22px;
}

.eight h3:after,
.eight h3:before {
  content: " ";
  display: block;
  border-bottom: 1px solid #ccc;
  /* background-color: #f8f8f8; */
}

.log {
  display: grid;
  /* grid-template-columns: repeat(2, 1fr); */
  grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));

  gap: 2rem;
  align-items: center;
  justify-content: center;
  width: 100%;
  margin: 2.5rem auto;
}

.log .wrapp {
  display: flex;
  align-items: center;
  background: #ffffff;
  width: 100%;
  box-shadow: 18.587px 18.587px 37.1739px rgba(211, 209, 216, 0.25);
  border-radius: 28.5px;
  /* align-items: center; */
  /* justify-content: center; */
  padding: 0 1rem;
  /* margin:0 1rem ; */
}
/* .log .wrapp .go{
  height: 30px;
} */
.log .wrapp i {
  font-size: 2rem;
}
.log .wrapp img {
  width: 20px;
  height: 20px;
}
@media (max-width: 1090px) {
  .text-enroll{
  width: 100%;
  }
  .tasha{
  width: 120% !important;
  margin-top: -50px;
  margin-left: inherit;
}
  .parent-main{
display: flex;
flex-direction: column;
width: 90%;
margin: auto;
align-items: center;
}
.tasha{
  width: 100% !important;
  margin-top: -50px;
  margin-bottom: 20px;
}
.wrapper {
  display: flex;
  flex-direction: column;

  max-width: 1440px;
  width: 100%;
  margin: auto;

  padding-bottom: 120px;

  overflow: hidden;
  height: 100%;
  padding-top: 7rem;

}
  }
@media (max-width: 500px) {

  .log .wrapp p {
    font-size: 11px;
  }
.wrapper {
  display: flex;
  flex-direction: column;

  max-width: 1440px;
  width: 100%;
  margin: auto;

  padding-bottom: 120px;

  overflow: hidden;
  height: 100%;
  padding-top: 7rem;

}
  .btn {
    width: 90%;
  }
}
.buttonss{
   height: 73px;
   width: 260px;
   font-family: 'Open Sans';
font-style: normal;
font-weight: 800;
font-size: 18px !important;
line-height: 22px;
/* or 122% */
text-transform: none;
display: flex;
align-items: center;
text-align: center;
letter-spacing: 0.3px;

/* Light / White */

color: #FFFFFF;

}
.input-wrap .input {
  /* border: 1px solid #2b945b; */
  padding: 0.75rem;
width: 430px;
  margin-bottom: 2px;
  background: rgba(236, 236, 236, 0.67);
  border: 1px solid rgba(229, 229, 229, 0.2);
  box-sizing: border-box;

  display: flex;
  height: 73px;
  align-items: center;
}
.ri-facebook-box-fill {
  color: #4267b2;
}

.ri-google-fill {
  color: #fbbc05;
}

.log .wrap p {
  margin: 0 1rem;
}

.flexx {
  display: flex;
  justify-content: space-between;
}

.q-tab {
  width: 50% !important;
}

@media (max-width: 430px) {
  .input-wrap .input input:placeholder-shown,
  select {
    font-size: 14px;
  }
  .log {
    width: 100%;
  }
  .buttonss{
   height: 73px;
   width: 100px;
   font-family: 'Mulish';
font-style: normal;
font-weight: 800;
font-size: 18px !important;
line-height: 22px;
/* or 122% */
text-transform: none;
display: flex;
align-items: center;
text-align: center;
letter-spacing: 0.3px;

/* Light / White */

color: #FFFFFF;

}
.input-wrap .input {
  /* border: 1px solid #2b945b; */
  padding: 0.75rem;
width: 220px;
  margin-bottom: 2px;
  background: rgba(236, 236, 236, 0.67);
  border: 1px solid rgba(229, 229, 229, 0.2);
  box-sizing: border-box;

  display: flex;
  height: 73px;
  align-items: center;
}
  .resp {
    padding: 1rem;
    border-radius: 8px;
    font-size: 12px;
  }
}
@media (max-width: 600px) {
.buttonss{
   height: 73px;
   width: 80%;
   

}
}
@media (max-width: 350px) {
  .input-wrap .input {
  /* border: 1px solid #2b945b; */
  padding: 0.75rem;
width: 200px;
  margin-bottom: 2px;
  background: rgba(236, 236, 236, 0.67);
  border: 1px solid rgba(229, 229, 229, 0.2);
  box-sizing: border-box;

  display: flex;
  height: 73px;
  align-items: center;
}
}
</style>
