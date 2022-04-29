# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Curl2httpie < Formula
  desc ""
  homepage ""
  url "https://github.com/azouever/homebrew-tap/releases/download/v0.0.1/curl2httpie_0.0.1.tar.gz"
  sha256 "9101fa3d4e351579c65ba162825939bc73e9863727eb366af0684ac9c23bf486"
  license ""

  depends_on "python@3.7"
  depends_on "httpie"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    #system "./configure", *std_configure_args, "--disable-silent-rules"
    system "/usr/local/opt/python@3.7/bin/pip3", "install", "-i", "https://pypi.tuna.tsinghua.edu.cn/simple", "pyperclip"
    system "/usr/local/opt/python@3.7/bin/pip3", "install", "-i", "https://pypi.tuna.tsinghua.edu.cn/simple", "curlipie"
    bin.install "curl2httpie.py"
    bin.install "curl_result_json.sh"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test homebrew-tap`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
