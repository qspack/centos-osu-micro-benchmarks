FROM qspack/centos-openmpi

RUN /usr/local/src/spack/bin/spack install osu-micro-benchmarks
ENV PATH=${PATH}:/usr/local/osu-micro-benchmarks/bin
RUN SPACK_BASE=$(/usr/local/src/spack/bin/spack location --install-dir osu-micro-benchmarks) \
 && ln -s ${SPACK_BASE}/libexec/osu-micro-benchmarks/ \
    /usr/local/
