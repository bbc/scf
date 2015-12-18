# EBU-TT2EBU-TT-D
The implementation of the EBU-TT2EBU-TT-D module is based on the use case of the distribution of subtitles to online services with EBU-TT-D subtitle files. It takes as input an EBU-TT File that is conformant to the EBU-TT Part 1 spec (EBU Tech 3350) and on the basis of the STL to EBU-TT mapping guideline.

##Prerequisites
- an XSLT 1.0 processor (e.g. SAXON 6.5.5 or higher)

##Usage
The EBU-TT2EBU-TT-D.xslt provides the following parameter:

     - offsetInSeconds
       Defines the time-offset that's used for the TCI and TCO elements in seconds. If applying the time-offset results in negative begin or end times the p or span elements that would fall partially before time 00:00:00 are pruned and a warning is issued.

## DESCRIPTION
This transformation assumes that the input EBU-TT file is based on an EBU-STL file and the transformation followed the guidelines of EBU Tech 3360. 


## EXAMPLES
    java -cp saxon9he.jar net.sf.saxon.Transform -s:ebutt-part1.xml -xsl:EBU-TT2EBU-TT-D.xslt -o:ebutt-d-out.xml

or even a bit simpler    
    
    java -jar [dir]/saxon9he.jar -s:ebutt-part1.xml -xsl:EBU-TT2EBU-TT-D.xslt -o:ebutt-d-out.xml

where "[dir]" is the directory of the Saxon jar-file


## RESOURCES     
EBU STL (EBU Tech 3264) https://tech.ebu.ch/docs/tech/tech3264.pdf  
MAPPING EBU STL TO EBU-TT SUBTITLE FILES (EBU Tech 3360) https://tech.ebu.ch/docs/tech/tech3360.pdf  
EBU-TT-D SUBTITLING DISTRIBUTION FORMAT (EBU Tech 3380) https://tech.ebu.ch/docs/tech/tech3380.pdf
