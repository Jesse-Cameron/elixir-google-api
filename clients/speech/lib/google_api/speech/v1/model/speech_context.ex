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

defmodule GoogleApi.Speech.V1.Model.SpeechContext do
  @moduledoc """
  Provides \&quot;hints\&quot; to the speech recognizer to favor specific words and phrases in the results.

  ## Attributes

  - phrases ([String.t]): *Optional* A list of strings containing words and phrases \&quot;hints\&quot; so that the speech recognition is more likely to recognize them. This can be used to improve the accuracy for specific words and phrases, for example, if specific commands are typically spoken by the user. This can also be used to add additional words to the vocabulary of the recognizer. See [usage limits](https://cloud.google.com/speech/limits#content). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :phrases => list(any())
        }

  field(:phrases, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.SpeechContext do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.SpeechContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.SpeechContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
