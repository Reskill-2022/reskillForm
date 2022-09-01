<template>
  <div class="box-par">
    <div class="wrapper container q-pt-xl">
      <div class="eight q-my-lg">
        <h4 class="header-text">Enroll Now</h4>
      </div>
      <!-- {{ phone }} -->
      <!-- {{ inputs }} -->
      {{ inpu }}

      <!-- <div class="error" v-if="inputErr">
        {{ inputErr }}
      </div> -->
      <form @submit.prevent="submit" class="form-box">
        <div class="form-box">
          <div class="input-wrap">
            <label class="form-det" for="">Full Name</label> <br />

            <div class="input">
              <i class="ri-user-fill q-mr-md icon-enroll"></i>

              <input
                disabled
                name="name"
                type="text"
                v-model="form.name"
                placeholder="Ademola"
              />
            </div>
          </div>

          <div class="input-wrap">
            <label class="form-det" for="">Email</label> <br />

            <div class="input">
              <i class="ri-mail-line q-mr-md icon-enroll"></i>

              <input
                disabled
                type="email"
                name="email"
                v-model="form.email"
                placeholder="Enter your email"
              />
            </div>
          </div>

          <div class="input-wrap">
            <label
              class="form-det"
              for=""
              style="display: flex; flex-direction: role"
              >Linkedin Profile URL
              <span color="">
                <div id="q-app">
                  <div class="">
                    <q-btn
                      label="Info"
                      color="primary"
                      @click="alert = true"
                    ></q-btn>

                    <q-dialog v-model="alert">
                      <q-card>
                        <q-card-section class="q-pt-none">
                          <b> Step 1:</b> Login to your LinkedIn account on
                          <br />
                          your desktop application <br />
                          <b>Step 2</b>: Navigate to your profile <br />
                          <b>Step 3</b>: Copy the url to your profile from the
                          header <br />
                          hint:
                          https://www.linkedin.com/in/your-other-linkedin-profile
                          details/
                        </q-card-section>
                      </q-card>
                    </q-dialog>
                  </div>
                </div>
              </span></label
            >
            <br />

            <div class="input">
              <i class="ri-shield-user-fill q-mr-md icon-enroll"></i>

              <input
                type="text"
                name="linkedin_url"
                id="te"
                v-model="linkedin_url"
              />
            </div>
          </div>
          <div class="input-wrap">
            <label class="form-det" for=""
              >Are you authorized to legally work in the U.S.?
            </label>
            <br />
            <div class="input">
              <i class="ri-flag-fill q-mr-md icon-enroll"></i>

              <select name="can_work_in_usa" v-model="can_work_in_usa" id="">
                <option value="Yes">Yes</option>
                <option value="No">No</option>
              </select>
            </div>

            <span
              v-if="
                inputErr ===
                'Missing Fields! Please choose if you can work in USA'
              "
              class="error"
              >{{ inputErr }}</span
            >
          </div>
          <div class="two">
            <div class="input-wrap">
              <label class="form-det" for=""
                >City, State of Residence (e.g. Seattle, WA)
              </label>
              <br />

              <div class="input">
                <i class="ri-time-fill q-mr-md icon-enroll"></i>

                <input
                  type="text"
                  name="city"
                  v-model="timezone"
                  placeholder=""
                />
              </div>
              <span
                v-if="inputErr === 'Missing Fields! City and State required'"
                class="error"
                >{{ inputErr }}</span
              >
            </div>
            <div class="input-wrap">
              <label class="form-det" for="">Phone Number</label> <br />

              <div class="input">
                <i class="ri-phone-fill q-mr-md icon-enroll"></i>

                <input
                  type="text"
                  name="phone"
                  v-model="phone"
                  placeholder=""
                />
              </div>
              <span
                v-if="inputErr === 'Missing Fields! Phone Number is required'"
                class="error"
                >{{ inputErr }}</span
              >
            </div>
          </div>

          <div class="two">
            <div class="input-wrap">
              <label class="form-det" for=""
                >Minority Representation: I identify as</label
              >
              <br />

              <div class="input">
                <i class="ri-apps-fill q-mr-md icon-enroll"></i>

                <select name="representation" v-model="representation" id="">
                  <option value="native american">
                    American Indian or Alaskan Native
                  </option>

                  <option value="black">Black (not of Hispanic origin)</option>
                  <option value="hispanic">
                    Hispanic (Including persons of Mexican, Puerto RIcan, Cuban,
                    and Central or South American origin
                  </option>
                  <option value="pacific islander">Pacific Islander</option>
                  <option value="other">Other</option>
                </select>
              </div>
              <span
                v-if="inputErr === 'Missing Fields! Representation is required'"
                class="error"
                >{{ inputErr }}</span
              >
            </div>
            <div class="input-wrap">
              <label class="form-det" for="">Gender</label>
              <br />

              <div class="input">
                <i class="ri-group-line q-mr-md icon-enroll"></i>

                <select name="gender" v-model="gender" id="">
                  <option value="male">Male</option>
                  <option value="female">Female</option>
                  <option value="non binary">Non Binary</option>
                  <option value="prefer not to say">Prefer not to say</option>
                </select>
              </div>
              <span
                v-if="inputErr === 'Missing Fields! Gender is required'"
                class="error"
                >{{ inputErr }}</span
              >
            </div>
          </div>
          <div class="two">
            <div class="input-wrap">
              <label class="form-det" for="">Age Group</label>
              <br />

              <div class="input">
                <i class="ri-calendar-fill q-mr-md icon-enroll"></i>

                <select name="age_group" v-model="age_group" id="">
                  <option value="18 - 24">18 - 24</option>
                  <option value="25 - 34">25 - 34</option>
                  <option value="35 - 44">35 - 44</option>
                  <option value="45 - above">45 - above</option>
                </select>
              </div>
              <span
                v-if="inputErr === 'Missing Fields! Age Group is required'"
                class="error"
                >{{ inputErr }}</span
              >
            </div>
            <div class="input-wrap">
              <label class="form-det" for="">Current Employment Status</label>
              <br />

              <div class="input">
                <i class="ri-star-fill q-mr-md icon-enroll"></i>

                <select
                  name="employment_status"
                  v-model="employment_status"
                  id=""
                >
                  <option value="Employed full-time">Employed full-time</option>
                  <option value="Employed part-time">Employed part-time</option>
                  <option value="Self-employed ">Self-employed</option>
                  <option value="Unemployed">Unemployed</option>
                </select>
              </div>
              <span
                v-if="
                  inputErr === 'Missing Fields! Employment Status is required'
                "
                class="error"
                >{{ inputErr }}</span
              >
            </div>
          </div>

          <div class="input-wrap">
            <label class="form-det" for=""
              >Highest level of school completed:
            </label>
            <br />

            <div class="input">
              <i class="ri-book-fill q-mr-md icon-enroll"></i>

              <select name="highest_school" v-model="highest_school" id="">
                <option value="No diploma">No diploma</option>
                <option value="High school ">High school</option>
                <option value="College">Some College</option>
                <option value="Trade/technical/vocational training">
                  Trade/technical/vocational training
                </option>
                <option value="Associate’s degree">Associate’s degree</option>

                <option value="Bachelor’s Degree">Bachelor’s Degree</option>

                <option value="Master’s Degree">Master’s Degree</option>
                <option value="Post-graduate study">Post-graduate study</option>
              </select>
            </div>
            <span
              v-if="
                inputErr === 'Missing Fields! Please choose Highest Education'
              "
              class="error"
              >{{ inputErr }}</span
            >
          </div>
          <div class="input-wrap">
            <label class="form-det" for=""
              >Field of study, if any (e.g. Nursing, Education or Cosmetology,
              etc.)
            </label>
            <br />

            <div class="input">
              <i class="ri-book-fill q-mr-md icon-enroll"></i>
              <input
                type="text"
                name="field__of__study"
                v-model="field__of__study"
                placeholder=""
              />
            </div>
            <span
              v-if="inputErr === 'Missing Fields! Please choose Field of study'"
              class="error"
              >{{ inputErr }}</span
            >
          </div>

          <div class="input-wrap">
            <label class="form-det" for=""
              >Which learning track are you considering?
            </label>
            <br />

            <div class="input">
              <i class="ri-bookmark-fill q-mr-md icon-enroll"></i>

              <select name="learning_track" v-model="learning_track" id="">
                <option value="Full-Stack Web Development">
                  Full-Stack Web Development
                </option>
                <option value="UI/UX Design">UI/UX Design</option>
                <option value=" I haven't decided yet">
                  I haven't decided yet
                </option>
              </select>
            </div>
            <span
              v-if="
                inputErr === 'Missing Fields! Please choose a Learning Track'
              "
              class="error"
              >{{ inputErr }}</span
            >
          </div>
          <div class="input-wrap">
            <label class="form-det" for=""
              >How would you categorize your level of software development
              knowledge prior to enrolling in this program?
            </label>
            <br />

            <div class="input">
              <i class="ri-inbox-fill q-mr-md icon-enroll"></i>

              <select name="prior_knowledge" v-model="prior_knowledge" id="">
                <option value="I knew nothing about software development. ">
                  I knew nothing about software development.
                </option>
                <option
                  value="I had a little knowledge from watching YouTube and coding challenges, but wanted to get formal training. "
                >
                  I had a little knowledge from watching YouTube and coding
                  challenges, but wanted to get formal training.
                </option>
                <option
                  value="I knew basic software development/design principles. "
                >
                  I knew basic software development/design principles.
                </option>

                <option value="I am proficient, but need a refresher course. ">
                  I am proficient, but need a refresher course.
                </option>
              </select>
            </div>
            <span
              v-if="
                inputErr === 'Missing Fields! Please specify Prior Knowledge'
              "
              class="error"
              >{{ inputErr }}</span
            >
          </div>
          <div v-if="prior_knowledge_other" class="input-wrap">
            <label class="form-det" for="">Whats your prior knowledge </label>

            <div class="input">
              <input
                type="textarea"
                name="prior_knowledge_other_info"
                v-model="prior_knowledge_other_info"
                placeholder=""
              />
            </div>
          </div>

          <div class="">
            <div class="input-wrap">
              <label class="form-det" for=""
                >How many hours per week are you able to commit to this program
                (dedicated to learning, doing assignments, and peer/instructor
                interaction) over the seven months you are enrolled?
              </label>
              <br />

              <div class="input">
                <i class="ri-timer-fill q-mr-md icon-enroll"></i>

                <select name="hours_per_week" v-model="hours_per_week" id="">
                  <option value="15 hours per week">
                    15 hours per week (minimum)
                  </option>
                  <option value="16 - 24 hours per week">
                    16 - 24 hours per week
                  </option>
                  <option value="25 - 40 hours per week">
                    25 - 40 hours per week
                  </option>
                </select>
              </div>
              <span
                v-if="
                  inputErr ===
                  'Missing Fields! Please choose Hours available Per Week'
                "
                class="error"
                >{{ inputErr }}</span
              >
            </div>

            <div class="input-wrap">
              <label class="form-det" for=""
                >Please list all of the industries in which you have worked, in
                any capacity: (E.g. Education, Food & Beverage, Construction)
              </label>

              <!-- <div class="">
              <textarea
                type="text"
                name="industries"
                v-model="industries"
                placeholder=""
              />
            </div> -->
              <div class="input q-my-md" v-for="(input, k) in inputs" :key="k">
                <!-- <q-input
                v-model="inputs.industries"
                label="Enter (stacked)"
                stack-label
                name="industries"
                :dense="dense"
              /> -->
                <input
                  type="text"
                  name="industries"
                  v-model="input.industries"
                  placeholder=""
                />
                <span class="row no-wrap items-center">
                  <i
                    class="fas poss fa-minus-circle"
                    @click="remove(k)"
                    v-show="k || (!k && inputs.length > 1)"
                  ></i>
                  <i
                    class="fas pos fa-plus-circle"
                    style="padding-top: 10px"
                    @click="add(k)"
                    v-show="k == inputs.length - 1"
                    >Add fields</i
                  >
                </span>
                <!-- <button @click="addInput">Submit</button> -->
              </div>
              <span
                v-if="inputErr === 'Missing Fields! Please specify industries'"
                class="error"
                >{{ inputErr }}</span
              >
            </div>
            <div class="input-wrap">
              <label class="form-det" for=""
                >Years of professional experience (including non-office
                environments)
              </label>
              <br />

              <div class="input">
                <i class="ri-timer-fill q-mr-md icon-enroll"></i>

                <select
                  name="professional_experience"
                  v-model="professional_experience"
                  id=""
                >
                  <option value="5 - 10 years">5 - 10 years</option>
                  <option value="10 - 15 years">10 - 15 years</option>
                  <option value="16 - 19 years">16 - 19 years</option>
                  <option value="20 - 25 years">20 - 25 years</option>
                  <option value="More than 25 years">More than 25 years</option>
                </select>
              </div>
              <span
                v-if="
                  inputErr ===
                  'Missing Fields! Please choose Hours available Per Week'
                "
                class="error"
                >{{ inputErr }}</span
              >
            </div>
          </div>
          <div class="input-wrap">
            <label class="form-det" for=""
              >Do you have a GitHub account?
            </label>
            <br />

            <div class="input">
              <i class="ri-timer-fill q-mr-md icon-enroll"></i>

              <select name="gitaccount" v-model="gitaccount" id="">
                <option value="git_yes">Yes</option>
                <option value="git_no">No</option>
              </select>
            </div>
          </div>
          <div v-if="git_yes" class="input-wrap">
            <label class="form-det" for="">What's your GitHub Email </label>

            <div class="input">
              <input
                type="email"
                row="5"
                name="git_yes"
                v-model="gitInfo"
                placeholder=""
              />
            </div>
            <!-- <span v-if="inputErr" class="error">{{ inputErr }}</span> -->
            <!-- <span class="error">{{ field__of__studyErr }}</span> -->
          </div>

          <div class="input-wrap">
            <label class="form-det" for="">Do you have a Figma account? </label>
            <br />

            <div class="input">
              <i class="ri-timer-fill q-mr-md icon-enroll"></i>

              <select name="figmaaccount" v-model="figmaaccount" id="">
                <option value="figma_yes">Yes</option>
                <option value="figma_no">No</option>
              </select>
            </div>
          </div>
          <div v-if="figma_yes" class="input-wrap">
            <label class="form-det" for="">What's your Figma Email </label>

            <div class="input">
              <input
                type="email"
                row="5"
                name="figma_yes"
                v-model="figmaInfo"
                placeholder=""
              />
            </div>
            <!-- <span v-if="inputErr" class="error">{{ inputErr }}</span> -->
            <!-- <span class="error">{{ field__of__studyErr }}</span> -->
          </div>

          <div class="input-wrap">
            <label class="form-det" for=""> How did you hear about us? </label>
            <br />

            <div class="input">
              <i class="ri-funds-line q-mr-md icon-enroll"></i>

              <select name="referral" v-model="referral" id="">
                <option value="Social media">Social media</option>
                <option value="Google or another search engine">
                  Google or another search engine
                </option>
                <option value="Friend/Family/Word of Mouth">
                  Friend/Family/Word of Mouth
                </option>
                <option value="News Outlet">News Outlet</option>
                <option value="referral_other">Other</option>
              </select>
            </div>

            <span
              v-if="inputErr === 'Missing Fields! Please choose your Referral'"
              class="error"
              >{{ inputErr }}</span
            >
          </div>
          <div v-if="referral_other" class="input-wrap">
            <label class="form-det" for="">Where did you hear about us </label>

            <div class="input">
              <input
                type="textarea"
                name="referral_other"
                v-model="othersInfo"
                placeholder=""
              />
            </div>
            <!-- <span v-if="inputErr" class="error">{{ inputErr }}</span> -->
            <!-- <span class="error">{{ field__of__studyErr }}</span> -->
          </div>
          <div style="display: flex; align-items: center; margin-top: 12px">
            <input
              v-model="acknowledge"
              class="checkbos"
              type="checkbox"
              style="margin-right: 17px,transform: scale(1.5);"
            />
            <label class="form-det" for=""
              >By submitting this Enrollment Application, you acknowledge that
              you are currently 18 years of age and that you agree to our
              <a
                href="https://reskillamericans.org/terms-of-service"
                style="text-decoration: underline; width: 500"
                target="_blank"
                >Terms of Service</a
              >
              and our
              <a
                href="https://reskillamericans.org/privacy"
                style="text-decoration: underline; width: 500"
                target="_blank"
              >
                Privacy Policy</a
              >
            </label>
          </div>
          <div class="button q-py-md q-mt-sm text-center">
            <!-- <button class="btn">Register</button>jgc -->

            <q-btn :loading="loading" type="submit" class="btn buttonss"
              >Enroll</q-btn
            >
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import { useQuasar, QSpinnerFacebook } from "quasar";
import { onBeforeUnmount } from "vue";
import { QSpinnerGears } from "quasar";
import { ref } from "vue";
import { object } from "yup/lib/locale";
export default {
  setup() {
    const $q = useQuasar();
    let timer;

    onBeforeUnmount(() => {
      if (timer !== void 0) {
        clearTimeout(timer);
        $q.loading.hide();
      }
    });

    const image = ref(null);
    const imageUrl = ref("");
    const handleUpload = () => {
      console.log("handleUpload is triggered");
      if (image.value) {
        imageUrl.value = URL.createObjectURL(image.value);
      }
    };

    return {
      alert: ref(false),
      confirm: ref(false),
      prompt: ref(false),
      image,
      handleUpload,
      acknowledge: ref(false),
    };
  },

  data() {
    return {
      referral_other: false,
      inputs: [
        {
          industries: "",
        },
      ],
      othersInfo: "",
      inputsVmodel: "",
      git_yes: false,
      gitInfo: "",
      figma_yes: false,
      linkedin_url: "",
      figmaInfo: "",
      loading: false,
      timezone: "",
      city: "",
      state: "",
      name: "",
      email: "",

      learning_track: "",
      referral: "",
      gitaccount: "",
      figmaaccount: "",
      representation: "",
      employment_status: "",
      git_yes: "",
      h_experience: "",
      hours_per_week: "",
      age_group: "",
      highest_school: "",
      field__of__study: "",
      figma_yes: "",
      can_work_in_usa: "",
      gender: "",
      phone: "",
      inpu: [],
      referral_other: "",
      professional_experience: "",

      prior_knowledge: "",
      prior_knowledge_other: false,
      prior_knowledge_other_info: "",
      show_change_job: false,
      industries: "",

      inputErr: "",
      inputImage: null,
      imageFile: [],
      form: {
        age_group: this.userData("age_group"),
        can_work_in_usa: this.userData("can_work_in_usa"),
        email: this.userData("email"),
        employment_status: this.userData("employment_status"),
        gender: this.userData("gender"),
        highest_school: this.userData("highest_school"),
        hours_per_week: this.userData("hours_per_week"),
        learning_track: this.userData("learning_track"),
        linkedin_url: this.userData("linkedin_url"),
        location: this.userData("location"),
        name: this.userData("name"),
        photo: this.userData("photo"),

        phone: this.userData("phone"),
        referral: this.userData("referral"),

        gitaccount: this.userData("gitaccount"),
        figmaaccount: this.userData("figmaaccount"),
        representation: this.userData("representation"),

        timezone: this.userData("timezone"),
      },
    };
  },
  watch: {
    referral: function () {
      if (this.referral === "referral_other") {
        this.referral_other = true;
      } else {
        console.log(this.referral);
        this.referral_other = false;
        this.othersInfo = "";
      }
    },
    prior_knowledge: function () {
      if (this.prior_knowledge === "Others") {
        this.prior_knowledge_other = true;
      } else {
        this.prior_knowledge_other = false;
        this.prior_knowledge_other_info = "";
      }
    },
    gitaccount: function () {
      if (this.gitaccount === "git_yes") {
        this.git_yes = true;
      } else {
        console.log(this.gitaccount);
        this.git_yes = false;
        this.gitInfo = "";
      }
    },
    figmaaccount: function () {
      if (this.figmaaccount === "figma_yes") {
        this.figma_yes = true;
      } else {
        console.log(this.figmaaccount);
        this.figma_yes = false;
        this.figmaInfo = "";
      }
    },
  },
  methods: {
    setFile(prop) {
      this.inputImage = prop;
    },
    add() {
      this.inputs.push({
        industries: "",
      });
      console.log(this.inputs);
    },

    remove(index) {
      this.inputs.splice(index, 1);
    },
    userData(key) {
      if (localStorage.getItem("userDetails")) {
        return JSON.parse(localStorage.getItem("userDetails"))[key];
      } else {
        this.$q.notify({
          message: "You need to Login to complete your registration",
          color: "primary",
          position: "top",
        });

        this.$router.replace("/");
      }
    },
    onDrop: function (e) {
      e.stopPropagation();
      e.preventDefault();
      var files = e.dataTransfer.files;
      console.log(files);
      this.createFile(files[0]);
    },
    onChange(e) {
      var files = e.target.files;
      this.createFile(files[0]);
      this.imageFile = files;
    },
    createFile(file) {
      if (!file.type.match("image.*")) {
        alert("Select an image");
        return;
      }
      var img = new Image();
      var reader = new FileReader();
      var vm = this;
      reader.onload = function (e) {
        vm.image = e.target.result;
      };
      reader.readAsDataURL(file);
    },

    submit(e) {
      console.log("first");
      const timezone = this.timezone;
      const city = this.timezone;
      const state = this.timezone;
      const name = this.form.name;
      const email = this.form.email;
      const linkedin_url = this.linkedin_url;
      const learning_track = this.learning_track;
      const referral = this.referral;
      const gitaccount = this.gitaccount;
      const figmaaccount = this.figmaaccount;
      let photo = this.form.photo;
      const representation = this.representation;
      const employment_status = this.employment_status;
      const git_yes = this.gitInfo;

      const hours_per_week = this.hours_per_week;
      const age_group = this.age_group;
      const highest_school = this.highest_school;
      const field__of__study = this.field__of__study;
      const figma_yes = this.figmaInfo;
      const can_work_in_usa = this.can_work_in_usa;
      const gender = this.gender;
      const phone = this.phone;
      const referral_other = this.othersInfo;
      const professional_experience = this.professional_experience;

      this.inputs.map((item) => {
        let keys = Object.values(item);
        console.log(keys);
        this.inpu.push(keys.toString());
      });
      // const industries = JSON.stringify(this.inputs);
      const industries = this.inpu;

      const prior_knowledge = this.prior_knowledge;
      const prior_knowledge_other_info = this.prior_knowledge_other_info;

      let sentData = {
        // name,
        // email,

        learning_track,
        referral,
        gitaccount,
        figmaaccount,
        photo,
        representation,
        employment_status,
        // git_yes,

        hours_per_week,
        age_group,
        highest_school,
        field__of__study,
        // figma_yes,
        can_work_in_usa,
        gender,
        phone,
        // referral_other,
        city,
        state,
      };
      let form = e.currentTarget;
      console.log(form);
      // const formDataa = new FormData();
      const formDataa = new FormData(form);
      console.log(this.imageFile);
      formDataa.append("photo", photo);
      formDataa.append("representation", representation);
      formDataa.append("name", name);
      formDataa.append("gender", gender);
      formDataa.append("phone", phone);
      formDataa.append("figmaaccount", figmaaccount);
      formDataa.append("gitaccount", gitaccount);
      formDataa.append("employment_status", employment_status);
      formDataa.append("linkedin_url", linkedin_url);
      formDataa.append("city", timezone);
      formDataa.append("email", email);
      formDataa.append("referral", referral);
      formDataa.append("learning_track", learning_track);
      formDataa.append("highest_school", highest_school);
      formDataa.append("can_work_in_usa", can_work_in_usa);
      formDataa.append("field__of__study", field__of__study);
      formDataa.append("hours_per_week", hours_per_week);

      formDataa.append("age_group", age_group);
      formDataa.append("git_yes", git_yes);
      formDataa.append("figma_yes", figma_yes);
      formDataa.append("professional_experience", professional_experience);

      formDataa.append("industries", industries);
      formDataa.append("prior_knowledge", prior_knowledge);

      formDataa.append("_method", "PUT");

      if (this.figmaaccount === "figma_yes" && this.figmaInfo === "") {
        this.$q.notify({
          message: "Your Figma Email is required",
          color: "primary",
          position: "top",
        });
        return;
      } else {
        formDataa.append("figma_yes", figma_yes);
      }
      if (
        this.prior_knowledge === "Others" &&
        this.prior_knowledge_other_info === ""
      ) {
        this.$q.notify({
          message: "Your prior knowledge is required",
          color: "primary",
          position: "top",
        });
        return;
      } else {
        formDataa.append(
          "prior_knowledge_other_info",
          prior_knowledge_other_info
        );
      }
      if (this.gitaccount === "git_yes" && this.gitInfo === "") {
        this.$q.notify({
          message: "Your GitHub Email is required",
          color: "primary",
          position: "top",
        });
        return;
      } else {
        formDataa.append("git_yes", git_yes);
      }
      if (this.referral === "referral_other" && this.othersInfo === "") {
        this.$q.notify({
          message: "Your referral is required",
          color: "primary",
          position: "top",
        });
        return;
      } else {
        formDataa.append("othersInfo", referral_other);
      }

      if (this.can_work_in_usa === "No") {
        console.log("You must be eligible to work in the US");
        this.$q.notify({
          message: "You must be eligible to work in the US",
          color: "primary",
          position: "top",
        });
        return;
      } else if (this.acknowledge === false) {
        console.log(
          "You must agree with the Terms of Services and Privacy conditions"
        );
        this.$q.notify({
          message:
            "You must agree with our Terms of Services and Privacy conditions",
          color: "primary",
          position: "top",
        });
        return;
      } else {
        let formDataObject = Object.fromEntries(formDataa.entries());
        let formDataJsonString = JSON.stringify(formDataObject);
        this.loading = true;
        this.$api
          .put(`/users/${this.form.email}`, formDataJsonString)
          .then((resp) => {
            console.log(resp);
            this.$q.notify({
              message: "You have enrolled successfully",
              color: "primary",
              position: "top",
            });
            this.loading = false;

            this.$router.replace("/");
            localStorage.removeItem("userDetails");
          })
          .catch(({ response }) => {
            console.log(response);
            this.inputErr = response.data.error;
            this.loading = false;

            setTimeout(() => {
              this.inputErr = "";
            }, 15000);

            this.$q.notify({
              message: response.data.message || response.data.error,
              color: "secondary",
              position: "top",
            });
          });
      }
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap");
p {
  margin-bottom: 4px;
}

.login-text {
  margin-top: -10px;
}
.wrapper {
  width: 90%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  /* padding-top: 5rem; */
  max-width: 1300px;

  height: 100%;
  padding-bottom: 120px;
}
input::placeholder {
  font-size: 15px;
  opacity: 0.5;
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

.error {
  color: red;
}

.heeder .logo {
  object-fit: contain;
  width: 40px;
  height: 40px;
}
.heeder .logo img {
  object-fit: contain;
}
.two {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 2rem;
  align-items: center;
}
.checkbos {
  -ms-transform: scale(1.5); /* IE */
  -moz-transform: scale(1.5); /* FF */
  -webkit-transform: scale(1.5); /* Safari and Chrome */
  -o-transform: scale(1.5); /* Opera */
  transform: scale(1.5);
  margin-right: 17px;
}
.form-det {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 300;
  font-size: 18px;
  line-height: 34px;
  /* identical to box height, or 170% */
  margin-top: 15px;
  align-items: center;
  /* display: flex; */
  letter-spacing: 0.3px;
  color: #000;
}
.three {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2rem;
  align-items: center;
}
.icon-enroll {
  font-size: 21px;
  padding-left: 10px;
  color: #746e6e;
}
.input-wrap {
  margin: 2rem 0;
  position: relative;
}

.input-wrap img {
  width: 20px;
}
.input-wrap,
select {
  width: 100%;
  margin-bottom: 2px;
  /* margin-top: 1.5rem; */
}

.error {
  font-size: 0.9em;
  color: #ff0000;
}

.input-wrap .input {
  /* border: 1px solid #2b945b; */
  padding: 0.75rem;

  background: rgba(236, 236, 236, 0.67);
  border: 1px solid rgba(229, 229, 229, 0.2);
  box-sizing: border-box;
  border-radius: 5px;
  display: flex;
  align-items: center;
  height: 50px;
  position: relative;
}

.poss {
  color: #000;
  font-size: 13px;
  text-transform: capitalize;
  color: #f2594b;
}

.pos {
  position: absolute;
  bottom: -55%;
  left: 90%;
  color: #000;
  top: 92%;
  font-size: 13px;
  width: fit-content;
  text-transform: capitalize !important;
  color: #f2594b;
}
textarea {
  padding: 0.75rem;
  background: rgba(236, 236, 236, 0.67);
  border: 1px solid rgba(229, 229, 229, 0.2);
  box-sizing: border-box;
  border-radius: 5px;
  display: flex;
  align-items: center;
  width: 100%;
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
select:focus,
textarea:focus {
  outline: none;
}
.input-wrap .input .input:hover {
  border: 1px solid #2b945b;
  transition: all 0.5s ease-in-out;
}

.btn {
  border: none;
  background-color: #fff;
  padding: 14px 24px 14px 24px;

  font-size: 18px !important;
  background: #f2594b;

  color: #fff;

  width: 100%;
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

.log .wrapp i {
  font-size: 2rem;
}
.log .wrapp img {
  width: 20px;
  height: 20px;
}

@media (max-width: 900px) {
  .three {
    grid-template-columns: 1fr;
  }
}
@media (max-width: 500px) {
  .log .wrapp p {
    font-size: 11px;
  }

  .btn {
    width: 90%;
  }
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
.form-box {
  background-color: #fff;
  border-radius: 17px;
  padding: 20px;
  padding-left: 40px;
  padding-right: 40px;
}
.header-text {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 700;
  font-size: 53px;
  line-height: 122%;
  /* identical to box height, or 65px */
  text-align: center;
  letter-spacing: 0.3px;

  color: #121928;
}
.q-tab {
  width: 50% !important;
}
.box-par {
  background-color: #ebf5fb;
}
/* drag and drop */

.btn {
  /* background-color: #d3394c; */
  border: 0;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  font-weight: bold;
  padding: 15px 35px;
  position: relative;
}

.browse {
  padding: 0.55rem;
  border-radius: 9px;
  background: #4267b2;
  color: #fff;
  cursor: pointer;
  margin-top: 0.55rem;
}
.btnn {
  background-color: #f2594b;
  color: white;
  border-radius: 9px;
  width: 140px;
  border: none;
}

.btn:hover {
  background-color: #722040;
}

/* input[type="file"] {
  position: absolute;
  opacity: 0;
  z-index: -1;
} */

.align-center {
  text-align: center;
}

/* .helper {
  height: 100%;
  display: inline-block;
  vertical-align: middle;
  width: 0;
} */

.hidden {
  display: none !important;
}

.hidden.image {
  /* display: inline-block !important; */
  display: flex !important;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 1.5rem;
}

.display-inline {
  display: inline-block;
  vertical-align: middle;
  cursor: pointer;
}

.img {
  border: 1px solid #f6f6f6;
  display: inline-block;
  /* height: auto;
  max-height: 80%;
  max-width: 80%;
  width: auto; */
  object-fit: cover;
  width: 300px;
  /* object-fit: contain; */
  height: 300px;
  border-radius: 50%;
}

.drop {
  border-radius: 2px;
  height: 100%;
  max-height: 400px;
  max-width: 600px;
  height: 350px;
  width: 350px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  border: 1px solid #574343;
  border-radius: 50%;
}
.no_border {
  border: none !important;
}
.imgg {
  width: 80%;
  /* height: 350px; */
  margin: 1rem auto 7rem;
  text-align: center;
  display: flex;
  justify-content: center;
}
@media (max-width: 800px) {
  .input-wrap .input input:placeholder-shown,
  select {
    font-size: 14px;
  }
  .log {
    width: 100%;
  }
  .two {
    grid-template-columns: 1fr;
  }

  .form-box {
    padding: 10px;
  }
  .resp {
    padding: 1rem;
    border-radius: 8px;
    font-size: 12px;
  }
  .pos {
    color: #f2594b;
    bottom: 0;
    font-size: 10px;
    left: 70%;
    width: fit-content;
    top: 90% !important;
  }
  .input-wrap {
    margin: 3rem 0;
  }
}
</style>
// app.use(Quasar, { config: {} }) // app.mount('#q-app')
