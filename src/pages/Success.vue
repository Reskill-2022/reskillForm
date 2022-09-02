<template>
  <div class="parent-main">
    <div class="wrapper container">
  <div class="">
      <div class="eight q-my-lg">
        <h4 class="header-text"> Congratulations</h4>
      </div>
      <!-- End of This div needs to be changed -->
      <div class="group">
        <div class="left">
          <div class=" q-mb-lg">
            <p class="text-dark text-enroll">


              You have successfully completed the Reskill Americans enrollment form for our software development training program which begins on October 3, 2022.
              <br>
              <br>
              You will be receiving an email shortly that confirms your enrollment and shares more details. Please be sure to check your spam folder in case it was directed there.
<br/>
<br />
If you don’t receive an email from us within 24 hours, please email us at <a href="mailto:info@reskillamericans.org">mailto:info@reskillamericans.org</a>
<br/>
<br />
We look forward to helping you on our journey towards accessing a career in tech!
<br/>
<br/>

Regards,
<br/>
<br/>
The Reskill Americans team

            </p>

          </div>


        </div>
      </div>

    </div>
    </div>
    <div><img src="images/sucess.jpg" class="tasha" alt=""></div>
    </div>
  </template>


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
