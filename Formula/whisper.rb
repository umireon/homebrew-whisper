class Whisper < Formula
  include Language::Python::Virtualenv

  desc "Robust Speech Recognition via Large-Scale Weak Supervision"
  homepage "https://openai.com/blog/whisper/"
  url "https://github.com/openai/whisper/archive/28769fcfe50755a817ab922a7bc83483159600a9.tar.gz"
  sha256 "d6ec9409a02a010dc0ffa3cfbe80c6db9ef8f97fa9d04e0dc16eb0fa75cc4f23"
  license "MIT"

  bottle do
    root_url "https://github.com/umireon/homebrew-whisper/releases/download/whisper-9"
    sha256 cellar: :any,                 arm64_ventura: "e30cdd8a87edd3988f7260b069bb8287e4cc3d380f24bd20720ffe92e2a21fd2"
    sha256 cellar: :any,                 monterey:      "90a7189107b4ac1ebd8294496be0747b9e6f281e5b0f326ff452245a699e234f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "406fe242562b2e1b42609c8be1226adfb64127bcea3cac0623725c44afddd80d"
  end

  depends_on "rust" => :build
  depends_on "ffmpeg"
  depends_on "numpy"
  depends_on "python@3.11"
  depends_on "pytorch"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/37/f7/2b1b0ec44fdc30a3d31dfebe52226be9ddc40cd6c0f34ffc8923ba423b69/certifi-2022.12.7.tar.gz"
    sha256 "35824b4c3a97115964b408844d64aa14db1cc518f6562e8d7261699d1350a9e3"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/a1/34/44964211e5410b051e4b8d2869c470ae8a68ae274953b1c7de6d98bbcf94/charset-normalizer-2.1.1.tar.gz"
    sha256 "5a3d016c7c547f69d6f81fb0db9449ce888b418b5b9952cc5e6e66843e9dd845"
  end

  resource "ffmpeg-python" do
    url "https://files.pythonhosted.org/packages/dd/5e/d5f9105d59c1325759d838af4e973695081fbbc97182baf73afc78dec266/ffmpeg-python-0.2.0.tar.gz"
    sha256 "65225db34627c578ef0e11c8b1eb528bb35e024752f6f10b78c011f6f64c4127"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/0b/dc/eac02350f06c6ed78a655ceb04047df01b02c6b7ea3fc02d4df24ca87d24/filelock-3.9.0.tar.gz"
    sha256 "7b319f24340b51f55a2bf7a12ac0755a9b03e718311dac567a0f4f7fabd2f5de"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/45/0b/38b06fd9b92dc2b68d58b75f900e97884c45bedd2ff83203d933cf5851c9/future-0.18.2.tar.gz"
    sha256 "b1bead90b70cf6ec3f0710ae53a525360fa360d306a86583adc6bf83a4db537d"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/2f/64/beeb8ef2f852abbd93887a87899899829a7a386b6f91631194f574d02b4d/huggingface_hub-0.11.1.tar.gz"
    sha256 "8b9ebf9bbb1782f6f0419ec490973a6487c6c4ed84293a8a325d34c4f898f53f"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/13/b3/397aa9668da8b1f0c307bc474608653d46122ae0563d1d32f60e24fa0cbd/more-itertools-9.0.0.tar.gz"
    sha256 "5a6257e40878ef0520b1803990e3e22303a41b5714006c32a3fd8304b26ea1ab"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/6b/f7/c240d7654ddd2d2f3f328d8468d4f1f876865f6b9038b146bec0a6737c65/packaging-22.0.tar.gz"
    sha256 "2198ec20bd4c017b8f9717e00f0c8714076fc2fd93816750ab48e2c41de2cfd3"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
    sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/27/b5/92d404279fd5f4f0a17235211bb0f5ae7a0d9afb7f439086ec247441ed28/regex-2022.10.31.tar.gz"
    sha256 "a3a98921da9a1bf8457aeee6a551948a83601689e5ecdd736894ea9bbec77e83"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a5/61/a867851fd5ab77277495a8709ddda0861b28163c4613b011bc00228cc724/requests-2.28.1.tar.gz"
    sha256 "7c5599b102feddaa661c826c56ab4fee28bfd17f5abca1ebbe3e7f19d7c97983"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/4a/d9/af2821b5934ed871f716eb65fb3bd43e7bc70b99191ec08f20cfd642d0a1/tokenizers-0.13.2.tar.gz"
    sha256 "f9525375582fd1912ac3caa2f727d36c86ff8c0c6de45ae1aaff90f87f33b907"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/4f/80/6e85b39ee0d10a4e0798c1246a67123ee8cfc978a0bff54e03707ae1a77e/transformers-4.25.1.tar.gz"
    sha256 "6dad398b792d45dc04e9ee7e9e06bf758ab19dca2efc119065e661bb0f8f843b"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/c1/c2/d8a40e5363fb01806870e444fc1d066282743292ff32a9da54af51ce36a2/tqdm-4.64.1.tar.gz"
    sha256 "5f4f682a004951c1b450bc753c710e9280c5746ce6ffedee253ddbcbf54cf1e4"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c2/51/32da03cf19d17d46cce5c731967bf58de9bd71db3a379932f53b094deda4/urllib3-1.26.13.tar.gz"
    sha256 "c083dd0dce68dbfbe1129d5271cb90f9447dea7d52097c6e0126120c521ddea8"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    emptywavpath = testpath/"empty.wav"
    emptywavpath.write("")
    output = shell_output("whisper --model tiny.en #{emptywavpath} 2>&1 || true")
    assert_match(/Invalid data found when processing input/, output)
  end
end
