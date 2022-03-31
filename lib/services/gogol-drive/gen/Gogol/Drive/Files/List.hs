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
-- Module      : Gogol.Drive.Files.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists or searches files.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.list@.
module Gogol.Drive.Files.List
  ( -- * Resource
    DriveFilesListResource,

    -- ** Constructing a Request
    newDriveFilesList,
    DriveFilesList,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.files.list@ method which the
-- 'DriveFilesList' request conforms to.
type DriveFilesListResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.QueryParam "corpora" Core.Text
    Core.:> Core.QueryParam "corpus" FilesListCorpus
    Core.:> Core.QueryParam "driveId" Core.Text
    Core.:> Core.QueryParam "includeItemsFromAllDrives" Core.Bool
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "includeTeamDriveItems" Core.Bool
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "spaces" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam
              "supportsTeamDrives"
              Core.Bool
    Core.:> Core.QueryParam "teamDriveId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FileList

-- | Lists or searches files.
--
-- /See:/ 'newDriveFilesList' smart constructor.
data DriveFilesList = DriveFilesList
  { -- | Groupings of files to which the query applies. Supported groupings are: \'user\' (files created by, opened by, or shared directly with the user), \'drive\' (files in the specified shared drive as indicated by the \'driveId\'), \'domain\' (files shared to the user\'s domain), and \'allDrives\' (A combination of \'user\' and \'drive\' for all drives where the user is a member). When able, use \'user\' or \'drive\', instead of \'allDrives\', for efficiency.
    corpora :: (Core.Maybe Core.Text),
    -- | The source of files to list. Deprecated: use \'corpora\' instead.
    corpus :: (Core.Maybe FilesListCorpus),
    -- | ID of the shared drive to search.
    driveId :: (Core.Maybe Core.Text),
    -- | Whether both My Drive and shared drive items should be included in results.
    includeItemsFromAllDrives :: Core.Bool,
    -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    includePermissionsForView :: (Core.Maybe Core.Text),
    -- | Deprecated use includeItemsFromAllDrives instead.
    includeTeamDriveItems :: Core.Bool,
    -- | A comma-separated list of sort keys. Valid keys are \'createdTime\', \'folder\', \'modifiedByMeTime\', \'modifiedTime\', \'name\', \'name_natural\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeTime\', \'starred\', and \'viewedByMeTime\'. Each key sorts ascending by default, but may be reversed with the \'desc\' modifier. Example usage: ?orderBy=folder,modifiedTime desc,name. Please note that there is a current limitation for users with approximately one million files in which the requested sort order is ignored.
    orderBy :: (Core.Maybe Core.Text),
    -- | The maximum number of files to return per page. Partial or empty result pages are possible even before the end of the files list has been reached.
    pageSize :: Core.Int32,
    -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | A query for filtering the file results. See the \"Search for Files\" guide for supported syntax.
    q :: (Core.Maybe Core.Text),
    -- | A comma-separated list of spaces to query within the corpus. Supported values are \'drive\' and \'appDataFolder\'.
    spaces :: Core.Text,
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated use supportsAllDrives instead.
    supportsTeamDrives :: Core.Bool,
    -- | Deprecated use driveId instead.
    teamDriveId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesList' with the minimum fields required to make a request.
newDriveFilesList ::
  DriveFilesList
newDriveFilesList =
  DriveFilesList
    { corpora = Core.Nothing,
      corpus = Core.Nothing,
      driveId = Core.Nothing,
      includeItemsFromAllDrives = Core.False,
      includePermissionsForView = Core.Nothing,
      includeTeamDriveItems = Core.False,
      orderBy = Core.Nothing,
      pageSize = 100,
      pageToken = Core.Nothing,
      q = Core.Nothing,
      spaces = "drive",
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      teamDriveId = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesList where
  type Rs DriveFilesList = FileList
  type
    Scopes DriveFilesList =
      '[ Drive'FullControl,
         Drive'Appdata,
         Drive'File,
         Drive'Metadata,
         Drive'Metadata'Readonly,
         Drive'Photos'Readonly,
         Drive'Readonly
       ]
  requestClient DriveFilesList {..} =
    go
      corpora
      corpus
      driveId
      (Core.Just includeItemsFromAllDrives)
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
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesListResource)
          Core.mempty
