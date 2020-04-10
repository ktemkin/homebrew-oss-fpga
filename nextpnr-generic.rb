class NextpnrGeneric < Formula
  desc "portable FPGA place-and-route tool"
  homepage "https://github.com/YosysHQ/nextpnr"
  head "https://github.com/YosysHQ/nextpnr.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "eigen" => :build
  depends_on "python@3.8"
  depends_on "boost"
  depends_on "boost-python3"
  depends_on "qt5"

  def install
    system "cmake", "-DARCH=generic", ".", *std_cmake_args, "-DBUILD_TESTS=OFF"
    system "make", "install"
  end

end
