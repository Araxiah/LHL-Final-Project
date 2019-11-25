import React, {useState} from "react"
import axios from "axios"



//For Login view
export default function Login(){
  const [email, setEmail] = useState()
  const [password, setPassword] = useState()

  function submitLogin(){
    axios({
      method: 'post',
      url: `/login`,
      data: {
        email: email,
        password: password
      },
        responseType: JSON
    })
    .then(function(response) {
      console.log("TEH Response", response);
    }, (error) => {
      console.log("GOOTTT!")
      console.log(error)
    })
  }
  

  return(
    <div>
      I am temp login!
      <form>

        Email
          <input
            type ="text"
            email={email}
            onChange={event =>setEmail(event.target.value)}
          />

        Password
          <input
            type="password"
            password={password}
            onChange={event =>setPassword(event.target.value)}
          />

        <button
          type="submit"
          onClick={submitLogin}
          >Submit</button>
      </form>
    </div>
  )
}