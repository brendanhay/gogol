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
-- Module      : Gogol.AdSenseHost.Urlchannels.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all host URL channels in the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.urlchannels.list@.
module Gogol.AdSenseHost.Urlchannels.List
    (
    -- * Resource
      AdSenseHostUrlchannelsListResource

    -- ** Constructing a Request
    , AdSenseHostUrlchannelsList (..)
    , newAdSenseHostUrlchannelsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSenseHost.Types

-- | A resource alias for @adsensehost.urlchannels.list@ method which the
-- 'AdSenseHostUrlchannelsList' request conforms to.
type AdSenseHostUrlchannelsListResource =
     "adsensehost" Core.:>
       "v4.1" Core.:>
         "adclients" Core.:>
           Core.Capture "adClientId" Core.Text Core.:>
             "urlchannels" Core.:>
               Core.QueryParam "maxResults" Core.Word32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] UrlChannels

-- | List all host URL channels in the host AdSense account.
--
-- /See:/ 'newAdSenseHostUrlchannelsList' smart constructor.
data AdSenseHostUrlchannelsList = AdSenseHostUrlchannelsList
    {
      -- | Ad client for which to list URL channels.
      adClientId :: Core.Text
      -- | The maximum number of URL channels to include in the response, used for paging.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostUrlchannelsList' with the minimum fields required to make a request.
newAdSenseHostUrlchannelsList 
    ::  Core.Text
       -- ^  Ad client for which to list URL channels. See 'adClientId'.
    -> AdSenseHostUrlchannelsList
newAdSenseHostUrlchannelsList adClientId =
  AdSenseHostUrlchannelsList
    { adClientId = adClientId
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    }

instance Core.GoogleRequest
           AdSenseHostUrlchannelsList
         where
        type Rs AdSenseHostUrlchannelsList = UrlChannels
        type Scopes AdSenseHostUrlchannelsList =
             '[Adsensehost'FullControl]
        requestClient AdSenseHostUrlchannelsList{..}
          = go adClientId maxResults pageToken
              (Core.Just Core.AltJSON)
              adSenseHostService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseHostUrlchannelsListResource)
                      Core.mempty

