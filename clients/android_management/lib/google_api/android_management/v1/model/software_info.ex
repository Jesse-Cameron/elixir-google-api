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

defmodule GoogleApi.AndroidManagement.V1.Model.SoftwareInfo do
  @moduledoc """
  Information about device software.

  ## Attributes

  - androidBuildNumber (String.t): Android build ID string meant for displaying to the user. For example, shamu-userdebug 6.0.1 MOB30I 2756745 dev-keys. Defaults to: `null`.
  - androidBuildTime (DateTime.t): Build time. Defaults to: `null`.
  - androidDevicePolicyVersionCode (integer()): The Android Device Policy app version code. Defaults to: `null`.
  - androidDevicePolicyVersionName (String.t): The Android Device Policy app version as displayed to the user. Defaults to: `null`.
  - androidVersion (String.t): The user-visible Android version string. For example, 6.0.1. Defaults to: `null`.
  - bootloaderVersion (String.t): The system bootloader version number, e.g. 0.6.7. Defaults to: `null`.
  - deviceBuildSignature (String.t): SHA-256 hash of android.content.pm.Signature (https://developer.android.com/reference/android/content/pm/Signature.html) associated with the system package, which can be used to verify that the system build hasn&#39;t been modified. Defaults to: `null`.
  - deviceKernelVersion (String.t): Kernel version, for example, 2.6.32.9-g103d848. Defaults to: `null`.
  - securityPatchLevel (String.t): Security patch level, e.g. 2016-05-01. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidBuildNumber => any(),
          :androidBuildTime => DateTime.t(),
          :androidDevicePolicyVersionCode => any(),
          :androidDevicePolicyVersionName => any(),
          :androidVersion => any(),
          :bootloaderVersion => any(),
          :deviceBuildSignature => any(),
          :deviceKernelVersion => any(),
          :securityPatchLevel => any()
        }

  field(:androidBuildNumber)
  field(:androidBuildTime, as: DateTime)
  field(:androidDevicePolicyVersionCode)
  field(:androidDevicePolicyVersionName)
  field(:androidVersion)
  field(:bootloaderVersion)
  field(:deviceBuildSignature)
  field(:deviceKernelVersion)
  field(:securityPatchLevel)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.SoftwareInfo do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.SoftwareInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.SoftwareInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
