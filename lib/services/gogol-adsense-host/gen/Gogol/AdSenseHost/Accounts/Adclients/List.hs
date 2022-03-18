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
-- Module      : Gogol.AdSenseHost.Accounts.Adclients.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all hosted ad clients in the specified hosted account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adclients.list@.
module Gogol.AdSenseHost.Accounts.Adclients.List
    (
    -- * Resource
      AdSenseHostAccountsAdclientsListResource

    -- ** Constructing a Request
    , newAdSenseHostAccountsAdclientsList
    , AdSenseHostAccountsAdclientsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSenseHost.Types

-- | A resource alias for @adsensehost.accounts.adclients.list@ method which the
-- 'AdSenseHostAccountsAdclientsList' request conforms to.
type AdSenseHostAccountsAdclientsListResource =
     "adsensehost" Core.:>
       "v4.1" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Text Core.:>
             "adclients" Core.:>
               Core.QueryParam "maxResults" Core.Word32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] AdClients

-- | List all hosted ad clients in the specified hosted account.
--
-- /See:/ 'newAdSenseHostAccountsAdclientsList' smart constructor.
data AdSenseHostAccountsAdclientsList = AdSenseHostAccountsAdclientsList
    {
      -- | Account for which to list ad clients.
      accountId :: Core.Text
      -- | The maximum number of ad clients to include in the response, used for paging.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdclientsList' with the minimum fields required to make a request.
newAdSenseHostAccountsAdclientsList 
    ::  Core.Text
       -- ^  Account for which to list ad clients. See 'accountId'.
    -> AdSenseHostAccountsAdclientsList
newAdSenseHostAccountsAdclientsList accountId =
  AdSenseHostAccountsAdclientsList
    {accountId = accountId, maxResults = Core.Nothing, pageToken = Core.Nothing}

instance Core.GoogleRequest
           AdSenseHostAccountsAdclientsList
         where
        type Rs AdSenseHostAccountsAdclientsList = AdClients
        type Scopes AdSenseHostAccountsAdclientsList =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AdSenseHostAccountsAdclientsList{..}
          = go accountId maxResults pageToken
              (Core.Just Core.AltJSON)
              adSenseHostService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseHostAccountsAdclientsListResource)
                      Core.mempty

