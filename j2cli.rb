class J2cli < Formula
  include Language::Python::Virtualenv

  desc "Jinja2 Command-Line Tool, reworked"
  homepage "https://github.com/kolypto/j2cli"
  url "https://github.com/kolypto/j2cli.git",
    tag:      "v0.3.12b",
    revision: "26a67e9419d96b7f92871e8b93dba00306c5df0b"
  license "BSD-2-Clause"

  depends_on "python@3.8"

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/64/a7/45e11eebf2f15bf987c3bc11d37dcc838d9dc81250e67e4c5968f6008b6c/Jinja2-2.11.2.tar.gz"
    sha256 "89aab215427ef59c34ad58735269eb58b1a5808103067f7bb9d5836c651b3bb0"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/b9/2e/64db92e53b86efccfaea71321f597fa2e1b2bd3853d8ce658568f7a13094/MarkupSafe-1.1.1.tar.gz"
  end

  def install
    virtualenv_install_with_resources
  end
end
