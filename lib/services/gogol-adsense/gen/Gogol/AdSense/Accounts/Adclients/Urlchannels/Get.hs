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
-- Module      : Gogol.AdSense.Accounts.Adclients.Urlchannels.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the selected url channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.urlchannels.get@.
module Gogol.AdSense.Accounts.Adclients.Urlchannels.Get
    (
    -- * Resource
      AdSenseAccountsAdclientsUrlchannelsGetResource

    -- ** Constructing a Request
    , AdSenseAccountsAdclientsUrlchannelsGet (..)
    , newAdSenseAccountsAdclientsUrlchannelsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSense.Types

-- | A resource alias for @adsense.accounts.adclients.urlchannels.get@ method which the
-- 'AdSenseAccountsAdclientsUrlchannelsGet' request conforms to.
type AdSenseAccountsAdclientsUrlchannelsGetResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] UrlChannel

-- | Gets information about the selected url channel.
--
-- /See:/ 'newAdSenseAccountsAdclientsUrlchannelsGet' smart constructor.
data AdSenseAccountsAdclientsUrlchannelsGet = AdSenseAccountsAdclientsUrlchannelsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the url channel to retrieve. Format: accounts\/{account}\/adclients\/{adclient}\/urlchannels\/{urlchannel}
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsUrlchannelsGet' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsUrlchannelsGet 
    ::  Core.Text
       -- ^  Required. The name of the url channel to retrieve. Format: accounts\/{account}\/adclients\/{adclient}\/urlchannels\/{urlchannel} See 'name'.
    -> AdSenseAccountsAdclientsUrlchannelsGet
newAdSenseAccountsAdclientsUrlchannelsGet name =
  AdSenseAccountsAdclientsUrlchannelsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdSenseAccountsAdclientsUrlchannelsGet
         where
        type Rs AdSenseAccountsAdclientsUrlchannelsGet =
             UrlChannel
        type Scopes AdSenseAccountsAdclientsUrlchannelsGet =
             '[Adsense'FullControl, Adsense'Readonly]
        requestClient
          AdSenseAccountsAdclientsUrlchannelsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adSenseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdSenseAccountsAdclientsUrlchannelsGetResource)
                      Core.mempty

