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
-- Module      : Gogol.AdSense.Accounts.Alerts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the alerts available in an account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.alerts.list@.
module Gogol.AdSense.Accounts.Alerts.List
    (
    -- * Resource
      AdSenseAccountsAlertsListResource

    -- ** Constructing a Request
    , AdSenseAccountsAlertsList (..)
    , newAdSenseAccountsAlertsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSense.Types

-- | A resource alias for @adsense.accounts.alerts.list@ method which the
-- 'AdSenseAccountsAlertsList' request conforms to.
type AdSenseAccountsAlertsListResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "alerts" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "languageCode" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] ListAlertsResponse

-- | Lists all the alerts available in an account.
--
-- /See:/ 'newAdSenseAccountsAlertsList' smart constructor.
data AdSenseAccountsAlertsList = AdSenseAccountsAlertsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The language to use for translating alert messages. If unspecified, this defaults to the user\'s display language. If the given language is not supported, alerts will be returned in English. The language is specified as an <https://en.wikipedia.org/wiki/IETF_language_tag IETF BCP-47 language code>.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Required. The account which owns the collection of alerts. Format: accounts\/{account}
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAlertsList' with the minimum fields required to make a request.
newAdSenseAccountsAlertsList 
    ::  Core.Text
       -- ^  Required. The account which owns the collection of alerts. Format: accounts\/{account} See 'parent'.
    -> AdSenseAccountsAlertsList
newAdSenseAccountsAlertsList parent =
  AdSenseAccountsAlertsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , languageCode = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdSenseAccountsAlertsList
         where
        type Rs AdSenseAccountsAlertsList =
             ListAlertsResponse
        type Scopes AdSenseAccountsAlertsList =
             '[Adsense'FullControl, Adsense'Readonly]
        requestClient AdSenseAccountsAlertsList{..}
          = go parent xgafv accessToken callback languageCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adSenseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseAccountsAlertsListResource)
                      Core.mempty

