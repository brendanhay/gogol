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
-- Module      : Gogol.Drive.Replies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.delete@.
module Gogol.Drive.Replies.Delete
    (
    -- * Resource
      DriveRepliesDeleteResource

    -- ** Constructing a Request
    , newDriveRepliesDelete
    , DriveRepliesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.replies.delete@ method which the
-- 'DriveRepliesDelete' request conforms to.
type DriveRepliesDeleteResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "comments" Core.:>
               Core.Capture "commentId" Core.Text Core.:>
                 "replies" Core.:>
                   Core.Capture "replyId" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] ()

-- | Deletes a reply.
--
-- /See:/ 'newDriveRepliesDelete' smart constructor.
data DriveRepliesDelete = DriveRepliesDelete
    {
      -- | The ID of the comment.
      commentId :: Core.Text
      -- | The ID of the file.
    , fileId :: Core.Text
      -- | The ID of the reply.
    , replyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRepliesDelete' with the minimum fields required to make a request.
newDriveRepliesDelete 
    ::  Core.Text
       -- ^  The ID of the comment. See 'commentId'.
    -> Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> Core.Text
       -- ^  The ID of the reply. See 'replyId'.
    -> DriveRepliesDelete
newDriveRepliesDelete commentId fileId replyId =
  DriveRepliesDelete {commentId = commentId, fileId = fileId, replyId = replyId}

instance Core.GoogleRequest DriveRepliesDelete where
        type Rs DriveRepliesDelete = ()
        type Scopes DriveRepliesDelete =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient DriveRepliesDelete{..}
          = go fileId commentId replyId
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveRepliesDeleteResource)
                      Core.mempty

