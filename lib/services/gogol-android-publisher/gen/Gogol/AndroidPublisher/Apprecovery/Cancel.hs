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
-- Module      : Gogol.AndroidPublisher.Apprecovery.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancel an already executing app recovery action. Note that this action changes status of the recovery action to CANCELED.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.apprecovery.cancel@.
module Gogol.AndroidPublisher.Apprecovery.Cancel
    (
    -- * Resource
      AndroidPublisherApprecoveryCancelResource

    -- ** Constructing a Request
    , AndroidPublisherApprecoveryCancel (..)
    , newAndroidPublisherApprecoveryCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.apprecovery.cancel@ method which the
-- 'AndroidPublisherApprecoveryCancel' request conforms to.
type AndroidPublisherApprecoveryCancelResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "appRecoveries" Core.:>
               Core.CaptureMode "appRecoveryId" "cancel" Core.Int64
                 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] CancelAppRecoveryRequest
                               Core.:>
                               Core.Post '[Core.JSON] CancelAppRecoveryResponse

-- | Cancel an already executing app recovery action. Note that this action changes status of the recovery action to CANCELED.
--
-- /See:/ 'newAndroidPublisherApprecoveryCancel' smart constructor.
data AndroidPublisherApprecoveryCancel = AndroidPublisherApprecoveryCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. ID corresponding to the app recovery action.
    , appRecoveryId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Package name of the app for which recovery action cancellation is requested.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: CancelAppRecoveryRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherApprecoveryCancel' with the minimum fields required to make a request.
newAndroidPublisherApprecoveryCancel 
    ::  Core.Int64
       -- ^  Required. ID corresponding to the app recovery action. See 'appRecoveryId'.
    -> Core.Text
       -- ^  Required. Package name of the app for which recovery action cancellation is requested. See 'packageName'.
    -> CancelAppRecoveryRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidPublisherApprecoveryCancel
newAndroidPublisherApprecoveryCancel appRecoveryId packageName payload =
  AndroidPublisherApprecoveryCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appRecoveryId = appRecoveryId
    , callback = Core.Nothing
    , packageName = packageName
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherApprecoveryCancel
         where
        type Rs AndroidPublisherApprecoveryCancel =
             CancelAppRecoveryResponse
        type Scopes AndroidPublisherApprecoveryCancel =
             '[Androidpublisher'FullControl]
        requestClient AndroidPublisherApprecoveryCancel{..}
          = go packageName appRecoveryId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidPublisherApprecoveryCancelResource)
                      Core.mempty

