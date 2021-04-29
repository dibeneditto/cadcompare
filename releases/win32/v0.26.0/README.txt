
CADCompare
==========

Version: 0.26.0
Release Date: 2017-05-11

CADCompare is a program that finds the differences in CAD PDF files.
This version runs as a Windows Batch file (CMD file), which depending
on your system security you may need permission from your system
administrator to run it. Please see the REQUIREMENTS section below.


HOW IT WORKS
------------

The program compares the files in the "studentpdfs" folder to the file
in the "teacherkey" folder and creates new files highlighting the
differences in the "results" folder.


INSTRUCTIONS
------------

To run this program:

1. Put the teacher's grading key PDF file in the "teacherkey" folder.
   - There can be only one file in this folder.

2. Put the student PDF file(s) in the "studentpdfs" folder.

3. Doubleclick "cadcompare" or run it from the command line.

4. Follow the interactive instructions for how you want the results.

5. New files highlighting the differences will be in the "results"
   folder.

6. NOTE: Any files in the "results" folder will be OVER WRITTEN if they
   have the same file name. To prevent this move the files out of the
   "results" folder before running the program again.

   Example:

       BEFORE first run of program:
           
         - teacherkey (folder)

           - teacherkey-assignment1-problem1.pdf

         - studentpdfs (folder)

           - james-smith-1-1.pdf
           - mary-johnson-1-1.pdf

         - results (folder)

           - (no files yet)

       AFTER first run of program, BEFORE second run of program:

         - teacherkey (folder)

           - teacherkey-assignment1-problem1.pdf

         - studentpdfs (folder)

           - james-smith-1-1.pdf
           - mary-johnson-1-1.pdf

         - results (folder)

           - james-smith-1-1-diff.pdf
           - mary-johnson-1-1-diff.pdf

       AFTER second run of program:

         - teacherkey (folder)

           - teacherkey-assignment1-problem1.pdf

         - studentpdfs (folder)

           - james-smith-1-1.pdf
           - mary-johnson-1-1.pdf

         - results (folder)

           - james-smith-1-1-diff.pdf (file was OVER WRITTEN)
           - mary-johnson-1-1-diff.pdf (file was OVER WRITTEN)


SUGGESTIONS ON FILE NAMES
-------------------------

teacherkey-assignment1-problem1.pdf
james-smith-1-1.pdf
mary-johnson-1-1.pdf

teacherkey-assignment2-problem3.pdf
james-smith-2-3.pdf
mary-johnson-2-3.pdf


PREMISE
-------

If a group of students are using the same type of computer, the same
software, and follow the directions to "plot" or print a CAD drawing,
then any differences can be found using software by pixel comparison.

Since the teacher key PDF file and the student PDF file should be the
same, excluding certain areas in the title block like the name and date,
any differences can be highlighted by software.


REQUIREMENTS
------------

Windows 32 bit or higher

PDF files

- Must be only 1 page.

- Must be the same page size.

  - Example: file1.pdf 8x11, file2.pdf 8x11, correct
  - Example: file1.pdf 8x11, file2.pdf 11x17, incorrect different
    page sizes.

- Must be the same page orientation.

  - Example: file1.pdf 8x11, file2.pdf 8x11, correct
  - Example: file1.pdf 8x11, file2.pdf 11x8, incorrect different
    page orientation, file1.pdf is portrait, file2.pdf is landscape.

  - Example: file1.pdf 11x8, file2.pdf 11x8, correct
  - Example: file2.pdf 11x8, file2.pdf 8x11, incorrect different
    page orientation, file1.pdf is landscape, file2.pdf is portrait.

- Per pixel comparison is done at 8-bit color values.


CONTACT
-------

Lukas W. DiBeneditto <lukas@dibeneditto.com>
http://dibeneditto.com/
http://github.com/dibeneditto/cadcompare/


DEPENDENCIES
------------

Located in the "required" folder.

ImageMagick-7.0.5-5-portable-Q16-x86 (32 bit)
  - compare.exe
    - colors.xml
    - delegates.xml
    - magic.xml
  - convert.exe
    - type.xml

Ghostscript 9.20 for Windows (32 bit)
  - gswin32c.exe
    - gsdll32.dll


BASED ON PUBLISHED RESEARCH
---------------------------

CADcompare™: A Web-based Application that Compares PDF CAD Drawings
Jun 2018  American Society for Education Engineering (ASEE) Engineering Design Graphics Division 2018 ASEE Annual Conference & Exposition

