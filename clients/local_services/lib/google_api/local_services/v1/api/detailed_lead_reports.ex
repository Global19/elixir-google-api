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

defmodule GoogleApi.LocalServices.V1.Api.DetailedLeadReports do
  @moduledoc """
  API calls for all endpoints tagged `DetailedLeadReports`.
  """

  alias GoogleApi.LocalServices.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Get detailed lead reports containing leads that have been received by all linked GLS accounts. Caller needs to provide their manager customer id and the associated auth credential that allows them read permissions on their linked accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.LocalServices.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:"endDate.day"` (*type:* `integer()`) - Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a year by itself or a year and month where the day is not significant.
      *   `:"endDate.month"` (*type:* `integer()`) - Month of year. Must be from 1 to 12, or 0 if specifying a year without a month and day.
      *   `:"endDate.year"` (*type:* `integer()`) - Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of accounts to return. If the page size is unset, page size will default to 1000. Maximum page_size is 10000. Optional.
      *   `:pageToken` (*type:* `String.t`) - The `next_page_token` value returned from a previous request to SearchDetailedLeadReports that indicates where listing should continue. Optional.
      *   `:query` (*type:* `String.t`) - A query string for searching for account reports. Caller must provide a customer id of their MCC account with an associated Gaia Mint that allows read permission on their linked accounts. Search expressions are case insensitive. Example query: | Query | Description | |-------------------------|-----------------------------------------------| | manager_customer_id:123 | Get Detailed Lead Report for Manager with id | | | 123. | Required.
      *   `:"startDate.day"` (*type:* `integer()`) - Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a year by itself or a year and month where the day is not significant.
      *   `:"startDate.month"` (*type:* `integer()`) - Month of year. Must be from 1 to 12, or 0 if specifying a year without a month and day.
      *   `:"startDate.year"` (*type:* `integer()`) - Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec localservices_detailed_lead_reports_search(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok,
           GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def localservices_detailed_lead_reports_search(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :"endDate.day" => :query,
      :"endDate.month" => :query,
      :"endDate.year" => :query,
      :pageSize => :query,
      :pageToken => :query,
      :query => :query,
      :"startDate.day" => :query,
      :"startDate.month" => :query,
      :"startDate.year" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/detailedLeadReports:search", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse{}
        ]
    )
  end
end
