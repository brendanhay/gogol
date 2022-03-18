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
-- Module      : Gogol.FirebaseDynamicLinks.ReopenAttribution
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get iOS reopen attribution for app universal link open deeplinking.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.reopenAttribution@.
module Gogol.FirebaseDynamicLinks.ReopenAttribution
    (
    -- * Resource
      FirebaseDynamicLinksReopenAttributionResource

    -- ** Constructing a Request
    , newFirebaseDynamicLinksReopenAttribution
    , FirebaseDynamicLinksReopenAttribution
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FirebaseDynamicLinks.Types

-- | A resource alias for @firebasedynamiclinks.reopenAttribution@ method which the
-- 'FirebaseDynamicLinksReopenAttribution' request conforms to.
type FirebaseDynamicLinksReopenAttributionResource =
     "v1" Core.:>
       "reopenAttribution" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GetIosReopenAttributionRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         GetIosReopenAttributionResponse

-- | Get iOS reopen attribution for app universal link open deeplinking.
--
-- /See:/ 'newFirebaseDynamicLinksReopenAttribution' smart constructor.
data FirebaseDynamicLinksReopenAttribution = FirebaseDynamicLinksReopenAttribution
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GetIosReopenAttributionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseDynamicLinksReopenAttribution' with the minimum fields required to make a request.
newFirebaseDynamicLinksReopenAttribution 
    ::  GetIosReopenAttributionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FirebaseDynamicLinksReopenAttribution
newFirebaseDynamicLinksReopenAttribution payload =
  FirebaseDynamicLinksReopenAttribution
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           FirebaseDynamicLinksReopenAttribution
         where
        type Rs FirebaseDynamicLinksReopenAttribution =
             GetIosReopenAttributionResponse
        type Scopes FirebaseDynamicLinksReopenAttribution =
             '["https://www.googleapis.com/auth/firebase"]
        requestClient
          FirebaseDynamicLinksReopenAttribution{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              firebaseDynamicLinksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           FirebaseDynamicLinksReopenAttributionResource)
                      Core.mempty