This work in progress describes the development of a web application titled CADcompare™, which automatically compares, displays, and highlights differences in Portable Document Format (PDF) files of computer-aided design (CAD) drawings and is specifically designed to compare multiple student files to an instructor's grading key. CADcompare augments the grading process of technical and engineering CAD drawings by highlighting differences that can be easily missed by a human grader, such as incorrect line type(s), color(s), or double lines (i.e., lines on top of each other). Some CAD software has built-in comparison tools, however, none of the comparison tools accept PDF files to compare, are web-based applications, or can compare multiple student files at once like CADcompare can. Grading engineering CAD drawings with accuracy and fairness can take a lot of time, the intended use of CADcompare is to act as a grading tool to help instructors grade faster, more accurately, and without unintended bias. Spring 2017, a Windows® based proof of concept version of CADcompare installed on a personal computer showcased the strengths of the software. CADcompare was able to compare multiple student drawings to the grading key much faster than previously used methods. Outcomes from user testing prompted the current development of a web-based version. This paper offers general details on how CADcompare compares PDF files, market analysis, the work in progress, and a planned research study comparing grading times with and without CADcompare in an introductory engineering graphics course.

https://peer.asee.org/30121


COPYRIGHT
---------

CADCompare is a program that finds the differences in CAD PDF files.
Copyright (C) 2017 Lukas W. DiBeneditto, Rustin D. Webster, Purdue
Univesity, Purdue Polytechnic New Albany

Licensed under the ImageMagick License (the "License"); you may not use
this file except in compliance with the License.  You may obtain a copy
of the License at

  https://www.imagemagick.org/script/license.php

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.


License for ImageMagick-7.0.5-5-portable-Q16-x86 (32 bit)
---------------------------------------------------------

Before we get to the text of the license, lets just review what the license says in simple terms:

It allows you to:

  * freely download and use ImageMagick software, in whole or in part, for personal, company internal, or commercial purposes;
  * use ImageMagick software in packages or distributions that you create;
  * link against a library under a different license;
  * link code under a different license against a library under this license;
  * merge code into a work under a different license;
  * extend patent grants to any code using code under this license;
  * and extend patent protection.

It forbids you to:

  * redistribute any piece of ImageMagick-originated software without proper attribution;
  * use any marks owned by ImageMagick Studio LLC in any way that might state or imply that ImageMagick Studio LLC endorses your distribution;
  * use any marks owned by ImageMagick Studio LLC in any way that might state or imply that you created the ImageMagick software in question.

It requires you to:

  * include a copy of the license in any redistribution you may make that includes ImageMagick software;
  * provide clear attribution to ImageMagick Studio LLC for any distributions that include ImageMagick software.

It does not require you to:

  * include the source of the ImageMagick software itself, or of any modifications you may have made to it, in any redistribution you may assemble that includes it;
  * submit changes that you make to the software back to the ImageMagick Studio LLC (though such feedback is encouraged).

A few other clarifications include:

  * ImageMagick is freely available without charge;
  * you may include ImageMagick on a DVD as long as you comply with the terms of the license;
  * you can give modified code away for free or sell it under the terms of the ImageMagick license or distribute the result under a different license, but you need to acknowledge the use of the ImageMagick software;
  * the license is compatible with the GPL V3.
  * when exporting the ImageMagick software, review its export classification.

Terms and Conditions for Use, Reproduction, and Distribution

The legally binding and authoritative terms and conditions for use, reproduction, and distribution of ImageMagick follow:

Copyright 1999-2017 ImageMagick Studio LLC, a non-profit organization dedicated to making software imaging solutions freely available.

1. Definitions.

License shall mean the terms and conditions for use, reproduction, and distribution as defined by Sections 1 through 9 of this document.

Licensor shall mean the copyright owner or entity authorized by the copyright owner that is granting the License.

Legal Entity shall mean the union of the acting entity and all other entities that control, are controlled by, or are under common control with that entity. For the purposes of this definition, control means (i) the power, direct or indirect, to cause the direction or management of such entity, whether by contract or otherwise, or (ii) ownership of fifty percent (50%) or more of the outstanding shares, or (iii) beneficial ownership of such entity.

You (or Your) shall mean an individual or Legal Entity exercising permissions granted by this License.

Source form shall mean the preferred form for making modifications, including but not limited to software source code, documentation source, and configuration files.

