require 'active_model'
require 'csv'

# Borrowed the idea from "http://kyle.conarro.com/importing-from-csv-in-rails".
class ActiveCsv
  include ActiveModel::Model

  def initialize(csv_filepath)
    @csv_filepath = csv_filepath
  end

  def persisted?
    false
  end

  def valid?
    # TODO: implement this
  end

  def load_data
    csv = CSV.new(File.new(@csv_filepath), headers: true, header_converters: :symbol)

    data = csv.shift

    data.headers.each do |header|
      self.send("#{header}=".to_sym, data[header]) unless "#{header}=" == "="
    end

  end  

end