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
-- Module      : Gogol.AndroidPublisher.Edits.Apks.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an APK and adds to the current edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.apks.upload@.
module Gogol.AndroidPublisher.Edits.Apks.Upload
    (
    -- * Resource
      AndroidPublisherEditsApksUploadResource

    -- ** Constructing a Request
    , newAndroidPublisherEditsApksUpload
    , AndroidPublisherEditsApksUpload
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.edits.apks.upload@ method which the
-- 'AndroidPublisherEditsApksUpload' request conforms to.
type AndroidPublisherEditsApksUploadResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "edits" Core.:>
               Core.Capture "editId" Core.Text Core.:>
                 "apks" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Post '[Core.JSON] Apk
       Core.:<|>
       "upload" Core.:>
         "androidpublisher" Core.:>
           "v3" Core.:>
             "applications" Core.:>
               Core.Capture "packageName" Core.Text Core.:>
                 "edits" Core.:>
                   Core.Capture "editId" Core.Text Core.:>
                     "apks" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.QueryParam "uploadType" Core.AltMedia
                                     Core.:>
                                     Core.AltMedia Core.:>
                                       Core.Post '[Core.JSON] Apk

-- | Uploads an APK and adds to the current edit.
--
-- /See:/ 'newAndroidPublisherEditsApksUpload' smart constructor.
data AndroidPublisherEditsApksUpload = AndroidPublisherEditsApksUpload
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the edit.
    , editId :: Core.Text
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsApksUpload' with the minimum fields required to make a request.
newAndroidPublisherEditsApksUpload 
    ::  Core.Text
       -- ^  Identifier of the edit. See 'editId'.
    -> Core.Text
       -- ^  Package name of the app. See 'packageName'.
    -> AndroidPublisherEditsApksUpload
newAndroidPublisherEditsApksUpload editId packageName =
  AndroidPublisherEditsApksUpload
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , editId = editId
    , packageName = packageName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherEditsApksUpload
         where
        type Rs AndroidPublisherEditsApksUpload = Apk
        type Scopes AndroidPublisherEditsApksUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AndroidPublisherEditsApksUpload{..}
          = go packageName editId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidPublisherEditsApksUploadResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload AndroidPublisherEditsApksUpload)
         where
        type Rs
               (Core.MediaUpload AndroidPublisherEditsApksUpload)
             = Apk
        type Scopes
               (Core.MediaUpload AndroidPublisherEditsApksUpload)
             = Core.Scopes AndroidPublisherEditsApksUpload
        requestClient
          (Core.MediaUpload AndroidPublisherEditsApksUpload{..}
             body)
          = go packageName editId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              (Core.Just Core.AltMedia)
              body
              androidPublisherService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidPublisherEditsApksUploadResource)
                      Core.mempty

