Images = new FS.Collection("images", {
	filter: {
    allow: {
      contentTypes: ['image/*'],
    },
    onInvalid: function (message) {
      if (Meteor.isClient) {
        alert(message);
      } else {
        console.log(message);
      }
    }
  },
  stores: [new FS.Store.GridFS("images", {})]
});
