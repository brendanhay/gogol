{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , iilUserIp
    , iilIds
    , iilProfileId
    , iilSortOrder
    , iilInPlan
    , iilKey
    , iilPageToken
    , iilProjectId
    , iilSortField
    , iilOauthToken
    , iilOrderId
    , iilSiteId
    , iilMaxResults
    , iilFields
    , iilAlt
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
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParams "ids" Int64 :>
                       QueryParam "sortOrder"
                         DfareportingInventoryItemsListSortOrder
                         :>
                         QueryParam "inPlan" Bool :>
                           QueryParam "key" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 DfareportingInventoryItemsListSortField
                                 :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParams "orderId" Int64 :>
                                     QueryParams "siteId" Int64 :>
                                       QueryParam "maxResults" Int32 :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Alt :>
                                             Get '[JSON]
                                               InventoryItemsListResponse

-- | Retrieves a list of inventory items, possibly filtered.
--
-- /See:/ 'inventoryItemsList'' smart constructor.
data InventoryItemsList' = InventoryItemsList'
    { _iilQuotaUser   :: !(Maybe Text)
    , _iilPrettyPrint :: !Bool
    , _iilUserIp      :: !(Maybe Text)
    , _iilIds         :: !(Maybe Int64)
    , _iilProfileId   :: !Int64
    , _iilSortOrder   :: !(Maybe DfareportingInventoryItemsListSortOrder)
    , _iilInPlan      :: !(Maybe Bool)
    , _iilKey         :: !(Maybe Text)
    , _iilPageToken   :: !(Maybe Text)
    , _iilProjectId   :: !Int64
    , _iilSortField   :: !(Maybe DfareportingInventoryItemsListSortField)
    , _iilOauthToken  :: !(Maybe Text)
    , _iilOrderId     :: !(Maybe Int64)
    , _iilSiteId      :: !(Maybe Int64)
    , _iilMaxResults  :: !(Maybe Int32)
    , _iilFields      :: !(Maybe Text)
    , _iilAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryItemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iilQuotaUser'
--
-- * 'iilPrettyPrint'
--
-- * 'iilUserIp'
--
-- * 'iilIds'
--
-- * 'iilProfileId'
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
-- * 'iilOauthToken'
--
-- * 'iilOrderId'
--
-- * 'iilSiteId'
--
-- * 'iilMaxResults'
--
-- * 'iilFields'
--
-- * 'iilAlt'
inventoryItemsList'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'projectId'
    -> InventoryItemsList'
inventoryItemsList' pIilProfileId_ pIilProjectId_ =
    InventoryItemsList'
    { _iilQuotaUser = Nothing
    , _iilPrettyPrint = True
    , _iilUserIp = Nothing
    , _iilIds = Nothing
    , _iilProfileId = pIilProfileId_
    , _iilSortOrder = Nothing
    , _iilInPlan = Nothing
    , _iilKey = Nothing
    , _iilPageToken = Nothing
    , _iilProjectId = pIilProjectId_
    , _iilSortField = Nothing
    , _iilOauthToken = Nothing
    , _iilOrderId = Nothing
    , _iilSiteId = Nothing
    , _iilMaxResults = Nothing
    , _iilFields = Nothing
    , _iilAlt = JSON
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
iilUserIp :: Lens' InventoryItemsList' (Maybe Text)
iilUserIp
  = lens _iilUserIp (\ s a -> s{_iilUserIp = a})

-- | Select only inventory items with these IDs.
iilIds :: Lens' InventoryItemsList' (Maybe Int64)
iilIds = lens _iilIds (\ s a -> s{_iilIds = a})

-- | User profile ID associated with this request.
iilProfileId :: Lens' InventoryItemsList' Int64
iilProfileId
  = lens _iilProfileId (\ s a -> s{_iilProfileId = a})

-- | Order of sorted results, default is ASCENDING.
iilSortOrder :: Lens' InventoryItemsList' (Maybe DfareportingInventoryItemsListSortOrder)
iilSortOrder
  = lens _iilSortOrder (\ s a -> s{_iilSortOrder = a})

-- | Select only inventory items that are in plan.
iilInPlan :: Lens' InventoryItemsList' (Maybe Bool)
iilInPlan
  = lens _iilInPlan (\ s a -> s{_iilInPlan = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iilKey :: Lens' InventoryItemsList' (Maybe Text)
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
iilSortField :: Lens' InventoryItemsList' (Maybe DfareportingInventoryItemsListSortField)
iilSortField
  = lens _iilSortField (\ s a -> s{_iilSortField = a})

-- | OAuth 2.0 token for the current user.
iilOauthToken :: Lens' InventoryItemsList' (Maybe Text)
iilOauthToken
  = lens _iilOauthToken
      (\ s a -> s{_iilOauthToken = a})

-- | Select only inventory items that belong to specified orders.
iilOrderId :: Lens' InventoryItemsList' (Maybe Int64)
iilOrderId
  = lens _iilOrderId (\ s a -> s{_iilOrderId = a})

-- | Select only inventory items that are associated with these sites.
iilSiteId :: Lens' InventoryItemsList' (Maybe Int64)
iilSiteId
  = lens _iilSiteId (\ s a -> s{_iilSiteId = a})

-- | Maximum number of results to return.
iilMaxResults :: Lens' InventoryItemsList' (Maybe Int32)
iilMaxResults
  = lens _iilMaxResults
      (\ s a -> s{_iilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
iilFields :: Lens' InventoryItemsList' (Maybe Text)
iilFields
  = lens _iilFields (\ s a -> s{_iilFields = a})

-- | Data format for the response.
iilAlt :: Lens' InventoryItemsList' Alt
iilAlt = lens _iilAlt (\ s a -> s{_iilAlt = a})

instance GoogleRequest InventoryItemsList' where
        type Rs InventoryItemsList' =
             InventoryItemsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u InventoryItemsList'{..}
          = go _iilQuotaUser (Just _iilPrettyPrint) _iilUserIp
              _iilIds
              _iilProfileId
              _iilSortOrder
              _iilInPlan
              _iilKey
              _iilPageToken
              _iilProjectId
              _iilSortField
              _iilOauthToken
              _iilOrderId
              _iilSiteId
              _iilMaxResults
              _iilFields
              (Just _iilAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InventoryItemsListResource)
                      r
                      u
