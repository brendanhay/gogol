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
-- Module      : Gogol.AppsReseller.Reseller.Resellernotify.Unregister
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unregisters a Reseller for receiving notifications.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.resellernotify.unregister@.
module Gogol.AppsReseller.Reseller.Resellernotify.Unregister
    (
    -- * Resource
      ResellerResellernotifyUnregisterResource

    -- ** Constructing a Request
    , ResellerResellernotifyUnregister (..)
    , newResellerResellernotifyUnregister
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsReseller.Types

-- | A resource alias for @reseller.resellernotify.unregister@ method which the
-- 'ResellerResellernotifyUnregister' request conforms to.
type ResellerResellernotifyUnregisterResource =
     "apps" Core.:>
       "reseller" Core.:>
         "v1" Core.:>
           "resellernotify" Core.:>
             "unregister" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "serviceAccountEmailAddress"
                       Core.Text
                       Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Post '[Core.JSON] ResellernotifyResource

-- | Unregisters a Reseller for receiving notifications.
--
-- /See:/ 'newResellerResellernotifyUnregister' smart constructor.
data ResellerResellernotifyUnregister = ResellerResellernotifyUnregister
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The service account which owns the Cloud-PubSub topic.
    , serviceAccountEmailAddress :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerResellernotifyUnregister' with the minimum fields required to make a request.
newResellerResellernotifyUnregister 
    ::  ResellerResellernotifyUnregister
newResellerResellernotifyUnregister =
  ResellerResellernotifyUnregister
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , serviceAccountEmailAddress = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ResellerResellernotifyUnregister
         where
        type Rs ResellerResellernotifyUnregister =
             ResellernotifyResource
        type Scopes ResellerResellernotifyUnregister =
             '[Apps'Order]
        requestClient ResellerResellernotifyUnregister{..}
          = go xgafv accessToken callback
              serviceAccountEmailAddress
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appsResellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ResellerResellernotifyUnregisterResource)
                      Core.mempty

