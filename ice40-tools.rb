class Ice40Tools < Formula
  desc "tools for documenting and working with iCE40 FPGA files"
  homepage "https://github.com/cliffordwolf/icestorm"
  head "https://github.com/cliffordwolf/icestorm.git"

  depends_on "yosys"
  depends_on "icestorm"
  depends_on "nextpnr-ice40"
end
