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
-- Module      : Network.Google.Drive.Replies.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a comment\'s replies.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.list@.
module Network.Google.Drive.Replies.List
  ( -- * Resource
    DriveRepliesListResource,

    -- ** Constructing a Request
    newDriveRepliesList,
    DriveRepliesList,
  )
where

import Network.Google.Drive.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @drive.replies.list@ method which the
-- 'DriveRepliesList' request conforms to.
type DriveRepliesListResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> "replies"
    Core.:> Core.QueryParam "includeDeleted" Core.Bool
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ReplyList

-- | Lists a comment\'s replies.
--
-- /See:/ 'newDriveRepliesList' smart constructor.
data DriveRepliesList = DriveRepliesList
  { -- | The ID of the comment.
    commentId :: Core.Text,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Whether to include deleted replies. Deleted replies will not include their original content.
    includeDeleted :: Core.Bool,
    -- | The maximum number of replies to return per page.
    pageSize :: Core.Int32,
    -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRepliesList' with the minimum fields required to make a request.
newDriveRepliesList ::
  -- |  The ID of the comment. See 'commentId'.
  Core.Text ->
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveRepliesList
newDriveRepliesList commentId fileId =
  DriveRepliesList
    { commentId = commentId,
      fileId = fileId,
      includeDeleted = Core.False,
      pageSize = 20,
      pageToken = Core.Nothing
    }

instance Core.GoogleRequest DriveRepliesList where
  type Rs DriveRepliesList = ReplyList
  type
    Scopes DriveRepliesList =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveRepliesList {..} =
    go
      fileId
      commentId
      (Core.Just includeDeleted)
      (Core.Just pageSize)
      pageToken
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveRepliesListResource)
          Core.mempty
