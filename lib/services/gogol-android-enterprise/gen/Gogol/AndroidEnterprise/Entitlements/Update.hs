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
-- Module      : Gogol.AndroidEnterprise.Entitlements.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates an entitlement to an app for a user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.update@.
module Gogol.AndroidEnterprise.Entitlements.Update
    (
    -- * Resource
      AndroidEnterpriseEntitlementsUpdateResource

    -- ** Constructing a Request
    , newAndroidEnterpriseEntitlementsUpdate
    , AndroidEnterpriseEntitlementsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.entitlements.update@ method which the
-- 'AndroidEnterpriseEntitlementsUpdate' request conforms to.
type AndroidEnterpriseEntitlementsUpdateResource =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "users" Core.:>
               Core.Capture "userId" Core.Text Core.:>
                 "entitlements" Core.:>
                   Core.Capture "entitlementId" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "install" Core.Bool Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] Entitlement Core.:>
                                     Core.Put '[Core.JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ 'newAndroidEnterpriseEntitlementsUpdate' smart constructor.
data AndroidEnterpriseEntitlementsUpdate = AndroidEnterpriseEntitlementsUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the enterprise.
    , enterpriseId :: Core.Text
      -- | The ID of the entitlement (a product ID), e.g. \"app:com.google.android.gm\".
    , entitlementId :: Core.Text
      -- | Set to true to also install the product on all the user\'s devices where possible. Failure to install on one or more devices will not prevent this operation from returning successfully, as long as the entitlement was successfully assigned to the user.
    , install :: (Core.Maybe Core.Bool)
      -- | Multipart request metadata.
    , payload :: Entitlement
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The ID of the user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEntitlementsUpdate' with the minimum fields required to make a request.
newAndroidEnterpriseEntitlementsUpdate 
    ::  Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> Core.Text
       -- ^  The ID of the entitlement (a product ID), e.g. \"app:com.google.android.gm\". See 'entitlementId'.
    -> Entitlement
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The ID of the user. See 'userId'.
    -> AndroidEnterpriseEntitlementsUpdate
newAndroidEnterpriseEntitlementsUpdate enterpriseId entitlementId payload userId =
  AndroidEnterpriseEntitlementsUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enterpriseId = enterpriseId
    , entitlementId = entitlementId
    , install = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest
           AndroidEnterpriseEntitlementsUpdate
         where
        type Rs AndroidEnterpriseEntitlementsUpdate =
             Entitlement
        type Scopes AndroidEnterpriseEntitlementsUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient AndroidEnterpriseEntitlementsUpdate{..}
          = go enterpriseId userId entitlementId xgafv
              accessToken
              callback
              install
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseEntitlementsUpdateResource)
                      Core.mempty

