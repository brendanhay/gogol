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
-- Module      : Gogol.AndroidManagement.Enterprises.Devices.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a device. This operation wipes the device. Deleted devices do not show up in enterprises.devices.list calls and a 404 is returned from enterprises.devices.get.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.delete@.
module Gogol.AndroidManagement.Enterprises.Devices.Delete
    (
    -- * Resource
      AndroidManagementEnterprisesDevicesDeleteResource

    -- ** Constructing a Request
    , AndroidManagementEnterprisesDevicesDelete (..)
    , newAndroidManagementEnterprisesDevicesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Types

-- | A resource alias for @androidmanagement.enterprises.devices.delete@ method which the
-- 'AndroidManagementEnterprisesDevicesDelete' request conforms to.
type AndroidManagementEnterprisesDevicesDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParams "wipeDataFlags"
                     EnterprisesDevicesDeleteWipeDataFlags
                     Core.:>
                     Core.QueryParam "wipeReasonMessage" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] Empty

-- | Deletes a device. This operation wipes the device. Deleted devices do not show up in enterprises.devices.list calls and a 404 is returned from enterprises.devices.get.
--
-- /See:/ 'newAndroidManagementEnterprisesDevicesDelete' smart constructor.
data AndroidManagementEnterprisesDevicesDelete = AndroidManagementEnterprisesDevicesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional flags that control the device wiping behavior.
    , wipeDataFlags :: (Core.Maybe [EnterprisesDevicesDeleteWipeDataFlags])
      -- | Optional. A short message displayed to the user before wiping the work profile on personal devices. This has no effect on company owned devices. The maximum message length is 200 characters.
    , wipeReasonMessage :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesDevicesDelete' with the minimum fields required to make a request.
newAndroidManagementEnterprisesDevicesDelete 
    ::  Core.Text
       -- ^  The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}. See 'name'.
    -> AndroidManagementEnterprisesDevicesDelete
newAndroidManagementEnterprisesDevicesDelete name =
  AndroidManagementEnterprisesDevicesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , wipeDataFlags = Core.Nothing
    , wipeReasonMessage = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidManagementEnterprisesDevicesDelete
         where
        type Rs AndroidManagementEnterprisesDevicesDelete =
             Empty
        type Scopes AndroidManagementEnterprisesDevicesDelete
             = '[Androidmanagement'FullControl]
        requestClient
          AndroidManagementEnterprisesDevicesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (wipeDataFlags Core.^. Core._Default)
              wipeReasonMessage
              (Core.Just Core.AltJSON)
              androidManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidManagementEnterprisesDevicesDeleteResource)
                      Core.mempty

