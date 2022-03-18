{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Compute.SecurityPolicies.ListPreconfiguredExpressionSets
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current list of preconfigured Web Application Firewall (WAF) expressions.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.securityPolicies.listPreconfiguredExpressionSets@.
module Network.Google.Compute.SecurityPolicies.ListPreconfiguredExpressionSets
  ( -- * Resource
    ComputeSecurityPoliciesListPreconfiguredExpressionSetsResource,

    -- ** Constructing a Request
    newComputeSecurityPoliciesListPreconfiguredExpressionSets,
    ComputeSecurityPoliciesListPreconfiguredExpressionSets,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.securityPolicies.listPreconfiguredExpressionSets@ method which the
-- 'ComputeSecurityPoliciesListPreconfiguredExpressionSets' request conforms to.
type ComputeSecurityPoliciesListPreconfiguredExpressionSetsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "securityPolicies"
    Core.:> "listPreconfiguredExpressionSets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "returnPartialSuccess"
              Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              SecurityPoliciesListPreconfiguredExpressionSetsResponse

-- | Gets the current list of preconfigured Web Application Firewall (WAF) expressions.
--
-- /See:/ 'newComputeSecurityPoliciesListPreconfiguredExpressionSets' smart constructor.
data ComputeSecurityPoliciesListPreconfiguredExpressionSets = ComputeSecurityPoliciesListPreconfiguredExpressionSets
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter expression that filters resources listed in the response. The expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either @=@, @!=@, @>@, @\<@, @\<=@, @>=@ or @:@. For example, if you are filtering Compute Engine instances, you can exclude instances named @example-instance@ by specifying @name != example-instance@. The @:@ operator can be used with string fields to match substrings. For non-string fields it is equivalent to the @=@ operator. The @:*@ comparison can be used to test whether a key has been defined. For example, to find all objects with @owner@ label use: @labels.owner:*@ You can also filter nested fields. For example, you could specify @scheduling.automaticRestart = false@ to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide
    -- each separate expression within parentheses. For example: @(scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")@ By default, each expression is an @AND@ expression. However, you can include @AND@ and @OR@ expressions explicitly. For example: @(cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel Broadwell\") AND (scheduling.automaticRestart = true)@
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of results per page that should be returned. If the number of available results is larger than @maxResults@, Compute Engine returns a @nextPageToken@ that can be used to get the next page of results in subsequent list requests. Acceptable values are @0@ to @500@, inclusive. (Default: @500@)
    maxResults :: Core.Word32,
    -- | Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using @orderBy=\"creationTimestamp desc\"@. This sorts results based on the @creationTimestamp@ field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by @name@ or @creationTimestamp desc@ is supported.
    orderBy :: (Core.Maybe Core.Text),
    -- | Specifies a page token to use. Set @pageToken@ to the @nextPageToken@ returned by a previous list request to get the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Opt-in for partial success behavior which provides partial results in case of failure. The default value is false.
    returnPartialSuccess :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeSecurityPoliciesListPreconfiguredExpressionSets' with the minimum fields required to make a request.
newComputeSecurityPoliciesListPreconfiguredExpressionSets ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeSecurityPoliciesListPreconfiguredExpressionSets
newComputeSecurityPoliciesListPreconfiguredExpressionSets project =
  ComputeSecurityPoliciesListPreconfiguredExpressionSets
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      maxResults = 500,
      orderBy = Core.Nothing,
      pageToken = Core.Nothing,
      project = project,
      returnPartialSuccess = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeSecurityPoliciesListPreconfiguredExpressionSets
  where
  type
    Rs
      ComputeSecurityPoliciesListPreconfiguredExpressionSets =
      SecurityPoliciesListPreconfiguredExpressionSetsResponse
  type
    Scopes
      ComputeSecurityPoliciesListPreconfiguredExpressionSets =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly"
       ]
  requestClient
    ComputeSecurityPoliciesListPreconfiguredExpressionSets {..} =
      go
        project
        xgafv
        accessToken
        callback
        filter
        (Core.Just maxResults)
        orderBy
        pageToken
        returnPartialSuccess
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeSecurityPoliciesListPreconfiguredExpressionSetsResource
            )
            Core.mempty
