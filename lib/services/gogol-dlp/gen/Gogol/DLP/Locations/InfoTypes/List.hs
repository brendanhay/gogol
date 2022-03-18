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
-- Module      : Gogol.DLP.Locations.InfoTypes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the sensitive information types that the DLP API supports. See https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.locations.infoTypes.list@.
module Gogol.DLP.Locations.InfoTypes.List
    (
    -- * Resource
      DLPLocationsInfoTypesListResource

    -- ** Constructing a Request
    , newDLPLocationsInfoTypesList
    , DLPLocationsInfoTypesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.locations.infoTypes.list@ method which the
-- 'DLPLocationsInfoTypesList' request conforms to.
type DLPLocationsInfoTypesListResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "infoTypes" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "languageCode" Core.Text Core.:>
                     Core.QueryParam "locationId" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GooglePrivacyDlpV2ListInfoTypesResponse

-- | Returns a list of the sensitive information types that the DLP API supports. See https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference to learn more.
--
-- /See:/ 'newDLPLocationsInfoTypesList' smart constructor.
data DLPLocationsInfoTypesList = DLPLocationsInfoTypesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT.
    , filter :: (Core.Maybe Core.Text)
      -- | BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en-US strings will be returned.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Deprecated. This field has no effect.
    , locationId :: (Core.Maybe Core.Text)
      -- | The parent resource name. The format of this value is as follows: locations\/ LOCATION_ID
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPLocationsInfoTypesList' with the minimum fields required to make a request.
newDLPLocationsInfoTypesList 
    ::  Core.Text
       -- ^  The parent resource name. The format of this value is as follows: locations\/ LOCATION_ID See 'parent'.
    -> DLPLocationsInfoTypesList
newDLPLocationsInfoTypesList parent =
  DLPLocationsInfoTypesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , languageCode = Core.Nothing
    , locationId = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DLPLocationsInfoTypesList
         where
        type Rs DLPLocationsInfoTypesList =
             GooglePrivacyDlpV2ListInfoTypesResponse
        type Scopes DLPLocationsInfoTypesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient DLPLocationsInfoTypesList{..}
          = go parent xgafv accessToken callback filter
              languageCode
              locationId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DLPLocationsInfoTypesListResource)
                      Core.mempty

