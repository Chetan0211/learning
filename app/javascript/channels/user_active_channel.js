import consumer from "channels/consumer"


let users = [1, 2]

users.forEach(element => {
  consumer.subscriptions.create({ channel: "UserActiveChannel", user_id: element}, {
    connected() {
      console.log(`connected to UserActiveChannel ${element}`)
      // Called when the subscription is ready for use on the server
    },
  
    disconnected() {
      console.log(`disconnected to UserActiveChannel ${element}`)
      // Called when the subscription has been terminated by the server
    },
  
    received(data) {
      console.log(`received UserActiveChannel: ${JSON.stringify(data)}`);
      // Called when there's incoming data on the websocket for this channel
    }
  });
});