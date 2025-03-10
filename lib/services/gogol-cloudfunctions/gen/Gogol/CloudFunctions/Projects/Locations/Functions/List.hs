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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of functions that belong to the requested project.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.list@.
module Gogol.CloudFunctions.Projects.Locations.Functions.List
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsListResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsFunctionsList (..),
    newCloudFunctionsProjectsLocationsFunctionsList,
  )
where

import Gogol.CloudFunctions.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.list@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsList' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "functions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListFunctionsResponse

-- | Returns a list of functions that belong to the requested project.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsList' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsList = CloudFunctionsProjectsLocationsFunctionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The filter for Functions that match the filter expression, following the syntax outlined in https:\/\/google.aip.dev\/160.
    filter :: (Core.Maybe Core.Text),
    -- | The sorting order of the resources returned. Value should be a comma separated list of fields. The default sorting order is ascending. See https:\/\/google.aip.dev\/132#ordering.
    orderBy :: (Core.Maybe Core.Text),
    -- | Maximum number of functions to return per call. The largest allowed page/size is 1,000, if the page/size is omitted or specified as greater than 1,000 then it will be replaced as 1,000. The size of the list response can be less than specified when used with filters.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @ListFunctionsResponse@; indicates that this is a continuation of a prior @ListFunctions@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The project and location from which the function should be listed, specified in the format @projects\/*\/locations\/*@ If you want to list functions in all locations, use \"-\" in place of a location. When listing functions in all locations, if one or more location(s) are unreachable, the response will contain functions from all reachable locations along with the names of any unreachable locations.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsList' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsList ::
  -- |  Required. The project and location from which the function should be listed, specified in the format @projects\/*\/locations\/*@ If you want to list functions in all locations, use \"-\" in place of a location. When listing functions in all locations, if one or more location(s) are unreachable, the response will contain functions from all reachable locations along with the names of any unreachable locations. See 'parent'.
  Core.Text ->
  CloudFunctionsProjectsLocationsFunctionsList
newCloudFunctionsProjectsLocationsFunctionsList parent =
  CloudFunctionsProjectsLocationsFunctionsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudFunctionsProjectsLocationsFunctionsList
  where
  type
    Rs CloudFunctionsProjectsLocationsFunctionsList =
      ListFunctionsResponse
  type
    Scopes CloudFunctionsProjectsLocationsFunctionsList =
      '[CloudPlatform'FullControl]
  requestClient CloudFunctionsProjectsLocationsFunctionsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudFunctionsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudFunctionsProjectsLocationsFunctionsListResource
          )
          Core.mempty
