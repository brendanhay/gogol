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
-- Module      : Gogol.Drive.Revisions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s revisions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.list@.
module Gogol.Drive.Revisions.List
  ( -- * Resource
    DriveRevisionsListResource,

    -- ** Constructing a Request
    newDriveRevisionsList,
    DriveRevisionsList,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.revisions.list@ method which the
-- 'DriveRevisionsList' request conforms to.
type DriveRevisionsListResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "revisions"
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RevisionList

-- | Lists a file\'s revisions.
--
-- /See:/ 'newDriveRevisionsList' smart constructor.
data DriveRevisionsList = DriveRevisionsList
  { -- | The ID of the file.
    fileId :: Core.Text,
    -- | The maximum number of revisions to return per page.
    pageSize :: Core.Int32,
    -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRevisionsList' with the minimum fields required to make a request.
newDriveRevisionsList ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveRevisionsList
newDriveRevisionsList fileId =
  DriveRevisionsList {fileId = fileId, pageSize = 200, pageToken = Core.Nothing}

instance Core.GoogleRequest DriveRevisionsList where
  type Rs DriveRevisionsList = RevisionList
  type
    Scopes DriveRevisionsList =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.appdata",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.metadata",
         "https://www.googleapis.com/auth/drive.metadata.readonly",
         "https://www.googleapis.com/auth/drive.photos.readonly",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveRevisionsList {..} =
    go
      fileId
      (Core.Just pageSize)
      pageToken
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveRevisionsListResource)
          Core.mempty
