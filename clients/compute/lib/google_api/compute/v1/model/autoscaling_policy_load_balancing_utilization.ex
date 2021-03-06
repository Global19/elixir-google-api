# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Compute.V1.Model.AutoscalingPolicyLoadBalancingUtilization do
  @moduledoc """
  Configuration parameters of autoscaling based on load balancing.

  ## Attributes

  *   `utilizationTarget` (*type:* `float()`, *default:* `nil`) - Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that autoscaler should maintain. Must be a positive float value. If not defined, the default is 0.8.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :utilizationTarget => float()
        }

  field(:utilizationTarget)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicyLoadBalancingUtilization do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AutoscalingPolicyLoadBalancingUtilization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicyLoadBalancingUtilization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
