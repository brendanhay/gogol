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
-- Module      : Gogol.AndroidManagement.Enterprises.Devices.IssueCommand
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Issues a command to a device. The Operation resource returned contains a Command in its metadata field. Use the get operation method to get the status of the command.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.issueCommand@.
module Gogol.AndroidManagement.Enterprises.Devices.IssueCommand
    (
    -- * Resource
      AndroidManagementEnterprisesDevicesIssueCommandResource

    -- ** Constructing a Request
    , newAndroidManagementEnterprisesDevicesIssueCommand
    , AndroidManagementEnterprisesDevicesIssueCommand
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Types

-- | A resource alias for @androidmanagement.enterprises.devices.issueCommand@ method which the
-- 'AndroidManagementEnterprisesDevicesIssueCommand' request conforms to.
type AndroidManagementEnterprisesDevicesIssueCommandResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "issueCommand" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] Command Core.:>
                       Core.Post '[Core.JSON] Operation

-- | Issues a command to a device. The Operation resource returned contains a Command in its metadata field. Use the get operation method to get the status of the command.
--
-- /See:/ 'newAndroidManagementEnterprisesDevicesIssueCommand' smart constructor.
data AndroidManagementEnterprisesDevicesIssueCommand = AndroidManagementEnterprisesDevicesIssueCommand
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Command
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesDevicesIssueCommand' with the minimum fields required to make a request.
newAndroidManagementEnterprisesDevicesIssueCommand 
    ::  Core.Text
       -- ^  The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}. See 'name'.
    -> Command
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidManagementEnterprisesDevicesIssueCommand
newAndroidManagementEnterprisesDevicesIssueCommand name payload =
  AndroidManagementEnterprisesDevicesIssueCommand
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidManagementEnterprisesDevicesIssueCommand
         where
        type Rs
               AndroidManagementEnterprisesDevicesIssueCommand
             = Operation
        type Scopes
               AndroidManagementEnterprisesDevicesIssueCommand
             =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient
          AndroidManagementEnterprisesDevicesIssueCommand{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidManagementEnterprisesDevicesIssueCommandResource)
                      Core.mempty

