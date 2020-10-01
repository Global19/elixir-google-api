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

defmodule GoogleApi.Compute.V1.Model.HttpRouteRule do
  @moduledoc """
  An HttpRouteRule specifies how to match an HTTP request and the corresponding routing action that load balancing proxies will perform.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The short description conveying the intent of this routeRule.
      The description can have a maximum length of 1024 characters.
  *   `headerAction` (*type:* `GoogleApi.Compute.V1.Model.HttpHeaderAction.t`, *default:* `nil`) - Specifies changes to request and response headers that need to take effect for the selected backendService.
      The headerAction specified here are applied before the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].routeAction.weightedBackendService.backendServiceWeightAction[].headerAction 
      Note that headerAction is not supported for Loadbalancers that have their loadBalancingScheme set to EXTERNAL.
      Not supported when the URL map is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `matchRules` (*type:* `list(GoogleApi.Compute.V1.Model.HttpRouteRuleMatch.t)`, *default:* `nil`) - The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - For routeRules within a given pathMatcher, priority determines the order in which load balancer will interpret routeRules. RouteRules are evaluated in order of priority, from the lowest to highest number. The priority of a rule decreases as its number increases (1, 2, 3, N+1). The first rule that matches the request is applied.
      You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number between 0 and 2147483647 inclusive.
      Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  *   `routeAction` (*type:* `GoogleApi.Compute.V1.Model.HttpRouteAction.t`, *default:* `nil`) - In response to a matching matchRule, the load balancer performs advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend. If  routeAction specifies any  weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any  weightedBackendServices.
      Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
      UrlMaps for external HTTP(S) load balancers support only the urlRewrite action within a routeRule's routeAction.
  *   `service` (*type:* `String.t`, *default:* `nil`) - The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is additionally specified, advanced routing actions like URL Rewrites, etc. take effect prior to sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendService s. Conversely, if routeAction specifies any  weightedBackendServices, service must not be specified.
      Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  *   `urlRedirect` (*type:* `GoogleApi.Compute.V1.Model.HttpRedirectAction.t`, *default:* `nil`) - When this rule is matched, the request is redirected to a URL specified by urlRedirect.
      If urlRedirect is specified, service or routeAction must not be set.
      Not supported when the URL map is bound to target gRPC proxy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :headerAction => GoogleApi.Compute.V1.Model.HttpHeaderAction.t(),
          :matchRules => list(GoogleApi.Compute.V1.Model.HttpRouteRuleMatch.t()),
          :priority => integer(),
          :routeAction => GoogleApi.Compute.V1.Model.HttpRouteAction.t(),
          :service => String.t(),
          :urlRedirect => GoogleApi.Compute.V1.Model.HttpRedirectAction.t()
        }

  field(:description)
  field(:headerAction, as: GoogleApi.Compute.V1.Model.HttpHeaderAction)
  field(:matchRules, as: GoogleApi.Compute.V1.Model.HttpRouteRuleMatch, type: :list)
  field(:priority)
  field(:routeAction, as: GoogleApi.Compute.V1.Model.HttpRouteAction)
  field(:service)
  field(:urlRedirect, as: GoogleApi.Compute.V1.Model.HttpRedirectAction)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpRouteRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpRouteRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpRouteRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
