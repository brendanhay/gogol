{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.RegionInstanceGroups.ListInstances
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instances in the specified instance group and displays information about the named ports. Depending on the specified options, this method can list all instances or only the instances that are running. The orderBy query parameter is not supported.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionInstanceGroups.listInstances@.
module Gogol.Compute.RegionInstanceGroups.ListInstances
  ( -- * Resource
    ComputeRegionInstanceGroupsListInstancesResource,

    -- ** Constructing a Request
    ComputeRegionInstanceGroupsListInstances (..),
    newComputeRegionInstanceGroupsListInstances,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.regionInstanceGroups.listInstances@ method which the
-- 'ComputeRegionInstanceGroupsListInstances' request conforms to.
type ComputeRegionInstanceGroupsListInstancesResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "instanceGroups"
    Core.:> Core.Capture "instanceGroup" Core.Text
    Core.:> "listInstances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "returnPartialSuccess" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RegionInstanceGroupsListInstancesRequest
    Core.:> Core.Post
              '[Core.JSON]
              RegionInstanceGroupsListInstances

-- | Lists the instances in the specified instance group and displays information about the named ports. Depending on the specified options, this method can list all instances or only the instances that are running. The orderBy query parameter is not supported.
--
-- /See:/ 'newComputeRegionInstanceGroupsListInstances' smart constructor.
data ComputeRegionInstanceGroupsListInstances = ComputeRegionInstanceGroupsListInstances
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter expression that filters resources listed in the response. Most Compute resources support two types of filter expressions: expressions that support regular expressions and expressions that follow API improvement proposal AIP-160. These two types of filter expressions cannot be mixed in one request. If you want to use AIP-160, your expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either @=@, @!=@, @>@, @\<@, @\<=@, @>=@ or @:@. For example, if you are filtering Compute Engine instances, you can exclude instances named @example-instance@ by specifying @name != example-instance@. The @:*@ comparison can be used to test whether a key has been defined. For example, to find all objects with @owner@ label use: @labels.owner:*@ You can also filter nested fields. For example, you could specify @scheduling.automaticRestart = false@ to include instances only if they are not scheduled for
    -- automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: @(scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")@ By default, each expression is an @AND@ expression. However, you can include @AND@ and @OR@ expressions explicitly. For example: @(cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel Broadwell\") AND (scheduling.automaticRestart = true)@ If you want to use a regular expression, use the @eq@ (equal) or @ne@ (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Examples: @fieldname eq unquoted literal@ @fieldname eq \'single quoted literal\'@ @fieldname eq \"double quoted literal\"@ @(fieldname1 eq literal) (fieldname2 ne \"literal\")@ The literal value is interpreted as a regular expression using Google RE2 library syntax. The literal value must match the
    -- entire field. For example, to filter for instances that do not end with name \"instance\", you would use @name ne .*instance@. You cannot combine constraints on multiple fields using regular expressions.
    filter :: (Core.Maybe Core.Text),
    -- | Name of the regional instance group for which we want to list the instances.
    instanceGroup :: Core.Text,
    -- | The maximum number of results per page that should be returned. If the number of available results is larger than @maxResults@, Compute Engine returns a @nextPageToken@ that can be used to get the next page of results in subsequent list requests. Acceptable values are @0@ to @500@, inclusive. (Default: @500@)
    maxResults :: Core.Word32,
    -- | Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using @orderBy=\"creationTimestamp desc\"@. This sorts results based on the @creationTimestamp@ field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by @name@ or @creationTimestamp desc@ is supported.
    orderBy :: (Core.Maybe Core.Text),
    -- | Specifies a page token to use. Set @pageToken@ to the @nextPageToken@ returned by a previous list request to get the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RegionInstanceGroupsListInstancesRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Opt-in for partial success behavior which provides partial results in case of failure. The default value is false. For example, when partial success behavior is enabled, aggregatedList for a single zone scope either returns all resources in the zone or no resources, with an error code.
    returnPartialSuccess :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionInstanceGroupsListInstances' with the minimum fields required to make a request.
newComputeRegionInstanceGroupsListInstances ::
  -- |  Name of the regional instance group for which we want to list the instances. See 'instanceGroup'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RegionInstanceGroupsListInstancesRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  ComputeRegionInstanceGroupsListInstances
newComputeRegionInstanceGroupsListInstances
  instanceGroup
  payload
  project
  region =
    ComputeRegionInstanceGroupsListInstances
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        filter = Core.Nothing,
        instanceGroup = instanceGroup,
        maxResults = 500,
        orderBy = Core.Nothing,
        pageToken = Core.Nothing,
        payload = payload,
        project = project,
        region = region,
        returnPartialSuccess = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComputeRegionInstanceGroupsListInstances
  where
  type
    Rs ComputeRegionInstanceGroupsListInstances =
      RegionInstanceGroupsListInstances
  type
    Scopes ComputeRegionInstanceGroupsListInstances =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeRegionInstanceGroupsListInstances {..} =
    go
      project
      region
      instanceGroup
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
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeRegionInstanceGroupsListInstancesResource
          )
          Core.mempty
