EAPI=7

DISTUTILS_USE_SETUPTOOLS=no
PYTHON_COMPAT=( python3_7 )

inherit distutils-r1

DESCRIPTION="Kindle client"
HOMEPAGE="https://github.com/ciromattia/kcc"
SRC_URI="https://github.com/ciromattia/kcc/archive/5.5.2.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
IUSE=""
KEYWORDS="amd64"

DEPEND="
dev-python/PyQt5
dev-python/python-slugify
dev-python/pillow
dev-python/psutil
dev-python/raven
dev-python/pykerberos
app-arch/p7zip
"

S=${WORKDIR}/kcc-${PV}

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
