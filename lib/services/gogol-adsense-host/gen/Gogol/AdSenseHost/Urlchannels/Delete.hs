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
-- Module      : Gogol.AdSenseHost.Urlchannels.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a URL channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.urlchannels.delete@.
module Gogol.AdSenseHost.Urlchannels.Delete
    (
    -- * Resource
      AdSenseHostUrlchannelsDeleteResource

    -- ** Constructing a Request
    , newAdSenseHostUrlchannelsDelete
    , AdSenseHostUrlchannelsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSenseHost.Types

-- | A resource alias for @adsensehost.urlchannels.delete@ method which the
-- 'AdSenseHostUrlchannelsDelete' request conforms to.
type AdSenseHostUrlchannelsDeleteResource =
     "adsensehost" Core.:>
       "v4.1" Core.:>
         "adclients" Core.:>
           Core.Capture "adClientId" Core.Text Core.:>
             "urlchannels" Core.:>
               Core.Capture "urlChannelId" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Delete '[Core.JSON] UrlChannel

-- | Delete a URL channel from the host AdSense account.
--
-- /See:/ 'newAdSenseHostUrlchannelsDelete' smart constructor.
data AdSenseHostUrlchannelsDelete = AdSenseHostUrlchannelsDelete
    {
      -- | Ad client from which to delete the URL channel.
      adClientId :: Core.Text
      -- | URL channel to delete.
    , urlChannelId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostUrlchannelsDelete' with the minimum fields required to make a request.
newAdSenseHostUrlchannelsDelete 
    ::  Core.Text
       -- ^  Ad client from which to delete the URL channel. See 'adClientId'.
    -> Core.Text
       -- ^  URL channel to delete. See 'urlChannelId'.
    -> AdSenseHostUrlchannelsDelete
newAdSenseHostUrlchannelsDelete adClientId urlChannelId =
  AdSenseHostUrlchannelsDelete
    {adClientId = adClientId, urlChannelId = urlChannelId}

instance Core.GoogleRequest
           AdSenseHostUrlchannelsDelete
         where
        type Rs AdSenseHostUrlchannelsDelete = UrlChannel
        type Scopes AdSenseHostUrlchannelsDelete =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AdSenseHostUrlchannelsDelete{..}
          = go adClientId urlChannelId (Core.Just Core.AltJSON)
              adSenseHostService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseHostUrlchannelsDeleteResource)
                      Core.mempty

