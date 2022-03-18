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
-- Module      : Network.Google.DFAReporting.CreativeFieldValues.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creative field values, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFieldValues.list@.
module Network.Google.DFAReporting.CreativeFieldValues.List
  ( -- * Resource
    DFAReportingCreativeFieldValuesListResource,

    -- ** Constructing a Request
    newDFAReportingCreativeFieldValuesList,
    DFAReportingCreativeFieldValuesList,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.creativeFieldValues.list@ method which the
-- 'DFAReportingCreativeFieldValuesList' request conforms to.
type DFAReportingCreativeFieldValuesListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "creativeFields"
    Core.:> Core.Capture "creativeFieldId" Core.Int64
    Core.:> "creativeFieldValues"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              CreativeFieldValuesListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              CreativeFieldValuesListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              CreativeFieldValuesListResponse

-- | Retrieves a list of creative field values, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingCreativeFieldValuesList' smart constructor.
data DFAReportingCreativeFieldValuesList = DFAReportingCreativeFieldValuesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Creative field ID for this creative field value.
    creativeFieldId :: Core.Int64,
    -- | Select only creative field values with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for creative field values by their values. Wildcards (e.g. *) are not allowed.
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: CreativeFieldValuesListSortField,
    -- | Order of sorted results.
    sortOrder :: CreativeFieldValuesListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCreativeFieldValuesList' with the minimum fields required to make a request.
newDFAReportingCreativeFieldValuesList ::
  -- |  Creative field ID for this creative field value. See 'creativeFieldId'.
  Core.Int64 ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCreativeFieldValuesList
newDFAReportingCreativeFieldValuesList creativeFieldId profileId =
  DFAReportingCreativeFieldValuesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      creativeFieldId = creativeFieldId,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = CreativeFieldValuesListSortField_ID,
      sortOrder = CreativeFieldValuesListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingCreativeFieldValuesList
  where
  type
    Rs DFAReportingCreativeFieldValuesList =
      CreativeFieldValuesListResponse
  type
    Scopes DFAReportingCreativeFieldValuesList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient DFAReportingCreativeFieldValuesList {..} =
    go
      profileId
      creativeFieldId
      xgafv
      accessToken
      callback
      (ids Core.^. Core._Default)
      (Core.Just maxResults)
      pageToken
      searchString
      (Core.Just sortField)
      (Core.Just sortOrder)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DFAReportingCreativeFieldValuesListResource
          )
          Core.mempty
