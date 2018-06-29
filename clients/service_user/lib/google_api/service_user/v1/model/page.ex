# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceUser.V1.Model.Page do
  @moduledoc """
  Represents a documentation page. A page can contain subpages to represent nested documentation set structure.

  ## Attributes

  - content (String.t): The Markdown content of the page. You can use &lt;code&gt;&amp;#40;&#x3D;&#x3D; include {path} &#x3D;&#x3D;&amp;#41;&lt;/code&gt; to include content from a Markdown file. Defaults to: `null`.
  - name (String.t): The name of the page. It will be used as an identity of the page to generate URI of the page, text of the link to this page in navigation, etc. The full page name (start from the root page name to this page concatenated with &#x60;.&#x60;) can be used as reference to the page in your documentation. For example: &lt;pre&gt;&lt;code&gt;pages: - name: Tutorial   content: &amp;#40;&#x3D;&#x3D; include tutorial.md &#x3D;&#x3D;&amp;#41;   subpages:   - name: Java     content: &amp;#40;&#x3D;&#x3D; include tutorial_java.md &#x3D;&#x3D;&amp;#41; &lt;/code&gt;&lt;/pre&gt; You can reference &#x60;Java&#x60; page using Markdown reference link syntax: &#x60;Java&#x60;. Defaults to: `null`.
  - subpages ([Page]): Subpages of this page. The order of subpages specified here will be honored in the generated docset. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => any(),
          :name => any(),
          :subpages => list(GoogleApi.ServiceUser.V1.Model.Page.t())
        }

  field(:content)
  field(:name)
  field(:subpages, as: GoogleApi.ServiceUser.V1.Model.Page, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Page do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.Page.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Page do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
