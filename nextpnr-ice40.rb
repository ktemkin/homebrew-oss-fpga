class NextpnrIce40 < Formula
  desc "portable FPGA place-and-route tool"
  homepage "https://github.com/YosysHQ/nextpnr"
  head "https://github.com/YosysHQ/nextpnr.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "eigen" => :build
  depends_on "python@3.9"
  depends_on "boost"
  depends_on "boost-python3"
  depends_on "qt5"
  depends_on "icestorm"

  def install
    system "cmake", "-DARCH=ice40", ".", *std_cmake_args, "-DBoost_NO_BOOST_CMAKE=on", "-DBUILD_TESTS=OFF", "-DICEBOX_ROOT=#{HOMEBREW_PREFIX}/share/icebox"
    system "make", "install"
  end

end
