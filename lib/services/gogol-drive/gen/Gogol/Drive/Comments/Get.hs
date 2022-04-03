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
-- Module      : Gogol.Drive.Comments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a comment by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.get@.
module Gogol.Drive.Comments.Get
  ( -- * Resource
    DriveCommentsGetResource,

    -- ** Constructing a Request
    DriveCommentsGet (..),
    newDriveCommentsGet,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.comments.get@ method which the
-- 'DriveCommentsGet' request conforms to.
type DriveCommentsGetResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> Core.QueryParam "includeDeleted" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Comment

-- | Gets a comment by ID.
--
-- /See:/ 'newDriveCommentsGet' smart constructor.
data DriveCommentsGet = DriveCommentsGet
  { -- | The ID of the comment.
    commentId :: Core.Text,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Whether to return deleted comments. Deleted comments will not include their original content.
    includeDeleted :: Core.Bool
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
    { commentId = commentId,
      fileId = fileId,
      includeDeleted = Core.False
    }

instance Core.GoogleRequest DriveCommentsGet where
  type Rs DriveCommentsGet = Comment
  type
    Scopes DriveCommentsGet =
      '[Drive'FullControl, Drive'File, Drive'Readonly]
  requestClient DriveCommentsGet {..} =
    go
      fileId
      commentId
      (Core.Just includeDeleted)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveCommentsGetResource)
          Core.mempty
