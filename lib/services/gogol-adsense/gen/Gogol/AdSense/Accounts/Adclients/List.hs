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
-- Module      : Gogol.AdSense.Accounts.Adclients.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the ad clients available in an account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.list@.
module Gogol.AdSense.Accounts.Adclients.List
    (
    -- * Resource
      AdSenseAccountsAdclientsListResource

    -- ** Constructing a Request
    , AdSenseAccountsAdclientsList (..)
    , newAdSenseAccountsAdclientsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSense.Types

-- | A resource alias for @adsense.accounts.adclients.list@ method which the
-- 'AdSenseAccountsAdclientsList' request conforms to.
type AdSenseAccountsAdclientsListResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "adclients" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListAdClientsResponse

-- | Lists all the ad clients available in an account.
--
-- /See:/ 'newAdSenseAccountsAdclientsList' smart constructor.
data AdSenseAccountsAdclientsList = AdSenseAccountsAdclientsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of ad clients to include in the response, used for paging. If unspecified, at most 10000 ad clients will be returned. The maximum value is 10000; values above 10000 will be coerced to 10000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, received from a previous @ListAdClients@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListAdClients@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The account which owns the collection of ad clients. Format: accounts\/{account}
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsList' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsList 
    ::  Core.Text
       -- ^  Required. The account which owns the collection of ad clients. Format: accounts\/{account} See 'parent'.
    -> AdSenseAccountsAdclientsList
newAdSenseAccountsAdclientsList parent =
  AdSenseAccountsAdclientsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdSenseAccountsAdclientsList
         where
        type Rs AdSenseAccountsAdclientsList =
             ListAdClientsResponse
        type Scopes AdSenseAccountsAdclientsList =
             '[Adsense'FullControl, Adsense'Readonly]
        requestClient AdSenseAccountsAdclientsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adSenseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseAccountsAdclientsListResource)
                      Core.mempty

