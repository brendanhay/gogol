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
-- Module      : Gogol.Drive.Comments.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.delete@.
module Gogol.Drive.Comments.Delete
  ( -- * Resource
    DriveCommentsDeleteResource,

    -- ** Constructing a Request
    newDriveCommentsDelete,
    DriveCommentsDelete,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.comments.delete@ method which the
-- 'DriveCommentsDelete' request conforms to.
type DriveCommentsDeleteResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'newDriveCommentsDelete' smart constructor.
data DriveCommentsDelete = DriveCommentsDelete
  { -- | The ID of the comment.
    commentId :: Core.Text,
    -- | The ID of the file.
    fileId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveCommentsDelete' with the minimum fields required to make a request.
newDriveCommentsDelete ::
  -- |  The ID of the comment. See 'commentId'.
  Core.Text ->
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveCommentsDelete
newDriveCommentsDelete commentId fileId =
  DriveCommentsDelete {commentId = commentId, fileId = fileId}

instance Core.GoogleRequest DriveCommentsDelete where
  type Rs DriveCommentsDelete = ()
  type
    Scopes DriveCommentsDelete =
      '[Drive'FullControl, Drive'File]
  requestClient DriveCommentsDelete {..} =
    go
      fileId
      commentId
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveCommentsDeleteResource
          )
          Core.mempty
