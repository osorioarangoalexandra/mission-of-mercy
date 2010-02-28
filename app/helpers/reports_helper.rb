module ReportsHelper


  def time_spans
    ["All","6:00 AM", "7:00 AM", "8:00 AM", "9:00 AM", "10:00 AM", "11:00 AM","12:00 PM", "1:00 PM", "2:00 PM", "3:00 PM", "4:00 PM", "5:00 PM"]
  end
  
  def days
    ["All"] + Patient.all(:group => "date(created_at, '+#{Time.zone.utc_offset} seconds')").map {|p| p.created_at.to_date }
  end

end