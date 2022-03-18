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
-- Module      : Gogol.Partners.ClientMessages.Log
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Logs a generic message from the client, such as @Failed to render component@, @Profile page is running slow@, @More than 500 users have accessed this result.@, etc.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.clientMessages.log@.
module Gogol.Partners.ClientMessages.Log
    (
    -- * Resource
      PartnersClientMessagesLogResource

    -- ** Constructing a Request
    , newPartnersClientMessagesLog
    , PartnersClientMessagesLog
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Partners.Types

-- | A resource alias for @partners.clientMessages.log@ method which the
-- 'PartnersClientMessagesLog' request conforms to.
type PartnersClientMessagesLogResource =
     "v2" Core.:>
       "clientMessages:log" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] LogMessageRequest Core.:>
                       Core.Post '[Core.JSON] LogMessageResponse

-- | Logs a generic message from the client, such as @Failed to render component@, @Profile page is running slow@, @More than 500 users have accessed this result.@, etc.
--
-- /See:/ 'newPartnersClientMessagesLog' smart constructor.
data PartnersClientMessagesLog = PartnersClientMessagesLog
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: LogMessageRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnersClientMessagesLog' with the minimum fields required to make a request.
newPartnersClientMessagesLog 
    ::  LogMessageRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> PartnersClientMessagesLog
newPartnersClientMessagesLog payload =
  PartnersClientMessagesLog
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PartnersClientMessagesLog
         where
        type Rs PartnersClientMessagesLog =
             LogMessageResponse
        type Scopes PartnersClientMessagesLog = '[]
        requestClient PartnersClientMessagesLog{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              partnersService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PartnersClientMessagesLogResource)
                      Core.mempty

