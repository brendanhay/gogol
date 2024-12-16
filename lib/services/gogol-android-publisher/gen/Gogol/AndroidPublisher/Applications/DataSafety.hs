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
-- Module      : Gogol.AndroidPublisher.Applications.DataSafety
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes the Safety Labels declaration of an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.applications.dataSafety@.
module Gogol.AndroidPublisher.Applications.DataSafety
    (
    -- * Resource
      AndroidPublisherApplicationsDataSafetyResource

    -- ** Constructing a Request
    , AndroidPublisherApplicationsDataSafety (..)
    , newAndroidPublisherApplicationsDataSafety
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.applications.dataSafety@ method which the
-- 'AndroidPublisherApplicationsDataSafety' request conforms to.
type AndroidPublisherApplicationsDataSafetyResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "dataSafety" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] SafetyLabelsUpdateRequest
                             Core.:>
                             Core.Post '[Core.JSON] SafetyLabelsUpdateResponse

-- | Writes the Safety Labels declaration of an app.
--
-- /See:/ 'newAndroidPublisherApplicationsDataSafety' smart constructor.
data AndroidPublisherApplicationsDataSafety = AndroidPublisherApplicationsDataSafety
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Package name of the app.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: SafetyLabelsUpdateRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherApplicationsDataSafety' with the minimum fields required to make a request.
newAndroidPublisherApplicationsDataSafety 
    ::  Core.Text
       -- ^  Required. Package name of the app. See 'packageName'.
    -> SafetyLabelsUpdateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidPublisherApplicationsDataSafety
newAndroidPublisherApplicationsDataSafety packageName payload =
  AndroidPublisherApplicationsDataSafety
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , packageName = packageName
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherApplicationsDataSafety
         where
        type Rs AndroidPublisherApplicationsDataSafety =
             SafetyLabelsUpdateResponse
        type Scopes AndroidPublisherApplicationsDataSafety =
             '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherApplicationsDataSafety{..}
          = go packageName xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherApplicationsDataSafetyResource)
                      Core.mempty

