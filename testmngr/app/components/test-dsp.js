import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    open() {
      console.log("the open");
      this.set('isShowingModal', true);
    },
    close() {
      console.log("the close");
      this.set('isShowingModal', false);
    },
    createTest() {
      this.set('isShowingModal', false);
      console.log("here am i");
    }
  }
});
