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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the HL7v2 stores in the given dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.list@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.List
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsHl7V2StoresListResource

    -- ** Constructing a Request
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresList
    , HealthcareProjectsLocationsDatasetsHl7V2StoresList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.list@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresList' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "hl7V2Stores" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListHl7V2StoresResponse

-- | Lists the HL7v2 stores in the given dataset.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresList' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresList = HealthcareProjectsLocationsDatasetsHl7V2StoresList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Restricts stores returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example @\"query text\"@. The only valid relational operation for text fields is equality (@=@), where text is searched within the field, rather than having the field be equal to the text. For example, @\"Comment = great\"@ returns messages with @great@ in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (@=@), along with the less than\/greater than operators (@\<@, @\<=@, @>@, @>=@). Note that there is no inequality (@!=@) operator. You can prepend the @NOT@ operator to an expression to negate it. * A date field value must be written in @yyyy-mm-dd@ form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the
      -- equality operator (@=@) , along with the less than\/greater than operators (@\<@, @\<=@, @>@, @>=@). Note that there is no inequality (@!=@) operator. You can prepend the @NOT@ operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding @AND@ or @OR@ operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it\'s just another part of the character string to be matched. You can prepend the @NOT@ operator to an expression to negate it. Only filtering on labels is supported. For example, @labels.key=value@.
    , filter :: (Core.Maybe Core.Text)
      -- | Limit on the number of HL7v2 stores to return in a single response. If not specified, 100 is used. May not be larger than 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The next/page/token value returned from the previous List request, if any.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Name of the dataset.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresList' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresList 
    ::  Core.Text
       -- ^  Name of the dataset. See 'parent'.
    -> HealthcareProjectsLocationsDatasetsHl7V2StoresList
newHealthcareProjectsLocationsDatasetsHl7V2StoresList parent =
  HealthcareProjectsLocationsDatasetsHl7V2StoresList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsHl7V2StoresList
         where
        type Rs
               HealthcareProjectsLocationsDatasetsHl7V2StoresList
             = ListHl7V2StoresResponse
        type Scopes
               HealthcareProjectsLocationsDatasetsHl7V2StoresList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          HealthcareProjectsLocationsDatasetsHl7V2StoresList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsHl7V2StoresListResource)
                      Core.mempty

