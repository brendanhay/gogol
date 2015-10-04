{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Orders.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of orders, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOrdersList@.
module Network.Google.Resource.DFAReporting.Orders.List
    (
    -- * REST Resource
      OrdersListResource

    -- * Creating a Request
    , ordersList'
    , OrdersList'

    -- * Request Lenses
    , olQuotaUser
    , olPrettyPrint
    , olUserIP
    , olSearchString
    , olIds
    , olProfileId
    , olSortOrder
    , olKey
    , olPageToken
    , olProjectId
    , olSortField
    , olOAuthToken
    , olSiteId
    , olMaxResults
    , olFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOrdersList@ which the
-- 'OrdersList'' request conforms to.
type OrdersListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "orders" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" Int64 :>
                   QueryParam "sortOrder"
                     DfareportingOrdersListSortOrder
                     :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField"
                         DfareportingOrdersListSortField
                         :>
                         QueryParams "siteId" Int64 :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] OrdersListResponse

-- | Retrieves a list of orders, possibly filtered.
--
-- /See:/ 'ordersList'' smart constructor.
data OrdersList' = OrdersList'
    { _olQuotaUser    :: !(Maybe Text)
    , _olPrettyPrint  :: !Bool
    , _olUserIP       :: !(Maybe Text)
    , _olSearchString :: !(Maybe Text)
    , _olIds          :: !(Maybe [Int64])
    , _olProfileId    :: !Int64
    , _olSortOrder    :: !(Maybe DfareportingOrdersListSortOrder)
    , _olKey          :: !(Maybe Key)
    , _olPageToken    :: !(Maybe Text)
    , _olProjectId    :: !Int64
    , _olSortField    :: !(Maybe DfareportingOrdersListSortField)
    , _olOAuthToken   :: !(Maybe OAuthToken)
    , _olSiteId       :: !(Maybe [Int64])
    , _olMaxResults   :: !(Maybe Int32)
    , _olFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olUserIP'
--
-- * 'olSearchString'
--
-- * 'olIds'
--
-- * 'olProfileId'
--
-- * 'olSortOrder'
--
-- * 'olKey'
--
-- * 'olPageToken'
--
-- * 'olProjectId'
--
-- * 'olSortField'
--
-- * 'olOAuthToken'
--
-- * 'olSiteId'
--
-- * 'olMaxResults'
--
-- * 'olFields'
ordersList'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'projectId'
    -> OrdersList'
ordersList' pOlProfileId_ pOlProjectId_ =
    OrdersList'
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olUserIP = Nothing
    , _olSearchString = Nothing
    , _olIds = Nothing
    , _olProfileId = pOlProfileId_
    , _olSortOrder = Nothing
    , _olKey = Nothing
    , _olPageToken = Nothing
    , _olProjectId = pOlProjectId_
    , _olSortField = Nothing
    , _olOAuthToken = Nothing
    , _olSiteId = Nothing
    , _olMaxResults = Nothing
    , _olFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' OrdersList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OrdersList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIP :: Lens' OrdersList' (Maybe Text)
olUserIP = lens _olUserIP (\ s a -> s{_olUserIP = a})

-- | Allows searching for orders by name or ID. Wildcards (*) are allowed.
-- For example, \"order*2015\" will return orders with names like \"order
-- June 2015\", \"order April 2015\", or simply \"order 2015\". Most of the
-- searches also add wildcards implicitly at the start and the end of the
-- search string. For example, a search string of \"order\" will match
-- orders with name \"my order\", \"order 2015\", or simply \"order\".
olSearchString :: Lens' OrdersList' (Maybe Text)
olSearchString
  = lens _olSearchString
      (\ s a -> s{_olSearchString = a})

-- | Select only orders with these IDs.
olIds :: Lens' OrdersList' [Int64]
olIds
  = lens _olIds (\ s a -> s{_olIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
olProfileId :: Lens' OrdersList' Int64
olProfileId
  = lens _olProfileId (\ s a -> s{_olProfileId = a})

-- | Order of sorted results, default is ASCENDING.
olSortOrder :: Lens' OrdersList' (Maybe DfareportingOrdersListSortOrder)
olSortOrder
  = lens _olSortOrder (\ s a -> s{_olSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OrdersList' (Maybe Key)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | Value of the nextPageToken from the previous result page.
olPageToken :: Lens' OrdersList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | Project ID for orders.
olProjectId :: Lens' OrdersList' Int64
olProjectId
  = lens _olProjectId (\ s a -> s{_olProjectId = a})

-- | Field by which to sort the list.
olSortField :: Lens' OrdersList' (Maybe DfareportingOrdersListSortField)
olSortField
  = lens _olSortField (\ s a -> s{_olSortField = a})

-- | OAuth 2.0 token for the current user.
olOAuthToken :: Lens' OrdersList' (Maybe OAuthToken)
olOAuthToken
  = lens _olOAuthToken (\ s a -> s{_olOAuthToken = a})

-- | Select only orders that are associated with these site IDs.
olSiteId :: Lens' OrdersList' [Int64]
olSiteId
  = lens _olSiteId (\ s a -> s{_olSiteId = a}) .
      _Default
      . _Coerce

-- | Maximum number of results to return.
olMaxResults :: Lens' OrdersList' (Maybe Int32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OrdersList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

instance GoogleAuth OrdersList' where
        authKey = olKey . _Just
        authToken = olOAuthToken . _Just

instance GoogleRequest OrdersList' where
        type Rs OrdersList' = OrdersListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OrdersList'{..}
          = go _olProfileId _olProjectId _olSearchString
              (_olIds ^. _Default)
              _olSortOrder
              _olPageToken
              _olSortField
              (_olSiteId ^. _Default)
              _olMaxResults
              _olQuotaUser
              (Just _olPrettyPrint)
              _olUserIP
              _olFields
              _olKey
              _olOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersListResource)
                      r
                      u
