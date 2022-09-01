<template>
  <q-layout view="lHh lpR fFf">
    <q-header  class="bg-white text-dark flex head-mains" height-hint="98">
      <q-toolbar class="q-pa-lg">
        <q-toolbar-title>
        <a href="/">
          <img class="logo" src="/images/logo.png" alt="" /> </a>
        </q-toolbar-title>


        <q-tabs class="pages"  align="left">
         <a  class="link-text" target="_blank"
            href=" https://reskillamericans.org/learn-more/"
            >Learn more</a>

            <a  class="link-text" target="_blank"
            href="https://reskillamericans.org/partner/"
            >Partner </a>
            <a  class="link-text" target="_blank"
            href=" https://reskillamericans.org/donate/"
            >Donate</a>
            <a  class="link-text" target="_blank"
            href=" https://reskillamericans.org/about/"
            >About us</a>

    <a  class="link-text" target="_blank"
            href=" https://reskillamericans.org/news/"
            >News</a>
  <div class="button ">
            <q-btn href="/" class="btn buttonss">Enroll</q-btn>
          </div>

        </q-tabs>

        <q-btn
          class="menu"
          dense
          flat
          color="dark"
          round
          icon="menu"
          @click="toggleRightDrawer"
        />
      </q-toolbar>
    </q-header>

    <q-drawer v-model="rightDrawerOpen" side="right" bordered>
      <q-tabs class="column" active-color="primary">
        <div
          style="width: 100%"
          class="column q-py-lg items-center justify-center"
        >
          <q-route-tab
            class="q-my-sm text-dark addbor text-weight-bold"
            target="_blank"
            href=" https://reskillamericans.org/learn-more/"
            label="Learn more "
          />
          <q-route-tab
            class="q-my-sm text-dark addbor text-weight-bold"
            target="_blank"
            href=" https://reskillamericans.org/partner/"
            label="Partner"
          />
          <q-route-tab
            class="q-my-sm text-dark addbor text-weight-bold"
            target="_blank"
            href=" https://reskillamericans.org/donate/"
            label="Donate"
          />
          <q-route-tab
            class="q-my-sm text-dark addbor text-weight-bold"
            target="_blank"
            href="https://reskillamericans.org/about/"
            label="About Us"
          />

          <q-route-tab
            class="q-my-sm text-dark addbor text-weight-bold"
            target="_blank"
            href=" https://reskillamericans.org/news/"
            label="News"
          />

          <q-route-tab
            class="q-my-sm text-dark addbor text-weight-bold"
            target="_blank"
            href="https://reskillamericans.org/faq/"
            label="FAQs"
          />
          <q-route-tab
            class="q-my-sm text-dark addbor text-weight-bold"
            target="_blank"
            href="info@reskillamericans.org"
            label="Contact Us"
          />

          <q-route-tab
            class="q-my-sm text-dark addbor text-weight-bold"
            target="_blank"
            href="https://reskillamericans.org/privacy"
            label="Privacy and Policy"
          />
        </div>
      </q-tabs>
    </q-drawer>

    <q-page-container class="box-par">
      <router-view />
    </q-page-container>

    <q-footer class="bg-white  absolute-bottom text-white">
    <div class="footer-main-box top-foot">
    <div class="foot-box">
    <a href="/">
     <img class="logo logs "  src="/images/Logo2.svg" width="250px"  alt="" /> </a>
     <p class="address">Copyright © 2021 Reskill Americans. All rights reserved.</p>
    </div>
    <p class="line2"></p>
    <div >

    <div class="row items-center box-foot">
          <div class="col-md-9 col-sm-6 col-xs-12">
