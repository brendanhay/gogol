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
-- Module      : Gogol.Analytics.Management.Webproperties.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing web property. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.patch@.
module Gogol.Analytics.Management.Webproperties.Patch
    (
    -- * Resource
      AnalyticsManagementWebpropertiesPatchResource

    -- ** Constructing a Request
    , newAnalyticsManagementWebpropertiesPatch
    , AnalyticsManagementWebpropertiesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.webproperties.patch@ method which the
-- 'AnalyticsManagementWebpropertiesPatch' request conforms to.
type AnalyticsManagementWebpropertiesPatchResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] Webproperty Core.:>
                       Core.Patch '[Core.JSON] Webproperty

-- | Updates an existing web property. This method supports patch semantics.
--
-- /See:/ 'newAnalyticsManagementWebpropertiesPatch' smart constructor.
data AnalyticsManagementWebpropertiesPatch = AnalyticsManagementWebpropertiesPatch
    {
      -- | Account ID to which the web property belongs
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Webproperty
      -- | Web property ID
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertiesPatch' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertiesPatch 
    ::  Core.Text
       -- ^  Account ID to which the web property belongs See 'accountId'.
    -> Webproperty
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property ID See 'webPropertyId'.
    -> AnalyticsManagementWebpropertiesPatch
newAnalyticsManagementWebpropertiesPatch accountId payload webPropertyId =
  AnalyticsManagementWebpropertiesPatch
    {accountId = accountId, payload = payload, webPropertyId = webPropertyId}

instance Core.GoogleRequest
           AnalyticsManagementWebpropertiesPatch
         where
        type Rs AnalyticsManagementWebpropertiesPatch =
             Webproperty
        type Scopes AnalyticsManagementWebpropertiesPatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementWebpropertiesPatch{..}
          = go accountId webPropertyId (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementWebpropertiesPatchResource)
                      Core.mempty

