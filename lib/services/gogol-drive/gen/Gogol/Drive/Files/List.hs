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
-- Module      : Gogol.Drive.Files.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s files. This method accepts the @q@ parameter, which is a search query combining one or more search terms. For more information, see the </drive/api/guides/search-files Search for files & folders> guide. /Note:/ This method returns /all/ files by default, including trashed files. If you don\'t want trashed files to appear in the list, use the @trashed=false@ query parameter to remove trashed files from the results.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.list@.
module Gogol.Drive.Files.List
  ( -- * Resource
    DriveFilesListResource,

    -- ** Constructing a Request
    DriveFilesList (..),
    newDriveFilesList,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.files.list@ method which the
-- 'DriveFilesList' request conforms to.
type DriveFilesListResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "corpora" Core.Text
    Core.:> Core.QueryParam "corpus" FilesListCorpus
    Core.:> Core.QueryParam "driveId" Core.Text
    Core.:> Core.QueryParam "includeItemsFromAllDrives" Core.Bool
    Core.:> Core.QueryParam "includeLabels" Core.Text
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "includeTeamDriveItems" Core.Bool
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "spaces" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "teamDriveId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FileList

-- | Lists the user\'s files. This method accepts the @q@ parameter, which is a search query combining one or more search terms. For more information, see the </drive/api/guides/search-files Search for files & folders> guide. /Note:/ This method returns /all/ files by default, including trashed files. If you don\'t want trashed files to appear in the list, use the @trashed=false@ query parameter to remove trashed files from the results.
--
-- /See:/ 'newDriveFilesList' smart constructor.
data DriveFilesList = DriveFilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Bodies of items (files\/documents) to which the query applies. Supported bodies are \'user\', \'domain\', \'drive\', and \'allDrives\'. Prefer \'user\' or \'drive\' to \'allDrives\' for efficiency. By default, corpora is set to \'user\'. However, this can change depending on the filter set through the \'q\' parameter.
    corpora :: (Core.Maybe Core.Text),
    -- | Deprecated: The source of files to list. Use \'corpora\' instead.
    corpus :: (Core.Maybe FilesListCorpus),
    -- | ID of the shared drive to search.
    driveId :: (Core.Maybe Core.Text),
    -- | Whether both My Drive and shared drive items should be included in results.
    includeItemsFromAllDrives :: Core.Bool,
    -- | A comma-separated list of IDs of labels to include in the @labelInfo@ part of the response.
    includeLabels :: (Core.Maybe Core.Text),
    -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    includePermissionsForView :: (Core.Maybe Core.Text),
    -- | Deprecated: Use @includeItemsFromAllDrives@ instead.
    includeTeamDriveItems :: Core.Bool,
    -- | A comma-separated list of sort keys. Valid keys are: * @createdTime@: When the file was created. * @folder@: The folder ID. This field is sorted using alphabetical ordering. * @modifiedByMeTime@: The last time the file was modified by the user. * @modifiedTime@: The last time the file was modified by anyone. * @name@: The name of the file. This field is sorted using alphabetical ordering, so 1, 12, 2, 22. * @name_natural@: The name of the file. This field is sorted using natural sort ordering, so 1, 2, 12, 22. * @quotaBytesUsed@: The number of storage quota bytes used by the file. * @recency@: The most recent timestamp from the file\'s date-time fields. * @sharedWithMeTime@: When the file was shared with the user, if applicable. * @starred@: Whether the user has starred the file. * @viewedByMeTime@: The last time the file was viewed by the user. Each key sorts ascending by default, but can be reversed with the \'desc\' modifier. Example usage: @?orderBy=folder,modifiedTime desc,name@.
    orderBy :: (Core.Maybe Core.Text),
    -- | The maximum number of files to return per page. Partial or empty result pages are possible even before the end of the files list has been reached.
    pageSize :: Core.Int32,
    -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | A query for filtering the file results. See the \"Search for files & folders\" guide for supported syntax.
    q :: (Core.Maybe Core.Text),
    -- | A comma-separated list of spaces to query within the corpora. Supported values are \'drive\' and \'appDataFolder\'.
    spaces :: Core.Text,
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated: Use @supportsAllDrives@ instead.
    supportsTeamDrives :: Core.Bool,
    -- | Deprecated: Use @driveId@ instead.
    teamDriveId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesList' with the minimum fields required to make a request.
newDriveFilesList ::
  DriveFilesList
newDriveFilesList =
  DriveFilesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      corpora = Core.Nothing,
      corpus = Core.Nothing,
      driveId = Core.Nothing,
      includeItemsFromAllDrives = Core.False,
      includeLabels = Core.Nothing,
      includePermissionsForView = Core.Nothing,
      includeTeamDriveItems = Core.False,
      orderBy = Core.Nothing,
      pageSize = 100,
      pageToken = Core.Nothing,
      q = Core.Nothing,
      spaces = "drive",
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      teamDriveId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesList where
  type Rs DriveFilesList = FileList
  type
    Scopes DriveFilesList =
      '[ Drive'FullControl,
         Drive'Appdata,
         Drive'File,
         Drive'Meet'Readonly,
         Drive'Metadata,
         Drive'Metadata'Readonly,
         Drive'Photos'Readonly,
         Drive'Readonly
       ]
  requestClient DriveFilesList {..} =
    go
      xgafv
      accessToken
      callback
      corpora
      corpus
      driveId
      (Core.Just includeItemsFromAllDrives)
      includeLabels
      includePermissionsForView
      (Core.Just includeTeamDriveItems)
      orderBy
      (Core.Just pageSize)
      pageToken
      q
      (Core.Just spaces)
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      teamDriveId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesListResource)
          Core.mempty
