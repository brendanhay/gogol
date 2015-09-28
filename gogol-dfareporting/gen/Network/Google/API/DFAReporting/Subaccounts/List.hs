{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Subaccounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of subaccounts, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.subaccounts.list@.
module Network.Google.API.DFAReporting.Subaccounts.List
    (
    -- * REST Resource
      SubaccountsListAPI

    -- * Creating a Request
    , subaccountsList'
    , SubaccountsList'

    -- * Request Lenses
    , ssQuotaUser
    , ssPrettyPrint
    , ssUserIp
    , ssSearchString
    , ssIds
    , ssProfileId
    , ssSortOrder
    , ssKey
    , ssPageToken
    , ssSortField
    , ssOauthToken
    , ssMaxResults
    , ssFields
    , ssAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.subaccounts.list which the
-- 'SubaccountsList'' request conforms to.
type SubaccountsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "searchString" Text :>
                   QueryParam "ids" Int64 :>
                     QueryParam "sortOrder" SubaccountsList'SortOrder :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField" SubaccountsList'SortField :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Get '[JSON] SubaccountsListResponse

-- | Gets a list of subaccounts, possibly filtered.
--
-- /See:/ 'subaccountsList'' smart constructor.
data SubaccountsList' = SubaccountsList'
    { _ssQuotaUser    :: !(Maybe Text)
    , _ssPrettyPrint  :: !Bool
    , _ssUserIp       :: !(Maybe Text)
    , _ssSearchString :: !(Maybe Text)
    , _ssIds          :: !(Maybe Int64)
    , _ssProfileId    :: !Int64
    , _ssSortOrder    :: !(Maybe SubaccountsList'SortOrder)
    , _ssKey          :: !(Maybe Text)
    , _ssPageToken    :: !(Maybe Text)
    , _ssSortField    :: !(Maybe SubaccountsList'SortField)
    , _ssOauthToken   :: !(Maybe Text)
    , _ssMaxResults   :: !(Maybe Int32)
    , _ssFields       :: !(Maybe Text)
    , _ssAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssQuotaUser'
--
-- * 'ssPrettyPrint'
--
-- * 'ssUserIp'
--
-- * 'ssSearchString'
--
-- * 'ssIds'
--
-- * 'ssProfileId'
--
-- * 'ssSortOrder'
--
-- * 'ssKey'
--
-- * 'ssPageToken'
--
-- * 'ssSortField'
--
-- * 'ssOauthToken'
--
-- * 'ssMaxResults'
--
-- * 'ssFields'
--
-- * 'ssAlt'
subaccountsList'
    :: Int64 -- ^ 'profileId'
    -> SubaccountsList'
subaccountsList' pSsProfileId_ =
    SubaccountsList'
    { _ssQuotaUser = Nothing
    , _ssPrettyPrint = True
    , _ssUserIp = Nothing
    , _ssSearchString = Nothing
    , _ssIds = Nothing
    , _ssProfileId = pSsProfileId_
    , _ssSortOrder = Nothing
    , _ssKey = Nothing
    , _ssPageToken = Nothing
    , _ssSortField = Nothing
    , _ssOauthToken = Nothing
    , _ssMaxResults = Nothing
    , _ssFields = Nothing
    , _ssAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ssQuotaUser :: Lens' SubaccountsList' (Maybe Text)
ssQuotaUser
  = lens _ssQuotaUser (\ s a -> s{_ssQuotaUser = a})

-- | Returns response with indentations and line breaks.
ssPrettyPrint :: Lens' SubaccountsList' Bool
ssPrettyPrint
  = lens _ssPrettyPrint
      (\ s a -> s{_ssPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ssUserIp :: Lens' SubaccountsList' (Maybe Text)
ssUserIp = lens _ssUserIp (\ s a -> s{_ssUserIp = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"subaccount*2015\" will return objects with names like
-- \"subaccount June 2015\", \"subaccount April 2015\", or simply
-- \"subaccount 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"subaccount\" will match objects with name \"my subaccount\",
-- \"subaccount 2015\", or simply \"subaccount\".
ssSearchString :: Lens' SubaccountsList' (Maybe Text)
ssSearchString
  = lens _ssSearchString
      (\ s a -> s{_ssSearchString = a})

-- | Select only subaccounts with these IDs.
ssIds :: Lens' SubaccountsList' (Maybe Int64)
ssIds = lens _ssIds (\ s a -> s{_ssIds = a})

-- | User profile ID associated with this request.
ssProfileId :: Lens' SubaccountsList' Int64
ssProfileId
  = lens _ssProfileId (\ s a -> s{_ssProfileId = a})

-- | Order of sorted results, default is ASCENDING.
ssSortOrder :: Lens' SubaccountsList' (Maybe SubaccountsList'SortOrder)
ssSortOrder
  = lens _ssSortOrder (\ s a -> s{_ssSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssKey :: Lens' SubaccountsList' (Maybe Text)
ssKey = lens _ssKey (\ s a -> s{_ssKey = a})

-- | Value of the nextPageToken from the previous result page.
ssPageToken :: Lens' SubaccountsList' (Maybe Text)
ssPageToken
  = lens _ssPageToken (\ s a -> s{_ssPageToken = a})

-- | Field by which to sort the list.
ssSortField :: Lens' SubaccountsList' (Maybe SubaccountsList'SortField)
ssSortField
  = lens _ssSortField (\ s a -> s{_ssSortField = a})

-- | OAuth 2.0 token for the current user.
ssOauthToken :: Lens' SubaccountsList' (Maybe Text)
ssOauthToken
  = lens _ssOauthToken (\ s a -> s{_ssOauthToken = a})

-- | Maximum number of results to return.
ssMaxResults :: Lens' SubaccountsList' (Maybe Int32)
ssMaxResults
  = lens _ssMaxResults (\ s a -> s{_ssMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ssFields :: Lens' SubaccountsList' (Maybe Text)
ssFields = lens _ssFields (\ s a -> s{_ssFields = a})

-- | Data format for the response.
ssAlt :: Lens' SubaccountsList' Alt
ssAlt = lens _ssAlt (\ s a -> s{_ssAlt = a})

instance GoogleRequest SubaccountsList' where
        type Rs SubaccountsList' = SubaccountsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsList'{..}
          = go _ssQuotaUser (Just _ssPrettyPrint) _ssUserIp
              _ssSearchString
              _ssIds
              _ssProfileId
              _ssSortOrder
              _ssKey
              _ssPageToken
              _ssSortField
              _ssOauthToken
              _ssMaxResults
              _ssFields
              (Just _ssAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SubaccountsListAPI)
                      r
                      u
