# This Docker repository is deprecated and will be removed on September 1, 2022. Please see  for the new docker repo.

# [OLD] Official MiXCR Docker image 

Run as:

```
docker run -it --rm \
    -m 4g \
    -v /path/to/data:/work \
    milaboratory/mixcr:latest \
    mixcr align test_R1.fastq.gz test_R2.fastq.gz test.vdjca
```

## Memory

This image does not require manual memory setting (`-Xmx...` option), if container memory limit is specified it will be automatically detected by JVM. 

## Tags

See [DockerHub page](https://hub.docker.com/r/milaboratory/mixcr) for available tags.

All images ending with `-imgt` (e.g. `3.0.11-imgt`) contain IMGT reference in the library folder (see license note below).

## License for IMGT image

Images with IMGT reference library contain data imported from IMGT and is subject to terms of use listed on http://www.imgt.org site.

Data coming from IMGT server may be used for academic research only, provided that it is referred to IMGT&reg;, and cited as "IMGT&reg;, the international ImMunoGeneTics information system&reg; http://www.imgt.org (founder and director: Marie-Paule Lefranc, Montpellier, France)."

References to cite: Lefranc, M.-P. et al., Nucleic Acids Research, 27, 209-212 (1999) Cover of NAR; Ruiz, M. et al., Nucleic Acids Research, 28, 219-221 (2000); Lefranc, M.-P., Nucleic Acids Research, 29, 207-209 (2001); Lefranc, M.-P., Nucleic Acids Res., 31, 307-310 (2003); Lefranc, M.-P. et al., In Silico Biol., 5, 0006 (2004) [Epub], 5, 45-60 (2005); Lefranc, M.-P. et al., Nucleic Acids Res., 33, D593-D597 (2005) Full text, Lefranc, M.-P. et al., Nucleic Acids Research 2009 37(Database issue): D1006-D1012; doi:10.1093/nar/gkn838 Full text.

Import scripts are available under the terms of the MIT License.

THE SOFTWARE AND DATA IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## License

Copyright (c) 2014-2019, Bolotin Dmitry, Chudakov Dmitry, Shugay Mikhail
(here and after addressed as Inventors)
All Rights Reserved

Permission to use, copy, modify and distribute any part of this program for
educational, research and non-profit purposes, by non-profit institutions
only, without fee, and without a written agreement is hereby granted,
provided that the above copyright notice, this paragraph and the following
three paragraphs appear in all copies.

Those desiring to incorporate this work into commercial products or use for
commercial purposes should contact MiLaboratory LLC, which owns exclusive
rights for distribution of this program for commercial purposes, using the
following email address: licensing@milaboratory.com.

IN NO EVENT SHALL THE INVENTORS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,
SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS,
ARISING OUT OF THE USE OF THIS SOFTWARE, EVEN IF THE INVENTORS HAS BEEN
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

THE SOFTWARE PROVIDED HEREIN IS ON AN "AS IS" BASIS, AND THE INVENTORS HAS
NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR
MODIFICATIONS. THE INVENTORS MAKES NO REPRESENTATIONS AND EXTENDS NO
WARRANTIES OF ANY KIND, EITHER IMPLIED OR EXPRESS, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A
PARTICULAR PURPOSE, OR THAT THE USE OF THE SOFTWARE WILL NOT INFRINGE ANY
PATENT, TRADEMARK OR OTHER RIGHTS.
