require 'roo'

namespace :import do

  desc 'Import Data from Excel spreadsheet'

  task excel: :environment do

    xlsx = Roo::Spreadsheet.open './public/sales.xlsx'
    xlsx = Roo::Excelx.new './public/sales.xlsx'

    sheet_sales = xlsx.sheet('Sheet1')

    Excel.create!(sheet_sales.parse(name: /Last Name/, sales: /Sales/, country: /Country/, quarter: /Quarter/))

  end
end
