
    async function tweet() {
        const frm = event.target;
        const conn = await fetch("/", {
            method: "POST",
            body: new FormData(frm)
        })

        const data = await conn.json();
        console.log(data);
        const message = frm.querySelector("input[name='message']").value;
        /*  console.log(message); */
        document.querySelector("#my_tweets").insertAdjacentHTML("afterbegin",
            `<div class="tweet">
        <div>
            <img class="avatar" src="../avatars/cdd0a0a3be06427f84111a767e9729f9.jpg" alt="avatar">
        </div>
        <div class="right">
            <div class="top">
                <b>Emily Hoolahan</b>
                <svg viewBox="0 0 24 24" aria-label="Verified account" role="img" class="check"
                    data-testid="icon-verified">
                    <g>
                        <path
                            d="M22.25 12c0-1.43-.88-2.67-2.19-3.34.46-1.39.2-2.9-.81-3.91s-2.52-1.27-3.91-.81c-.66-1.31-1.91-2.19-3.34-2.19s-2.67.88-3.33 2.19c-1.4-.46-2.91-.2-3.92.81s-1.26 2.52-.8 3.91c-1.31.67-2.2 1.91-2.2 3.34s.89 2.67 2.2 3.34c-.46 1.39-.21 2.9.8 3.91s2.52 1.26 3.91.81c.67 1.31 1.91 2.19 3.34 2.19s2.68-.88 3.34-2.19c1.39.45 2.9.2 3.91-.81s1.27-2.52.81-3.91c1.31-.67 2.19-1.91 2.19-3.34zm-11.71 4.2L6.8 12.46l1.41-1.42 2.26 2.26 4.8-5.23 1.47 1.36-6.2 6.77z">
                        </path>
                    </g>
                </svg>
                <div class="info">
                    <p>@emilyhoolahan</p>
                    <p>•</p>
                    <p>${data.tweet_created_at}</p>
                </div>
                <div class="dots"><svg viewBox="0 0 24 24" aria-hidden="true">
                        <g>
                            <path
                                d="M3 12c0-1.1.9-2 2-2s2 .9 2 2-.9 2-2 2-2-.9-2-2zm9 2c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm7 0c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2z">
                            </path>
                        </g>
                    </svg></div>
            </div>
            <div class="tweet_content">
                <p class="message">${message}</p>
               
                
              


            </div>
            <div class="bottom">
                <div class="flex">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M1.751 10c0-4.42 3.584-8 8.005-8h4.366c4.49 0 8.129 3.64 8.129 8.13 0 2.96-1.607 5.68-4.196 7.11l-8.054 4.46v-3.69h-.067c-4.49.1-8.183-3.51-8.183-8.01zm8.005-6c-3.317 0-6.005 2.69-6.005 6 0 3.37 2.77 6.08 6.138 6.01l.351-.01h1.761v2.3l5.087-2.81c1.951-1.08 3.163-3.13 3.163-5.36 0-3.39-2.744-6.13-6.129-6.13H9.756z">
                            </path>
                        </g>
                    </svg>
                    <p>${data.tweet_total_replies}</p>
                </div>
                <div class="flex">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M4.5 3.88l4.432 4.14-1.364 1.46L5.5 7.55V16c0 1.1.896 2 2 2H13v2H7.5c-2.209 0-4-1.79-4-4V7.55L1.432 9.48.068 8.02 4.5 3.88zM16.5 6H11V4h5.5c2.209 0 4 1.79 4 4v8.45l2.068-1.93 1.364 1.46-4.432 4.14-4.432-4.14 1.364-1.46 2.068 1.93V8c0-1.1-.896-2-2-2z">
                            </path>
                        </g>
                    </svg>
                    <p>${data.tweet_total_retweets}</p>
                </div>
                <div class="flex">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M16.697 5.5c-1.222-.06-2.679.51-3.89 2.16l-.805 1.09-.806-1.09C9.984 6.01 8.526 5.44 7.304 5.5c-1.243.07-2.349.78-2.91 1.91-.552 1.12-.633 2.78.479 4.82 1.074 1.97 3.257 4.27 7.129 6.61 3.87-2.34 6.052-4.64 7.126-6.61 1.111-2.04 1.03-3.7.477-4.82-.561-1.13-1.666-1.84-2.908-1.91zm4.187 7.69c-1.351 2.48-4.001 5.12-8.379 7.67l-.503.3-.504-.3c-4.379-2.55-7.029-5.19-8.382-7.67-1.36-2.5-1.41-4.86-.514-6.67.887-1.79 2.647-2.91 4.601-3.01 1.651-.09 3.368.56 4.798 2.01 1.429-1.45 3.146-2.1 4.796-2.01 1.954.1 3.714 1.22 4.601 3.01.896 1.81.846 4.17-.514 6.67z">
                            </path>
                        </g>
                    </svg>
                    <p>${data.tweet_total_likes}</p>
                </div>
                <div class="flex hidden_on_phone">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path d="M8.75 21V3h2v18h-2zM18 21V8.5h2V21h-2zM4 21l.004-10h2L6 21H4zm9.248 0v-7h2v7h-2z">
                            </path>
                        </g>
                    </svg>
                    <p>${data.tweet_total_views}</p>
                </div>
                <svg viewBox="0 0 24 24" aria-hidden="true" class="icon hidden_on_phone">
                    <g>
                        <path
                            d="M17 4c-1.1 0-2 .9-2 2 0 .33.08.65.22.92C15.56 7.56 16.23 8 17 8c1.1 0 2-.9 2-2s-.9-2-2-2zm-4 2c0-2.21 1.79-4 4-4s4 1.79 4 4-1.79 4-4 4c-1.17 0-2.22-.5-2.95-1.3l-4.16 2.37c.07.3.11.61.11.93s-.04.63-.11.93l4.16 2.37c.73-.8 1.78-1.3 2.95-1.3 2.21 0 4 1.79 4 4s-1.79 4-4 4-4-1.79-4-4c0-.32.04-.63.11-.93L8.95 14.7C8.22 15.5 7.17 16 6 16c-2.21 0-4-1.79-4-4s1.79-4 4-4c1.17 0 2.22.5 2.95 1.3l4.16-2.37c-.07-.3-.11-.61-.11-.93zm-7 4c-1.1 0-2 .9-2 2s.9 2 2 2c.77 0 1.44-.44 1.78-1.08.14-.27.22-.59.22-.92s-.08-.65-.22-.92C7.44 10.44 6.77 10 6 10zm11 6c-.77 0-1.44.44-1.78 1.08-.14.27-.22.59-.22.92 0 1.1.9 2 2 2s2-.9 2-2-.9-2-2-2z">
                        </path>
                    </g>
                </svg>
                <div class="hidden_on_tablet"><svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M12 2.59l5.7 5.7-1.41 1.42L13 6.41V16h-2V6.41l-3.3 3.3-1.41-1.42L12 2.59zM21 15l-.02 3.51c0 1.38-1.12 2.49-2.5 2.49H5.5C4.11 21 3 19.88 3 18.5V15h2v3.5c0 .28.22.5.5.5h12.98c.28 0 .5-.22.5-.5L19 15h2z">
                            </path>
                        </g>
                    </svg>
                </div>
            </div>
        </div>
    </div>`
        );

    }

    async function login() {
       /*  const btn = event.target
        btn.disabled = true
        btn.innerText = btn.getAttribute("data-await") */
        const frm = event.target.form
        const conn = await fetch("/api-login", {
            method: "POST",
            body: new FormData(frm)
        })
        /* btn.disabled = false
        btn.innerText = btn.getAttribute("data-default") */
        if (!conn.ok){
           /*  const input_email = frm.querySelector("input[name='user_email']");
            input_email.classList.add("error_red") */
            const data = await conn.json();
            console.log(data);
            const error = document.querySelector("#error")
            let error_message = document.querySelector(".error")
            if (error_message) {
                error_message.parentNode.removeChild(error_message); 
            }
            error.insertAdjacentHTML("afterbegin",
            `
            <p class="error">${data.info}</p>
            `)
            return
        }
        /* const data = await conn.json();
        console.log(data); */
        location.href = "/"
    }

    async function signUp() {
        const frm = event.target.form
        const conn = await fetch("/api-sign-up", {
            method: "POST",
            body: new FormData(frm)
        })

        if (!conn.ok) {
            const data = await conn.json()
            console.log(data)
            const error = document.querySelector("#error2")
            let error_message = document.querySelector(".error2")
            if (error_message) {
                error_message.parentNode.removeChild(error_message); 
            }
            error.insertAdjacentHTML("afterbegin",
            `
            <p class="error2">${data.info}</p>
            `)
            return
        }

        location.href = "/login"
    }

  /*   function removeRed() {
        console.log("Remove red")
        const frm = event.target.form
        const input_email = frm.querySelector("input[name='user_email']");
        input_email.classList.remove("error_red")
    } */

    function toggleSignup() {
        const signUpForm = document.querySelector("#sign_up")
        const logInForm = document.querySelector("#login")
        if (logInForm.classList.contains("hide")) {
            logInForm.classList.remove("hide")
            signUpForm.classList.add("hide")
        } else {
            logInForm.classList.add("hide")
            signUpForm.classList.remove("hide")
        }
    }
  