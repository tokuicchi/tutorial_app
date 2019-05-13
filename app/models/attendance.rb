class Attendance < ApplicationRecord
  belongs_to :user
  
  validates :worked_on, presence: true

  validate :start_end_presence
    def start_end_presence
      if self.finished_at.present? && self.started_at.blank?
        errors[:finished_at] << "出勤時間がありません" 
      end
    end
  
  validate :start_end_check  #勤怠B No.8
    def start_end_check 
      if self.started_at.present? && self.finished_at.present? && self.started_at.to_i > self.finished_at.to_i 
        errors[:finished_at] << "退勤時間が出勤時間より早くなっています" 
      end
    end
    
  # validate :edit_attendance_limit  このvalidationで未来の勤怠を表示しなくなる
  # def edit_attendance_limit
  #   if self.worked_on > Date.today
  #     errors[:worked_on] << "未来の勤怠は編集できません"
  #   end
  # end
  
  
end


