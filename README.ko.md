> *Read this in other languages: [English](README.md), :kr: [한국어](README.ko.md)*

관련 문서: http://qtxlsx.debao.me

QtXlsx는 Excel 파일을 읽고 쓸 수 있는 라이브러리입니다. Microsoft Excel이 필요하지 않으며 Qt5가 지원하는 모든 플랫폼에서 사용할 수 있습니다.

이 라이브러리를 사용하여

* 새로운 .xlsx 파일 생성할 수 있습니다.
* 기존 .xlsx 파일에서 데이터를 추출할 수 있습니다.
* 기존 .xlsx 파일을 편집할 수 있습니다.

## QtXlsx 시작하기

> * Linux 사용자의 경우, Qt를 "apt-get"과 같은 패키지 관리자 도구를 통해 설치한 경우, Qt5 develop 패키지 *qtbase5-private-dev* 를 설치했는지 확인하십시오.

### 사용법(1) : Xlsx를 Qt5의 애드온 모듈로 사용

#### 모듈 만들기

> **참고** : 이 단계에서는 Perl이 필요합니다.

* 소스 코드를 다운로드하십시오.

* 원하는 디렉토리에 소스 코드를 넣으십시오

* 터미널에서 프로젝트의 최상위 디렉토리로 이동하여 실행하십시오.

```
     qmake
     make
     make install
```

이 과정을 통해 라이브러리, 헤더 파일 및 기타가 시스템에 설치됩니다.

>```make html_docs```를 사용하여 라이브러리의 문서를 생성 할 수 있고, ```make check''`를 사용하여 라이브러리의 unit 테스트를 실행할 수 있습니다.

#### 모듈 사용

* qmake의 프로젝트 파일에 다음 줄을 추가하십시오.

```
     QT + = xlsx
```

* 그런 다음, 코드에서 Qt Xlsx를 사용하십시오.

```cpp
    #include <QtXlsx>
    int main()
    {
        QXlsx::Document xlsx;
        xlsx.write("A1", "Hello Qt!");
        xlsx.saveAs("Test.xlsx");
        return 0;
    }
```

### 사용법 (2) : 소스 코드 직접 사용

패키지에는 빌드 단계에서 qmake를 사용하는 애플리케이션에 컴포넌트를 통합 할 수있는 **qtxlsx.pri** 파일이 포함되어 있습니다.

* 소스 코드를 다운로드하십시오.

* 원하는 디렉토리에 소스 코드를 넣으십시오. 예를 들어, 3rdparty의 경우:

```
    |-- project.pro
    |-- ....
    |-- 3rdparty\
    |     |-- qtxlsx\
    |     |
```

* qmake 프로젝트 파일에 다음 줄을 추가하십시오.

```
     include(3rdparty/qtxlsx/src/xlsx/qtxlsx.pri)
```

> **참고** : 원하는 경우, *src/xlsx*의 모든 파일을 응용 프로그램의 소스 경로로 복사 할 수 있습니다. 이 경우, 다음 프로젝트 파일에 다음 줄을 추가하십시오.

>```
     include(qtxlsx.pri)
```

> **참고** : qmake를 사용하지 않는 경우에는 다음 매크로를 수동으로 정의해야합니다.

>```
     XLSX_NO_LIB
```


* 그 다음, 코드에서 Qt Xlsx를 사용하십시오.

```cpp
    #include "xlsxdocument.h"
    int main()
    {
        QXlsx::Document xlsx;
        xlsx.write("A1", "Hello Qt!");
        xlsx.saveAs("Test.xlsx");
        return 0;
    }
```

## 레퍼런스

* http://www.ecma-international.org/publications/standards/Ecma-376.htm
* http://www.iso.org/iso/catalogue_detail?csnumber=51463
* http://msdn.microsoft.com/en-us/library/ee908652%28v=office.12%29.aspx
* http://www.datypic.com/sc/ooxml/

### 기타 자료

* https://github.com/jmcnamara/XlsxWriter
* http://openpyxl.readthedocs.org
* http://officeopenxml.com/anatomyofOOXML-xlsx.php
* http://www.libxl.com
* http://closedxml.codeplex.com/
* http://epplus.codeplex.com/
* http://excelpackage.codeplex.com/
* http://spreadsheetlight.com/

### 수 형식

* http://msdn.microsoft.com/en-us/library/ff529356%28v=office.12%29.aspx
* http://www.ozgrid.com/Excel/excel-custom-number-formats.htm
* http://stackoverflow.com/questions/894805/excel-number-format-what-is-409
* http://office.microsoft.com/en-001/excel-help/create-a-custom-number-format-HP010342372.aspx

### 수식 및 공식

* http://msdn.microsoft.com/en-us/library/ff533995%28v=office.12%29.aspx
* http://msdn.microsoft.com/en-us/library/dd906358%28v=office.12%29.aspx
* http://homepages.ecs.vuw.ac.nz/~elvis/db/Excel.shtml
* http://ewbi.blogs.com/develops/2004/12/excel_formula_p.html