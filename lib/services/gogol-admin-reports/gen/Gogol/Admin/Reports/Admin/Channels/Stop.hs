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
-- Module      : Gogol.Admin.Reports.Admin.Channels.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop watching resources through this channel.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.channels.stop@.
module Gogol.Admin.Reports.Admin.Channels.Stop
    (
    -- * Resource
      AdminChannelsStopResource

    -- ** Constructing a Request
    , newAdminChannelsStop
    , AdminChannelsStop
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Reports.Types

-- | A resource alias for @admin.channels.stop@ method which the
-- 'AdminChannelsStop' request conforms to.
type AdminChannelsStopResource =
     "admin" Core.:>
       "reports_v1" Core.:>
         "channels" Core.:>
           "stop" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Channel Core.:>
                           Core.Post '[Core.JSON] ()

-- | Stop watching resources through this channel.
--
-- /See:/ 'newAdminChannelsStop' smart constructor.
data AdminChannelsStop = AdminChannelsStop
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Channel
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminChannelsStop' with the minimum fields required to make a request.
newAdminChannelsStop 
    ::  Channel
       -- ^  Multipart request metadata. See 'payload'.
    -> AdminChannelsStop
newAdminChannelsStop payload =
  AdminChannelsStop
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdminChannelsStop where
        type Rs AdminChannelsStop = ()
        type Scopes AdminChannelsStop =
             '["https://www.googleapis.com/auth/admin.reports.audit.readonly"]
        requestClient AdminChannelsStop{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminReportsService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy AdminChannelsStopResource)
                      Core.mempty

