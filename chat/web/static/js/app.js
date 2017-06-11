import "phoenix_html"
import {Socket, Presence} from "phoenix";

let user = document.getElementById("user").innerText

let socket = new Socket("/socket", {params: {user: user}})

socket.connect()

