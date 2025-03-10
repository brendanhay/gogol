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
-- Module      : Gogol.Drive.Comments.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s comments. For more information, see <https://developers.google.com/drive/api/guides/manage-comments Manage comments and replies>. Required: The @fields@ parameter must be set. To return the exact fields you need, see <https://developers.google.com/drive/api/guides/fields-parameter Return specific fields>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.comments.list@.
module Gogol.Drive.Comments.List
  ( -- * Resource
    DriveCommentsListResource,

    -- ** Constructing a Request
    DriveCommentsList (..),
    newDriveCommentsList,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.comments.list@ method which the
-- 'DriveCommentsList' request conforms to.
type DriveCommentsListResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeDeleted" Core.Bool
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startModifiedTime" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CommentList

-- | Lists a file\'s comments. For more information, see <https://developers.google.com/drive/api/guides/manage-comments Manage comments and replies>. Required: The @fields@ parameter must be set. To return the exact fields you need, see <https://developers.google.com/drive/api/guides/fields-parameter Return specific fields>.
--
-- /See:/ 'newDriveCommentsList' smart constructor.
data DriveCommentsList = DriveCommentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Whether to include deleted comments. Deleted comments will not include their original content.
    includeDeleted :: Core.Bool,
    -- | The maximum number of comments to return per page.
    pageSize :: Core.Int32,
    -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | The minimum value of \'modifiedTime\' for the result comments (RFC 3339 date-time).
    startModifiedTime :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveCommentsList' with the minimum fields required to make a request.
newDriveCommentsList ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveCommentsList
newDriveCommentsList fileId =
  DriveCommentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fileId = fileId,
      includeDeleted = Core.False,
      pageSize = 20,
      pageToken = Core.Nothing,
      startModifiedTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveCommentsList where
  type Rs DriveCommentsList = CommentList
  type
    Scopes DriveCommentsList =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Meet'Readonly,
         Drive'Readonly
       ]
  requestClient DriveCommentsList {..} =
    go
      fileId
      xgafv
      accessToken
      callback
      (Core.Just includeDeleted)
      (Core.Just pageSize)
      pageToken
      startModifiedTime
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveCommentsListResource)
          Core.mempty
