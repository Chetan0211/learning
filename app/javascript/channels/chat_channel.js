import consumer from "channels/consumer"

let users = ["1", "2"]

users.forEach(element => {
  consumer.subscriptions.create({ channel: "ChatChannel", user_id: element}, {
    connected() {
      console.log(`connected${element}`)
      // Called when the subscription is ready for use on the server
    },
  
    disconnected() {
      console.log(`disconnected${element}`)
      // Called when the subscription has been terminated by the server
    },
  
    received(data) {
      console.log(`received ${data}`)
      // Called when there's incoming data on the websocket for this channel
    }
  });
});

