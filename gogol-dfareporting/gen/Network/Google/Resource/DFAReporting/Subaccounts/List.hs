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
-- Module      : Network.Google.Resource.DFAReporting.Subaccounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of subaccounts, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubaccountsList@.
module Network.Google.Resource.DFAReporting.Subaccounts.List
    (
    -- * REST Resource
      SubaccountsListResource

    -- * Creating a Request
    , subaccountsList'
    , SubaccountsList'

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sSearchString
    , sIds
    , sProfileId
    , sSortOrder
    , sKey
    , sPageToken
    , sSortField
    , sOauthToken
    , sMaxResults
    , sFields
    , sAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubaccountsList@ which the
-- 'SubaccountsList'' request conforms to.
type SubaccountsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" Int64 :>
                     QueryParam "sortOrder"
                       DfareportingSubaccountsListSortOrder
                       :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField"
                             DfareportingSubaccountsListSortField
                             :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Get '[JSON] SubaccountsListResponse

-- | Gets a list of subaccounts, possibly filtered.
--
-- /See:/ 'subaccountsList'' smart constructor.
data SubaccountsList' = SubaccountsList'
    { _sQuotaUser    :: !(Maybe Text)
    , _sPrettyPrint  :: !Bool
    , _sUserIp       :: !(Maybe Text)
    , _sSearchString :: !(Maybe Text)
    , _sIds          :: !(Maybe Int64)
    , _sProfileId    :: !Int64
    , _sSortOrder    :: !(Maybe DfareportingSubaccountsListSortOrder)
    , _sKey          :: !(Maybe Text)
    , _sPageToken    :: !(Maybe Text)
    , _sSortField    :: !(Maybe DfareportingSubaccountsListSortField)
    , _sOauthToken   :: !(Maybe Text)
    , _sMaxResults   :: !(Maybe Int32)
    , _sFields       :: !(Maybe Text)
    , _sAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIp'
--
-- * 'sSearchString'
--
-- * 'sIds'
--
-- * 'sProfileId'
--
-- * 'sSortOrder'
--
-- * 'sKey'
--
-- * 'sPageToken'
--
-- * 'sSortField'
--
-- * 'sOauthToken'
--
-- * 'sMaxResults'
--
-- * 'sFields'
--
-- * 'sAlt'
subaccountsList'
    :: Int64 -- ^ 'profileId'
    -> SubaccountsList'
subaccountsList' pSProfileId_ =
    SubaccountsList'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sSearchString = Nothing
    , _sIds = Nothing
    , _sProfileId = pSProfileId_
    , _sSortOrder = Nothing
    , _sKey = Nothing
    , _sPageToken = Nothing
    , _sSortField = Nothing
    , _sOauthToken = Nothing
    , _sMaxResults = Nothing
    , _sFields = Nothing
    , _sAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SubaccountsList' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SubaccountsList' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' SubaccountsList' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"subaccount*2015\" will return objects with names like
-- \"subaccount June 2015\", \"subaccount April 2015\", or simply
-- \"subaccount 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"subaccount\" will match objects with name \"my subaccount\",
-- \"subaccount 2015\", or simply \"subaccount\".
sSearchString :: Lens' SubaccountsList' (Maybe Text)
sSearchString
  = lens _sSearchString
      (\ s a -> s{_sSearchString = a})

-- | Select only subaccounts with these IDs.
sIds :: Lens' SubaccountsList' (Maybe Int64)
sIds = lens _sIds (\ s a -> s{_sIds = a})

-- | User profile ID associated with this request.
sProfileId :: Lens' SubaccountsList' Int64
sProfileId
  = lens _sProfileId (\ s a -> s{_sProfileId = a})

-- | Order of sorted results, default is ASCENDING.
sSortOrder :: Lens' SubaccountsList' (Maybe DfareportingSubaccountsListSortOrder)
sSortOrder
  = lens _sSortOrder (\ s a -> s{_sSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SubaccountsList' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | Value of the nextPageToken from the previous result page.
sPageToken :: Lens' SubaccountsList' (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | Field by which to sort the list.
sSortField :: Lens' SubaccountsList' (Maybe DfareportingSubaccountsListSortField)
sSortField
  = lens _sSortField (\ s a -> s{_sSortField = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' SubaccountsList' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Maximum number of results to return.
sMaxResults :: Lens' SubaccountsList' (Maybe Int32)
sMaxResults
  = lens _sMaxResults (\ s a -> s{_sMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SubaccountsList' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' SubaccountsList' Alt
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest SubaccountsList' where
        type Rs SubaccountsList' = SubaccountsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsList'{..}
          = go _sQuotaUser (Just _sPrettyPrint) _sUserIp
              _sSearchString
              _sIds
              _sProfileId
              _sSortOrder
              _sKey
              _sPageToken
              _sSortField
              _sOauthToken
              _sMaxResults
              _sFields
              (Just _sAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubaccountsListResource)
                      r
                      u
