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
-- Module      : Gogol.Drive.Revisions.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a revision\'s metadata or content by ID.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.revisions.get@.
module Gogol.Drive.Revisions.Get
  ( -- * Resource
    DriveRevisionsGetResource,

    -- ** Constructing a Request
    DriveRevisionsGet (..),
    newDriveRevisionsGet,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.revisions.get@ method which the
-- 'DriveRevisionsGet' request conforms to.
type DriveRevisionsGetResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "revisions"
    Core.:> Core.Capture "revisionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "acknowledgeAbuse" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Revision
    Core.:<|> "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "revisions"
    Core.:> Core.Capture "revisionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "acknowledgeAbuse" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltMedia
    Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Gets a revision\'s metadata or content by ID.
--
-- /See:/ 'newDriveRevisionsGet' smart constructor.
data DriveRevisionsGet = DriveRevisionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when the @alt@ parameter is set to @media@ and the user is the owner of the file or an organizer of the shared drive in which the file resides.
    acknowledgeAbuse :: Core.Bool,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | The ID of the revision.
    revisionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRevisionsGet' with the minimum fields required to make a request.
newDriveRevisionsGet ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  The ID of the revision. See 'revisionId'.
  Core.Text ->
  DriveRevisionsGet
newDriveRevisionsGet fileId revisionId =
  DriveRevisionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      acknowledgeAbuse = Core.False,
      callback = Core.Nothing,
      fileId = fileId,
      revisionId = revisionId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveRevisionsGet where
  type Rs DriveRevisionsGet = Revision
  type
    Scopes DriveRevisionsGet =
      '[ Drive'FullControl,
         Drive'Appdata,
         Drive'File,
         Drive'Meet'Readonly,
         Drive'Metadata,
         Drive'Metadata'Readonly,
         Drive'Photos'Readonly,
         Drive'Readonly
       ]
  requestClient DriveRevisionsGet {..} =
    go
      fileId
      revisionId
      xgafv
      accessToken
      (Core.Just acknowledgeAbuse)
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveRevisionsGetResource)
          Core.mempty

instance Core.GoogleRequest (Core.MediaDownload DriveRevisionsGet) where
  type Rs (Core.MediaDownload DriveRevisionsGet) = Core.Stream
  type
    Scopes (Core.MediaDownload DriveRevisionsGet) =
      Core.Scopes DriveRevisionsGet
  requestClient (Core.MediaDownload DriveRevisionsGet {..}) =
    go
      fileId
      revisionId
      xgafv
      accessToken
      (Core.Just acknowledgeAbuse)
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltMedia)
      driveService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveRevisionsGetResource)
          Core.mempty
