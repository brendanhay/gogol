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
-- Module      : Gogol.Drive.Files.ModifyLabels
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the set of labels applied to a file. Returns a list of the labels that were added or modified.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.modifyLabels@.
module Gogol.Drive.Files.ModifyLabels
    (
    -- * Resource
      DriveFilesModifyLabelsResource

    -- ** Constructing a Request
    , DriveFilesModifyLabels (..)
    , newDriveFilesModifyLabels
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.files.modifyLabels@ method which the
-- 'DriveFilesModifyLabels' request conforms to.
type DriveFilesModifyLabelsResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "modifyLabels" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] ModifyLabelsRequest Core.:>
                             Core.Post '[Core.JSON] ModifyLabelsResponse

-- | Modifies the set of labels applied to a file. Returns a list of the labels that were added or modified.
--
-- /See:/ 'newDriveFilesModifyLabels' smart constructor.
data DriveFilesModifyLabels = DriveFilesModifyLabels
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the file to which the labels belong.
    , fileId :: Core.Text
      -- | Multipart request metadata.
    , payload :: ModifyLabelsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesModifyLabels' with the minimum fields required to make a request.
newDriveFilesModifyLabels 
    ::  Core.Text
       -- ^  The ID of the file to which the labels belong. See 'fileId'.
    -> ModifyLabelsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DriveFilesModifyLabels
newDriveFilesModifyLabels fileId payload =
  DriveFilesModifyLabels
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , fileId = fileId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesModifyLabels
         where
        type Rs DriveFilesModifyLabels = ModifyLabelsResponse
        type Scopes DriveFilesModifyLabels =
             '[Drive'FullControl, Drive'File, Drive'Metadata]
        requestClient DriveFilesModifyLabels{..}
          = go fileId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveFilesModifyLabelsResource)
                      Core.mempty

