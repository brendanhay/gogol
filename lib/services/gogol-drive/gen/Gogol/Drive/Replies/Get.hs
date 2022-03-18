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
-- Module      : Gogol.Drive.Replies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a reply by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.get@.
module Gogol.Drive.Replies.Get
  ( -- * Resource
    DriveRepliesGetResource,

    -- ** Constructing a Request
    newDriveRepliesGet,
    DriveRepliesGet,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.replies.get@ method which the
-- 'DriveRepliesGet' request conforms to.
type DriveRepliesGetResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> "replies"
    Core.:> Core.Capture "replyId" Core.Text
    Core.:> Core.QueryParam "includeDeleted" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Reply

-- | Gets a reply by ID.
--
-- /See:/ 'newDriveRepliesGet' smart constructor.
data DriveRepliesGet = DriveRepliesGet
  { -- | The ID of the comment.
    commentId :: Core.Text,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Whether to return deleted replies. Deleted replies will not include their original content.
    includeDeleted :: Core.Bool,
    -- | The ID of the reply.
    replyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRepliesGet' with the minimum fields required to make a request.
newDriveRepliesGet ::
  -- |  The ID of the comment. See 'commentId'.
  Core.Text ->
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  The ID of the reply. See 'replyId'.
  Core.Text ->
  DriveRepliesGet
newDriveRepliesGet commentId fileId replyId =
  DriveRepliesGet
    { commentId = commentId,
      fileId = fileId,
      includeDeleted = Core.False,
      replyId = replyId
    }

instance Core.GoogleRequest DriveRepliesGet where
  type Rs DriveRepliesGet = Reply
  type
    Scopes DriveRepliesGet =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveRepliesGet {..} =
    go
      fileId
      commentId
      replyId
      (Core.Just includeDeleted)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveRepliesGetResource)
          Core.mempty
