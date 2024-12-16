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
-- Module      : Gogol.IAP.GetIapSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the IAP settings on a particular IAP protected resource.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.getIapSettings@.
module Gogol.IAP.GetIapSettings
    (
    -- * Resource
      IAPGetIapSettingsResource

    -- ** Constructing a Request
    , IAPGetIapSettings (..)
    , newIAPGetIapSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAP.Types

-- | A resource alias for @iap.getIapSettings@ method which the
-- 'IAPGetIapSettings' request conforms to.
type IAPGetIapSettingsResource =
     "v1" Core.:>
       Core.CaptureMode "name" "iapSettings" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] IapSettings

-- | Gets the IAP settings on a particular IAP protected resource.
--
-- /See:/ 'newIAPGetIapSettings' smart constructor.
data IAPGetIapSettings = IAPGetIapSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name for which to retrieve the settings. Authorization: Requires the @getSettings@ permission for the associated resource.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPGetIapSettings' with the minimum fields required to make a request.
newIAPGetIapSettings 
    ::  Core.Text
       -- ^  Required. The resource name for which to retrieve the settings. Authorization: Requires the @getSettings@ permission for the associated resource. See 'name'.
    -> IAPGetIapSettings
newIAPGetIapSettings name =
  IAPGetIapSettings
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAPGetIapSettings where
        type Rs IAPGetIapSettings = IapSettings
        type Scopes IAPGetIapSettings =
             '[CloudPlatform'FullControl]
        requestClient IAPGetIapSettings{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              iAPService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy IAPGetIapSettingsResource)
                      Core.mempty

