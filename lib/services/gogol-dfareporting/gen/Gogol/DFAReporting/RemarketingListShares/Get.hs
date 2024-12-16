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
-- Module      : Gogol.DFAReporting.RemarketingListShares.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one remarketing list share by remarketing list ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingListShares.get@.
module Gogol.DFAReporting.RemarketingListShares.Get
    (
    -- * Resource
      DFAReportingRemarketingListSharesGetResource

    -- ** Constructing a Request
    , DFAReportingRemarketingListSharesGet (..)
    , newDFAReportingRemarketingListSharesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.remarketingListShares.get@ method which the
-- 'DFAReportingRemarketingListSharesGet' request conforms to.
type DFAReportingRemarketingListSharesGetResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "remarketingListShares" Core.:>
               Core.Capture "remarketingListId" Core.Int64 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] RemarketingListShare

-- | Gets one remarketing list share by remarketing list ID.
--
-- /See:/ 'newDFAReportingRemarketingListSharesGet' smart constructor.
data DFAReportingRemarketingListSharesGet = DFAReportingRemarketingListSharesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Remarketing list ID.
    , remarketingListId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingRemarketingListSharesGet' with the minimum fields required to make a request.
newDFAReportingRemarketingListSharesGet 
    ::  Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> Core.Int64
       -- ^  Remarketing list ID. See 'remarketingListId'.
    -> DFAReportingRemarketingListSharesGet
newDFAReportingRemarketingListSharesGet profileId remarketingListId =
  DFAReportingRemarketingListSharesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , profileId = profileId
    , remarketingListId = remarketingListId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingRemarketingListSharesGet
         where
        type Rs DFAReportingRemarketingListSharesGet =
             RemarketingListShare
        type Scopes DFAReportingRemarketingListSharesGet =
             '[Dfatrafficking'FullControl]
        requestClient
          DFAReportingRemarketingListSharesGet{..}
          = go profileId remarketingListId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DFAReportingRemarketingListSharesGetResource)
                      Core.mempty

