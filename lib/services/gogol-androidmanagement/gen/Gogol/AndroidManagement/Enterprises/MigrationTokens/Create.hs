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
-- Module      : Gogol.AndroidManagement.Enterprises.MigrationTokens.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a migration token, to migrate an existing device from being managed by the EMM\'s Device Policy Controller (DPC) to being managed by the Android Management API. See the guide (https:\/\/developers.google.com\/android\/management\/dpc-migration) for more details.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.migrationTokens.create@.
module Gogol.AndroidManagement.Enterprises.MigrationTokens.Create
    (
    -- * Resource
      AndroidManagementEnterprisesMigrationTokensCreateResource

    -- ** Constructing a Request
    , AndroidManagementEnterprisesMigrationTokensCreate (..)
    , newAndroidManagementEnterprisesMigrationTokensCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Types

-- | A resource alias for @androidmanagement.enterprises.migrationTokens.create@ method which the
-- 'AndroidManagementEnterprisesMigrationTokensCreate' request conforms to.
type AndroidManagementEnterprisesMigrationTokensCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "migrationTokens" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] MigrationToken Core.:>
                         Core.Post '[Core.JSON] MigrationToken

-- | Creates a migration token, to migrate an existing device from being managed by the EMM\'s Device Policy Controller (DPC) to being managed by the Android Management API. See the guide (https:\/\/developers.google.com\/android\/management\/dpc-migration) for more details.
--
-- /See:/ 'newAndroidManagementEnterprisesMigrationTokensCreate' smart constructor.
data AndroidManagementEnterprisesMigrationTokensCreate = AndroidManagementEnterprisesMigrationTokensCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The enterprise in which this migration token is created. This must be the same enterprise which already manages the device in the Play EMM API. Format: enterprises\/{enterprise}
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: MigrationToken
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesMigrationTokensCreate' with the minimum fields required to make a request.
newAndroidManagementEnterprisesMigrationTokensCreate 
    ::  Core.Text
       -- ^  Required. The enterprise in which this migration token is created. This must be the same enterprise which already manages the device in the Play EMM API. Format: enterprises\/{enterprise} See 'parent'.
    -> MigrationToken
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidManagementEnterprisesMigrationTokensCreate
newAndroidManagementEnterprisesMigrationTokensCreate parent payload =
  AndroidManagementEnterprisesMigrationTokensCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidManagementEnterprisesMigrationTokensCreate
         where
        type Rs
               AndroidManagementEnterprisesMigrationTokensCreate
             = MigrationToken
        type Scopes
               AndroidManagementEnterprisesMigrationTokensCreate
             = '[Androidmanagement'FullControl]
        requestClient
          AndroidManagementEnterprisesMigrationTokensCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidManagementEnterprisesMigrationTokensCreateResource)
                      Core.mempty

