# This file was generated by GoReleaser. DO NOT EDIT.
class Logfrog < Formula
  desc "cli utility to tail structured json logs from streams specially featuring stern and docker-compose with support for filtering and transformations of log entries"
  homepage "https://github.com/foomo/logfrog"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/foomo/logfrog/releases/download/0.1.0/logfrog_0.1.0_darwin_amd64.tar.gz"
    sha256 "412932503f6d6d28725292e56b12541645f80866ae906359675f05daa11efef3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/foomo/logfrog/releases/download/0.1.0/logfrog_0.1.0_linux_amd64.tar.gz"
      sha256 "fc328e19b5b2081cd6a8c6b1a46f9e2471a9bb327ac0d002fb2c8274b770bb83"
    end
  end

  def install
    bin.install "logfrog"
  end

  def caveats; <<~EOS
    logfrog --help
  EOS
  end
end