Object form shall mean any form resulting from mechanical transformation or translation of a Source form, including but not limited to compiled object code, generated documentation, and conversions to other media types.

Work shall mean the work of authorship, whether in Source or Object form, made available under the License, as indicated by a copyright notice that is included in or attached to the work (an example is provided in the Appendix below).

Derivative Works shall mean any work, whether in Source or Object form, that is based on (or derived from) the Work and for which the editorial revisions, annotations, elaborations, or other modifications represent, as a whole, an original work of authorship. For the purposes of this License, Derivative Works shall not include works that remain separable from, or merely link (or bind by name) to the interfaces of, the Work and Derivative Works thereof.

Contribution shall mean any work of authorship, including the original version of the Work and any modifications or additions to that Work or Derivative Works thereof, that is intentionally submitted to Licensor for inclusion in the Work by the copyright owner or by an individual or Legal Entity authorized to submit on behalf of the copyright owner. For the purposes of this definition, "submitted" means any form of electronic, verbal, or written communication sent to the Licensor or its representatives, including but not limited to communication on electronic mailing lists, source code control systems, and issue tracking systems that are managed by, or on behalf of, the Licensor for the purpose of discussing and improving the Work, but excluding communication that is conspicuously marked or otherwise designated in writing by the copyright owner as Not a Contribution.

Contributor shall mean Licensor and any individual or Legal Entity on behalf of whom a Contribution has been received by Licensor and subsequently incorporated within the Work.

2. Grant of Copyright License. Subject to the terms and conditions of this License, each Contributor hereby grants to You a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare Derivative Works of, publicly display, publicly perform, sublicense, and distribute the Work and such Derivative Works in Source or Object form.

3. Grant of Patent License. Subject to the terms and conditions of this License, each Contributor hereby grants to You a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable patent license to make, have made, use, offer to sell, sell, import, and otherwise transfer the Work, where such license applies only to those patent claims licensable by such Contributor that are necessarily infringed by their Contribution(s) alone or by combination of their Contribution(s) with the Work to which such Contribution(s) was submitted. If You institute patent litigation against any entity (including a cross-claim or counterclaim in a lawsuit) alleging that the Work or a Contribution incorporated within the Work constitutes direct or contributory patent infringement, then any patent licenses granted to You under this License for that Work shall terminate as of the date such litigation is filed.

4. Redistribution. You may reproduce and distribute copies of the Work or Derivative Works thereof in any medium, with or without modifications, and in Source or Object form, provided that You meet the following conditions:

  * You must give any other recipients of the Work or Derivative Works a copy of this License; and
  * You must cause any modified files to carry prominent notices stating that You changed the files; and
  * You must retain, in the Source form of any Derivative Works that You distribute, all copyright, patent, trademark, and attribution notices from the Source form of the Work, excluding those notices that do not pertain to any part of the Derivative Works; and
  * If the Work includes a "NOTICE" text file as part of its distribution, then any Derivative Works that You distribute must include a readable copy of the attribution notices contained within such NOTICE file, excluding those notices that do not pertain to any part of the Derivative Works, in at least one of the following places: within a NOTICE text file distributed as part of the Derivative Works; within the Source form or documentation, if provided along with the Derivative Works; or, within a display generated by the Derivative Works, if and wherever such third-party notices normally appear. The contents of the NOTICE file are for informational purposes only and do not modify the License. You may add Your own attribution notices within Derivative Works that You distribute, alongside or as an addendum to the NOTICE text from the Work, provided that such additional attribution notices cannot be construed as modifying the License.
You may add Your own copyright statement to Your modifications and may provide additional or different license terms and conditions for use, reproduction, or distribution of Your modifications, or for any such Derivative Works as a whole, provided Your use, reproduction, and distribution of the Work otherwise complies with the conditions stated in this License.

5. Submission of Contributions. Unless You explicitly state otherwise, any Contribution intentionally submitted for inclusion in the Work by You to the Licensor shall be under the terms and conditions of this License, without any additional terms or conditions. Notwithstanding the above, nothing herein shall supersede or modify the terms of any separate license agreement you may have executed with Licensor regarding such Contributions.

6. Trademarks. This License does not grant permission to use the trade names, trademarks, service marks, or product names of the Licensor, except as required for reasonable and customary use in describing the origin of the Work and reproducing the content of the NOTICE file.

