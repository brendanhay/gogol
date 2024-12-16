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
-- Module      : Gogol.AndroidPublisher.Systemapks.Variants.Download
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a previously created system APK which is suitable for inclusion in a system image.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.download@.
module Gogol.AndroidPublisher.Systemapks.Variants.Download
    (
    -- * Resource
      AndroidPublisherSystemapksVariantsDownloadResource

    -- ** Constructing a Request
    , AndroidPublisherSystemapksVariantsDownload (..)
    , newAndroidPublisherSystemapksVariantsDownload
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.systemapks.variants.download@ method which the
-- 'AndroidPublisherSystemapksVariantsDownload' request conforms to.
type AndroidPublisherSystemapksVariantsDownloadResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "systemApks" Core.:>
               Core.Capture "versionCode" Core.Int64 Core.:>
                 "variants" Core.:>
                   Core.CaptureMode "variantId" "download" Core.Word32
                     Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] ()
       Core.:<|>
       "androidpublisher" Core.:>
         "v3" Core.:>
           "applications" Core.:>
             Core.Capture "packageName" Core.Text Core.:>
               "systemApks" Core.:>
                 Core.Capture "versionCode" Core.Int64 Core.:>
                   "variants" Core.:>
                     Core.CaptureMode "variantId" "download" Core.Word32
                       Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltMedia Core.:>
                                   Core.Get '[Core.OctetStream] Core.Stream

-- | Downloads a previously created system APK which is suitable for inclusion in a system image.
--
-- /See:/ 'newAndroidPublisherSystemapksVariantsDownload' smart constructor.
data AndroidPublisherSystemapksVariantsDownload = AndroidPublisherSystemapksVariantsDownload
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The ID of a previously created system APK variant.
    , variantId :: Core.Word32
      -- | The version code of the App Bundle.
    , versionCode :: Core.Int64
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherSystemapksVariantsDownload' with the minimum fields required to make a request.
newAndroidPublisherSystemapksVariantsDownload 
    ::  Core.Text
       -- ^  Package name of the app. See 'packageName'.
    -> Core.Word32
       -- ^  The ID of a previously created system APK variant. See 'variantId'.
    -> Core.Int64
       -- ^  The version code of the App Bundle. See 'versionCode'.
    -> AndroidPublisherSystemapksVariantsDownload
newAndroidPublisherSystemapksVariantsDownload packageName variantId versionCode =
  AndroidPublisherSystemapksVariantsDownload
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , packageName = packageName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , variantId = variantId
    , versionCode = versionCode
    }

instance Core.GoogleRequest
           AndroidPublisherSystemapksVariantsDownload
         where
        type Rs AndroidPublisherSystemapksVariantsDownload =
             ()
        type Scopes
               AndroidPublisherSystemapksVariantsDownload
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherSystemapksVariantsDownload{..}
          = go packageName versionCode variantId xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherSystemapksVariantsDownloadResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaDownload
              AndroidPublisherSystemapksVariantsDownload)
         where
        type Rs
               (Core.MediaDownload
                  AndroidPublisherSystemapksVariantsDownload)
             = Core.Stream
        type Scopes
               (Core.MediaDownload
                  AndroidPublisherSystemapksVariantsDownload)
             =
             Core.Scopes
               AndroidPublisherSystemapksVariantsDownload
        requestClient
          (Core.MediaDownload
             AndroidPublisherSystemapksVariantsDownload{..})
          = go packageName versionCode variantId xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltMedia)
              androidPublisherService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherSystemapksVariantsDownloadResource)
                      Core.mempty

