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
-- Module      : Gogol.Drive.Replies.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new reply to a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.create@.
module Gogol.Drive.Replies.Create
    (
    -- * Resource
      DriveRepliesCreateResource

    -- ** Constructing a Request
    , newDriveRepliesCreate
    , DriveRepliesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.replies.create@ method which the
-- 'DriveRepliesCreate' request conforms to.
type DriveRepliesCreateResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "comments" Core.:>
               Core.Capture "commentId" Core.Text Core.:>
                 "replies" Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] Reply Core.:>
                       Core.Post '[Core.JSON] Reply

-- | Creates a new reply to a comment.
--
-- /See:/ 'newDriveRepliesCreate' smart constructor.
data DriveRepliesCreate = DriveRepliesCreate
    {
      -- | The ID of the comment.
      commentId :: Core.Text
      -- | The ID of the file.
    , fileId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Reply
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRepliesCreate' with the minimum fields required to make a request.
newDriveRepliesCreate 
    ::  Core.Text
       -- ^  The ID of the comment. See 'commentId'.
    -> Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> Reply
       -- ^  Multipart request metadata. See 'payload'.
    -> DriveRepliesCreate
newDriveRepliesCreate commentId fileId payload =
  DriveRepliesCreate {commentId = commentId, fileId = fileId, payload = payload}

instance Core.GoogleRequest DriveRepliesCreate where
        type Rs DriveRepliesCreate = Reply
        type Scopes DriveRepliesCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient DriveRepliesCreate{..}
          = go fileId commentId (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveRepliesCreateResource)
                      Core.mempty

