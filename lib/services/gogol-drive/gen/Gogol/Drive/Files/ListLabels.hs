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
-- Module      : Gogol.Drive.Files.ListLabels
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the labels on a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.listLabels@.
module Gogol.Drive.Files.ListLabels
  ( -- * Resource
    DriveFilesListLabelsResource,

    -- ** Constructing a Request
    DriveFilesListLabels (..),
    newDriveFilesListLabels,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.files.listLabels@ method which the
-- 'DriveFilesListLabels' request conforms to.
type DriveFilesListLabelsResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "listLabels"
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LabelList

-- | Lists the labels on a file.
--
-- /See:/ 'newDriveFilesListLabels' smart constructor.
data DriveFilesListLabels = DriveFilesListLabels
  { -- | The ID of the file.
    fileId :: Core.Text,
    -- | The maximum number of labels to return per page. When not set, this defaults to 100.
    maxResults :: Core.Int32,
    -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesListLabels' with the minimum fields required to make a request.
newDriveFilesListLabels ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveFilesListLabels
newDriveFilesListLabels fileId =
  DriveFilesListLabels
    { fileId = fileId,
      maxResults = 100,
      pageToken = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesListLabels where
  type Rs DriveFilesListLabels = LabelList
  type
    Scopes DriveFilesListLabels =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Metadata,
         Drive'Metadata'Readonly,
         Drive'Readonly
       ]
  requestClient DriveFilesListLabels {..} =
    go
      fileId
      (Core.Just maxResults)
      pageToken
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveFilesListLabelsResource
          )
          Core.mempty
