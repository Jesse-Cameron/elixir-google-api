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

defmodule GoogleApi.ServiceUser.V1.Model.Authentication do
  @moduledoc """
  &#x60;Authentication&#x60; defines the authentication configuration for an API.  Example for an API targeted for external use:      name: calendar.googleapis.com     authentication:       providers:       - id: google_calendar_auth         jwks_uri: https://www.googleapis.com/oauth2/v1/certs         issuer: https://securetoken.google.com       rules:       - selector: \&quot;*\&quot;         requirements:           provider_id: google_calendar_auth

  ## Attributes

  - providers ([AuthProvider]): Defines a set of authentication providers that a service supports. Defaults to: `null`.
  - rules ([AuthenticationRule]): A list of authentication rules that apply to individual API methods.  **NOTE:** All service configuration rules follow \&quot;last one wins\&quot; order. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :providers => list(GoogleApi.ServiceUser.V1.Model.AuthProvider.t()),
          :rules => list(GoogleApi.ServiceUser.V1.Model.AuthenticationRule.t())
        }

  field(:providers, as: GoogleApi.ServiceUser.V1.Model.AuthProvider, type: :list)
  field(:rules, as: GoogleApi.ServiceUser.V1.Model.AuthenticationRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Authentication do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.Authentication.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Authentication do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
