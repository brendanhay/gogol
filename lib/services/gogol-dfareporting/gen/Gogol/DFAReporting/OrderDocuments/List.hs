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
-- Module      : Gogol.DFAReporting.OrderDocuments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of order documents, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.orderDocuments.list@.
module Gogol.DFAReporting.OrderDocuments.List
    (
    -- * Resource
      DFAReportingOrderDocumentsListResource

    -- ** Constructing a Request
    , DFAReportingOrderDocumentsList (..)
    , newDFAReportingOrderDocumentsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.orderDocuments.list@ method which the
-- 'DFAReportingOrderDocumentsList' request conforms to.
type DFAReportingOrderDocumentsListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "projects" Core.:>
               Core.Capture "projectId" Core.Int64 Core.:>
                 "orderDocuments" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "approved" Core.Bool Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParams "ids" Core.Int64 Core.:>
                             Core.QueryParam "maxResults" Core.Int32 Core.:>
                               Core.QueryParams "orderId" Core.Int64 Core.:>
                                 Core.QueryParam "pageToken" Core.Text Core.:>
                                   Core.QueryParam "searchString" Core.Text
                                     Core.:>
                                     Core.QueryParams "siteId" Core.Int64
                                       Core.:>
                                       Core.QueryParam "sortField"
                                         OrderDocumentsListSortField
                                         Core.:>
                                         Core.QueryParam "sortOrder"
                                           OrderDocumentsListSortOrder
                                           Core.:>
                                           Core.QueryParam "uploadType"
                                             Core.Text
                                             Core.:>
                                             Core.QueryParam "upload_protocol"
                                               Core.Text
                                               Core.:>
                                               Core.QueryParam "alt"
                                                 Core.AltJSON
                                                 Core.:>
                                                 Core.Get '[Core.JSON]
                                                   OrderDocumentsListResponse

-- | Retrieves a list of order documents, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingOrderDocumentsList' smart constructor.
data DFAReportingOrderDocumentsList = DFAReportingOrderDocumentsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Select only order documents that have been approved by at least one user.
    , approved :: (Core.Maybe Core.Bool)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Select only order documents with these IDs.
    , ids :: (Core.Maybe [Core.Int64])
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Select only order documents for specified orders.
    , orderId :: (Core.Maybe [Core.Int64])
      -- | Value of the nextPageToken from the previous result page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Project ID for order documents.
    , projectId :: Core.Int64
      -- | Allows searching for order documents by name or ID. Wildcards (/) are allowed. For example, \"orderdocument/2015\" will return order documents with names like \"orderdocument June 2015\", \"orderdocument April 2015\", or simply \"orderdocument 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"orderdocument\" will match order documents with name \"my orderdocument\", \"orderdocument 2015\", or simply \"orderdocument\".
    , searchString :: (Core.Maybe Core.Text)
      -- | Select only order documents that are associated with these sites.
    , siteId :: (Core.Maybe [Core.Int64])
      -- | Field by which to sort the list.
    , sortField :: OrderDocumentsListSortField
      -- | Order of sorted results.
    , sortOrder :: OrderDocumentsListSortOrder
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingOrderDocumentsList' with the minimum fields required to make a request.
newDFAReportingOrderDocumentsList 
    ::  Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> Core.Int64
       -- ^  Project ID for order documents. See 'projectId'.
    -> DFAReportingOrderDocumentsList
newDFAReportingOrderDocumentsList profileId projectId =
  DFAReportingOrderDocumentsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , approved = Core.Nothing
    , callback = Core.Nothing
    , ids = Core.Nothing
    , maxResults = 1000
    , orderId = Core.Nothing
    , pageToken = Core.Nothing
    , profileId = profileId
    , projectId = projectId
    , searchString = Core.Nothing
    , siteId = Core.Nothing
    , sortField = OrderDocumentsListSortField_ID
    , sortOrder = OrderDocumentsListSortOrder_Ascending
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingOrderDocumentsList
         where
        type Rs DFAReportingOrderDocumentsList =
             OrderDocumentsListResponse
        type Scopes DFAReportingOrderDocumentsList =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingOrderDocumentsList{..}
          = go profileId projectId xgafv accessToken approved
              callback
              (ids Core.^. Core._Default)
              (Core.Just maxResults)
              (orderId Core.^. Core._Default)
              pageToken
              searchString
              (siteId Core.^. Core._Default)
              (Core.Just sortField)
              (Core.Just sortOrder)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingOrderDocumentsListResource)
                      Core.mempty

