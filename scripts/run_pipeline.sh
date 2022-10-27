for sid in $(ls data/*.fastq.gz | cut -d "_" -f1 | sed 's:data/::' | sort | uniq)
do
	 bash scripts/script_analizar $sid
done
multiqc -o out/multiqc .
mkdir -p envs
conda env export > envs/rna-saq.yaml
