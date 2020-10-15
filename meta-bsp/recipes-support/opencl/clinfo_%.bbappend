
# Add dependency on opencl-headers and opecl-icd provided by imx-gpu-viv
DEPENDS_remove_imx = "opencl-headers opencl-icd-loader"
DEPENDS_append_imx = " virtual/opencl-headers virtual/opencl-icd "
