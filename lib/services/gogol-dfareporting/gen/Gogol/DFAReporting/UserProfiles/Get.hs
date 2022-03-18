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
-- Module      : Gogol.DFAReporting.UserProfiles.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userProfiles.get@.
module Gogol.DFAReporting.UserProfiles.Get
    (
    -- * Resource
      DFAReportingUserProfilesGetResource

    -- ** Constructing a Request
    , newDFAReportingUserProfilesGet
    , DFAReportingUserProfilesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.userProfiles.get@ method which the
-- 'DFAReportingUserProfilesGet' request conforms to.
type DFAReportingUserProfilesGetResource =
     "dfareporting" Core.:>
       "v3.5" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] UserProfile

-- | Gets one user profile by ID.
--
-- /See:/ 'newDFAReportingUserProfilesGet' smart constructor.
data DFAReportingUserProfilesGet = DFAReportingUserProfilesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The user profile ID.
    , profileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingUserProfilesGet' with the minimum fields required to make a request.
newDFAReportingUserProfilesGet 
    ::  Core.Int64
       -- ^  The user profile ID. See 'profileId'.
    -> DFAReportingUserProfilesGet
newDFAReportingUserProfilesGet profileId =
  DFAReportingUserProfilesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , profileId = profileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingUserProfilesGet
         where
        type Rs DFAReportingUserProfilesGet = UserProfile
        type Scopes DFAReportingUserProfilesGet =
             '["https://www.googleapis.com/auth/ddmconversions",
               "https://www.googleapis.com/auth/dfareporting",
               "https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DFAReportingUserProfilesGet{..}
          = go profileId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingUserProfilesGetResource)
                      Core.mempty

