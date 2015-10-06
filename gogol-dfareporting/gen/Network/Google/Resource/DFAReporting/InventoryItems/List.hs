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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of inventory items, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingInventoryItemsList@.
module Network.Google.Resource.DFAReporting.InventoryItems.List
    (
    -- * REST Resource
      InventoryItemsListResource

    -- * Creating a Request
    , inventoryItemsList'
    , InventoryItemsList'

    -- * Request Lenses
    , iilQuotaUser
    , iilPrettyPrint
    , iilUserIP
    , iilIds
    , iilProFileId
    , iilSortOrder
    , iilInPlan
    , iilKey
    , iilPageToken
    , iilProjectId
    , iilSortField
    , iilOAuthToken
    , iilOrderId
    , iilSiteId
    , iilMaxResults
    , iilFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingInventoryItemsList@ which the
-- 'InventoryItemsList'' request conforms to.
type InventoryItemsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "inventoryItems" :>
               QueryParams "ids" Int64 :>
                 QueryParam "sortOrder" InventoryItemsListSortOrder :>
                   QueryParam "inPlan" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" InventoryItemsListSortField :>
                         QueryParams "orderId" Int64 :>
                           QueryParams "siteId" Int64 :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "userIp" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON]
                                               InventoryItemsListResponse

