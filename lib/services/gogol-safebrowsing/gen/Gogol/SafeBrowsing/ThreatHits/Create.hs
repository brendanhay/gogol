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
-- Module      : Gogol.SafeBrowsing.ThreatHits.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports a Safe Browsing threat list hit to Google. Only projects with TRUSTED_REPORTER visibility can use this method.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.threatHits.create@.
module Gogol.SafeBrowsing.ThreatHits.Create
    (
    -- * Resource
      SafeBrowsingThreatHitsCreateResource

    -- ** Constructing a Request
    , SafeBrowsingThreatHitsCreate (..)
    , newSafeBrowsingThreatHitsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatHits.create@ method which the
-- 'SafeBrowsingThreatHitsCreate' request conforms to.
type SafeBrowsingThreatHitsCreateResource =
     "v4" Core.:>
       "threatHits" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleSecuritySafebrowsingV4ThreatHit
                       Core.:> Core.Post '[Core.JSON] GoogleProtobufEmpty

-- | Reports a Safe Browsing threat list hit to Google. Only projects with TRUSTED_REPORTER visibility can use this method.
--
-- /See:/ 'newSafeBrowsingThreatHitsCreate' smart constructor.
data SafeBrowsingThreatHitsCreate = SafeBrowsingThreatHitsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GoogleSecuritySafebrowsingV4ThreatHit
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingThreatHitsCreate' with the minimum fields required to make a request.
newSafeBrowsingThreatHitsCreate 
    ::  GoogleSecuritySafebrowsingV4ThreatHit
       -- ^  Multipart request metadata. See 'payload'.
    -> SafeBrowsingThreatHitsCreate
newSafeBrowsingThreatHitsCreate payload =
  SafeBrowsingThreatHitsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SafeBrowsingThreatHitsCreate
         where
        type Rs SafeBrowsingThreatHitsCreate =
             GoogleProtobufEmpty
        type Scopes SafeBrowsingThreatHitsCreate = '[]
        requestClient SafeBrowsingThreatHitsCreate{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              safeBrowsingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SafeBrowsingThreatHitsCreateResource)
                      Core.mempty

