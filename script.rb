class Line 
  attr_accessor :name, :stops

  def initialize(name)
    @name = name
    @stops = []
  end

  # def create_line
  #   name = Hash.new
  # end

  def add_stop(stop)
    @stops.push(stop)
  end

end

class MTA 
  attr_reader :all_lines, :hash_lines
  
  def initialize
   @all_lines = []
  #  @hash_lines = {}
  end

  def add_line(line_obj)
    @all_lines.push(line_obj)
    # @hash_lines[line_obj.name] = line_obj
  end

  def show_all_lines
    p @all_lines
  end

  def number_of_stops(stop_one, stop_two)
    @all_lines.each do |line|
      p line.stops
      where_to_search = line.stops
      if (where_to_search.include? stop_one) && (where_to_search.include? stop_two)
          puts "found on line #{line.name}"
          count_one = line.stops.index(stop_one)
          # p count_one
          count_two = line.stops.index(stop_two)
          # p count_two
          result = count_two - count_one
          return result.abs
      else
        return false
      end
    end
  end 

  def numbers_of_stops_from_different_lines(stop_one, line_one, stop_two, line_two)
      part_one = 0
      part_two = 0
      @all_lines.each do |line|
        # puts line.name
        if line.name == line_one
            pp line
            # puts line.stops.index(stop_one)
            # puts line.stops.index('Union Square')
            part_one = line.stops.index('Union Square') - line.stops.index(stop_one)
            p part_one 
        elsif line.name == line_two
            pp line
            # puts line.stops.index(stop_two)
            # puts line.stops.index('Union Square')
            part_two = line.stops.index(stop_two) - line.stops.index('Union Square') 
            p part_two
        end
    end

    total = part_two.abs + part_one.abs
    return total
  end

end

# ------------- Create lines -------------
n_line = Line.new('N')
n_line.add_stop('Times Square')
n_line.add_stop('34th')
n_line.add_stop('28th')
n_line.add_stop('23rd')
n_line.add_stop('Union Square')
n_line.add_stop('8th')
# p n_line

l_line = Line.new('L')
l_line.add_stop('81th')
l_line.add_stop('Union Square')
l_line.add_stop('3rd')
l_line.add_stop('1st')
l_line.add_stop('6th')
# p l_line

six_line = Line.new('6')
six_line.add_stop('Grand Central')
six_line.add_stop('33rd')
six_line.add_stop('28th')
six_line.add_stop('21rd')
six_line.add_stop('Union Square')
six_line.add_stop('Astor Place')
# p six_line

# ------------- Calc stops -------------
mta_system = MTA.new()

mta_system.add_line(l_line)
mta_system.add_line(n_line)
mta_system.add_line(six_line)
# pp mta_system.hash_lines

# pp mta_system.hash_lines["6"]

mta_system.number_of_stops('81th', '1st')
# mta_system.number_of_stops('1st', '81th')
# mta_system.number_of_stops('34th','23rd')
mta_system.numbers_of_stops_from_different_lines('34th', 'N', '1st', 'L')
# mta_system.numbers_of_stops_from_different_lines('8th', 'N', 'Grand Central', '6')














