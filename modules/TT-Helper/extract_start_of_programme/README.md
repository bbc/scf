# extract_start_of_programme
The extract_start_of_programme module takes as input an EBU-TT document and outputs the value of ebuttm:documentStartOfProgramme converted to seconds.  

##Prerequisites
- an XSLT 1.0 processor (e.g. SAXON 6.5.5 or higher)

##Usage
The extract_start_of_programme.xsl has no parameter.


## EXAMPLES
    java -jar saxon9he.jar -s:ebutt-part1.xml -xsl:extract_start_of_programme.xsl

(or passing output value into EBU-TT2EBU-TT-D.xslt in bash shell):

    java -cp saxon9he.jar net.sf.saxon.Transform -s:ebutt-part1.xml -xsl:EBU-TT2EBU-TT-D.xslt -o:ebutt-d.xml offsetInSeconds=$(java -jar saxon9he.jar -s:ebutt-part1.xml -xsl:extract_start_of_programme.xsl)