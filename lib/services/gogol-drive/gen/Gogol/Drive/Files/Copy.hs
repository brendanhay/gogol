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
-- Module      : Gogol.Drive.Files.Copy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a copy of a file and applies any requested updates with patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.copy@.
module Gogol.Drive.Files.Copy
    (
    -- * Resource
      DriveFilesCopyResource

    -- ** Constructing a Request
    , DriveFilesCopy (..)
    , newDriveFilesCopy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.files.copy@ method which the
-- 'DriveFilesCopy' request conforms to.
type DriveFilesCopyResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "copy" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "enforceSingleParent" Core.Bool
                       Core.:>
                       Core.QueryParam "ignoreDefaultVisibility" Core.Bool
                         Core.:>
                         Core.QueryParam "includeLabels" Core.Text Core.:>
                           Core.QueryParam "includePermissionsForView" Core.Text
                             Core.:>
                             Core.QueryParam "keepRevisionForever" Core.Bool
                               Core.:>
                               Core.QueryParam "ocrLanguage" Core.Text Core.:>
                                 Core.QueryParam "supportsAllDrives" Core.Bool
                                   Core.:>
                                   Core.QueryParam "supportsTeamDrives"
                                     Core.Bool
                                     Core.:>
                                     Core.QueryParam "uploadType" Core.Text
                                       Core.:>
                                       Core.QueryParam "upload_protocol"
                                         Core.Text
                                         Core.:>
                                         Core.QueryParam "alt" Core.AltJSON
                                           Core.:>
                                           Core.ReqBody '[Core.JSON] File
                                             Core.:> Core.Post '[Core.JSON] File

-- | Creates a copy of a file and applies any requested updates with patch semantics.
--
-- /See:/ 'newDriveFilesCopy' smart constructor.
data DriveFilesCopy = DriveFilesCopy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Deprecated. Copying files into multiple folders is no longer supported. Use shortcuts instead.
    , enforceSingleParent :: Core.Bool
      -- | The ID of the file.
    , fileId :: Core.Text
      -- | Whether to ignore the domain\'s default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
    , ignoreDefaultVisibility :: Core.Bool
      -- | A comma-separated list of IDs of labels to include in the @labelInfo@ part of the response.
    , includeLabels :: (Core.Maybe Core.Text)
      -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    , includePermissionsForView :: (Core.Maybe Core.Text)
      -- | Whether to set the \'keepForever\' field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.
    , keepRevisionForever :: Core.Bool
      -- | A language hint for OCR processing during image import (ISO 639-1 code).
    , ocrLanguage :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: File
      -- | Whether the requesting application supports both My Drives and shared drives.
    , supportsAllDrives :: Core.Bool
      -- | Deprecated: Use @supportsAllDrives@ instead.
    , supportsTeamDrives :: Core.Bool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesCopy' with the minimum fields required to make a request.
newDriveFilesCopy 
    ::  Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> File
       -- ^  Multipart request metadata. See 'payload'.
    -> DriveFilesCopy
newDriveFilesCopy fileId payload =
  DriveFilesCopy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enforceSingleParent = Core.False
    , fileId = fileId
    , ignoreDefaultVisibility = Core.False
    , includeLabels = Core.Nothing
    , includePermissionsForView = Core.Nothing
    , keepRevisionForever = Core.False
    , ocrLanguage = Core.Nothing
    , payload = payload
    , supportsAllDrives = Core.False
    , supportsTeamDrives = Core.False
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesCopy where
        type Rs DriveFilesCopy = File
        type Scopes DriveFilesCopy =
             '[Drive'FullControl, Drive'Appdata, Drive'File,
               Drive'Photos'Readonly]
        requestClient DriveFilesCopy{..}
          = go fileId xgafv accessToken callback
              (Core.Just enforceSingleParent)
              (Core.Just ignoreDefaultVisibility)
              includeLabels
              includePermissionsForView
              (Core.Just keepRevisionForever)
              ocrLanguage
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveFilesCopyResource)
                      Core.mempty

