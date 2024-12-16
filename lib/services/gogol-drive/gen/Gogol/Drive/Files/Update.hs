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
-- Module      : Gogol.Drive.Files.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a file\'s metadata and\/or content. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might be changed automatically, such as @modifiedDate@. This method supports patch semantics. This method supports an /\/upload/ URI and accepts uploaded media with the following characteristics: - /Maximum file size:/ 5,120 GB - /Accepted Media MIME types:/@*\/*@ Note: Specify a valid MIME type, rather than the literal @*\/*@ value. The literal @*\/*@ is only used to indicate that any valid MIME type can be uploaded. For more information on uploading files, see </drive/api/guides/manage-uploads Upload file data>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.update@.
module Gogol.Drive.Files.Update
    (
    -- * Resource
      DriveFilesUpdateResource

    -- ** Constructing a Request
    , DriveFilesUpdate (..)
    , newDriveFilesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.files.update@ method which the
-- 'DriveFilesUpdate' request conforms to.
type DriveFilesUpdateResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "addParents" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "enforceSingleParent" Core.Bool
                       Core.:>
                       Core.QueryParam "includeLabels" Core.Text Core.:>
                         Core.QueryParam "includePermissionsForView" Core.Text
                           Core.:>
                           Core.QueryParam "keepRevisionForever" Core.Bool
                             Core.:>
                             Core.QueryParam "ocrLanguage" Core.Text Core.:>
                               Core.QueryParam "removeParents" Core.Text Core.:>
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
                                         Core.QueryParam
                                           "useContentAsIndexableText"
                                           Core.Bool
                                           Core.:>
                                           Core.QueryParam "alt" Core.AltJSON
                                             Core.:>
                                             Core.ReqBody '[Core.JSON] File
                                               Core.:>
                                               Core.Patch '[Core.JSON] File
       Core.:<|>
       "upload" Core.:>
         "drive" Core.:>
           "v3" Core.:>
             "files" Core.:>
               Core.Capture "fileId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "addParents" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "enforceSingleParent" Core.Bool
                           Core.:>
                           Core.QueryParam "includeLabels" Core.Text Core.:>
                             Core.QueryParam "includePermissionsForView"
                               Core.Text
                               Core.:>
                               Core.QueryParam "keepRevisionForever" Core.Bool
                                 Core.:>
                                 Core.QueryParam "ocrLanguage" Core.Text Core.:>
                                   Core.QueryParam "removeParents" Core.Text
                                     Core.:>
                                     Core.QueryParam "supportsAllDrives"
                                       Core.Bool
                                       Core.:>
                                       Core.QueryParam "supportsTeamDrives"
                                         Core.Bool
                                         Core.:>
                                         Core.QueryParam "uploadType" Core.Text
                                           Core.:>
                                           Core.QueryParam "upload_protocol"
                                             Core.Text
                                             Core.:>
                                             Core.QueryParam
                                               "useContentAsIndexableText"
                                               Core.Bool
                                               Core.:>
                                               Core.QueryParam "alt"
                                                 Core.AltJSON
                                                 Core.:>
                                                 Core.QueryParam "uploadType"
                                                   Core.Multipart
                                                   Core.:>
                                                   Core.MultipartRelated
                                                     '[Core.JSON]
                                                     File
                                                     Core.:>
                                                     Core.Patch '[Core.JSON]
                                                       File

-- | Updates a file\'s metadata and\/or content. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might be changed automatically, such as @modifiedDate@. This method supports patch semantics. This method supports an /\/upload/ URI and accepts uploaded media with the following characteristics: - /Maximum file size:/ 5,120 GB - /Accepted Media MIME types:/@*\/*@ Note: Specify a valid MIME type, rather than the literal @*\/*@ value. The literal @*\/*@ is only used to indicate that any valid MIME type can be uploaded. For more information on uploading files, see </drive/api/guides/manage-uploads Upload file data>.
--
-- /See:/ 'newDriveFilesUpdate' smart constructor.
data DriveFilesUpdate = DriveFilesUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | A comma-separated list of parent IDs to add.
    , addParents :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Deprecated: Adding files to multiple folders is no longer supported. Use shortcuts instead.
    , enforceSingleParent :: Core.Bool
      -- | The ID of the file.
    , fileId :: Core.Text
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
      -- | A comma-separated list of parent IDs to remove.
    , removeParents :: (Core.Maybe Core.Text)
      -- | Whether the requesting application supports both My Drives and shared drives.
    , supportsAllDrives :: Core.Bool
      -- | Deprecated: Use @supportsAllDrives@ instead.
    , supportsTeamDrives :: Core.Bool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Whether to use the uploaded content as indexable text.
    , useContentAsIndexableText :: Core.Bool
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesUpdate' with the minimum fields required to make a request.
newDriveFilesUpdate 
    ::  Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> File
       -- ^  Multipart request metadata. See 'payload'.
    -> DriveFilesUpdate
newDriveFilesUpdate fileId payload =
  DriveFilesUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , addParents = Core.Nothing
    , callback = Core.Nothing
    , enforceSingleParent = Core.False
    , fileId = fileId
    , includeLabels = Core.Nothing
    , includePermissionsForView = Core.Nothing
    , keepRevisionForever = Core.False
    , ocrLanguage = Core.Nothing
    , payload = payload
    , removeParents = Core.Nothing
    , supportsAllDrives = Core.False
    , supportsTeamDrives = Core.False
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , useContentAsIndexableText = Core.False
    }

instance Core.GoogleRequest DriveFilesUpdate where
        type Rs DriveFilesUpdate = File
        type Scopes DriveFilesUpdate =
             '[Drive'FullControl, Drive'Appdata, Drive'File,
               Drive'Metadata, Drive'Scripts]
        requestClient DriveFilesUpdate{..}
          = go fileId xgafv accessToken addParents callback
              (Core.Just enforceSingleParent)
              includeLabels
              includePermissionsForView
              (Core.Just keepRevisionForever)
              ocrLanguage
              removeParents
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              uploadType
              uploadProtocol
              (Core.Just useContentAsIndexableText)
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveFilesUpdateResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload DriveFilesUpdate)
         where
        type Rs (Core.MediaUpload DriveFilesUpdate) = File
        type Scopes (Core.MediaUpload DriveFilesUpdate) =
             Core.Scopes DriveFilesUpdate
        requestClient
          (Core.MediaUpload DriveFilesUpdate{..} body)
          = go fileId xgafv accessToken addParents callback
              (Core.Just enforceSingleParent)
              includeLabels
              includePermissionsForView
              (Core.Just keepRevisionForever)
              ocrLanguage
              removeParents
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              uploadType
              uploadProtocol
              (Core.Just useContentAsIndexableText)
              (Core.Just Core.AltJSON)
              (Core.Just Core.Multipart)
              payload
              body
              driveService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveFilesUpdateResource)
                      Core.mempty

