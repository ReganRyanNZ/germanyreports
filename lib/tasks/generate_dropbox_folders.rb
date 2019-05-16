# This is a hack that I ran in rails console
# Every folder and report html file will create a folder in dropbox
# It doesn't overwrite, so it's safe to reuse this code

def generate_db_folders
  dir = "/Users/regan/code/germanyreports/app/views/reports/categories"
  cats = Dir.glob("#{dir}/*")
  dest = "/Users/regan/Dropbox/Organisation/germanyreports"
  cats.each do |cat|
    cat_name = cat.split("/").last
    cat_dest_path = [dest,cat_name].join("/")
    Dir.mkdir(cat_dest_path) unless File.exists?(cat_dest_path)
    Dir.glob("#{cat}/*").map do |report|
      report_name = report.remove(".slim").split("/").last
      report_dest_path = [cat_dest_path,report_name].join("/")
      Dir.mkdir(report_dest_path) unless File.exists?(report_dest_path)
    end
  end
end