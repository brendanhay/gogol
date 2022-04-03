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
-- Module      : Gogol.Drive.Replies.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a reply with patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.update@.
module Gogol.Drive.Replies.Update
  ( -- * Resource
    DriveRepliesUpdateResource,

    -- ** Constructing a Request
    DriveRepliesUpdate (..),
    newDriveRepliesUpdate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.replies.update@ method which the
-- 'DriveRepliesUpdate' request conforms to.
type DriveRepliesUpdateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> "replies"
    Core.:> Core.Capture "replyId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Reply
    Core.:> Core.Patch '[Core.JSON] Reply

-- | Updates a reply with patch semantics.
--
-- /See:/ 'newDriveRepliesUpdate' smart constructor.
data DriveRepliesUpdate = DriveRepliesUpdate
  { -- | The ID of the comment.
    commentId :: Core.Text,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Reply,
    -- | The ID of the reply.
    replyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRepliesUpdate' with the minimum fields required to make a request.
newDriveRepliesUpdate ::
  -- |  The ID of the comment. See 'commentId'.
  Core.Text ->
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Reply ->
  -- |  The ID of the reply. See 'replyId'.
  Core.Text ->
  DriveRepliesUpdate
newDriveRepliesUpdate commentId fileId payload replyId =
  DriveRepliesUpdate
    { commentId = commentId,
      fileId = fileId,
      payload = payload,
      replyId = replyId
    }

instance Core.GoogleRequest DriveRepliesUpdate where
  type Rs DriveRepliesUpdate = Reply
  type
    Scopes DriveRepliesUpdate =
      '[Drive'FullControl, Drive'File]
  requestClient DriveRepliesUpdate {..} =
    go
      fileId
      commentId
      replyId
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveRepliesUpdateResource)
          Core.mempty
