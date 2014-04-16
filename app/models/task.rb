class Task < ActiveRecord::Base
  validates_presence_of :title, :task_at

  before_destroy :check_if_last

  before_create :set_task_at
  before_update :set_task_at, if: "task_at_changed?"

  private

    def check_if_last
      if Task.count < 2
        errors.add :base, "can't delete last task"
        false
      end
    end

    def set_task_at
      self.task_at -= 4.hour
    end

end