-- | Retrieves a list of inventory items, possibly filtered.
--
-- /See:/ 'inventoryItemsList'' smart constructor.
data InventoryItemsList' = InventoryItemsList'
    { _iilQuotaUser   :: !(Maybe Text)
    , _iilPrettyPrint :: !Bool
    , _iilUserIP      :: !(Maybe Text)
    , _iilIds         :: !(Maybe [Int64])
    , _iilProFileId   :: !Int64
    , _iilSortOrder   :: !(Maybe InventoryItemsListSortOrder)
    , _iilInPlan      :: !(Maybe Bool)
    , _iilKey         :: !(Maybe AuthKey)
    , _iilPageToken   :: !(Maybe Text)
    , _iilProjectId   :: !Int64
    , _iilSortField   :: !(Maybe InventoryItemsListSortField)
    , _iilOAuthToken  :: !(Maybe OAuthToken)
    , _iilOrderId     :: !(Maybe [Int64])
    , _iilSiteId      :: !(Maybe [Int64])
    , _iilMaxResults  :: !(Maybe Int32)
    , _iilFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryItemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iilQuotaUser'
--
-- * 'iilPrettyPrint'
--
-- * 'iilUserIP'
--
-- * 'iilIds'
--
-- * 'iilProFileId'
--
-- * 'iilSortOrder'
--
-- * 'iilInPlan'
--
-- * 'iilKey'
--
-- * 'iilPageToken'
--
-- * 'iilProjectId'
--
-- * 'iilSortField'
--
-- * 'iilOAuthToken'
--
-- * 'iilOrderId'
--
-- * 'iilSiteId'
--
-- * 'iilMaxResults'
--
-- * 'iilFields'
inventoryItemsList'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'projectId'
    -> InventoryItemsList'
inventoryItemsList' pIilProFileId_ pIilProjectId_ =
    InventoryItemsList'
    { _iilQuotaUser = Nothing
    , _iilPrettyPrint = True
    , _iilUserIP = Nothing
    , _iilIds = Nothing
    , _iilProFileId = pIilProFileId_
    , _iilSortOrder = Nothing
    , _iilInPlan = Nothing
    , _iilKey = Nothing
    , _iilPageToken = Nothing
    , _iilProjectId = pIilProjectId_
    , _iilSortField = Nothing
    , _iilOAuthToken = Nothing
    , _iilOrderId = Nothing
    , _iilSiteId = Nothing
    , _iilMaxResults = Nothing
    , _iilFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iilQuotaUser :: Lens' InventoryItemsList' (Maybe Text)
iilQuotaUser
  = lens _iilQuotaUser (\ s a -> s{_iilQuotaUser = a})

-- | Returns response with indentations and line breaks.
iilPrettyPrint :: Lens' InventoryItemsList' Bool
iilPrettyPrint
  = lens _iilPrettyPrint
      (\ s a -> s{_iilPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iilUserIP :: Lens' InventoryItemsList' (Maybe Text)
iilUserIP
  = lens _iilUserIP (\ s a -> s{_iilUserIP = a})

-- | Select only inventory items with these IDs.
iilIds :: Lens' InventoryItemsList' [Int64]
iilIds
  = lens _iilIds (\ s a -> s{_iilIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
iilProFileId :: Lens' InventoryItemsList' Int64
iilProFileId
  = lens _iilProFileId (\ s a -> s{_iilProFileId = a})

-- | Order of sorted results, default is ASCENDING.
iilSortOrder :: Lens' InventoryItemsList' (Maybe InventoryItemsListSortOrder)
iilSortOrder
  = lens _iilSortOrder (\ s a -> s{_iilSortOrder = a})

-- | Select only inventory items that are in plan.
iilInPlan :: Lens' InventoryItemsList' (Maybe Bool)
iilInPlan
  = lens _iilInPlan (\ s a -> s{_iilInPlan = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iilKey :: Lens' InventoryItemsList' (Maybe AuthKey)
iilKey = lens _iilKey (\ s a -> s{_iilKey = a})

-- | Value of the nextPageToken from the previous result page.
iilPageToken :: Lens' InventoryItemsList' (Maybe Text)
iilPageToken
  = lens _iilPageToken (\ s a -> s{_iilPageToken = a})

-- | Project ID for order documents.
iilProjectId :: Lens' InventoryItemsList' Int64
iilProjectId
  = lens _iilProjectId (\ s a -> s{_iilProjectId = a})

-- | Field by which to sort the list.
iilSortField :: Lens' InventoryItemsList' (Maybe InventoryItemsListSortField)
iilSortField
  = lens _iilSortField (\ s a -> s{_iilSortField = a})

-- | OAuth 2.0 token for the current user.
iilOAuthToken :: Lens' InventoryItemsList' (Maybe OAuthToken)
iilOAuthToken
  = lens _iilOAuthToken
      (\ s a -> s{_iilOAuthToken = a})

-- | Select only inventory items that belong to specified orders.
iilOrderId :: Lens' InventoryItemsList' [Int64]
iilOrderId
  = lens _iilOrderId (\ s a -> s{_iilOrderId = a}) .
      _Default
      . _Coerce

-- | Select only inventory items that are associated with these sites.
iilSiteId :: Lens' InventoryItemsList' [Int64]
iilSiteId
  = lens _iilSiteId (\ s a -> s{_iilSiteId = a}) .
      _Default
      . _Coerce

-- | Maximum number of results to return.
iilMaxResults :: Lens' InventoryItemsList' (Maybe Int32)
iilMaxResults
  = lens _iilMaxResults
      (\ s a -> s{_iilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
iilFields :: Lens' InventoryItemsList' (Maybe Text)
iilFields
  = lens _iilFields (\ s a -> s{_iilFields = a})

instance GoogleAuth InventoryItemsList' where
        _AuthKey = iilKey . _Just
        _AuthToken = iilOAuthToken . _Just

instance GoogleRequest InventoryItemsList' where
        type Rs InventoryItemsList' =
             InventoryItemsListResponse
        request = requestWith dFAReportingRequest
        requestWith rq InventoryItemsList'{..}
          = go _iilProFileId _iilProjectId
              (_iilIds ^. _Default)
              _iilSortOrder
              _iilInPlan
              _iilPageToken
              _iilSortField
              (_iilOrderId ^. _Default)
              (_iilSiteId ^. _Default)
              _iilMaxResults
              _iilQuotaUser
              (Just _iilPrettyPrint)
              _iilUserIP
              _iilFields
              _iilKey
              _iilOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy InventoryItemsListResource)
                      rq
