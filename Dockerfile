FROM seqyuan/r-base:latest

RUN R -e "install.packages(c('Seurat'), repos='http://mirrors.tuna.tsinghua.edu.cn/CRAN/')" && \
	R -e "BiocManager::install('monocle')"

ADD passwd /etc/
ADD group /etc/


