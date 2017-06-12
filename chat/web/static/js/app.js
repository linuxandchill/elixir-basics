import "phoenix_html"
import {Socket, Presence} from "phoenix";

let user = document.getElementById("user").innerText

let socket = new Socket("/socket", {params: {user: user}})

socket.connect()

let presences = {}

let formattedTS = (TS) => {
  let date = new Date(TS)
  return date.toLocaleString()
}

let listBy = (user, {metas: metas}) => {
  return {
    user: user,
    onlineAt: formattedTS(metas[0].online_at)
  }
}

let userList = document.getElementById("userList")

let render = pressences => {
  userList.innerHTML = Presence.list(presences, listBy)
  .map( presence => `<li> ${presence.user}  <br> 
        <small> online since ${presence.onlineAt}</small>
       </li>` )
       .join("")
}

// Channels
let room = socket.channel("room:lobby", {})
room.on("presence_state", state => {
  presences = Presence.syncState(presences, state)
  render(presences)
})

room.on("presence_diff", diff => {
  presences = Presence.syncDiff(presences, diff)
  render(presences)
})

room.join()