<p class="foot-reskill">
    Reskill Americans, 5608 17th Ave NW, Ste.619 Seattle, WA 98107</p>

          </div>
          <div class="col-md-1 col-sm-6  col-xs-6">
            <!-- <h3 class="title text-secondary q-mb-md">Links</h3> -->
            <ul>
              <li class="list-unstyled">
                <a
                  class="text-white address"
                  target="_blank"
                  href=" https://reskillamericans.org/learn-more/"
                  >About Us</a
                >
              </li>
              <li class="list-unstyled">
                <a
                  class="text-white address"
                  target="_blank"
                  href=" https://reskillamericans.org/partner/"
                  >Partner</a
                >
              </li>


            </ul>
          </div>
          <div class="col-md-1 col-sm-6 col-xs-6">
            <!-- <h3 class="title text-secondary q-mb-md">Links</h3> -->
            <ul>
              <li class="list-unstyled">
                <a
                  class="text-white address"
                  target="_blank"
                  href="info@reskillamericans.org"
                  >Contact</a
                >
              </li>

              <li class="list-unstyled">
                <a
                  class="text-white address"
                  target="_blank"
                  href="https://reskillamericans.org/news/"
                  >News</a
                >
              </li>
            </ul>
          </div>
          <div class="col-md-1 col-sm-6 col-xs-6">
            <!-- <h3 class="title text-secondary q-mb-md">Links</h3> -->
            <ul>

              <li class="list-unstyled">
                <a
                  class="text-white address"
                  target="_blank"
                  href="https://reskillamericans.org/faq/"
                  >FAQs</a
                >
              </li>
                 <li class="list-unstyled">
                <a
                  class="text-white address"
                  target="_blank"
                  href="https://reskillamericans.org/faq/"
                  >Donate</a
                >
              </li>
            </ul>
          </div>
        </div>
    </div>
     <p class="line2"></p>
     <div class="socials">
              <a href="https://twitter.com/ReskillAmerica" target="_blank">
                <i class="ri-twitter-fill text-white"></i>
              </a>
              <a
                href="https://www.instagram.com/reskillamericans/"
                target="_blank"
              >
                <i class="ri-instagram-fill text-white"></i>
              </a>
              <a
                href="https://www.linkedin.com/company/reskill-americans"
                target="_blank"
              >
                <i class="ri-linkedin-fill text-white"></i>
              </a>
              <a
                href="https://www.youtube.com/c/ReskillAmericans"
                target="_blank"
              >
                <i class="ri-youtube-fill text-white"></i>
              </a>
              <a href="https://github.com/reskillamericans" target="_blank">
                <i class="ri-github-fill text-white"></i>
              </a>
              <a
                href="https://www.facebook.com/reskillamericans"
                target="_blank"
              >
                <i class="ri-facebook-fill text-white"></i>
              </a>
            </div>
    </div>


    </q-footer>
  </q-layout>
</template>

<script>
import { ref } from "vue";

export default {
  setup() {
    const rightDrawerOpen = ref(false);

    return {
      rightDrawerOpen,
      toggleRightDrawer() {
        rightDrawerOpen.value = !rightDrawerOpen.value;
      },
    };
  },
};
</script>
<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap');
.menu {
  display: none;
}
.logo {
  width: 240px;
}

.page-col {
  display: flex;
  flex-direction: column;
}

.addbor {
  border: 1px solid #f4f4f4;
  padding: 0.55rem;
}
.head-mains{
  border-bottom: 1px solid black;
}
.box-par{

  width: 100%;
  margin: auto;
}
.socials {
  display: flex;
  gap: 4rem;
  padding-top: 20px;
  padding-bottom: 40px;
  flex-wrap: wrap;
    width: 100%;
    margin: auto;
    display: flex;
    justify-content: center;

}

.btn {
  border: none;
  background: #f2594b;




  color: #fff;

  padding: 1rem;

}

.buttonss{

   width: 130px;
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
.link-text{
     font-family: 'Open Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 18px;
    margin-right: 50px;
    display: flex;
    align-items: center;
    letter-spacing: 0.2px;
    color: #687274;
}
.footer-main-box{
 background-color: #121928;
}
.line2{
  border-bottom: 1px solid rgba(255, 255, 255, 0.3);;
}
.foot-list{
  display: flex;
  justify-content: space-around;
}
.box-foot{

  padding: 20px;
}
.col-md-9{
  width: 67% !important;
}
.foot-reskill{
  font-family: 'Open Sans';
font-style: normal;
font-weight: 400;
font-size: 24px;
line-height: 130%;
/* or 31px */
width: 330px;
display: flex;
align-items: center;

color: #FFFFFF;
}
.foot-box{
display: flex;
justify-content: space-between;
align-items: baseline;
  padding-top: 40px;
  padding-bottom: 20px;
  padding-left: 25px;
  flex-direction: row;
  padding-right: 25px;

}
.link-text:hover{
  margin-top: -10px;
    float:right;
   margin-right:50px !important;
   -webkit-transition: all 1s ease-out;
   -moz-transition: all 1s ease-out;
   -o-transition: all 1s ease-out;
   -ms-transition: all 1s ease-out;
   transition: all 1s ease-out;
}
.socials i {
  font-size: 3rem;

}
.address{
  font-family: 'Open Sans';
font-style: normal;
font-weight: 400;
font-size: 20px;
line-height: 27px;
display: flex;
align-items: center;
padding-bottom: 13px;

color: #FFFFFF;
}
@media (max-width: 1000px) {
  .menu {
    display: block;
  }
.col-md-9{
  width: 50% !important;
}
  .pages {
    display: none;
  }
  .logo {
    width: 160px;
    padding-left: 15px;
  }
  .foot-box{
flex-direction: column !important;
}
.logs{
  padding-bottom: 20px;
}
}
@media (max-width: 700px) {
  .col-md-9{
  width: 60% !important;
}
.foot-reskill{
  width: 100% !important;
}
}


@media (max-width: 500px) {
  .col-md-9{
  width: 100% !important;
}


}

</style>
