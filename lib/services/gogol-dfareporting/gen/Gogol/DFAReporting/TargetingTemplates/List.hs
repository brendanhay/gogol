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
-- Module      : Gogol.DFAReporting.TargetingTemplates.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of targeting templates, optionally filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.targetingTemplates.list@.
module Gogol.DFAReporting.TargetingTemplates.List
    (
    -- * Resource
      DFAReportingTargetingTemplatesListResource

    -- ** Constructing a Request
    , DFAReportingTargetingTemplatesList (..)
    , newDFAReportingTargetingTemplatesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.targetingTemplates.list@ method which the
-- 'DFAReportingTargetingTemplatesList' request conforms to.
type DFAReportingTargetingTemplatesListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "targetingTemplates" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "advertiserId" Core.Int64 Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParams "ids" Core.Int64 Core.:>
                         Core.QueryParam "maxResults" Core.Int32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "searchString" Core.Text Core.:>
                               Core.QueryParam "sortField"
                                 TargetingTemplatesListSortField
                                 Core.:>
                                 Core.QueryParam "sortOrder"
                                   TargetingTemplatesListSortOrder
                                   Core.:>
                                   Core.QueryParam "uploadType" Core.Text
                                     Core.:>
                                     Core.QueryParam "upload_protocol" Core.Text
                                       Core.:>
                                       Core.QueryParam "alt" Core.AltJSON
                                         Core.:>
                                         Core.Get '[Core.JSON]
                                           TargetingTemplatesListResponse

-- | Retrieves a list of targeting templates, optionally filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingTargetingTemplatesList' smart constructor.
data DFAReportingTargetingTemplatesList = DFAReportingTargetingTemplatesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Select only targeting templates with this advertiser ID.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Select only targeting templates with these IDs.
    , ids :: (Core.Maybe [Core.Int64])
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Value of the nextPageToken from the previous result page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"template/2015\" will return objects with names like \"template June 2015\", \"template April 2015\", or simply \"template 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"template\" will match objects with name \"my template\", \"template 2015\", or simply \"template\".
    , searchString :: (Core.Maybe Core.Text)
      -- | Field by which to sort the list.
    , sortField :: TargetingTemplatesListSortField
      -- | Order of sorted results.
    , sortOrder :: TargetingTemplatesListSortOrder
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingTargetingTemplatesList' with the minimum fields required to make a request.
newDFAReportingTargetingTemplatesList 
    ::  Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingTargetingTemplatesList
newDFAReportingTargetingTemplatesList profileId =
  DFAReportingTargetingTemplatesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , advertiserId = Core.Nothing
    , callback = Core.Nothing
    , ids = Core.Nothing
    , maxResults = 1000
    , pageToken = Core.Nothing
    , profileId = profileId
    , searchString = Core.Nothing
    , sortField = TargetingTemplatesListSortField_ID
    , sortOrder = TargetingTemplatesListSortOrder_Ascending
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingTargetingTemplatesList
         where
        type Rs DFAReportingTargetingTemplatesList =
             TargetingTemplatesListResponse
        type Scopes DFAReportingTargetingTemplatesList =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingTargetingTemplatesList{..}
          = go profileId xgafv accessToken advertiserId
              callback
              (ids Core.^. Core._Default)
              (Core.Just maxResults)
              pageToken
              searchString
              (Core.Just sortField)
              (Core.Just sortOrder)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DFAReportingTargetingTemplatesListResource)
                      Core.mempty