7. Disclaimer of Warranty. Unless required by applicable law or agreed to in writing, Licensor provides the Work (and each Contributor provides its Contributions) on an AS IS BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE. You are solely responsible for determining the appropriateness of using or redistributing the Work and assume any risks associated with Your exercise of permissions under this License.

8. Limitation of Liability. In no event and under no legal theory, whether in tort (including negligence), contract, or otherwise, unless required by applicable law (such as deliberate and grossly negligent acts) or agreed to in writing, shall any Contributor be liable to You for damages, including any direct, indirect, special, incidental, or consequential damages of any character arising as a result of this License or out of the use or inability to use the Work (including but not limited to damages for loss of goodwill, work stoppage, computer failure or malfunction, or any and all other commercial damages or losses), even if such Contributor has been advised of the possibility of such damages.

9. Accepting Warranty or Additional Liability. While redistributing the Work or Derivative Works thereof, You may choose to offer, and charge a fee for, acceptance of support, warranty, indemnity, or other liability obligations and/or rights consistent with this License. However, in accepting such obligations, You may act only on Your own behalf and on Your sole responsibility, not on behalf of any other Contributor, and only if You agree to indemnify, defend, and hold each Contributor harmless for any liability incurred by, or claims asserted against, such Contributor by reason of your accepting any such warranty or additional liability.

How to Apply the License to your Work

To apply the ImageMagick License to your work, attach the following boilerplate notice, with the fields enclosed by brackets "[]" replaced with your own identifying information (don't include the brackets). The text should be enclosed in the appropriate comment syntax for the file format. We also recommend that a file or class name and description of purpose be included on the same "printed page" as the copyright notice for easier identification within third-party archives.

   Copyright [yyyy] [name of copyright owner]

   Licensed under the ImageMagick License (the "License"); you may not use
   this file except in compliance with the License.  You may obtain a copy
   of the License at

     https://www.imagemagick.org/script/license.php

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
   WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
   License for the specific language governing permissions and limitations
   under the License.


License for Ghostscript 9.20 for Windows (32 bit)
-------------------------------------------------

  GhostPDL and GPL Ghostscript are free software; you can redistribute
  and/or modify them under the terms of the GNU General Public License
  as published by the Free Software Foundation, either version 3 of
  the License, or (at your option) any later version.

  GhostPDL and GPL Ghostscript are distributed in the hope that they
  will be useful, but WITHOUT ANY WARRANTY; without even the implied
  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program so you can know your rights and responsibilities.
  It should be in a file named COPYING. If not, write to the
  Free Software Foundation, Inc., 59 Temple Place Suite 330, Boston, MA
  02111-1307, USA.

 ---

  The set of truetype fonts in the urwfonts directory are necessary for
  the PCL/XL interpreter to function properly but they ARE NOT FREE
  SOFTWARE and are NOT distributed under the GNU GPL. They can instead
  be redistributed under the AFPL licence which bars commercial use.

  If your copy of GhostPDL includes these fonts, you should have
  received a copy of the the Aladdin Free Pubilc License, usually
  in a file called COPYING.AFPL. If not, please contact Artifex
  Software, Inc. 7 Mt. Lassen Drive, Suite A-134, San Rafael CA
  94903 USA, or visit http://www.artifex.com/

 ---

  This software (GhostPDL and GPL Ghostscript) contains
  an implementation of techniques covered by US Patents 5,055,942
  and 5,917,614, and corresponding international patents. These
  patents are licensed for use with this software under the following
  grant:

  Whereas, Raph Levien (hereinafter "Inventor") has obtained patent
  protection for related technology (hereinafter "Patented
  Technology"), Inventor wishes to aid the the GNU Free Software
  project in achieving its goals, and Inventor also wishes to
  increase public awareness of Patented Technology, Inventor hereby
  grants a fully paid up, nonexclusive, royalty free license to
  practice the patents listed below ("the Patents") if and only if
  practiced in conjunction with software distributed under the
  terms of any version of the GNU General Public License as
  published by the Free Software Foundation, 59 Temple Place, Suite
  330, Boston, MA 02111. Inventor reserves all other rights,
  including without limitation, licensing for software not
  distributed under the GNU General Public License.

   5055942 Photographic image reproduction device using digital
           halftoning to screen images allowing adjustable coarseness

   5917614 Method and apparatus for error diffusion screening of
           images with improved smoothness in highlight and shadow
           regions

