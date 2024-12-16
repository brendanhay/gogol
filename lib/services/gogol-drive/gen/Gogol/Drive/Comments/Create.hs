{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
-- Creates a comment on a file. For more information, see <https://developers.google.com/drive/api/guides/manage-comments Manage comments and replies>. Required: The @fields@ parameter must be set. To return the exact fields you need, see <https://developers.google.com/drive/api/guides/fields-parameter Return specific fields>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.comments.create@.
module Gogol.Drive.Comments.Create
    (
    -- * Resource
      DriveCommentsCreateResource

    -- ** Constructing a Request
    , DriveCommentsCreate (..)
    , newDriveCommentsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.comments.create@ method which the
-- 'DriveCommentsCreate' request conforms to.
type DriveCommentsCreateResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "comments" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Comment Core.:>
                             Core.Post '[Core.JSON] Comment

-- | Creates a comment on a file. For more information, see <https://developers.google.com/drive/api/guides/manage-comments Manage comments and replies>. Required: The @fields@ parameter must be set. To return the exact fields you need, see <https://developers.google.com/drive/api/guides/fields-parameter Return specific fields>.
--
-- /See:/ 'newDriveCommentsCreate' smart constructor.
data DriveCommentsCreate = DriveCommentsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the file.
    , fileId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Comment
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveCommentsCreate' with the minimum fields required to make a request.
newDriveCommentsCreate 
    ::  Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> Comment
       -- ^  Multipart request metadata. See 'payload'.
    -> DriveCommentsCreate
newDriveCommentsCreate fileId payload =
  DriveCommentsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , fileId = fileId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveCommentsCreate where
        type Rs DriveCommentsCreate = Comment
        type Scopes DriveCommentsCreate =
             '[Drive'FullControl, Drive'File]
        requestClient DriveCommentsCreate{..}
          = go fileId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveCommentsCreateResource)
                      Core.mempty

