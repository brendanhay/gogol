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
-- Module      : Gogol.CivicInfo.Elections.VoterInfoQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up information relevant to a voter based on the voter\'s registered address.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.elections.voterInfoQuery@.
module Gogol.CivicInfo.Elections.VoterInfoQuery
    (
    -- * Resource
      CivicInfoElectionsVoterInfoQueryResource

    -- ** Constructing a Request
    , newCivicInfoElectionsVoterInfoQuery
    , CivicInfoElectionsVoterInfoQuery
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CivicInfo.Types

-- | A resource alias for @civicinfo.elections.voterInfoQuery@ method which the
-- 'CivicInfoElectionsVoterInfoQuery' request conforms to.
type CivicInfoElectionsVoterInfoQueryResource =
     "civicinfo" Core.:>
       "v2" Core.:>
         "voterinfo" Core.:>
           Core.QueryParam "address" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "electionId" Core.Int64 Core.:>
                     Core.QueryParam "officialOnly" Core.Bool Core.:>
                       Core.QueryParam "returnAllAvailableData" Core.Bool
                         Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] VoterInfoResponse

-- | Looks up information relevant to a voter based on the voter\'s registered address.
--
-- /See:/ 'newCivicInfoElectionsVoterInfoQuery' smart constructor.
data CivicInfoElectionsVoterInfoQuery = CivicInfoElectionsVoterInfoQuery
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The registered address of the voter to look up.
    , address :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID of the election to look up. A list of election IDs can be obtained at https:\/\/www.googleapis.com\/civicinfo\/{version}\/elections. If no election ID is specified in the query and there is more than one election with data for the given voter, the additional elections are provided in the otherElections response field.
    , electionId :: Core.Int64
      -- | If set to true, only data from official state sources will be returned.
    , officialOnly :: Core.Bool
      -- | If set to true, the query will return the success code and include any partial information when it is unable to determine a matching address or unable to determine the election for electionId=0 queries.
    , returnAllAvailableData :: Core.Bool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicInfoElectionsVoterInfoQuery' with the minimum fields required to make a request.
newCivicInfoElectionsVoterInfoQuery 
    ::  Core.Text
       -- ^  The registered address of the voter to look up. See 'address'.
    -> CivicInfoElectionsVoterInfoQuery
newCivicInfoElectionsVoterInfoQuery address =
  CivicInfoElectionsVoterInfoQuery
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , address = address
    , callback = Core.Nothing
    , electionId = 0
    , officialOnly = Core.False
    , returnAllAvailableData = Core.False
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CivicInfoElectionsVoterInfoQuery
         where
        type Rs CivicInfoElectionsVoterInfoQuery =
             VoterInfoResponse
        type Scopes CivicInfoElectionsVoterInfoQuery = '[]
        requestClient CivicInfoElectionsVoterInfoQuery{..}
          = go (Core.Just address) xgafv accessToken callback
              (Core.Just electionId)
              (Core.Just officialOnly)
              (Core.Just returnAllAvailableData)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              civicInfoService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CivicInfoElectionsVoterInfoQueryResource)
                      Core.mempty

