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
-- Module      : Gogol.Drive.Comments.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a comment by ID. For more information, see <https://developers.google.com/drive/api/guides/manage-comments Manage comments and replies>. Required: The @fields@ parameter must be set. To return the exact fields you need, see <https://developers.google.com/drive/api/guides/fields-parameter Return specific fields>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.comments.get@.
module Gogol.Drive.Comments.Get
  ( -- * Resource
    DriveCommentsGetResource,

    -- ** Constructing a Request
    DriveCommentsGet (..),
    newDriveCommentsGet,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.comments.get@ method which the
-- 'DriveCommentsGet' request conforms to.
type DriveCommentsGetResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Comment

-- | Gets a comment by ID. For more information, see <https://developers.google.com/drive/api/guides/manage-comments Manage comments and replies>. Required: The @fields@ parameter must be set. To return the exact fields you need, see <https://developers.google.com/drive/api/guides/fields-parameter Return specific fields>.
--
-- /See:/ 'newDriveCommentsGet' smart constructor.
data DriveCommentsGet = DriveCommentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the comment.
    commentId :: Core.Text,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Whether to return deleted comments. Deleted comments will not include their original content.
    includeDeleted :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveCommentsGet' with the minimum fields required to make a request.
newDriveCommentsGet ::
  -- |  The ID of the comment. See 'commentId'.
  Core.Text ->
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveCommentsGet
newDriveCommentsGet commentId fileId =
  DriveCommentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      commentId = commentId,
      fileId = fileId,
      includeDeleted = Core.False,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveCommentsGet where
  type Rs DriveCommentsGet = Comment
  type
    Scopes DriveCommentsGet =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Meet'Readonly,
         Drive'Readonly
       ]
  requestClient DriveCommentsGet {..} =
    go
      fileId
      commentId
      xgafv
      accessToken
      callback
      (Core.Just includeDeleted)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveCommentsGetResource)
          Core.mempty
