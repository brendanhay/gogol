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
-- Module      : Network.Google.Resource.DFAReporting.InventoryItems.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of inventory items, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.inventoryItems.list@.
module Network.Google.Resource.DFAReporting.InventoryItems.List
    (
    -- * REST Resource
      InventoryItemsListResource

    -- * Creating a Request
    , inventoryItemsList
    , InventoryItemsList

    -- * Request Lenses
    , iilIds
    , iilProFileId
    , iilSortOrder
    , iilInPlan
    , iilPageToken
    , iilProjectId
    , iilSortField
    , iilType
    , iilOrderId
    , iilSiteId
    , iilMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.inventoryItems.list@ method which the
-- 'InventoryItemsList' request conforms to.
type InventoryItemsListResource =
     "dfareporting" :>
       "v2.5beta1" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "projects" :>
               Capture "projectId" (Textual Int64) :>
                 "inventoryItems" :>
                   QueryParams "ids" (Textual Int64) :>
                     QueryParam "sortOrder" InventoryItemsListSortOrder :>
                       QueryParam "inPlan" Bool :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField" InventoryItemsListSortField :>
                             QueryParam "type" InventoryItemsListType :>
                               QueryParams "orderId" (Textual Int64) :>
                                 QueryParams "siteId" (Textual Int64) :>
                                   QueryParam "maxResults" (Textual Int32) :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] InventoryItemsListResponse

-- | Retrieves a list of inventory items, possibly filtered.
--
-- /See:/ 'inventoryItemsList' smart constructor.
data InventoryItemsList = InventoryItemsList'
    { _iilIds        :: !(Maybe [Textual Int64])
    , _iilProFileId  :: !(Textual Int64)
    , _iilSortOrder  :: !(Maybe InventoryItemsListSortOrder)
    , _iilInPlan     :: !(Maybe Bool)
    , _iilPageToken  :: !(Maybe Text)
    , _iilProjectId  :: !(Textual Int64)
    , _iilSortField  :: !(Maybe InventoryItemsListSortField)
    , _iilType       :: !(Maybe InventoryItemsListType)
    , _iilOrderId    :: !(Maybe [Textual Int64])
    , _iilSiteId     :: !(Maybe [Textual Int64])
    , _iilMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryItemsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iilIds'
--
-- * 'iilProFileId'
--
-- * 'iilSortOrder'
--
-- * 'iilInPlan'
--
-- * 'iilPageToken'
--
-- * 'iilProjectId'
--
-- * 'iilSortField'
--
-- * 'iilType'
--
-- * 'iilOrderId'
--
-- * 'iilSiteId'
--
-- * 'iilMaxResults'
inventoryItemsList
    :: Int64 -- ^ 'iilProFileId'
    -> Int64 -- ^ 'iilProjectId'
    -> InventoryItemsList
inventoryItemsList pIilProFileId_ pIilProjectId_ =
    InventoryItemsList'
    { _iilIds = Nothing
    , _iilProFileId = _Coerce # pIilProFileId_
    , _iilSortOrder = Nothing
    , _iilInPlan = Nothing
    , _iilPageToken = Nothing
    , _iilProjectId = _Coerce # pIilProjectId_
    , _iilSortField = Nothing
    , _iilType = Nothing
    , _iilOrderId = Nothing
    , _iilSiteId = Nothing
    , _iilMaxResults = Nothing
    }

-- | Select only inventory items with these IDs.
iilIds :: Lens' InventoryItemsList [Int64]
iilIds
  = lens _iilIds (\ s a -> s{_iilIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
iilProFileId :: Lens' InventoryItemsList Int64
iilProFileId
  = lens _iilProFileId (\ s a -> s{_iilProFileId = a})
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
iilSortOrder :: Lens' InventoryItemsList (Maybe InventoryItemsListSortOrder)
iilSortOrder
  = lens _iilSortOrder (\ s a -> s{_iilSortOrder = a})

-- | Select only inventory items that are in plan.
iilInPlan :: Lens' InventoryItemsList (Maybe Bool)
iilInPlan
  = lens _iilInPlan (\ s a -> s{_iilInPlan = a})

-- | Value of the nextPageToken from the previous result page.
iilPageToken :: Lens' InventoryItemsList (Maybe Text)
iilPageToken
  = lens _iilPageToken (\ s a -> s{_iilPageToken = a})

-- | Project ID for order documents.
iilProjectId :: Lens' InventoryItemsList Int64
iilProjectId
  = lens _iilProjectId (\ s a -> s{_iilProjectId = a})
      . _Coerce

-- | Field by which to sort the list.
iilSortField :: Lens' InventoryItemsList (Maybe InventoryItemsListSortField)
iilSortField
  = lens _iilSortField (\ s a -> s{_iilSortField = a})

-- | Select only inventory items with this type.
iilType :: Lens' InventoryItemsList (Maybe InventoryItemsListType)
iilType = lens _iilType (\ s a -> s{_iilType = a})

-- | Select only inventory items that belong to specified orders.
iilOrderId :: Lens' InventoryItemsList [Int64]
iilOrderId
  = lens _iilOrderId (\ s a -> s{_iilOrderId = a}) .
      _Default
      . _Coerce

-- | Select only inventory items that are associated with these sites.
iilSiteId :: Lens' InventoryItemsList [Int64]
iilSiteId
  = lens _iilSiteId (\ s a -> s{_iilSiteId = a}) .
      _Default
      . _Coerce

-- | Maximum number of results to return.
iilMaxResults :: Lens' InventoryItemsList (Maybe Int32)
iilMaxResults
  = lens _iilMaxResults
      (\ s a -> s{_iilMaxResults = a})
      . mapping _Coerce

instance GoogleRequest InventoryItemsList where
        type Rs InventoryItemsList =
             InventoryItemsListResponse
        type Scopes InventoryItemsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient InventoryItemsList'{..}
          = go _iilProFileId _iilProjectId
              (_iilIds ^. _Default)
              _iilSortOrder
              _iilInPlan
              _iilPageToken
              _iilSortField
              _iilType
              (_iilOrderId ^. _Default)
              (_iilSiteId ^. _Default)
              _iilMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy InventoryItemsListResource)
                      mempty
