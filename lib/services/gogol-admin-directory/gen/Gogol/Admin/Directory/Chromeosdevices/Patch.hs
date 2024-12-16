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
-- Module      : Gogol.Admin.Directory.Chromeosdevices.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device\'s updatable properties, such as @annotatedUser@, @annotatedLocation@, @notes@, @orgUnitPath@, or @annotatedAssetId@. This method supports </admin-sdk/directory/v1/guides/performance#patch patch semantics>.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.patch@.
module Gogol.Admin.Directory.Chromeosdevices.Patch
    (
    -- * Resource
      DirectoryChromeosdevicesPatchResource

    -- ** Constructing a Request
    , DirectoryChromeosdevicesPatch (..)
    , newDirectoryChromeosdevicesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.chromeosdevices.patch@ method which the
-- 'DirectoryChromeosdevicesPatch' request conforms to.
type DirectoryChromeosdevicesPatchResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customerId" Core.Text Core.:>
               "devices" Core.:>
                 "chromeos" Core.:>
                   Core.Capture "deviceId" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "projection"
                             ChromeosdevicesPatchProjection
                             Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] ChromeOsDevice
                                     Core.:>
                                     Core.Patch '[Core.JSON] ChromeOsDevice

-- | Updates a device\'s updatable properties, such as @annotatedUser@, @annotatedLocation@, @notes@, @orgUnitPath@, or @annotatedAssetId@. This method supports </admin-sdk/directory/v1/guides/performance#patch patch semantics>.
--
-- /See:/ 'newDirectoryChromeosdevicesPatch' smart constructor.
data DirectoryChromeosdevicesPatch = DirectoryChromeosdevicesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    , customerId :: Core.Text
      -- | The unique ID of the device. The @deviceId@s are returned in the response from the </admin-sdk/v1/reference/chromeosdevices/list chromeosdevices.list> method.
    , deviceId :: Core.Text
      -- | Multipart request metadata.
    , payload :: ChromeOsDevice
      -- | Determines whether the response contains the full list of properties or only a subset.
    , projection :: (Core.Maybe ChromeosdevicesPatchProjection)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesPatch' with the minimum fields required to make a request.
newDirectoryChromeosdevicesPatch 
    ::  Core.Text
       -- ^  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
    -> Core.Text
       -- ^  The unique ID of the device. The @deviceId@s are returned in the response from the </admin-sdk/v1/reference/chromeosdevices/list chromeosdevices.list> method. See 'deviceId'.
    -> ChromeOsDevice
       -- ^  Multipart request metadata. See 'payload'.
    -> DirectoryChromeosdevicesPatch
newDirectoryChromeosdevicesPatch customerId deviceId payload =
  DirectoryChromeosdevicesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = customerId
    , deviceId = deviceId
    , payload = payload
    , projection = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryChromeosdevicesPatch
         where
        type Rs DirectoryChromeosdevicesPatch =
             ChromeOsDevice
        type Scopes DirectoryChromeosdevicesPatch =
             '[Admin'Directory'Device'Chromeos]
        requestClient DirectoryChromeosdevicesPatch{..}
          = go customerId deviceId xgafv accessToken callback
              projection
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryChromeosdevicesPatchResource)
                      Core.mempty

