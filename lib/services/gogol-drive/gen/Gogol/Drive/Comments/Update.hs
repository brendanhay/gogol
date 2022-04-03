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
-- Module      : Gogol.Drive.Comments.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a comment with patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.update@.
module Gogol.Drive.Comments.Update
  ( -- * Resource
    DriveCommentsUpdateResource,

    -- ** Constructing a Request
    DriveCommentsUpdate (..),
    newDriveCommentsUpdate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.comments.update@ method which the
-- 'DriveCommentsUpdate' request conforms to.
type DriveCommentsUpdateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Comment
    Core.:> Core.Patch '[Core.JSON] Comment

-- | Updates a comment with patch semantics.
--
-- /See:/ 'newDriveCommentsUpdate' smart constructor.
data DriveCommentsUpdate = DriveCommentsUpdate
  { -- | The ID of the comment.
    commentId :: Core.Text,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Comment
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveCommentsUpdate' with the minimum fields required to make a request.
newDriveCommentsUpdate ::
  -- |  The ID of the comment. See 'commentId'.
  Core.Text ->
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Comment ->
  DriveCommentsUpdate
newDriveCommentsUpdate commentId fileId payload =
  DriveCommentsUpdate
    { commentId = commentId,
      fileId = fileId,
      payload = payload
    }

instance Core.GoogleRequest DriveCommentsUpdate where
  type Rs DriveCommentsUpdate = Comment
  type
    Scopes DriveCommentsUpdate =
      '[Drive'FullControl, Drive'File]
  requestClient DriveCommentsUpdate {..} =
    go
      fileId
      commentId
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveCommentsUpdateResource
          )
          Core.mempty
