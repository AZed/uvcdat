set(LLNL_URL http://uv-cdat.llnl.gov/cdat/resources)
set(WGET_MAJOR 1)
set(WGET_MINOR 12)
set(WGET_PATCH)
#set(WGET_URL http://ftp.gnu.org/gnu/wget)
set(WGET_URL ${LLNL_URL})
set(WGET_GZ wget-${WGET_MAJOR}.${WGET_MINOR}.tar.gz)
set(WGET_MD5 141461b9c04e454dc8933c9d1f2abf83)

set(PYTHON_MAJOR 2)
set(PYTHON_MINOR 7)
set(PYTHON_PATCH 2)
set(PYTHON_MAJOR_SRC 2)
set(PYTHON_MINOR_SRC 7)
set(PYTHON_PATCH_SRC 2)
set(PYTHON_VERSION ${PYTHON_MAJOR_SRC}.${PYTHON_MINOR_SRC}.${PYTHON_PATCH_SRC})
#set(PYTHON_URL http://python.org/ftp/python/${PYTHON_VERSION})
set(PYTHON_URL ${LLNL_URL})
set(PYTHON_GZ Python-${PYTHON_VERSION}.tgz)
set(PYTHON_MD5 0ddfe265f1b3d0a8c2459f5bf66894c7)

set(PYVER ${PYTHON_MAJOR_SRC}.${PYTHON_MINOR_SRC})

set(XML_MAJOR 2)
set(XML_MINOR 7)
set(XML_PATCH 8)
set(XML_MAJOR_SRC 2)
set(XML_MINOR_SRC 7)
set(XML_PATCH_SRC 8)
#set(XML_URL ftp://xmlsoft.org/libxml2)
set(XML_URL ${LLNL_URL})
set(XML_GZ libxml2-${XML_MAJOR_SRC}.${XML_MINOR_SRC}.${XML_PATCH_SRC}.tar.gz)
set(XML_MD5 8127a65e8c3b08856093099b52599c86)

set(XSLT_MAJOR 1)
set(XSLT_MINOR 1)
set(XSLT_PATCH 22)
set(XSLT_MAJOR_SRC 1)
set(XSLT_MINOR_SRC 1)
set(XSLT_PATCH_SRC 26)
#set(XSLT_URL ftp://xmlsoft.org/libxml2)
set(XSLT_URL ${LLNL_URL})
set(XSLT_GZ libxslt-${XSLT_MAJOR_SRC}.${XSLT_MINOR_SRC}.${XSLT_PATCH_SRC}.tar.gz)
set(XSLT_MD5 e61d0364a30146aaa3001296f853b2b9)

set(PKG_MAJOR 0)
set(PKG_MINOR 9)
set(PKG_PATCH 0)
set(PKG_MAJOR_SRC 0)
set(PKG_MINOR_SRC 23)
set(PKG_PATCH_SRC 0)
set(PKG_VERSION ${PKG_MAJOR_SRC}.${PKG_MINOR_SRC}.${PKG_PATCH_SRC})
#set(PKG_URL http://pkgconfig.freedesktop.org/releases)
set(PKG_URL ${LLNL_URL})
set(PKG_GZ pkg-config-${PKG_MAJOR_SRC}.${PKG_MINOR_SRC}.tar.gz)
set(PKG_MD5 d922a88782b64441d06547632fd85744)

set(CAIRO_MAJOR 1)
set(CAIRO_MINOR 10)
set(CAIRO_PATCH 2)
set(CAIRO_MAJOR_SRC 1)
set(CAIRO_MINOR_SRC 10)
set(CAIRO_PATCH_SRC 2)
#set(CAIRO_URL http://cairographics.org/releases)
set(CAIRO_URL ${LLNL_URL})
set(CAIRO_GZ cairo-${CAIRO_MAJOR_SRC}.${CAIRO_MINOR_SRC}.${CAIRO_PATCH_SRC}.tar.gz)
set(CAIRO_MD5 f101a9e88b783337b20b2e26dfd26d5f)

set(FT_MAJOR 9)
set(FT_MINOR 7)
set(FT_PATCH 3)
set(FT_MAJOR_SRC 2)
set(FT_MINOR_SRC 3)
set(FT_PATCH_SRC 12)
#set(FT_URL http://download.savannah.gnu.org/releases-noredirect/freetype)
set(FT_URL ${LLNL_URL})
set(FT_GZ freetype-${FT_MAJOR_SRC}.${FT_MINOR_SRC}.${FT_PATCH_SRC}.tar.gz)
set(FT_MD5 6fc690d9b34154b51a919ff466cea90c)

set(FTCFG_MAJOR 2)
set(FTCFG_MINOR 4)
set(FTCFG_PATCH 2)
set(FTCFG_MAJOR_SRC 2)
set(FTCFG_MINOR_SRC 8)
set(FTCFG_PATCH_SRC 0)
#set(FTCFG_URL http://fontconfig.org/release)
set(FTCFG_URL ${LLNL_URL})
set(FTCFG_GZ fontconfig-${FTCFG_MAJOR_SRC}.${FTCFG_MINOR_SRC}.${FTCFG_PATCH_SRC}.tar.gz)
set(FTCFG_MD5 77e15a92006ddc2adbb06f840d591c0e)

set(PIX_MAJOR 0)
set(PIX_MINOR 22)
set(PIX_PATCH 2)
set(PIX_MAJOR_SRC 0)
set(PIX_MINOR_SRC 22)
set(PIX_PATCH_SRC 2)
#set(PIX_URL http://cairographics.org/releases)
set(PIX_URL ${LLNL_URL})
set(PIX_GZ pixman-${PIX_MAJOR_SRC}.${PIX_MINOR_SRC}.${PIX_PATCH_SRC}.tar.gz)
set(PIX_MD5 3dd0d9ed05dbf0e5e75d526ebae42e11)

set(CURL_MAJOR 7)
set(CURL_MINOR 22)
set(CURL_PATCH 0)
set(CURL_MAJOR_SRC 7)
set(CURL_MINOR_SRC 22)
set(CURL_PATCH_SRC 0)
#set(CURL_URL http://curl.haxx.se/download)
set(CURL_URL ${LLNL_URL})
set(CURL_GZ curl-${CURL_MAJOR_SRC}.${CURL_MINOR_SRC}.${CURL_PATCH_SRC}.tar.gz)
set(CURL_MD5 e8c36126d21c893f085aca233906b5cc)

set(PNG_MAJOR 1)
set(PNG_MINOR 4)
set(PNG_PATCH 1)
set(PNG_MAJOR_SRC 1)
set(PNG_MINOR_SRC 5)
set(PNG_PATCH_SRC 1)
set(PNG_VERSION ${PNG_MAJOR_SRC}.${PNG_MINOR_SRC}.${PNG_PATCH_SRC})
#set(PNG_URL http://download.sourceforge.net/libpng)
set(PNG_URL ${LLNL_URL})
set(PNG_GZ libpng-${PNG_VERSION}.tar.gz)
set(PNG_MD5 220035f111ea045a51e290906025e8b5)

set(PMW_MAJOR 1)
set(PMW_MINOR 3)
set(PMW_MAJOR_SRC 1)
set(PMW_MINOR_SRC 3)
set(PMW_PATCH_SRC 2)
#set(PMW_URL http://downloads.sourceforge.net/project/pmw/Pmw/Pmw.${PMW_MAJOR_SRC}.${PMW_MINOR_SRC}.${PMW_PATCH_SRC})
set(PMW_URL ${LLNL_URL})
set(PMW_GZ Pmw.${PMW_MAJOR_SRC}.${PMW_MINOR_SRC}.${PMW_PATCH_SRC}.tar.gz)
set(PMW_MD5 7f30886fe9885ab3cf85dac6ce1fbda5)

set(NUMPY_MAJOR 1)
set(NUMPY_MINOR 5)
set(NUMPY_PATCH 1)
set(NUMPY_MAJOR_SRC 1)
set(NUMPY_MINOR_SRC 5)
set(NUMPY_PATCH_SRC 1)
#set(NUMPY_URL http://downloads.sourceforge.net/project/numpy/NumPy/${NUMPY_MAJOR_SRC}.${NUMPY_MINOR_SRC}.${NUMPY_PATCH_SRC})
set(NUMPY_URL ${LLNL_URL})
set(NUMPY_GZ numpy-${NUMPY_MAJOR_SRC}.${NUMPY_MINOR_SRC}.${NUMPY_PATCH_SRC}.tar.gz)
set(NUMPY_MD5 376ef150df41b5353944ab742145352d)


set(SCIPY_MAJOR 0)
set(SCIPY_MINOR 10)
set(SCIPY_PATCH 0)
set(SCIPY_MAJOR_SRC 0)
set(SCIPY_MINOR_SRC 10)
set(SCIPY_PATCH_SRC 1)
set(SCIPY_URL ${LLNL_URL})
set(SCIPY_GZ scipy-${SCIPY_MAJOR_SRC}.${SCIPY_MINOR_SRC}.${SCIPY_PATCH_SRC}.tar.gz)
set(SCIPY_MD5 6ad976549e22e04ca93e70cf55b70a22)

set(TCLTK_MAJOR 8)
set(TCLTK_MINOR 5)
set(TCLTK_PATCH 9)
set(TCLTK_VERSION ${TCLTK_MAJOR}.${TCLTK_MINOR}.${TCLTK_PATCH})
set(TCLTK_URL ${LLNL_URL})
set(TCL_GZ tcl${TCLTK_MAJOR}.${TCLTK_MINOR}.${TCLTK_PATCH}-src.tar.gz)
set(TK_GZ tk${TCLTK_MAJOR}.${TCLTK_MINOR}.${TCLTK_PATCH}-src.tar.gz)
set(TCL_MD5 8512d8db3233041dd68a81476906012a)
set(TK_MD5 7cdeb9feb61593f58a0ae61f2497580e)

set(TIFF_MAJOR 3)
set(TIFF_MINOR 9)
set(TIFF_PATCH 4)
#set(TIFF_URL ftp://ftp.remotesensing.org/pub/libtiff)
set(TIFF_URL ${LLNL_URL})
set(TIFF_GZ tiff-${TIFF_MAJOR}.${TIFF_MINOR}.${TIFF_PATCH}.tar.gz)
set(TIFF_MD5 2006c1bdd12644dbf02956955175afd6)

set(RL_MAJOR 5)
set(RL_MINOR 2)
set(RL_MAJOR_SRC 6)
set(RL_MINOR_SRC 2)
#set(READLINE_URL ftp://ftp.gnu.org/gnu/readline)
set(READLINE_URL ${LLNL_URL})
set(READLINE_GZ readline-${RL_MAJOR_SRC}.${RL_MINOR_SRC}.tar.gz)
#set(READLINE_MD5 fc2f7e714fe792db1ce6ddc4c9fb4ef3)
set(READLINE_MD5 67948acb2ca081f23359d0256e9a271c)

set(SETUPTOOLS_MAJOR 0)
set(SETUPTOOLS_MINOR 6)
set(SETUPTOOLS_MAJOR_SRC 0)
set(SETUPTOOLS_MINOR_SRC 6c11)
#set(SETUPTOOLS_URL http://pypi.python.org/packages/source/s/setuptools)
set(SETUPTOOLS_URL ${LLNL_URL})
set(SETUPTOOLS_GZ setuptools-${SETUPTOOLS_MAJOR_SRC}.${SETUPTOOLS_MINOR_SRC}.tar.gz)
set(SETUPTOOLS_MD5 7df2a529a074f613b509fb44feefe74e)

set(PYOPENGL_MAJOR 3)
set(PYOPENGL_MINOR 0)
set(PYOPENGL_PATCH 0)
set(PYOPENGL_MAJOR_SRC 3)
set(PYOPENGL_MINOR_SRC 0)
set(PYOPENGL_PATCH_SRC 1)
#set(PYOPENGL_URL http://pypi.python.org/packages/source/P/PyOpenGL)
set(PYOPENGL_URL ${LLNL_URL})
set(PYOPENGL_GZ PyOpenGL-${PYOPENGL_MAJOR_SRC}.${PYOPENGL_MINOR_SRC}.${PYOPENGL_PATCH_SRC}.tar.gz)
set(PYOPENGL_MD5 cdf03284f24279b8d9914bb680a37b5e)

set(HDF4_MAJOR_SRC 4)
set(HDF4_MINOR_SRC 2)
set(HDF4_PATCH_SRC 5)
#set(HDF4_URL http://www.hdfgroup.org/ftp/HDF/HDF_Current/src)
set(HDF4_URL ${LLNL_URL})
set(HDF4_GZ hdf-${HDF4_MAJOR_SRC}.${HDF4_MINOR_SRC}.${HDF4_PATCH_SRC}.tar.gz)
set(HDF4_MD5 7241a34b722d29d8561da0947c06069f)

set(HDF5_MAJOR_SRC 1)
set(HDF5_MINOR_SRC 8)
set(HDF5_PATCH_SRC 8)
#set(HDF5_URL http://www.hdfgroup.org/ftp/HDF5/current/src)
set(HDF5_URL ${LLNL_URL})
set(HDF5_GZ hdf5-${HDF5_MAJOR_SRC}.${HDF5_MINOR_SRC}.${HDF5_PATCH_SRC}.tar.gz)
set(HDF5_MD5 1196e668f5592bfb50d1de162eb16cff)

set(UUID_MAJOR_SRC 1)
set(UUID_MINOR_SRC 6)
set(UUID_PATCH_SRC 2)
#set(UUID_URL http://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid)
set(UUID_URL ${LLNL_URL})
set(UUID_GZ uuid-${UUID_MAJOR_SRC}.${UUID_MINOR_SRC}.${UUID_PATCH_SRC}.tar.gz)
set(UUID_MD5 5db0d43a9022a6ebbbc25337ae28942f)

set(UDUNITS2_MAJOR_SRC 2)
set(UDUNITS2_MINOR_SRC 1)
set(UDUNITS2_PATCH_SRC 14)
#set(UDUNITS2_URL ftp://ftp.unidata.ucar.edu/pub/udunits)
set(UDUNITS2_URL ${LLNL_URL})
set(UDUNITS2_GZ udunits-${UDUNITS2_MAJOR_SRC}.${UDUNITS2_MINOR_SRC}.${UDUNITS2_PATCH_SRC}.tar.gz)
set(UDUNITS2_MD5 17698289a0d6b04551fe6d6a389af41c)

set(NC4_MAJOR 4)
set(NC4_MINOR 1)
set(NC4_PATCH 2)
set(NC4_MAJOR_SRC 4)
set(NC4_MINOR_SRC 1)
set(NC4_PATCH_SRC 2)
#set(NC4_URL ftp://ftp.unidata.ucar.edu/pub/netcdf)
set(NC4_URL ${LLNL_URL})
set(NC4_GZ netcdf-${NC4_MAJOR_SRC}.${NC4_MINOR_SRC}.${NC4_PATCH_SRC}.tar.gz)
set(NC4_MD5 4a94ebe2d998d649159aa5665c83fb1a)

set(ZLIB_MAJOR_SRC 1)
set(ZLIB_MINOR_SRC 2)
set(ZLIB_PATCH_SRC 5)
set(ZLIB_VERSION ${ZLIB_MAJOR_SRC}.${ZLIB_MINOR_SRC}.${ZLIB_PATCH_SRC})
#set(ZLIB_URL http://zlib.net)
set(ZLIB_URL ${LLNL_URL})
set(ZLIB_GZ zlib.${ZLIB_VERSION}.tar.gz)
set(ZLIB_MD5 c735eab2d659a96e5a594c9e8541ad63)

set(TCAP_MAJOR_SRC 1)
set(TCAP_MINOR_SRC 3)
set(TCAP_PATCH_SRC 1)
#set(TCAP_URL ftp://ftp.gnu.org/gnu/termcap)
set(TCAP_URL ${LLNL_URL})
set(TCAP_GZ termcap-${TCAP_MAJOR_SRC}.${TCAP_MINOR_SRC}.${TCAP_PATCH_SRC}.tar.gz)
set(TCAP_MD5 ffe6f86e63a3a29fa53ac645faaabdfa)

set(GIFSICLE_MAJOR_SRC 1)
set(GIFSICLE_MINOR_SRC 58)
#set(GIFSICLE_URL http://www.lcdf.org/gifsicle)
set(GIFSICLE_URL ${LLNL_URL})
set(GIFSICLE_GZ gifsicle-${GIFSICLE_MAJOR_SRC}.${GIFSICLE_MINOR_SRC}.tar.gz)
set(GIFSICLE_MD5 39675b028cd5d10514590ee1b1c86fc1)

set(XGKS_URL http://uv-cdat.llnl.gov/cdat)
set(XGKS_GZ xgks.tar.gz)
set(XGKS_MD5 e0360b9557355b02ad789c0ab4f3a7cb)

set(JPEG_URL ${LLNL_URL})
set(JPEG_GZ jpegsrc.v8c.tar.gz)
set(JPEG_MD5 a2c10c04f396a9ce72894beb18b4e1f9)

set(BLAS_URL http://uv-cdat.llnl.gov/cdat/resource)
set(BLAS_GZ blas.tgz)
set(BLAS_MD5 d922a88782b64441d06547632fd85744)

set(CLAPACK_MAJOR 3)
set(CLAPACK_MINOR 2)
set(CLAPACK_PATCH 1)
set(CLAPACK_VERSION ${CLAPACK_MAJOR}.${CLAPACK_MINOR}.${CLAPACK_PATCH})
set(CLAPACK_URL http://www.netlib.org/clapack)
#set(CLAPACK_URL ${LLNL_URL})
set(CLAPACK_GZ clapack-${CLAPACK_VERSION}-CMAKE.tgz)
set(CLAPACK_MD5 4fd18eb33f3ff8c5d65a7d43913d661b)

#set(LAPACK_URL ${LLNL_URL})
#set(LAPACK_GZ lapack.tgz)
#set(LAPACK_MD5 d0d533ec9a5b74933c2a1e84eedc58b4)
set(LAPACK_URL http://www.netlib.org/lapack)
set(LAPACK_GZ lapack-3.4.0.tgz)
set(LAPACK_MD5 02d5706ec03ba885fc246e5fa10d8c70)

set(LAPACK95_URL http://uv-cdat.llnl.gov/cdat/resource)
set(LAPACK95_GZ lapack95.tgz)
set(LAPACK95_MD5 d922a88782b64441d06547632fd85744)

#set(PBMPLUS_URL http://acme.com/software/pbmplus)
set(PBMPLUS_URL ${LLNL_URL})
set(PBMPLUS_GZ pbmplus_10dec1991.tar.gz)
set(PBMPLUS_MD5 ed8298f8173bee510129eb32ef872db5)

set(GS_MAJOR_SRC 8)
set(GS_MINOR_SRC 71)
#set(GS_URL http://ghostscript.com/releases)
set(GS_URL ${LLNL_URL})
set(GS_GZ ghostscript-${GS_MAJOR_SRC}.${GS_MINOR_SRC}.tar.gz)
set(GS_MD5 51a522a5b4818bd3dc7c1c0e9dd22bad)

set(YASM_MAJOR_SRC 1)
set(YASM_MINOR_SRC 2)
set(YASM_PATCH_SRC 0)
set(YASM_URL ${LLNL_URL})
set(YASM_GZ yasm-${YASM_MAJOR_SRC}.${YASM_MINOR_SRC}.${YASM_PATCH_SRC}.tar.gz)
set(YASM_MD5 4cfc0686cf5350dd1305c4d905eb55a6)

set(FFMPEG_MAJOR_SRC 0)
set(FFMPEG_MINOR_SRC 10)
set(FFMPEG_PATCH_SRC 2)
set(FFMPEG_URL http://ffmpeg.org/releases)
#set(FFMPEG_URL ${LLNL_URL})
set(FFMPEG_GZ ffmpeg-${FFMPEG_MAJOR_SRC}.${FFMPEG_MINOR_SRC}.${FFMPEG_PATCH_SRC}.tar.gz)
#set(FFMPEG_MD5 0165cb1ac7d4f4d9b1d631d2256dea78)
set(FFMPEG_MD5 f449c9fb925e80c457e82187e6c20910)

set(VTK_MAJOR_SRC 5)
set(VTK_MINOR_SRC 6)
set(VTK_PATCH_SRC 1)
#set(VTK_URL http://www.vtk.org/files/release/${VTK_MAJOR_SRC}.${VTK_MINOR_SRC})
set(VTK_URL ${LLNL_URL})
set(VTK_GZ vtk-${VTK_MAJOR_SRC}.${VTK_MINOR_SRC}.${VTK_PATCH_SRC}.tar.gz)
set(VTK_MD5 d922a88782b64441d06547632fd85744)

set(PARAVIEW_MAJOR 3)
set(PARAVIEW_MINOR 11)
set(PARAVIEW_PATCH 1)
set(PARAVIEW_VERSION ${PARAVIEW_MAJOR}.${PARAVIEW_MINOR}.${PARAVIEW_PATCH})
#set(PARAVIEW_URL http://paraview.org/files/v${PARAVIEW_MAJOR}.${PARAVIEW_MINOR})
set(PARAVIEW_URL ${LLNL_URL})
set(PARAVIEW_GZ ParaView-${PARAVIEW_VERSION}c.tar.gz)
set(PARAVIEW_MD5 81565b70093784dea38d2d62e072287b)

set(VISIT_MAJOR 2)
set(VISIT_MINOR 5)
set(VISIT_PATCH 0)
set(VISIT_VERSION ${VISIT_MAJOR}.${VISIT_MINOR}.${VISIT_PATCH})
#set(VISIT_SVN http://portal.nersc.gov/svn/visit/tags/${VISIT_VERSION}/src)
#set(VISIT_URL http://portal.nersc.gov/svn/visit/trunk/releases/${VISIT_VERSION})
set(VISIT_URL http://vis.lbl.gov/~visit)
set(VISIT_GZ visit${VISIT_VERSION}-newer.tar.gz)
#set(VISIT_MD5 475b053e162dcc9366049b1aaa022a6e)
set(VISIT_MD5 5cac82f543c5c1e5e6462a82a58db725)

set(SIP_MAJOR 4)
set(SIP_MINOR 12)
set(SIP_PATCH 1)
set(SIP_MAJOR_SRC 4)
set(SIP_MINOR_SRC 13)
set(SIP_PATCH_SRC 2)
set(SIP_VERSION ${SIP_MAJOR_SRC}.${SIP_MINOR_SRC}.${SIP_PATCH_SRC})
set(SIP_URL http://www.riverbankcomputing.com/static/Downloads/sip${SIP_MAJOR_SRC})
set(SIP_URL ${LLNL_URL})
set(SIP_GZ sip-${SIP_MAJOR_SRC}.${SIP_MINOR_SRC}.${SIP_PATCH_SRC}.tar.gz)
#set(SIP_MD5 0f8e8305b14c1812191de2e0ee22fea9)
set(SIP_MD5 5a12ea8e8a09b879ed2b3817e30fbc84)

set(QT_MAJOR 4)
set(QT_MINOR 7)
set(QT_PATCH 1)
set(QT_VERSION ${QT_MAJOR}.${QT_MINOR}.${QT_PATCH})
#set(QT_URL http://get.qt.nokia.com/qt/source)
set(QT_URL ${LLNL_URL})
set(QT_GZ qt-everywhere-opensource-src-${QT_VERSION}.tar.gz)
set(QT_MD5 6f88d96507c84e9fea5bf3a71ebeb6d7)

set(PYQT_MAJOR 4)
set(PYQT_MINOR 8)
set(PYQT_PATCH 3)
set(PYQT_MAJOR_SRC 4)
set(PYQT_MINOR_SRC 9)
set(PYQT_PATCH_SRC 1)
set(PYQT_VERSION ${PYQT_MAJOR_SRC}.${PYQT_MINOR_SRC}.${PYQT_PATCH_SRC})
#set(PYQT_URL http://www.riverbankcomputing.com/static/Downloads/PyQt${PYQT_MAJOR_SRC})
set(PYQT_URL ${LLNL_URL})
set(PYQT_GZ_APPLE PyQt-mac-gpl-${PYQT_VERSION}.tar.gz)
set(PYQT_GZ_UNIX PyQt-x11-gpl-${PYQT_VERSION}.tar.gz)
#set(PYQT_MD5_APPLE 14bade8b251660177ccc1a0cbbe33aba)
#set(PYQT_MD5_UNIX d54fd1c37a74864faf42709c8102f254)
set(PYQT_MD5_APPLE 3b9112a49a3484032f29ea7fe65c31e5)
set(PYQT_MD5_UNIX 7f495dc49f71e3bfb64bf942e0d8bb3c)

set(R_MAJOR_SRC 2)
set(R_MINOR_SRC 11)
set(R_PATCH_SRC 1)
#set(R_URL http://cran.cnr.berkeley.edu)
set(R_URL ${LLNL_URL})
set(R_GZ R-${R_MAJOR_SRC}.${R_MINOR_SRC}.${R_PATCH_SRC}.tar.gz)
set(R_MD5 d922a88782b64441d06547632fd85744)

set(G2CLIB_MAJOR 1)
set(G2CLIB_MINOR 2)
set(G2CLIB_PATCH 5)
set(G2CLIB_VERSION ${G2CLIB_MAJOR}.${G2CLIB_MINOR}.${G2CLIB_PATCH})
set(G2CLIB_URL ${LLNL_URL})
set(G2CLIB_GZ g2clib-${G2CLIB_VERSION}.tar.gz)
set(G2CLIB_MD5 f2b7ea610ec723dc269655b68b6bb7db)

set(JASPER_MAJOR 1)
set(JASPER_MINOR 900)
set(JASPER_PATCH 1)
set(JASPER_VERSION ${JASPER_MAJOR}.${JASPER_MINOR}.${JASPER_PATCH})
set(JASPER_URL ${LLNL_URL})
set(JASPER_GZ jasper-${JASPER_VERSION}.tgz)
set(JASPER_MD5 b5ae85050d034555790a3ccbc2522860)

set(LIBCF_MAJOR 1)
set(LIBCF_MINOR 0)
set(LIBCF_PATCH beta10)
set(LIBCF_VERSION ${LIBCF_MAJOR}.${LIBCF_MINOR}-${LIBCF_PATCH})
set(LIBCF_URL ${LLNL_URL})
set(LIBCF_GZ libcf-${LIBCF_VERSION}.tar.gz)
set(LIBCF_MD5 9152723b6ca7c979f17b433308ec3521)  # beta10

set(MPI4PY_MAJOR 1)
set(MPI4PY_MINOR 3)
set(MPI4PY_VERSION ${MPI4PY_MAJOR}.${MPI4PY_MINOR})
set(MPI4PY_URL http://uv-cdat.llnl.gov/cdat/resources)
set(MPI4PY_GZ mpi4py-${MPI4PY_VERSION}.tar.gz)
set(MPI4PY_MD5 978472a1a71f3142c866c9463dec7103)

set(ESMF_MAJOR 5)
set(ESMF_MINOR 3)
set(ESMF_PATCH 1_beta_snapshot_05)
set(ESMF_VERSION ${ESMF_MAJOR}_${ESMF_MINOR}_${ESMF_PATCH})
set(ESMF_URL ${LLNL_URL})
set(ESMF_GZ ESMF_${ESMF_VERSION}.tar.gz)
set(ESMF_MD5 b3b617dc561d1ed98477f18bbf7bac54)

set(ESMP_MAJOR 5)
set(ESMP_MINOR 3)
set(ESMP_PATCH 1_beta_snapshot_05_ESMP_01)
set(ESMP_VERSION ${ESMP_MAJOR}_${ESMP_MINOR}_${ESMP_PATCH})
set(ESMP_URL ${LLNL_URL})
set(ESMP_GZ ESMF_${ESMP_VERSION}.tar.gz)
set(ESMP_MD5 0904d15c982664ddca558fc2eba56171)

set(CYTHON_MAJOR 0)
set(CYTHON_MINOR 15)
#set(CYTHON_PATCH 1)
set(CYTHON_VERSION ${CYTHON_MAJOR}.${CYTHON_MINOR})
set(CYTHON_URL http://cython.org/release)
set(CYTHON_GZ Cython-${CYTHON_VERSION}.tar.gz)
set(CYTHON_MD5 794b93c4c1c4cc031f90302cacd834ca)

set(NUMEXPR_MAJOR 1)
set(NUMEXPR_MINOR 4)
set(NUMEXPR_PATCH 2)
set(NUMEXPR_VERSION ${NUMEXPR_MAJOR}.${NUMEXPR_MINOR}.${NUMEXPR_PATCH})
set(NUMEXPR_URL http://numexpr.googlecode.com/files/)
set(NUMEXPR_GZ numexpr-${NUMEXPR_VERSION}.tar.gz)
set(NUMEXPR_MD5 139115cc196dc57a66b2eb30cd3e80a0)

set(PYTABLES_MAJOR 2)
set(PYTABLES_MINOR 2)
set(PYTABLES_PATCH 1)
set(PYTABLES_VERSION ${PYTABLES_MAJOR}.${PYTABLES_MINOR}.${PYTABLES_PATCH})
set(PYTABLES_URL http://www.pytables.org/download/pytables-${PYTABLES_VERSION})
set(PYTABLES_GZ tables-${PYTABLES_VERSION}.tar.gz)
set(PYTABLES_MD5 37f4932ecff9fe97bffc7a3d2e7da427)

set(PYSPHARM_MAJOR 1)
set(PYSPHARM_MINOR 0)
set(PYSPHARM_PATCH 7)
set(PYSPHARM_VERSION ${PYSPHARM_MAJOR}.${PYSPHARM_MINOR}.${PYSPHARM_PATCH})
set(PYSPHARM_URL ${LLNL_URL})
set(PYSPHARM_GZ pyspharm-${PYSPHARM_VERSION}.tar.gz)
set(PYSPHARM_MD5 e19897ec64d9e861ef6b93bf649a433c) 

set(ZMQ_MAJOR 2)
set(ZMQ_MINOR 2)
set(ZMQ_PATCH 0)
set(ZMQ_VERSION ${ZMQ_MAJOR}.${ZMQ_MINOR}.${ZMQ_PATCH})
set(ZMQ_URL ${LLNL_URL})
set(ZMQ_GZ zeromq-${ZMQ_VERSION}.tar.gz)
set(ZMQ_MD5 05fc17610630e952d29efe7564828888)

set(IPYTHON_MAJOR 0)
set(IPYTHON_MINOR 12)
set(IPYTHON_PATCH 1)
set(IPYTHON_VERSION ${IPYTHON_MAJOR}.${IPYTHON_MINOR}.${IPYTHON_PATCH})
set(IPYTHON_URL ${LLNL_URL})
set(IPYTHON_GZ ipython-${IPYTHON_VERSION}.tar.gz)
set(IPYTHON_MD5 ae3a9851cd99f40ba5227efec58c7a6c)

set( MATPLOTLIB_MAJOR_MIN 1  )
set( MATPLOTLIB_MINOR_MIN 1  )
set( MATPLOTLIB_PATCH_MIN 0  )
set( MATPLOTLIB_MAJOR 1  )
set( MATPLOTLIB_MINOR 1  )
set( MATPLOTLIB_PATCH 0  )
set( MATPLOTLIB_VERSION ${MATPLOTLIB_MAJOR}.${MATPLOTLIB_MINOR}.${MATPLOTLIB_PATCH} )
set( MATPLOTLIB_URL ${LLNL_URL} )
set( MATPLOTLIB_GZ matplotlib-${MATPLOTLIB_VERSION}.tar.gz )
set( MATPLOTLIB_MD5 57a627f30b3b27821f808659889514c2 )

set( basemap_MAJOR 1  )
set( basemap_MINOR 0  )
set( basemap_PATCH 2  )
set(basemap_URL ${LLNL_URL})
set(basemap_GZ basemap-${basemap_MAJOR}.${basemap_MINOR}.${basemap_PATCH}.tar.gz)
set(basemap_MD5 f30b2c0cd6afa426a107cc96bb468fa4)

set( GEOS_MAJOR 3  )
set( GEOS_MINOR 3  )
set( GEOS_PATCH 3  )
set(GEOS_URL ${LLNL_URL})
set(GEOS_BZ2 geos-${GEOS_MAJOR}.${GEOS_MINOR}.${GEOS_PATCH}.tar.bz2)
set(GEOS_MD5 8454e653d7ecca475153cc88fd1daa26)

set( SHAPELY_MAJOR 1  )
set( SHAPELY_MINOR 2  )
set( SHAPELY_PATCH 14  )
set(SHAPELY_URL ${LLNL_URL})
set(SHAPELY_GZ Shapely-${SHAPELY_MAJOR}.${SHAPELY_MINOR}.${SHAPELY_PATCH}.tar.gz)
set(SHAPELY_MD5 be8efc68e83b3db086ec092a835ae4e5)

set( GDAL_MAJOR 1  )
set( GDAL_MINOR 9  )
set( GDAL_PATCH 1  )
set(GDAL_URL ${LLNL_URL})
set(GDAL_GZ gdal-${GDAL_MAJOR}.${GDAL_MINOR}.${GDAL_PATCH}.tar.gz)
set(GDAL_MD5 c5cf09b92dac1f5775db056e165b34f5)

set(OPENMPI_MAJOR 1)
set(OPENMPI_MINOR 6)
set(OPENMPI_URL ${LLNL_URL})
set(OPENMPI_GZ openmpi-${OPENMPI_MAJOR}.${OPENMPI_MINOR}.tar.bz2)
set(OPENMPI_MD5 dd6f5bd4b3cb14d93bbf530e50e46e60 )

