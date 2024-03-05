
class task {
  int _task_id;
  String task_name;
  String task_description;
  bool task_completed;

  task(
      this._task_id, 
      this.task_name, 
      this.task_description, 
      this.task_completed);

  // set task_id(int id) {
    // if (ids.contain) task_id = id; 
  // }   
  int get task_id => this._task_id;
}
