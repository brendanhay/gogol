{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.OrderDocuments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of order documents, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.orderDocuments.list@.
module Network.Google.Resource.DFAReporting.OrderDocuments.List
    (
    -- * REST Resource
      OrderDocumentsListResource

    -- * Creating a Request
    , orderDocumentsList
    , OrderDocumentsList

    -- * Request Lenses
    , odlSearchString
    , odlIds
    , odlProFileId
    , odlSortOrder
    , odlPageToken
    , odlProjectId
    , odlSortField
    , odlOrderId
    , odlApproved
    , odlSiteId
    , odlMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.orderDocuments.list@ method which the
-- 'OrderDocumentsList' request conforms to.
type OrderDocumentsListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "projects" :>
               Capture "projectId" (Textual Int64) :>
                 "orderDocuments" :>
                   QueryParam "searchString" Text :>
                     QueryParams "ids" (Textual Int64) :>
                       QueryParam "sortOrder" OrderDocumentsListSortOrder :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField" OrderDocumentsListSortField :>
                             QueryParams "orderId" (Textual Int64) :>
                               QueryParam "approved" Bool :>
                                 QueryParams "siteId" (Textual Int64) :>
                                   QueryParam "maxResults" (Textual Int32) :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] OrderDocumentsListResponse

-- | Retrieves a list of order documents, possibly filtered.
--
-- /See:/ 'orderDocumentsList' smart constructor.
data OrderDocumentsList = OrderDocumentsList'
    { _odlSearchString :: !(Maybe Text)
    , _odlIds          :: !(Maybe [Textual Int64])
    , _odlProFileId    :: !(Textual Int64)
    , _odlSortOrder    :: !(Maybe OrderDocumentsListSortOrder)
    , _odlPageToken    :: !(Maybe Text)
    , _odlProjectId    :: !(Textual Int64)
    , _odlSortField    :: !(Maybe OrderDocumentsListSortField)
    , _odlOrderId      :: !(Maybe [Textual Int64])
    , _odlApproved     :: !(Maybe Bool)
    , _odlSiteId       :: !(Maybe [Textual Int64])
    , _odlMaxResults   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDocumentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odlSearchString'
--
-- * 'odlIds'
--
-- * 'odlProFileId'
--
-- * 'odlSortOrder'
--
-- * 'odlPageToken'
--
-- * 'odlProjectId'
--
-- * 'odlSortField'
--
-- * 'odlOrderId'
--
-- * 'odlApproved'
--
-- * 'odlSiteId'
--
-- * 'odlMaxResults'
orderDocumentsList
    :: Int64 -- ^ 'odlProFileId'
    -> Int64 -- ^ 'odlProjectId'
    -> OrderDocumentsList
orderDocumentsList pOdlProFileId_ pOdlProjectId_ =
    OrderDocumentsList'
    { _odlSearchString = Nothing
    , _odlIds = Nothing
    , _odlProFileId = _Coerce # pOdlProFileId_
    , _odlSortOrder = Nothing
    , _odlPageToken = Nothing
    , _odlProjectId = _Coerce # pOdlProjectId_
    , _odlSortField = Nothing
    , _odlOrderId = Nothing
    , _odlApproved = Nothing
    , _odlSiteId = Nothing
    , _odlMaxResults = Nothing
    }

-- | Allows searching for order documents by name or ID. Wildcards (*) are
-- allowed. For example, \"orderdocument*2015\" will return order documents
-- with names like \"orderdocument June 2015\", \"orderdocument April
-- 2015\", or simply \"orderdocument 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"orderdocument\" will match order documents
-- with name \"my orderdocument\", \"orderdocument 2015\", or simply
-- \"orderdocument\".
odlSearchString :: Lens' OrderDocumentsList (Maybe Text)
odlSearchString
  = lens _odlSearchString
      (\ s a -> s{_odlSearchString = a})

-- | Select only order documents with these IDs.
odlIds :: Lens' OrderDocumentsList [Int64]
odlIds
  = lens _odlIds (\ s a -> s{_odlIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
odlProFileId :: Lens' OrderDocumentsList Int64
odlProFileId
  = lens _odlProFileId (\ s a -> s{_odlProFileId = a})
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
odlSortOrder :: Lens' OrderDocumentsList (Maybe OrderDocumentsListSortOrder)
odlSortOrder
  = lens _odlSortOrder (\ s a -> s{_odlSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
odlPageToken :: Lens' OrderDocumentsList (Maybe Text)
odlPageToken
  = lens _odlPageToken (\ s a -> s{_odlPageToken = a})

-- | Project ID for order documents.
odlProjectId :: Lens' OrderDocumentsList Int64
odlProjectId
  = lens _odlProjectId (\ s a -> s{_odlProjectId = a})
      . _Coerce

-- | Field by which to sort the list.
odlSortField :: Lens' OrderDocumentsList (Maybe OrderDocumentsListSortField)
odlSortField
  = lens _odlSortField (\ s a -> s{_odlSortField = a})

-- | Select only order documents for specified orders.
odlOrderId :: Lens' OrderDocumentsList [Int64]
odlOrderId
  = lens _odlOrderId (\ s a -> s{_odlOrderId = a}) .
      _Default
      . _Coerce

-- | Select only order documents that have been approved by at least one
-- user.
odlApproved :: Lens' OrderDocumentsList (Maybe Bool)
odlApproved
  = lens _odlApproved (\ s a -> s{_odlApproved = a})

-- | Select only order documents that are associated with these sites.
odlSiteId :: Lens' OrderDocumentsList [Int64]
odlSiteId
  = lens _odlSiteId (\ s a -> s{_odlSiteId = a}) .
      _Default
      . _Coerce

-- | Maximum number of results to return.
odlMaxResults :: Lens' OrderDocumentsList (Maybe Int32)
odlMaxResults
  = lens _odlMaxResults
      (\ s a -> s{_odlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest OrderDocumentsList where
        type Rs OrderDocumentsList =
             OrderDocumentsListResponse
        type Scopes OrderDocumentsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OrderDocumentsList'{..}
          = go _odlProFileId _odlProjectId _odlSearchString
              (_odlIds ^. _Default)
              _odlSortOrder
              _odlPageToken
              _odlSortField
              (_odlOrderId ^. _Default)
              _odlApproved
              (_odlSiteId ^. _Default)
              _odlMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderDocumentsListResource)
                      mempty
