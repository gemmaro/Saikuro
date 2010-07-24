# Saikruo uses the BSD license.
#
# Copyright (c) 2005, Ubiquitous Business Technology (http://ubit.com)
# Copyright (c) 2010, Morton Jonuschat (http://www.github.com/yabawock)
# Copyright (c) 2010, Antoine Toulme (http://www.lunar-ocean.com)
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
#
#    * Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#
#    * Redistributions in binary form must reproduce the above
#      copyright notice, this list of conditions and the following
#      disclaimer in the documentation and/or other materials provided
#      with the distribution.
#
#    * Neither the name of Ubiquitous Business Technology nor the names
#      of its contributors may be used to endorse or promote products
#      derived from this software without specific prior written
#      permission.
#
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

spec = Gem::Specification.new do |s|
  s.name = "atoulme-Saikuro"
  s.version = "1.2.1"
  s.author = "Zev Blut, Morton Jonuschat, Antoine Toulme"
  s.email = "antoine@lunar-ocean.com"
  s.homepage = "http://www.github.com/atoulme/Saikuro"
  s.summary = "Saikuro is a Ruby cyclomatic complexity analyzer.  When given Ruby
  source code Saikuro will generate a report listing the cyclomatic
  complexity of each method found.  In addition, Saikuro counts the
  number of lines per method and can generate a listing of the number of
  tokens on each line of code."
  candidates = Dir.glob("{bin,lib,tests}/**/*")
  s.files = candidates.delete_if do |item|
    item.include?(".svn") || item.include?("rdoc")
  end
  s.executables = ['saikuro']
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc"]
  s.require_paths  = 'lib'
end
