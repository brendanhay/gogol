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
-- Module      : Gogol.CivicInfo.Representatives.RepresentativeInfoByDivision
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up representative information for a single geographic division.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.representatives.representativeInfoByDivision@.
module Gogol.CivicInfo.Representatives.RepresentativeInfoByDivision
    (
    -- * Resource
      CivicInfoRepresentativesRepresentativeInfoByDivisionResource

    -- ** Constructing a Request
    , newCivicInfoRepresentativesRepresentativeInfoByDivision
    , CivicInfoRepresentativesRepresentativeInfoByDivision
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CivicInfo.Types

-- | A resource alias for @civicinfo.representatives.representativeInfoByDivision@ method which the
-- 'CivicInfoRepresentativesRepresentativeInfoByDivision' request conforms to.
type CivicInfoRepresentativesRepresentativeInfoByDivisionResource
     =
     "civicinfo" Core.:>
       "v2" Core.:>
         "representatives" Core.:>
           Core.Capture "ocdId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParams "levels"
                     RepresentativesRepresentativeInfoByDivisionLevels
                     Core.:>
                     Core.QueryParam "recursive" Core.Bool Core.:>
                       Core.QueryParams "roles"
                         RepresentativesRepresentativeInfoByDivisionRoles
                         Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] RepresentativeInfoData

-- | Looks up representative information for a single geographic division.
--
-- /See:/ 'newCivicInfoRepresentativesRepresentativeInfoByDivision' smart constructor.
data CivicInfoRepresentativesRepresentativeInfoByDivision = CivicInfoRepresentativesRepresentativeInfoByDivision
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | A list of office levels to filter by. Only offices that serve at least one of these levels will be returned. Divisions that don\'t contain a matching office will not be returned.
    , levels :: (Core.Maybe [RepresentativesRepresentativeInfoByDivisionLevels])
      -- | The Open Civic Data division identifier of the division to look up.
    , ocdId :: Core.Text
      -- | If true, information about all divisions contained in the division requested will be included as well. For example, if querying ocd-division\/country:us\/district:dc, this would also return all DC\'s wards and ANCs.
    , recursive :: (Core.Maybe Core.Bool)
      -- | A list of office roles to filter by. Only offices fulfilling one of these roles will be returned. Divisions that don\'t contain a matching office will not be returned.
    , roles :: (Core.Maybe [RepresentativesRepresentativeInfoByDivisionRoles])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicInfoRepresentativesRepresentativeInfoByDivision' with the minimum fields required to make a request.
newCivicInfoRepresentativesRepresentativeInfoByDivision 
    ::  Core.Text
       -- ^  The Open Civic Data division identifier of the division to look up. See 'ocdId'.
    -> CivicInfoRepresentativesRepresentativeInfoByDivision
newCivicInfoRepresentativesRepresentativeInfoByDivision ocdId =
  CivicInfoRepresentativesRepresentativeInfoByDivision
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , levels = Core.Nothing
    , ocdId = ocdId
    , recursive = Core.Nothing
    , roles = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CivicInfoRepresentativesRepresentativeInfoByDivision
         where
        type Rs
               CivicInfoRepresentativesRepresentativeInfoByDivision
             = RepresentativeInfoData
        type Scopes
               CivicInfoRepresentativesRepresentativeInfoByDivision
             = '[]
        requestClient
          CivicInfoRepresentativesRepresentativeInfoByDivision{..}
          = go ocdId xgafv accessToken callback
              (levels Core.^. Core._Default)
              recursive
              (roles Core.^. Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              civicInfoService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CivicInfoRepresentativesRepresentativeInfoByDivisionResource)
                      Core.mempty

