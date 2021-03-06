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

defmodule GoogleApi.Slides.V1.Model.ColorStop do
  @moduledoc """
  A color and position in a gradient band.

  ## Attributes

  - alpha (float()): The alpha value of this color in the gradient band. Defaults to 1.0, fully opaque. Defaults to: `null`.
  - color (OpaqueColor): The color of the gradient stop. Defaults to: `null`.
  - position (float()): The relative position of the color stop in the gradient band measured in percentage. The value should be in the interval [0.0, 1.0]. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alpha => any(),
          :color => GoogleApi.Slides.V1.Model.OpaqueColor.t(),
          :position => any()
        }

  field(:alpha)
  field(:color, as: GoogleApi.Slides.V1.Model.OpaqueColor)
  field(:position)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ColorStop do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.ColorStop.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.ColorStop do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
