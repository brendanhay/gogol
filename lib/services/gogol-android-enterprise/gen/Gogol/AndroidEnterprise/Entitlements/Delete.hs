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
-- Module      : Gogol.AndroidEnterprise.Entitlements.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an entitlement to an app for a user. __Note:__ This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.delete@.
module Gogol.AndroidEnterprise.Entitlements.Delete
    (
    -- * Resource
      AndroidEnterpriseEntitlementsDeleteResource

    -- ** Constructing a Request
    , AndroidEnterpriseEntitlementsDelete (..)
    , newAndroidEnterpriseEntitlementsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.entitlements.delete@ method which the
-- 'AndroidEnterpriseEntitlementsDelete' request conforms to.
type AndroidEnterpriseEntitlementsDeleteResource =
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
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Delete '[Core.JSON] ()

-- | Removes an entitlement to an app for a user. __Note:__ This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.
--
-- /See:/ 'newAndroidEnterpriseEntitlementsDelete' smart constructor.
data AndroidEnterpriseEntitlementsDelete = AndroidEnterpriseEntitlementsDelete
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
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The ID of the user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEntitlementsDelete' with the minimum fields required to make a request.
newAndroidEnterpriseEntitlementsDelete 
    ::  Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> Core.Text
       -- ^  The ID of the entitlement (a product ID), e.g. \"app:com.google.android.gm\". See 'entitlementId'.
    -> Core.Text
       -- ^  The ID of the user. See 'userId'.
    -> AndroidEnterpriseEntitlementsDelete
newAndroidEnterpriseEntitlementsDelete enterpriseId entitlementId userId =
  AndroidEnterpriseEntitlementsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enterpriseId = enterpriseId
    , entitlementId = entitlementId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest
           AndroidEnterpriseEntitlementsDelete
         where
        type Rs AndroidEnterpriseEntitlementsDelete = ()
        type Scopes AndroidEnterpriseEntitlementsDelete =
             '[Androidenterprise'FullControl]
        requestClient AndroidEnterpriseEntitlementsDelete{..}
          = go enterpriseId userId entitlementId xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseEntitlementsDeleteResource)
                      Core.mempty

