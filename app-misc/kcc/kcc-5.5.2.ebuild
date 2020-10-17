EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
DESCRIPTION="Kindle comics converter"
HOMEPAGE="https://kcc.iosphe.re/"
SRC_URI="https://github.com/ciromattia/kcc/archive/5.5.2.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="python-3 PyQt5 pillow psutil python-slugify raven"
RDEPEND="${DEPEND}"
BDEPEND=""
