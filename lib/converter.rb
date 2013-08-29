VIDEO_EXT = %w{3gp asf avi flv mkv mov qt swf vob wmv}.freeze

class Converter
  @dir = nil
  @res = nil

  public

  def initialize(res)
    @res = res
    convert_dir
  end

  private

  def convert_dir
    @dir = "Converted_#{@res}"
    Dir.mkdir(@dir) unless Dir.exists?(@dir)
    original_list.each do |e|
      command = convert_file(e)
      puts "command = #{command}"
      if !command.nil?
        puts "--- Converting #{e} ---"
        success = system(convert_file(e))
        raise "Failed on \"#{e}\" conversion" unless !success
        exit 0
        puts "=== Finished #{e} ==="
      end
    end
  end

  def convert_file(file)
    name = "#{@dir}/#{file[0...-File.extname(file).size]}.mp4"
    if File.exists?(name)
      puts "\nSkipped. File '#{name}' is already exists\n"
    else
      "ffmpeg -i \"#{file}\" -acodec libfaac -vcodec mpeg4 -b 1200k -s #{@res} \"#{name}\""
    end
  end

  def original_list
    entries = Dir.entries(Dir.pwd)
    entries = entries.find_all do |e| 
      if File.file?(e)
        ext = File.extname(e).downcase[1..-1]
        VIDEO_EXT.include?(ext)
      end
    end
    raise "No video files in \"#{Dir.pwd}\"" if entries.empty?
    entries
  end

end
