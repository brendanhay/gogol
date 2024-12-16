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
-- Module      : Gogol.AndroidPublisher.Systemapks.Variants.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of previously created system APK variants.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.list@.
module Gogol.AndroidPublisher.Systemapks.Variants.List
    (
    -- * Resource
      AndroidPublisherSystemapksVariantsListResource

    -- ** Constructing a Request
    , AndroidPublisherSystemapksVariantsList (..)
    , newAndroidPublisherSystemapksVariantsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.systemapks.variants.list@ method which the
-- 'AndroidPublisherSystemapksVariantsList' request conforms to.
type AndroidPublisherSystemapksVariantsListResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "systemApks" Core.:>
               Core.Capture "versionCode" Core.Int64 Core.:>
                 "variants" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] SystemApksListResponse

-- | Returns the list of previously created system APK variants.
--
-- /See:/ 'newAndroidPublisherSystemapksVariantsList' smart constructor.
data AndroidPublisherSystemapksVariantsList = AndroidPublisherSystemapksVariantsList
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
      -- | The version code of the App Bundle.
    , versionCode :: Core.Int64
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherSystemapksVariantsList' with the minimum fields required to make a request.
newAndroidPublisherSystemapksVariantsList 
    ::  Core.Text
       -- ^  Package name of the app. See 'packageName'.
    -> Core.Int64
       -- ^  The version code of the App Bundle. See 'versionCode'.
    -> AndroidPublisherSystemapksVariantsList
newAndroidPublisherSystemapksVariantsList packageName versionCode =
  AndroidPublisherSystemapksVariantsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , packageName = packageName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , versionCode = versionCode
    }

instance Core.GoogleRequest
           AndroidPublisherSystemapksVariantsList
         where
        type Rs AndroidPublisherSystemapksVariantsList =
             SystemApksListResponse
        type Scopes AndroidPublisherSystemapksVariantsList =
             '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherSystemapksVariantsList{..}
          = go packageName versionCode xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherSystemapksVariantsListResource)
                      Core.mempty

