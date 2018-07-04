FROM nfcore/base
MAINTAINER Phil Ewels <phil.ewels@scilifelab.se>
LABEL authors="phil.ewels@scilifelab.se" \
    description="Container image containing all requirements for the nf-core/methylseq pipeline"

COPY environment.yml /
RUN conda env update -n root -f /environment.yml && conda clean -a
