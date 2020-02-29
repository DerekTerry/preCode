fibR_row <- function(x){
  x = as.data.frame(x)
  
  #避免 单行 被as.data.frame 变为一列多行
  if(dim(x)[2] == 1)(x = t(x))
  
  nrows = nrow(x) 
  
  #  is.null(nrows)
  if (nrows == 1){
    nrows = 1
    #注意上下一致，不能直接x[1,]
    return(x[nrows,])
  }
  
  #递归，累加每行
  #@BUG 注意+ fibR_row(x[1:nrows-1,])  
  #如果是x[nrows-1,]  返回的是一列，是一个明确的，最后的结果是两列相加之后就结束
  else( return(fibR_row(x[nrows,]) + fibR_row(x[1:nrows-1,]) ) )
}
