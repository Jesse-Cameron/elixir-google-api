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

defmodule GoogleApi.Blogger.V3.Model.Post do
  @moduledoc """


  ## Attributes

  - author (PostAuthor):  Defaults to: `null`.
  - blog (PostBlog):  Defaults to: `null`.
  - content (String.t): The content of the Post. May contain HTML markup. Defaults to: `null`.
  - customMetaData (String.t): The JSON meta-data for the Post. Defaults to: `null`.
  - etag (String.t): Etag of the resource. Defaults to: `null`.
  - id (String.t): The identifier of this Post. Defaults to: `null`.
  - images ([PostImages]): Display image for the Post. Defaults to: `null`.
  - kind (String.t): The kind of this entity. Always blogger#post Defaults to: `null`.
  - labels ([String.t]): The list of labels this Post was tagged with. Defaults to: `null`.
  - location (PostLocation):  Defaults to: `null`.
  - published (DateTime.t): RFC 3339 date-time when this Post was published. Defaults to: `null`.
  - readerComments (String.t): Comment control and display setting for readers of this post. Defaults to: `null`.
  - replies (PostReplies):  Defaults to: `null`.
  - selfLink (String.t): The API REST URL to fetch this resource from. Defaults to: `null`.
  - status (String.t): Status of the post. Only set for admin-level requests Defaults to: `null`.
  - title (String.t): The title of the Post. Defaults to: `null`.
  - titleLink (String.t): The title link URL, similar to atom&#39;s related link. Defaults to: `null`.
  - updated (DateTime.t): RFC 3339 date-time when this Post was last updated. Defaults to: `null`.
  - url (String.t): The URL where this Post is displayed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :author => GoogleApi.Blogger.V3.Model.PostAuthor.t(),
          :blog => GoogleApi.Blogger.V3.Model.PostBlog.t(),
          :content => any(),
          :customMetaData => any(),
          :etag => any(),
          :id => any(),
          :images => list(GoogleApi.Blogger.V3.Model.PostImages.t()),
          :kind => any(),
          :labels => list(any()),
          :location => GoogleApi.Blogger.V3.Model.PostLocation.t(),
          :published => DateTime.t(),
          :readerComments => any(),
          :replies => GoogleApi.Blogger.V3.Model.PostReplies.t(),
          :selfLink => any(),
          :status => any(),
          :title => any(),
          :titleLink => any(),
          :updated => DateTime.t(),
          :url => any()
        }

  field(:author, as: GoogleApi.Blogger.V3.Model.PostAuthor)
  field(:blog, as: GoogleApi.Blogger.V3.Model.PostBlog)
  field(:content)
  field(:customMetaData)
  field(:etag)
  field(:id)
  field(:images, as: GoogleApi.Blogger.V3.Model.PostImages, type: :list)
  field(:kind)
  field(:labels, type: :list)
  field(:location, as: GoogleApi.Blogger.V3.Model.PostLocation)
  field(:published, as: DateTime)
  field(:readerComments)
  field(:replies, as: GoogleApi.Blogger.V3.Model.PostReplies)
  field(:selfLink)
  field(:status)
  field(:title)
  field(:titleLink)
  field(:updated, as: DateTime)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.Post do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.Post.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.Post do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
