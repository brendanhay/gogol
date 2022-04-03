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
-- Module      : Gogol.DFAReporting.CreativeFields.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creative fields, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFields.list@.
module Gogol.DFAReporting.CreativeFields.List
  ( -- * Resource
    DFAReportingCreativeFieldsListResource,

    -- ** Constructing a Request
    DFAReportingCreativeFieldsList (..),
    newDFAReportingCreativeFieldsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.creativeFields.list@ method which the
-- 'DFAReportingCreativeFieldsList' request conforms to.
type DFAReportingCreativeFieldsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "creativeFields"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "advertiserIds" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              CreativeFieldsListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              CreativeFieldsListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              CreativeFieldsListResponse

-- | Retrieves a list of creative fields, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingCreativeFieldsList' smart constructor.
data DFAReportingCreativeFieldsList = DFAReportingCreativeFieldsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only creative fields that belong to these advertisers.
    advertiserIds :: (Core.Maybe [Core.Int64]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only creative fields with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for creative fields by name or ID. Wildcards (/) are allowed. For example, \"creativefield/2015\" will return creative fields with names like \"creativefield June 2015\", \"creativefield April 2015\", or simply \"creativefield 2015\". Most of the searches also add wild-cards implicitly at the start and the end of the search string. For example, a search string of \"creativefield\" will match creative fields with the name \"my creativefield\", \"creativefield 2015\", or simply \"creativefield\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: CreativeFieldsListSortField,
    -- | Order of sorted results.
    sortOrder :: CreativeFieldsListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCreativeFieldsList' with the minimum fields required to make a request.
newDFAReportingCreativeFieldsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCreativeFieldsList
newDFAReportingCreativeFieldsList profileId =
  DFAReportingCreativeFieldsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserIds = Core.Nothing,
      callback = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = CreativeFieldsListSortField_ID,
      sortOrder = CreativeFieldsListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingCreativeFieldsList
  where
  type
    Rs DFAReportingCreativeFieldsList =
      CreativeFieldsListResponse
  type
    Scopes DFAReportingCreativeFieldsList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingCreativeFieldsList {..} =
    go
      profileId
      xgafv
      accessToken
      (advertiserIds Core.^. Core._Default)
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
              Core.Proxy DFAReportingCreativeFieldsListResource
          )
          Core.mempty
