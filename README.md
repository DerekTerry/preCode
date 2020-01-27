## Welcome to GitHub Pages

Parse gene_onyology.obo as a database, which can be used to annotate the genes of interest[GOI](https://www.quora.com/What-is-a-gene-of-interest)  listed in _Sample.csv_.

### Solutions

#### dict[key] = {}
```

%%time
import re

regex_id = re.compile('id: (GO:[0-9]{7})$')
line_star = re.compile('^name|^def')

dic = {}
f = open("C:\\Users\\Administrator\\Downloads\\Gene_ontology.obo")
line = f.readline()               # 调用文件的 readline()方法，一次读取一行
while line:                       #需要line = f.readline()  赋值操作，更新line
    #print(line)
    if line.startswith("[Term]"):            #可以正确返回True False
        #print(line)
        line = f.readline()                       
        if  line.startswith("id:"):
            tmp = {}
            id = re.findall(regex_id, line)
            #print(str(id))
            dic[str(id)] = tmp               #dic的键值变为   "['GO:0000001']"  而非 'GO:0000001'
            
            line = f.readline()
        #如何将下面的操作限制在 一个【Term】内
        #目前操作顺序：            【Term】 -> 【name】 更新line 之后，就跳到下一个【Term】
        #而不会依次读完一个        【Term】 -> 【name】 -> 【namespace】 -> 【def】
            if line.startswith(("name","def")):     #startswith()和endswith()函数的参数可以包在一个括号中一次列出多个，各个参数之间是或的关系
                print(line)
                print(line.startswith(("name","def")))
                part = line.split(":")
                print(part)
                tmp[part[0]] =part[1]              #存jin字典中
                #print(tmp)
                line = f.readline()
            
    else:
        line = f.readline()
    
#print(dic)
f.close()             
print(dict['GO:0000001'])    



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
!synonymtypedef: syngo_official_label "label approved by the SynGO project" ! synonymtypedef not supported by OBO 1.0
default-namespace: gene_ontology
remark: cvs version: use data-version

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

```
{
'GO:0000001':{
    'name': 'mitochondrion inheritance',
    'namespace': 'biological_process',
    'def':'....'
    },
    
'GO:0000001':{...
}
}
```

```Reminder
Syntax highlighted code block


- Bulleted
- List

1. Numbered
2. List



[Link](url) and ![Image](src)
```


