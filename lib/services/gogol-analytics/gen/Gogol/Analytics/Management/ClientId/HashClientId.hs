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
-- Module      : Gogol.Analytics.Management.ClientId.HashClientId
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hashes the given Client ID.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.clientId.hashClientId@.
module Gogol.Analytics.Management.ClientId.HashClientId
    (
    -- * Resource
      AnalyticsManagementClientIdHashClientIdResource

    -- ** Constructing a Request
    , newAnalyticsManagementClientIdHashClientId
    , AnalyticsManagementClientIdHashClientId
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.clientId.hashClientId@ method which the
-- 'AnalyticsManagementClientIdHashClientId' request conforms to.
type AnalyticsManagementClientIdHashClientIdResource
     =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "clientId:hashClientId" Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON] HashClientIdRequest Core.:>
                 Core.Post '[Core.JSON] HashClientIdResponse

-- | Hashes the given Client ID.
--
-- /See:/ 'newAnalyticsManagementClientIdHashClientId' smart constructor.
newtype AnalyticsManagementClientIdHashClientId = AnalyticsManagementClientIdHashClientId
    {
      -- | Multipart request metadata.
      payload :: HashClientIdRequest
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementClientIdHashClientId' with the minimum fields required to make a request.
newAnalyticsManagementClientIdHashClientId 
    ::  HashClientIdRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AnalyticsManagementClientIdHashClientId
newAnalyticsManagementClientIdHashClientId payload =
  AnalyticsManagementClientIdHashClientId {payload = payload}

instance Core.GoogleRequest
           AnalyticsManagementClientIdHashClientId
         where
        type Rs AnalyticsManagementClientIdHashClientId =
             HashClientIdResponse
        type Scopes AnalyticsManagementClientIdHashClientId =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient
          AnalyticsManagementClientIdHashClientId{..}
          = go (Core.Just Core.AltJSON) payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementClientIdHashClientIdResource)
                      Core.mempty

