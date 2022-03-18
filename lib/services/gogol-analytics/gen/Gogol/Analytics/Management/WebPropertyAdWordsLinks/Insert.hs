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
-- Module      : Gogol.Analytics.Management.WebPropertyAdWordsLinks.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a webProperty-Google Ads link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.insert@.
module Gogol.Analytics.Management.WebPropertyAdWordsLinks.Insert
    (
    -- * Resource
      AnalyticsManagementWebPropertyAdWordsLinksInsertResource

    -- ** Constructing a Request
    , newAnalyticsManagementWebPropertyAdWordsLinksInsert
    , AnalyticsManagementWebPropertyAdWordsLinksInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.webPropertyAdWordsLinks.insert@ method which the
-- 'AnalyticsManagementWebPropertyAdWordsLinksInsert' request conforms to.
type AnalyticsManagementWebPropertyAdWordsLinksInsertResource
     =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "entityAdWordsLinks" Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] EntityAdWordsLink Core.:>
                         Core.Post '[Core.JSON] EntityAdWordsLink

-- | Creates a webProperty-Google Ads link.
--
-- /See:/ 'newAnalyticsManagementWebPropertyAdWordsLinksInsert' smart constructor.
data AnalyticsManagementWebPropertyAdWordsLinksInsert = AnalyticsManagementWebPropertyAdWordsLinksInsert
    {
      -- | ID of the Google Analytics account to create the link for.
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: EntityAdWordsLink
      -- | Web property ID to create the link for.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebPropertyAdWordsLinksInsert' with the minimum fields required to make a request.
newAnalyticsManagementWebPropertyAdWordsLinksInsert 
    ::  Core.Text
       -- ^  ID of the Google Analytics account to create the link for. See 'accountId'.
    -> EntityAdWordsLink
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property ID to create the link for. See 'webPropertyId'.
    -> AnalyticsManagementWebPropertyAdWordsLinksInsert
newAnalyticsManagementWebPropertyAdWordsLinksInsert accountId payload webPropertyId =
  AnalyticsManagementWebPropertyAdWordsLinksInsert
    {accountId = accountId, payload = payload, webPropertyId = webPropertyId}

instance Core.GoogleRequest
           AnalyticsManagementWebPropertyAdWordsLinksInsert
         where
        type Rs
               AnalyticsManagementWebPropertyAdWordsLinksInsert
             = EntityAdWordsLink
        type Scopes
               AnalyticsManagementWebPropertyAdWordsLinksInsert
             = '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementWebPropertyAdWordsLinksInsert{..}
          = go accountId webPropertyId (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementWebPropertyAdWordsLinksInsertResource)
                      Core.mempty

