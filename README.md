# Galton, and the Peas [Galton ve Bezelyeler]

<img src="https://github.com/jackiboy/flagpack/blob/master/flags/4x3/gb.svg" width="16" height="12"> Stanton’s article about the history of linear regression refers to Pearson, Galton and the study of the scientists. The owner of the paper states that correlation has been taught before regression in statistics courses, this reason effects that the Pearson and Pearson’s Product-Moment Correlation Coefficient (PPMC) are familiar by students. However, Pearson’s correlation studies are based on Galton’s studies which are not well established. Karl Pearson has utilized the studies of Galton, which are the pioneers. In addition to that, Pearson is the author of Galton’s biography after Galton’s death. The history of linear regression paper took my attention and I decided to make a small exercise about ‘Raw Data on Diameters of Parent and Daughter Seeds Generated from Galton (1894)’, which is attached with this paper. I have input these data into R environment and analysed them. By running the codes below, you might have an opportunity to get Galton’s findings. Galton hasn’t researched his study in depth although he had noticed a correlation between the size of the parent peas and the size of the daughter peas.

<img src="https://github.com/jackiboy/flagpack/blob/master/flags/4x3/tr.svg" width="16" height="12"> Stanton (2001) doğrusal regresyonun tarihçesini ele aldığı yazısında Pearson'a, Galton'a ve bu bilim insanlarının çalışmalarına değiniyor. Yazar, istatistik derslerinde önce korelasyonun anlatıldığını, bu sebeple öğrencilerin Pearson'ı ve Pearson'ın Momentler Çarpımı Korelasyon Katsayısını iyi bildiğini, ancak tüm bu çalışmalara temel olan Galton'ın çalışmalarının yeterince bilinmediğini dile getirmektedir. Karl Pearson, Galton'un öncü çalışmalarından faydalanmıştır. Ayrıca Pearson, ölümünden sonra Galton'ın biyografisini de kaleme alan kişidir. Bu yazı ilgimi çekti ve yazıya iliştirilmiş olan 'Raw Data on Diameters of Parent and Daughter Seeds Generated from Galton (1894)' isimli veriler ile küçük bir alıştırma yapmaya karar verdim. Verileri R ortamına girdim ve analizleri gerçekleştirdim. Aşağıdaki kodları çalıştırarak Galton'un bulgularına siz de ulaşabilirsiniz. Galton, ebeveyn bezelyelerin büyüklüğü ile yavru bezelyelerin büyüklükleri arasında bir ilişki olduğunu fark etmişti ancak bu araştırmasını derinleştirmedi.

## Data

```
parentseed_diameters <- c(rep(21.00, 100), rep(20.00, 100), rep(19.00, 100), rep(18.00, 100), rep(17.00, 100), rep(16.00, 100), rep(15.00, 100))

daughterseed_diameters <- c(rep(14.67, 22), rep(15.67, 8), rep(16.67, 10), rep(17.67, 18), rep(18.67, 21), rep(19.67, 13), rep(20.67, 6), rep(22.67, 2),
                            rep(14.66, 23), rep(15.66, 10), rep(16.66, 12), rep(17.66, 17), rep(18.66, 20), rep(19.66, 13), rep(20.66, 3), rep(22.66, 2),
                            rep(14.07, 35), rep(15.07, 16), rep(16.07, 12), rep(17.07, 13), rep(18.07, 11), rep(19.07, 10), rep(20.07, 2), rep(22.07,1),
                            rep(14.35, 34), rep(15.35, 12), rep(16.35, 13), rep(17.35, 17), rep(18.35, 16), rep(19.35, 6), rep(20.35, 2), rep(13.92, 37),
                            rep(14.92, 16), rep(15.92, 13), rep(16.92, 16), rep(17.92, 13), rep(18.92, 4), rep(19.92, 1), rep(14.28, 34), rep(15.28, 15),
                            rep(16.28, 18), rep(17.28, 16), rep(18.28, 13), rep(19.28, 3), rep(20.28, 1), rep(13.77, 46), rep(14.77, 14), rep(15.77, 9),
                            rep(16.77, 11), rep(17.77, 14), rep(18.77, 4), rep(19.77, 2))

galtonData <- data.frame(parentseed_diameters, daughterseed_diameters)
```

## References

* Galton, F. (1894). _Natural inheritance_. MacMillan and Company. 
* Stanton, J. M. (2001). Galton, Pearson, and the peas: A brief history of linear regression for statistics instructors. _Journal of Statistics Education_, _9_(3), 1-13.
