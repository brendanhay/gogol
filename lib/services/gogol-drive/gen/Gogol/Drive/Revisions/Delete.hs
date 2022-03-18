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
-- Module      : Gogol.Drive.Revisions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can\'t be deleted.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.delete@.
module Gogol.Drive.Revisions.Delete
    (
    -- * Resource
      DriveRevisionsDeleteResource

    -- ** Constructing a Request
    , newDriveRevisionsDelete
    , DriveRevisionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.revisions.delete@ method which the
-- 'DriveRevisionsDelete' request conforms to.
type DriveRevisionsDeleteResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "revisions" Core.:>
               Core.Capture "revisionId" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Delete '[Core.JSON] ()

-- | Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can\'t be deleted.
--
-- /See:/ 'newDriveRevisionsDelete' smart constructor.
data DriveRevisionsDelete = DriveRevisionsDelete
    {
      -- | The ID of the file.
      fileId :: Core.Text
      -- | The ID of the revision.
    , revisionId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRevisionsDelete' with the minimum fields required to make a request.
newDriveRevisionsDelete 
    ::  Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> Core.Text
       -- ^  The ID of the revision. See 'revisionId'.
    -> DriveRevisionsDelete
newDriveRevisionsDelete fileId revisionId =
  DriveRevisionsDelete {fileId = fileId, revisionId = revisionId}

instance Core.GoogleRequest DriveRevisionsDelete
         where
        type Rs DriveRevisionsDelete = ()
        type Scopes DriveRevisionsDelete =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient DriveRevisionsDelete{..}
          = go fileId revisionId (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveRevisionsDeleteResource)
                      Core.mempty

