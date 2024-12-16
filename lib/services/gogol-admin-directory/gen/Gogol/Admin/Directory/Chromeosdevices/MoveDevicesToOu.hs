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
-- Module      : Gogol.Admin.Directory.Chromeosdevices.MoveDevicesToOu
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves or inserts multiple Chrome OS devices to an organizational unit. You can move up to 50 devices at once.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.moveDevicesToOu@.
module Gogol.Admin.Directory.Chromeosdevices.MoveDevicesToOu
    (
    -- * Resource
      DirectoryChromeosdevicesMoveDevicesToOuResource

    -- ** Constructing a Request
    , DirectoryChromeosdevicesMoveDevicesToOu (..)
    , newDirectoryChromeosdevicesMoveDevicesToOu
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.chromeosdevices.moveDevicesToOu@ method which the
-- 'DirectoryChromeosdevicesMoveDevicesToOu' request conforms to.
type DirectoryChromeosdevicesMoveDevicesToOuResource
     =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customerId" Core.Text Core.:>
               "devices" Core.:>
                 "chromeos" Core.:>
                   "moveDevicesToOu" Core.:>
                     Core.QueryParam "orgUnitPath" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     ChromeOsMoveDevicesToOu
                                     Core.:> Core.Post '[Core.JSON] ()

-- | Moves or inserts multiple Chrome OS devices to an organizational unit. You can move up to 50 devices at once.
--
-- /See:/ 'newDirectoryChromeosdevicesMoveDevicesToOu' smart constructor.
data DirectoryChromeosdevicesMoveDevicesToOu = DirectoryChromeosdevicesMoveDevicesToOu
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Immutable. ID of the Google Workspace account
    , customerId :: Core.Text
      -- | Full path of the target organizational unit or its ID
    , orgUnitPath :: Core.Text
      -- | Multipart request metadata.
    , payload :: ChromeOsMoveDevicesToOu
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesMoveDevicesToOu' with the minimum fields required to make a request.
newDirectoryChromeosdevicesMoveDevicesToOu 
    ::  Core.Text
       -- ^  Immutable. ID of the Google Workspace account See 'customerId'.
    -> Core.Text
       -- ^  Full path of the target organizational unit or its ID See 'orgUnitPath'.
    -> ChromeOsMoveDevicesToOu
       -- ^  Multipart request metadata. See 'payload'.
    -> DirectoryChromeosdevicesMoveDevicesToOu
newDirectoryChromeosdevicesMoveDevicesToOu customerId orgUnitPath payload =
  DirectoryChromeosdevicesMoveDevicesToOu
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = customerId
    , orgUnitPath = orgUnitPath
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryChromeosdevicesMoveDevicesToOu
         where
        type Rs DirectoryChromeosdevicesMoveDevicesToOu = ()
        type Scopes DirectoryChromeosdevicesMoveDevicesToOu =
             '[Admin'Directory'Device'Chromeos]
        requestClient
          DirectoryChromeosdevicesMoveDevicesToOu{..}
          = go customerId (Core.Just orgUnitPath) xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DirectoryChromeosdevicesMoveDevicesToOuResource)
                      Core.mempty

