import Ember from 'ember';

export default Ember.Component.extend({
  store: Ember.inject.service(),
  actions: {
    createTest() {
      var store = this.get('store');
      var name = $('#name').val();
      console.log("here am i " + name);
      let test = store.createRecord('test-case', {title: 'for_test', status: store.peekRecord('status',4)});
      test.save();
    }
  }

});
