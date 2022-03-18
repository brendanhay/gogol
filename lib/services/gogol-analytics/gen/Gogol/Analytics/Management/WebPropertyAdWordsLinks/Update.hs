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
-- Module      : Gogol.Analytics.Management.WebPropertyAdWordsLinks.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing webProperty-Google Ads link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.update@.
module Gogol.Analytics.Management.WebPropertyAdWordsLinks.Update
    (
    -- * Resource
      AnalyticsManagementWebPropertyAdWordsLinksUpdateResource

    -- ** Constructing a Request
    , newAnalyticsManagementWebPropertyAdWordsLinksUpdate
    , AnalyticsManagementWebPropertyAdWordsLinksUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.webPropertyAdWordsLinks.update@ method which the
-- 'AnalyticsManagementWebPropertyAdWordsLinksUpdate' request conforms to.
type AnalyticsManagementWebPropertyAdWordsLinksUpdateResource
     =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "entityAdWordsLinks" Core.:>
                     Core.Capture "webPropertyAdWordsLinkId" Core.Text
                       Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] EntityAdWordsLink Core.:>
                           Core.Put '[Core.JSON] EntityAdWordsLink

-- | Updates an existing webProperty-Google Ads link.
--
-- /See:/ 'newAnalyticsManagementWebPropertyAdWordsLinksUpdate' smart constructor.
data AnalyticsManagementWebPropertyAdWordsLinksUpdate = AnalyticsManagementWebPropertyAdWordsLinksUpdate
    {
      -- | ID of the account which the given web property belongs to.
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: EntityAdWordsLink
      -- | Web property-Google Ads link ID.
    , webPropertyAdWordsLinkId :: Core.Text
      -- | Web property ID to retrieve the Google Ads link for.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebPropertyAdWordsLinksUpdate' with the minimum fields required to make a request.
newAnalyticsManagementWebPropertyAdWordsLinksUpdate 
    ::  Core.Text
       -- ^  ID of the account which the given web property belongs to. See 'accountId'.
    -> EntityAdWordsLink
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property-Google Ads link ID. See 'webPropertyAdWordsLinkId'.
    -> Core.Text
       -- ^  Web property ID to retrieve the Google Ads link for. See 'webPropertyId'.
    -> AnalyticsManagementWebPropertyAdWordsLinksUpdate
newAnalyticsManagementWebPropertyAdWordsLinksUpdate accountId payload webPropertyAdWordsLinkId webPropertyId =
  AnalyticsManagementWebPropertyAdWordsLinksUpdate
    { accountId = accountId
    , payload = payload
    , webPropertyAdWordsLinkId = webPropertyAdWordsLinkId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementWebPropertyAdWordsLinksUpdate
         where
        type Rs
               AnalyticsManagementWebPropertyAdWordsLinksUpdate
             = EntityAdWordsLink
        type Scopes
               AnalyticsManagementWebPropertyAdWordsLinksUpdate
             = '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementWebPropertyAdWordsLinksUpdate{..}
          = go accountId webPropertyId webPropertyAdWordsLinkId
              (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementWebPropertyAdWordsLinksUpdateResource)
                      Core.mempty

