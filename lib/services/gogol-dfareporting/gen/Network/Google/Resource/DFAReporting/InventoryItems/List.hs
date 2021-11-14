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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of inventory items, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.inventoryItems.list@.
module Network.Google.Resource.DFAReporting.InventoryItems.List
    (
    -- * REST Resource
      InventoryItemsListResource

    -- * Creating a Request
    , inventoryItemsList
    , InventoryItemsList

    -- * Request Lenses
    , iilXgafv
    , iilUploadProtocol
    , iilAccessToken
    , iilUploadType
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
    , iilCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.inventoryItems.list@ method which the
-- 'InventoryItemsList' request conforms to.
type InventoryItemsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "projects" :>
               Capture "projectId" (Textual Int64) :>
                 "inventoryItems" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParams "ids" (Textual Int64) :>
                             QueryParam "sortOrder" InventoryItemsListSortOrder
                               :>
                               QueryParam "inPlan" Bool :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField"
                                     InventoryItemsListSortField
                                     :>
                                     QueryParam "type" InventoryItemsListType :>
                                       QueryParams "orderId" (Textual Int64) :>
                                         QueryParams "siteId" (Textual Int64) :>
                                           QueryParam "maxResults"
                                             (Textual Int32)
                                             :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON]
                                                   InventoryItemsListResponse

-- | Retrieves a list of inventory items, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'inventoryItemsList' smart constructor.
data InventoryItemsList =
  InventoryItemsList'
    { _iilXgafv :: !(Maybe Xgafv)
    , _iilUploadProtocol :: !(Maybe Text)
    , _iilAccessToken :: !(Maybe Text)
    , _iilUploadType :: !(Maybe Text)
    , _iilIds :: !(Maybe [Textual Int64])
    , _iilProFileId :: !(Textual Int64)
    , _iilSortOrder :: !InventoryItemsListSortOrder
    , _iilInPlan :: !(Maybe Bool)
    , _iilPageToken :: !(Maybe Text)
    , _iilProjectId :: !(Textual Int64)
    , _iilSortField :: !InventoryItemsListSortField
    , _iilType :: !(Maybe InventoryItemsListType)
    , _iilOrderId :: !(Maybe [Textual Int64])
    , _iilSiteId :: !(Maybe [Textual Int64])
    , _iilMaxResults :: !(Textual Int32)
    , _iilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InventoryItemsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iilXgafv'
--
-- * 'iilUploadProtocol'
--
-- * 'iilAccessToken'
--
-- * 'iilUploadType'
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
--
-- * 'iilCallback'
inventoryItemsList
    :: Int64 -- ^ 'iilProFileId'
    -> Int64 -- ^ 'iilProjectId'
    -> InventoryItemsList
inventoryItemsList pIilProFileId_ pIilProjectId_ =
  InventoryItemsList'
    { _iilXgafv = Nothing
    , _iilUploadProtocol = Nothing
    , _iilAccessToken = Nothing
    , _iilUploadType = Nothing
    , _iilIds = Nothing
    , _iilProFileId = _Coerce # pIilProFileId_
    , _iilSortOrder = IILSOAscending
    , _iilInPlan = Nothing
    , _iilPageToken = Nothing
    , _iilProjectId = _Coerce # pIilProjectId_
    , _iilSortField = IILSFID
    , _iilType = Nothing
    , _iilOrderId = Nothing
    , _iilSiteId = Nothing
    , _iilMaxResults = 1000
    , _iilCallback = Nothing
    }


-- | V1 error format.
iilXgafv :: Lens' InventoryItemsList (Maybe Xgafv)
iilXgafv = lens _iilXgafv (\ s a -> s{_iilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iilUploadProtocol :: Lens' InventoryItemsList (Maybe Text)
iilUploadProtocol
  = lens _iilUploadProtocol
      (\ s a -> s{_iilUploadProtocol = a})

-- | OAuth access token.
iilAccessToken :: Lens' InventoryItemsList (Maybe Text)
iilAccessToken
  = lens _iilAccessToken
      (\ s a -> s{_iilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iilUploadType :: Lens' InventoryItemsList (Maybe Text)
iilUploadType
  = lens _iilUploadType
      (\ s a -> s{_iilUploadType = a})

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

-- | Order of sorted results.
iilSortOrder :: Lens' InventoryItemsList InventoryItemsListSortOrder
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
iilSortField :: Lens' InventoryItemsList InventoryItemsListSortField
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
iilMaxResults :: Lens' InventoryItemsList Int32
iilMaxResults
  = lens _iilMaxResults
      (\ s a -> s{_iilMaxResults = a})
      . _Coerce

-- | JSONP
iilCallback :: Lens' InventoryItemsList (Maybe Text)
iilCallback
  = lens _iilCallback (\ s a -> s{_iilCallback = a})

instance GoogleRequest InventoryItemsList where
        type Rs InventoryItemsList =
             InventoryItemsListResponse
        type Scopes InventoryItemsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient InventoryItemsList'{..}
          = go _iilProFileId _iilProjectId _iilXgafv
              _iilUploadProtocol
              _iilAccessToken
              _iilUploadType
              (_iilIds ^. _Default)
              (Just _iilSortOrder)
              _iilInPlan
              _iilPageToken
              (Just _iilSortField)
              _iilType
              (_iilOrderId ^. _Default)
              (_iilSiteId ^. _Default)
              (Just _iilMaxResults)
              _iilCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy InventoryItemsListResource)
                      mempty
