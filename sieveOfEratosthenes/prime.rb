class Prime

  def initialize(argv)
    @num = argv[0].to_i
  end

  def getPrime

    searchList, primeList = [], []

    # 探索リストに2から@numまでの整数を昇順で入れる
    for i in 2..@num do
        searchList.push(i)
    end

    head = searchList.first

    while head < Math.sqrt(@num) do

        # 探索リストの先頭の数を素数リストに移動
        primeList.push(head)

        # 倍数を探索リストから篩い落とす
        searchList.delete_if {|item| item % head == 0 }
        head = searchList.first

    end

    # 素数リストと残りの探索リストを合わせる
    primeList.concat(searchList)

  end

end

if $0 == __FILE__
  puts Prime.new(ARGV).getPrime
end
