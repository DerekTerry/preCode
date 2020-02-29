```
#想要通过函数，对数据框每行累加为一行
#
#x[2,] + x[1,] 
#A2  A3  A4  
#113   37  603
#
#模拟数据
#x <- data.frame(A2 = c(110,3),A3 = c(37,0),A4 = c(602,1))

fibR_row <- function(x){
  nrows <- nrow(x[nrows-1,])  
    
  if (is.null(nrows)){
    return(x[1,])
    }
  
  #递归，累加每行
  else( return(x[nrows,] + fibR(x[nrows-1,]) ) )
}


as.matrix(x) %>% fibR()

#实际数据（因为进行了 as.numeric），是如下报错：
```


> Error in x[1, ] : incorrect number of dimensions 
>
> 10.fibR(x[nrows - 1, ]) 
>
> 9.fibR(.) 
>
> 8.function_list[[k]](value) 
>
> 7.withVisible(function_list[[k]](value)) 
>
> 6.freduce(value, `_function_list`) 
>
> 5.`_fseq`(`_lhs`) 
>
> 4.eval(quote(`_fseq`(`_lhs`)), env, env) 
> 
> 3.eval(quote(`_fseq`(`_lhs`)), env, env) 
> 
> 2.withVisible(eval(quote(`_fseq`(`_lhs`)), env, env)) 
> 
> 1.as.matrix(x) %>% fibR()

```
#输入为数据框的情况
> fibR(x)
Error: C stack usage  15924656 is too close to the limit
```
