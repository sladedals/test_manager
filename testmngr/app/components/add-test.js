import Ember from 'ember';

export default Ember.Component.extend({
  store: Ember.inject.service(),
  actions: {
    createTest(item) {
      var store = this.get('store');
      let test = store.createRecord('test-case', {title: item.get('title'), status: store.peekRecord('status',4)});
      test.save();
    }
  }

});
