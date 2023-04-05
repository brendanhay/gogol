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
-- Module      : Gogol.DFAReporting.ContentCategories.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of content categories, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.contentCategories.list@.
module Gogol.DFAReporting.ContentCategories.List
  ( -- * Resource
    DFAReportingContentCategoriesListResource,

    -- ** Constructing a Request
    DFAReportingContentCategoriesList (..),
    newDFAReportingContentCategoriesList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.contentCategories.list@ method which the
-- 'DFAReportingContentCategoriesList' request conforms to.
type DFAReportingContentCategoriesListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "contentCategories"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              ContentCategoriesListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              ContentCategoriesListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ContentCategoriesListResponse

-- | Retrieves a list of content categories, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingContentCategoriesList' smart constructor.
data DFAReportingContentCategoriesList = DFAReportingContentCategoriesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only content categories with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"contentcategory/2015\" will return objects with names like \"contentcategory June 2015\", \"contentcategory April 2015\", or simply \"contentcategory 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"contentcategory\" will match objects with name \"my contentcategory\", \"contentcategory 2015\", or simply \"contentcategory\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: ContentCategoriesListSortField,
    -- | Order of sorted results.
    sortOrder :: ContentCategoriesListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingContentCategoriesList' with the minimum fields required to make a request.
newDFAReportingContentCategoriesList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingContentCategoriesList
newDFAReportingContentCategoriesList profileId =
  DFAReportingContentCategoriesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = ContentCategoriesListSortField_ID,
      sortOrder = ContentCategoriesListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingContentCategoriesList
  where
  type
    Rs DFAReportingContentCategoriesList =
      ContentCategoriesListResponse
  type
    Scopes DFAReportingContentCategoriesList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingContentCategoriesList {..} =
    go
      profileId
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
              Core.Proxy DFAReportingContentCategoriesListResource
          )
          Core.mempty
