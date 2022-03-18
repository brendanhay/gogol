{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Comments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s comments.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.list@.
module Gogol.Drive.Comments.List
    (
    -- * Resource
      DriveCommentsListResource

    -- ** Constructing a Request
    , newDriveCommentsList
    , DriveCommentsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.comments.list@ method which the
-- 'DriveCommentsList' request conforms to.
type DriveCommentsListResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "comments" Core.:>
               Core.QueryParam "includeDeleted" Core.Bool Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "startModifiedTime" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] CommentList

-- | Lists a file\'s comments.
--
-- /See:/ 'newDriveCommentsList' smart constructor.
data DriveCommentsList = DriveCommentsList
    {
      -- | The ID of the file.
      fileId :: Core.Text
      -- | Whether to include deleted comments. Deleted comments will not include their original content.
    , includeDeleted :: Core.Bool
      -- | The maximum number of comments to return per page.
    , pageSize :: Core.Int32
      -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The minimum value of \'modifiedTime\' for the result comments (RFC 3339 date-time).
    , startModifiedTime :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveCommentsList' with the minimum fields required to make a request.
newDriveCommentsList 
    ::  Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> DriveCommentsList
newDriveCommentsList fileId =
  DriveCommentsList
    { fileId = fileId
    , includeDeleted = Core.False
    , pageSize = 20
    , pageToken = Core.Nothing
    , startModifiedTime = Core.Nothing
    }

instance Core.GoogleRequest DriveCommentsList where
        type Rs DriveCommentsList = CommentList
        type Scopes DriveCommentsList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient DriveCommentsList{..}
          = go fileId (Core.Just includeDeleted)
              (Core.Just pageSize)
              pageToken
              startModifiedTime
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveCommentsListResource)
                      Core.mempty

