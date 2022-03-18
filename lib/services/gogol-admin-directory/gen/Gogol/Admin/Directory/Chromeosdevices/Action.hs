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
-- Module      : Gogol.Admin.Directory.Chromeosdevices.Action
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Takes an action that affects a Chrome OS Device. This includes deprovisioning, disabling, and re-enabling devices. /Warning:/ * Deprovisioning a device will stop device policy syncing and remove device-level printers. After a device is deprovisioned, it must be wiped before it can be re-enrolled. * Lost or stolen devices should use the disable action. * Re-enabling a disabled device will consume a device license. If you do not have sufficient licenses available when completing the re-enable action, you will receive an error. For more information about deprovisioning and disabling devices, visit the <https://support.google.com/chrome/a/answer/3523633 help center>.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.action@.
module Gogol.Admin.Directory.Chromeosdevices.Action
    (
    -- * Resource
      DirectoryChromeosdevicesActionResource

    -- ** Constructing a Request
    , newDirectoryChromeosdevicesAction
    , DirectoryChromeosdevicesAction
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.chromeosdevices.action@ method which the
-- 'DirectoryChromeosdevicesAction' request conforms to.
type DirectoryChromeosdevicesActionResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customerId" Core.Text Core.:>
               "devices" Core.:>
                 "chromeos" Core.:>
                   Core.Capture "resourceId" Core.Text Core.:>
                     "action" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     ChromeOsDeviceAction
                                     Core.:> Core.Post '[Core.JSON] ()

-- | Takes an action that affects a Chrome OS Device. This includes deprovisioning, disabling, and re-enabling devices. /Warning:/ * Deprovisioning a device will stop device policy syncing and remove device-level printers. After a device is deprovisioned, it must be wiped before it can be re-enrolled. * Lost or stolen devices should use the disable action. * Re-enabling a disabled device will consume a device license. If you do not have sufficient licenses available when completing the re-enable action, you will receive an error. For more information about deprovisioning and disabling devices, visit the <https://support.google.com/chrome/a/answer/3523633 help center>.
--
-- /See:/ 'newDirectoryChromeosdevicesAction' smart constructor.
data DirectoryChromeosdevicesAction = DirectoryChromeosdevicesAction
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    , customerId :: Core.Text
      -- | Multipart request metadata.
    , payload :: ChromeOsDeviceAction
      -- | The unique ID of the device. The @resourceId@s are returned in the response from the </admin-sdk/directory/v1/reference/chromeosdevices/list chromeosdevices.list> method.
    , resourceId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesAction' with the minimum fields required to make a request.
newDirectoryChromeosdevicesAction 
    ::  Core.Text
       -- ^  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
    -> ChromeOsDeviceAction
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The unique ID of the device. The @resourceId@s are returned in the response from the </admin-sdk/directory/v1/reference/chromeosdevices/list chromeosdevices.list> method. See 'resourceId'.
    -> DirectoryChromeosdevicesAction
newDirectoryChromeosdevicesAction customerId payload resourceId =
  DirectoryChromeosdevicesAction
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = customerId
    , payload = payload
    , resourceId = resourceId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryChromeosdevicesAction
         where
        type Rs DirectoryChromeosdevicesAction = ()
        type Scopes DirectoryChromeosdevicesAction =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
        requestClient DirectoryChromeosdevicesAction{..}
          = go customerId resourceId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryChromeosdevicesActionResource)
                      Core.mempty

