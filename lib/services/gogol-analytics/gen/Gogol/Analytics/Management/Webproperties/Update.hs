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
-- Module      : Gogol.Analytics.Management.Webproperties.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.update@.
module Gogol.Analytics.Management.Webproperties.Update
    (
    -- * Resource
      AnalyticsManagementWebpropertiesUpdateResource

    -- ** Constructing a Request
    , AnalyticsManagementWebpropertiesUpdate (..)
    , newAnalyticsManagementWebpropertiesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.webproperties.update@ method which the
-- 'AnalyticsManagementWebpropertiesUpdate' request conforms to.
type AnalyticsManagementWebpropertiesUpdateResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] Webproperty Core.:>
                       Core.Put '[Core.JSON] Webproperty

-- | Updates an existing web property.
--
-- /See:/ 'newAnalyticsManagementWebpropertiesUpdate' smart constructor.
data AnalyticsManagementWebpropertiesUpdate = AnalyticsManagementWebpropertiesUpdate
    {
      -- | Account ID to which the web property belongs
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Webproperty
      -- | Web property ID
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertiesUpdate' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertiesUpdate 
    ::  Core.Text
       -- ^  Account ID to which the web property belongs See 'accountId'.
    -> Webproperty
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property ID See 'webPropertyId'.
    -> AnalyticsManagementWebpropertiesUpdate
newAnalyticsManagementWebpropertiesUpdate accountId payload webPropertyId =
  AnalyticsManagementWebpropertiesUpdate
    {accountId = accountId, payload = payload, webPropertyId = webPropertyId}

instance Core.GoogleRequest
           AnalyticsManagementWebpropertiesUpdate
         where
        type Rs AnalyticsManagementWebpropertiesUpdate =
             Webproperty
        type Scopes AnalyticsManagementWebpropertiesUpdate =
             '[Analytics'Edit]
        requestClient
          AnalyticsManagementWebpropertiesUpdate{..}
          = go accountId webPropertyId (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementWebpropertiesUpdateResource)
                      Core.mempty

