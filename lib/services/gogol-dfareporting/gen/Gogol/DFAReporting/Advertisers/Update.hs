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
-- Module      : Gogol.DFAReporting.Advertisers.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertisers.update@.
module Gogol.DFAReporting.Advertisers.Update
    (
    -- * Resource
      DFAReportingAdvertisersUpdateResource

    -- ** Constructing a Request
    , newDFAReportingAdvertisersUpdate
    , DFAReportingAdvertisersUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.advertisers.update@ method which the
-- 'DFAReportingAdvertisersUpdate' request conforms to.
type DFAReportingAdvertisersUpdateResource =
     "dfareporting" Core.:>
       "v3.5" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "advertisers" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Advertiser Core.:>
                             Core.Put '[Core.JSON] Advertiser

-- | Updates an existing advertiser.
--
-- /See:/ 'newDFAReportingAdvertisersUpdate' smart constructor.
data DFAReportingAdvertisersUpdate = DFAReportingAdvertisersUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Advertiser
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingAdvertisersUpdate' with the minimum fields required to make a request.
newDFAReportingAdvertisersUpdate 
    ::  Advertiser
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingAdvertisersUpdate
newDFAReportingAdvertisersUpdate payload profileId =
  DFAReportingAdvertisersUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , profileId = profileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingAdvertisersUpdate
         where
        type Rs DFAReportingAdvertisersUpdate = Advertiser
        type Scopes DFAReportingAdvertisersUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DFAReportingAdvertisersUpdate{..}
          = go profileId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingAdvertisersUpdateResource)
                      Core.mempty

