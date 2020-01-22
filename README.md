## Welcome to GitHub Pages

Parse gene_onyology.obo as a database, which can be used to annotate the genes of interest[GOI](https://www.quora.com/What-is-a-gene-of-interest)  listed in _Sample.csv_.

### Solutions

#### dict[key] = {}
```

import re
open('./path/gene_onyology.obo') as f
line = f.readline()                     #文件太大了，逐行读取
regex_id = re.compile('id: (GO:\s[0-9]{7})$')

while line:
    if line. starswith("id: "):
        tmp = {}
        id = re.findall(regex_id, line)
        dict[id] = tmp  
        f.readline()
    else:
        part = line. split(":")
        tmp[part[0]] =part[1]              #存jin字典中
        f.readline()

f.close()

open('./path/Sample.csv'，'a') as de      #用with方便，不需要open和close(注意缩进 Indent)
lines = de.readlines()

#Add the corresponding Column names
lines[0].strip('\n')
lines[0].write('name,namespace,def,exact_synoym\n')

#decipher
for line in lines:
    key = line.split(',')[0]
    line.write(dict[key][name],dict[key][namespace],dict[key][def],dict[key][exact_synoym]'\n')               #把嵌套字典中keys对应的值，分别写入对应行，并且添加换行符


   de.close()     


```
#### Class

## head -n Sample.csv

```
go_cc
GO:0000001
GO:0000006
GO:0000108
GO:0000083
...
```
## head -n gene_onyology.obo

```
format-version: 1.0
version: releases/2018-09-19
date: 18:11:2019 04:10
saved-by: jenkins-slave
subsetdef: gocheck_do_not_annotate "Term not to be used for direct annotation"
subsetdef: gocheck_do_not_manually_annotate "Term not to be used for direct manual annotation"
subsetdef: goslim_agr "AGR slim"
subsetdef: goslim_aspergillus "Aspergillus GO slim"
subsetdef: goslim_candida "Candida GO slim"
subsetdef: goslim_chembl "ChEMBL protein targets summary"
subsetdef: goslim_generic "Generic GO slim"
subsetdef: goslim_metagenomics "Metagenomics GO slim"
subsetdef: goslim_mouse "Mouse GO slim"
subsetdef: goslim_pir "PIR GO slim"
subsetdef: goslim_plant "Plant GO slim"
subsetdef: goslim_pombe "Fission yeast GO slim"
subsetdef: goslim_synapse "synapse GO slim"
subsetdef: goslim_yeast "Yeast GO slim"
!synonymtypedef: syngo_official_label "label approved by the SynGO project" ! synonymtypedef not supported by OBO 1.0
!synonymtypedef: systematic_synonym "Systematic synonym" EXACT ! synonymtypedef not supported by OBO 1.0
default-namespace: gene_ontology
remark: cvs version: use data-version
remark: Includes Ontology(OntologyID(Anonymous-39)) [Axioms: 285 Logical Axioms: 285]
remark: Includes Ontology(OntologyID(OntologyIRI(<http://purl.obolibrary.org/obo/go/never_in_taxon.owl>))) [Axioms: 18 Logical Axioms: 0]
ontology: go

[Term]
id: GO:0000001
name: mitochondrion inheritance
namespace: biological_process
def: "The distribution of mitochondria, including the mitochondrial genome, into daughter cells after mitosis or meiosis, mediated by interactions between mitochondria and the cytoskeleton." [GOC:mcc, PMID:10873824, PMID:11389764]
exact_synonym: "mitochondrial inheritance" []
is_a: GO:0048308 ! organelle inheritance
is_a: GO:0048311 ! mitochondrion distribution

[Term]
id: GO:0000002
name: mitochondrial genome maintenance
namespace: biological_process
def: "The maintenance of the structure and integrity of the mitochondrial genome; includes replication and segregation of the mitochondrial chromosome." [GOC:ai, GOC:vw]
is_a: GO:0007005 ! mitochondrion organization
```

```Reminder
Syntax highlighted code block


- Bulleted
- List

1. Numbered
2. List



[Link](url) and ![Image](src)
```


