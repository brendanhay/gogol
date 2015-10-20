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
-- Module      : Network.Google.Resource.DFAReporting.Orders.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of orders, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.orders.list@.
module Network.Google.Resource.DFAReporting.Orders.List
    (
    -- * REST Resource
      OrdersListResource

    -- * Creating a Request
    , ordersList
    , OrdersList

    -- * Request Lenses
    , olSearchString
    , olIds
    , olProFileId
    , olSortOrder
    , olPageToken
    , olProjectId
    , olSortField
    , olSiteId
    , olMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.orders.list@ method which the
-- 'OrdersList' request conforms to.
type OrdersListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "orders" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" Int64 :>
                   QueryParam "sortOrder" OrdersListSortOrder :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" OrdersListSortField :>
                         QueryParams "siteId" Int64 :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] OrdersListResponse

-- | Retrieves a list of orders, possibly filtered.
--
-- /See:/ 'ordersList' smart constructor.
data OrdersList = OrdersList
    { _olSearchString :: !(Maybe Text)
    , _olIds          :: !(Maybe [Int64])
    , _olProFileId    :: !Int64
    , _olSortOrder    :: !(Maybe OrdersListSortOrder)
    , _olPageToken    :: !(Maybe Text)
    , _olProjectId    :: !Int64
    , _olSortField    :: !(Maybe OrdersListSortField)
    , _olSiteId       :: !(Maybe [Int64])
    , _olMaxResults   :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olSearchString'
--
-- * 'olIds'
--
-- * 'olProFileId'
--
-- * 'olSortOrder'
--
-- * 'olPageToken'
--
-- * 'olProjectId'
--
-- * 'olSortField'
--
-- * 'olSiteId'
--
-- * 'olMaxResults'
ordersList
    :: Int64 -- ^ 'olProFileId'
    -> Int64 -- ^ 'olProjectId'
    -> OrdersList
ordersList pOlProFileId_ pOlProjectId_ =
    OrdersList
    { _olSearchString = Nothing
    , _olIds = Nothing
    , _olProFileId = pOlProFileId_
    , _olSortOrder = Nothing
    , _olPageToken = Nothing
    , _olProjectId = pOlProjectId_
    , _olSortField = Nothing
    , _olSiteId = Nothing
    , _olMaxResults = Nothing
    }

-- | Allows searching for orders by name or ID. Wildcards (*) are allowed.
-- For example, \"order*2015\" will return orders with names like \"order
-- June 2015\", \"order April 2015\", or simply \"order 2015\". Most of the
-- searches also add wildcards implicitly at the start and the end of the
-- search string. For example, a search string of \"order\" will match
-- orders with name \"my order\", \"order 2015\", or simply \"order\".
olSearchString :: Lens' OrdersList (Maybe Text)
olSearchString
  = lens _olSearchString
      (\ s a -> s{_olSearchString = a})

-- | Select only orders with these IDs.
olIds :: Lens' OrdersList [Int64]
olIds
  = lens _olIds (\ s a -> s{_olIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
olProFileId :: Lens' OrdersList Int64
olProFileId
  = lens _olProFileId (\ s a -> s{_olProFileId = a})

-- | Order of sorted results, default is ASCENDING.
olSortOrder :: Lens' OrdersList (Maybe OrdersListSortOrder)
olSortOrder
  = lens _olSortOrder (\ s a -> s{_olSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
olPageToken :: Lens' OrdersList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | Project ID for orders.
olProjectId :: Lens' OrdersList Int64
olProjectId
  = lens _olProjectId (\ s a -> s{_olProjectId = a})

-- | Field by which to sort the list.
olSortField :: Lens' OrdersList (Maybe OrdersListSortField)
olSortField
  = lens _olSortField (\ s a -> s{_olSortField = a})

-- | Select only orders that are associated with these site IDs.
olSiteId :: Lens' OrdersList [Int64]
olSiteId
  = lens _olSiteId (\ s a -> s{_olSiteId = a}) .
      _Default
      . _Coerce

-- | Maximum number of results to return.
olMaxResults :: Lens' OrdersList (Maybe Int32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

instance GoogleRequest OrdersList where
        type Rs OrdersList = OrdersListResponse
        requestClient OrdersList{..}
          = go _olProFileId _olProjectId _olSearchString
              (_olIds ^. _Default)
              _olSortOrder
              _olPageToken
              _olSortField
              (_olSiteId ^. _Default)
              _olMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy OrdersListResource)
                      mempty
