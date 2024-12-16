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
-- Module      : Gogol.DFAReporting.CreativeFieldValues.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one creative field value by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFieldValues.get@.
module Gogol.DFAReporting.CreativeFieldValues.Get
    (
    -- * Resource
      DFAReportingCreativeFieldValuesGetResource

    -- ** Constructing a Request
    , DFAReportingCreativeFieldValuesGet (..)
    , newDFAReportingCreativeFieldValuesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.creativeFieldValues.get@ method which the
-- 'DFAReportingCreativeFieldValuesGet' request conforms to.
type DFAReportingCreativeFieldValuesGetResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "creativeFields" Core.:>
               Core.Capture "creativeFieldId" Core.Int64 Core.:>
                 "creativeFieldValues" Core.:>
                   Core.Capture "id" Core.Int64 Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] CreativeFieldValue

-- | Gets one creative field value by ID.
--
-- /See:/ 'newDFAReportingCreativeFieldValuesGet' smart constructor.
data DFAReportingCreativeFieldValuesGet = DFAReportingCreativeFieldValuesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Creative field ID for this creative field value.
    , creativeFieldId :: Core.Int64
      -- | Creative Field Value ID
    , id :: Core.Int64
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCreativeFieldValuesGet' with the minimum fields required to make a request.
newDFAReportingCreativeFieldValuesGet 
    ::  Core.Int64
       -- ^  Creative field ID for this creative field value. See 'creativeFieldId'.
    -> Core.Int64
       -- ^  Creative Field Value ID See 'id'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingCreativeFieldValuesGet
newDFAReportingCreativeFieldValuesGet creativeFieldId id profileId =
  DFAReportingCreativeFieldValuesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , creativeFieldId = creativeFieldId
    , id = id
    , profileId = profileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingCreativeFieldValuesGet
         where
        type Rs DFAReportingCreativeFieldValuesGet =
             CreativeFieldValue
        type Scopes DFAReportingCreativeFieldValuesGet =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingCreativeFieldValuesGet{..}
          = go profileId creativeFieldId id xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DFAReportingCreativeFieldValuesGetResource)
                      Core.mempty

