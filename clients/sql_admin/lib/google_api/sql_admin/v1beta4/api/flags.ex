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

defmodule GoogleApi.SQLAdmin.V1beta4.Api.Flags do
  @moduledoc """
  API calls for all endpoints tagged `Flags`.
  """

  alias GoogleApi.SQLAdmin.V1beta4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  List all available database flags for Google Cloud SQL instances.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :databaseVersion (String.t): Database version for flag retrieval. Flags are specific to the database version.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.FlagsListResponse{}} on success
  {:error, info} on failure
  """
  @spec sql_flags_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.FlagsListResponse.t()} | {:error, Tesla.Env.t()}
  def sql_flags_list(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :databaseVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/flags")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.SQLAdmin.V1beta4.Model.FlagsListResponse{})
  end
end
