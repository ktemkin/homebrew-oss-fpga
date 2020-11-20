class ProjectTrellis < Formula
  desc "tools for documenting and working with ECP5 FPGA files"
  homepage "https://github.com/SymbiFlow/prjtrellis"
  head "https://github.com/SymbiFlow/prjtrellis.git"

  depends_on "cmake" => :build
  depends_on "boost-python3" => :build
  depends_on "python@3.9"
  depends_on "libftdi" => :recommended
  depends_on "open-ocd" => :recommended

  def install
    cd "libtrellis" do

      # Modify libtrellis to not depend on local tags, as we're not rapidly
      # rebuilding as the CMake script assumes.
      inreplace "CMakeLists.txt", "git describe", "git describe --always"

      system "cmake", ".", *std_cmake_args, "-DBoost_NO_BOOST_CMAKE=on"
      system "make", "install"
    end
  end

end
