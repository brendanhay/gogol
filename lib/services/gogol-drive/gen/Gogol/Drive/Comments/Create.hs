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
-- Module      : Gogol.Drive.Comments.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new comment on a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.create@.
module Gogol.Drive.Comments.Create
  ( -- * Resource
    DriveCommentsCreateResource,

    -- ** Constructing a Request
    DriveCommentsCreate (..),
    newDriveCommentsCreate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.comments.create@ method which the
-- 'DriveCommentsCreate' request conforms to.
type DriveCommentsCreateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "comments"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Comment
    Core.:> Core.Post '[Core.JSON] Comment

-- | Creates a new comment on a file.
--
-- /See:/ 'newDriveCommentsCreate' smart constructor.
data DriveCommentsCreate = DriveCommentsCreate
  { -- | The ID of the file.
    fileId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Comment
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveCommentsCreate' with the minimum fields required to make a request.
newDriveCommentsCreate ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Comment ->
  DriveCommentsCreate
newDriveCommentsCreate fileId payload =
  DriveCommentsCreate {fileId = fileId, payload = payload}

instance Core.GoogleRequest DriveCommentsCreate where
  type Rs DriveCommentsCreate = Comment
  type
    Scopes DriveCommentsCreate =
      '[Drive'FullControl, Drive'File]
  requestClient DriveCommentsCreate {..} =
    go
      fileId
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveCommentsCreateResource
          )
          Core.mempty
