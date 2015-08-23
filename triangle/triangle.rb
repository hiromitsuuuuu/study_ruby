class Triangle

  def initialize(argv)
    @argv = argv
  end

  def which

    sides = @argv.map(&:to_i)
    sides.sort!   # NaNが入ってる場合エラーが出るかも

    if sides.size < 3
        return "引数が少ないです"
    # elsif sides[0] <= 0 || sides[2].infinite? != nil
    elsif sides[0] <= 0
        return "不正な引数です"
    end

    if sides[0] + sides[1] > sides[2]

        if sides[0] == sides[2]
            return "正三角形ですね！"
        elsif sides[0] == sides[1] || sides[1] == sides[2]
            return "二等辺三角形ですね！"
        else
            return "不等辺三角形ですね！"
        end

    else
        return "三角形じゃないです><;"
    end

  end

end

if $0 == __FILE__
  puts Triangle.new(ARGV).which
end
