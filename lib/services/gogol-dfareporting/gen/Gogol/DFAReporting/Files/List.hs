{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DFAReporting.Files.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists files for a user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.files.list@.
module Gogol.DFAReporting.Files.List
  ( -- * Resource
    DFAReportingFilesListResource,

    -- ** Constructing a Request
    DFAReportingFilesList (..),
    newDFAReportingFilesList,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.files.list@ method which the
-- 'DFAReportingFilesList' request conforms to.
type DFAReportingFilesListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "files"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "scope" FilesListScope
    Core.:> Core.QueryParam "sortField" FilesListSortField
    Core.:> Core.QueryParam "sortOrder" FilesListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FileList

-- | Lists files for a user profile.
--
-- /See:/ 'newDFAReportingFilesList' smart constructor.
data DFAReportingFilesList = DFAReportingFilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | The value of the nextToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | The Campaign Manager 360 user profile ID.
    profileId :: Core.Int64,
    -- | The scope that defines which results are returned.
    scope :: FilesListScope,
    -- | The field by which to sort the list.
    sortField :: FilesListSortField,
    -- | Order of sorted results.
    sortOrder :: FilesListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingFilesList' with the minimum fields required to make a request.
newDFAReportingFilesList ::
  -- |  The Campaign Manager 360 user profile ID. See 'profileId'.
  Core.Int64 ->
  DFAReportingFilesList
newDFAReportingFilesList profileId =
  DFAReportingFilesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = 10,
      pageToken = Core.Nothing,
      profileId = profileId,
      scope = FilesListScope_Mine,
      sortField = FilesListSortField_LASTMODIFIEDTIME,
      sortOrder = FilesListSortOrder_Descending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingFilesList where
  type Rs DFAReportingFilesList = FileList
  type Scopes DFAReportingFilesList = '[Dfareporting'FullControl]
  requestClient DFAReportingFilesList {..} =
    go
      profileId
      xgafv
      accessToken
      callback
      (Core.Just maxResults)
      pageToken
      (Core.Just scope)
      (Core.Just sortField)
      (Core.Just sortOrder)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DFAReportingFilesListResource)
          Core.mempty
