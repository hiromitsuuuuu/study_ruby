require "spec_helper"
require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do

    # 有効な三角形となるテストケース

# 有効な不等辺三角形となる値セット
  it "有効な不等辺三角形となる値セット" do
      expect(Triangle.new([2,3,4]).which).to eq '不等辺三角形ですね！'
  end

# 有効な正三角形となる値セット
  it "有効な正三角形となる値セット" do
      expect(Triangle.new([1,1,1]).which).to eq '正三角形ですね！'
  end

# 有効な二等辺三角形となる値セットで a = b の場合
  it "有効な二等辺三角形となる値セットで a = b の場合" do
      expect(Triangle.new([2,2,1]).which).to eq '二等辺三角形ですね！'
  end

# 有効な二等辺三角形となる値セットで b = c の場合
  it "有効な二等辺三角形となる値セットで b = c の場合" do
      expect(Triangle.new([1,2,2]).which).to eq '二等辺三角形ですね！'
  end

# 有効な二等辺三角形となる値セットで a = c の場合
  it "有効な二等辺三角形となる値セットで a = c の場合" do
      expect(Triangle.new([2,1,2]).which).to eq '二等辺三角形ですね！'
  end

    # 有効な三角形とならないテストケース

# 長さが０の辺がある場合
  it "長さが０の辺がある場合" do
      expect(Triangle.new([2,0,2]).which).to eq '不正な引数です'
  end

# 長さが負の値の辺がある場合
  it "長さが負の値の辺がある場合" do
      expect(Triangle.new([2,-1,2]).which).to eq '不正な引数です'
  end

# 整数でない辺がある場合
  # it "整数でない辺がある場合" do
  #     expect(Triangle.new([2,1,1.2345]).which).to eq '不正な引数です'
  # end

# ３辺が０(無効な値で３辺が等しい場合を代表している)
  it "３辺が０の場合" do
      expect(Triangle.new([0,0,0]).which).to eq '不正な引数です'
  end

# ２辺の和がもう１辺と等しくなる値セットで a = b + c の場合
  it "２辺の和がもう１辺と等しくなる値セットで a = b + c の場合" do
      expect(Triangle.new([3,1,2]).which).to eq '三角形じゃないです><;'
  end

# ２辺の和がもう１辺と等しくなる値セットで b = a + c の場合
  it "２辺の和がもう１辺と等しくなる値セットで b = a + c の場合" do
      expect(Triangle.new([1,3,2]).which).to eq '三角形じゃないです><;'
  end

# ２辺の和がもう１辺と等しくなる値セットで c = a + b の場合
  it "２辺の和がもう１辺と等しくなる値セットで c = a + b の場合" do
      expect(Triangle.new([2,1,3]).which).to eq '三角形じゃないです><;'
  end

# ２辺の和がもう１辺より小さくなる値セットで a > b + c の場合
  it "２辺の和がもう１辺より小さくなる値セットで a > b + c の場合" do
      expect(Triangle.new([4,1,2]).which).to eq '三角形じゃないです><;'
  end

# ２辺の和がもう１辺より小さくなる値セットで b > a + c の場合
  it "２辺の和がもう１辺より小さくなる値セットで b > a + c の場合" do
      expect(Triangle.new([4,1,2]).which).to eq '三角形じゃないです><;'
  end

# ２辺の和がもう１辺より小さくなる値セットで c > a + b の場合
  it "２辺の和がもう１辺より小さくなる値セットで c > a + b の場合" do
      expect(Triangle.new([4,1,2]).which).to eq '三角形じゃないです><;'
  end

end