EAPI=7

DISTUTILS_USE_SETUPTOOLS=no
PYTHON_COMPAT=( python3_7 )

inherit distutils-r1

DESCRIPTION="Sentry client"
HOMEPAGE="https://www.j-raedler.de/projects/polygon/"
SRC_URI="https://github.com/getsentry/raven-python/archive/6.10.0.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
IUSE=""
KEYWORDS="amd64"

DEPEND="app-arch/unzip"

S=${WORKDIR}/raven-python-${PV}

# DOCS=( doc/{Polygon.txt,Polygon.pdf} )

python_prepare_all() {
	distutils-r1_python_prepare_all
}

python_test() {
	"${EPYTHON}" test/Test.py -v || die "Tests failed under ${EPYTHON}"
}

python_install_all() {
	# if use examples; then
	# 	dodoc -r examples
	# 	docompress -x /usr/share/doc/${PF}/examples
	# fi

	distutils-r1_python_install_all
}
