sed 's#/#-#g' data.csv > datos1 #
sed 's#-\([0-9][0-9]\);#-20\1;#' datos1 > datos2 #
sed 's#\([0-9]\)-\([0-9]\)-#0\1-0\2-#' datos2 > datos3 #
sed 's#\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\)#\3-\2-\1#' datos3 > datos4 #
sed 's#;;#;\\N;#g' datos4 > datos5 #
sed 's#[a-c,n]#\U&#g' datos5 > datos6 #
sed 's#;N#;\\N#g' datos6 > datos7 #
sed 's#;#,#g' datos7 > datos8 #
sed 's#,[\r]#,\\N\r#' datos8 > datos9 #
sed 's#\([0-9][0-9][0-9]\),#\1\.#g' datos9 > Final #
rm datos* #
cat Final #
