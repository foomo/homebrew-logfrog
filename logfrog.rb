# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfrog < Formula
  desc "cli utility to tail structured json logs from streams specially featuring stern and docker-compose with support for filtering and transformations of log entries"
  homepage "https://github.com/foomo/logfrog"
  version "0.2.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/foomo/logfrog/releases/download/v0.2.3/logfrog_0.2.3_darwin_amd64.tar.gz"
    sha256 "9b241e1c5ba02d1b2ac15dd7b5bbc701b54cbe01fe77915d1865d8f393a05934"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/foomo/logfrog/releases/download/v0.2.3/logfrog_0.2.3_linux_amd64.tar.gz"
    sha256 "e165bb1689a623176e3034ce7aa6af35ba4b19462f5753848710387deb0d6958"
  end

  def install
    bin.install "logfrog"
  end

  def caveats; <<~EOS
    logfrog --help
  EOS
  end
end
