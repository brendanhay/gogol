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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of advertiser groups, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertiserGroupsList@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.List
    (
    -- * REST Resource
      AdvertiserGroupsListResource

    -- * Creating a Request
    , advertiserGroupsList'
    , AdvertiserGroupsList'

    -- * Request Lenses
    , aglQuotaUser
    , aglPrettyPrint
    , aglUserIp
    , aglSearchString
    , aglIds
    , aglProfileId
    , aglSortOrder
    , aglKey
    , aglPageToken
    , aglSortField
    , aglOauthToken
    , aglMaxResults
    , aglFields
    , aglAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsList@ which the
-- 'AdvertiserGroupsList'' request conforms to.
type AdvertiserGroupsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" Int64 :>
                     QueryParam "sortOrder"
                       DfareportingAdvertiserGroupsListSortOrder
                       :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField"
                             DfareportingAdvertiserGroupsListSortField
                             :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Get '[JSON] AdvertiserGroupsListResponse

-- | Retrieves a list of advertiser groups, possibly filtered.
--
-- /See:/ 'advertiserGroupsList'' smart constructor.
data AdvertiserGroupsList' = AdvertiserGroupsList'
    { _aglQuotaUser    :: !(Maybe Text)
    , _aglPrettyPrint  :: !Bool
    , _aglUserIp       :: !(Maybe Text)
    , _aglSearchString :: !(Maybe Text)
    , _aglIds          :: !(Maybe Int64)
    , _aglProfileId    :: !Int64
    , _aglSortOrder    :: !(Maybe DfareportingAdvertiserGroupsListSortOrder)
    , _aglKey          :: !(Maybe Text)
    , _aglPageToken    :: !(Maybe Text)
    , _aglSortField    :: !(Maybe DfareportingAdvertiserGroupsListSortField)
    , _aglOauthToken   :: !(Maybe Text)
    , _aglMaxResults   :: !(Maybe Int32)
    , _aglFields       :: !(Maybe Text)
    , _aglAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aglQuotaUser'
--
-- * 'aglPrettyPrint'
--
-- * 'aglUserIp'
--
-- * 'aglSearchString'
--
-- * 'aglIds'
--
-- * 'aglProfileId'
--
-- * 'aglSortOrder'
--
-- * 'aglKey'
--
-- * 'aglPageToken'
--
-- * 'aglSortField'
--
-- * 'aglOauthToken'
--
-- * 'aglMaxResults'
--
-- * 'aglFields'
--
-- * 'aglAlt'
advertiserGroupsList'
    :: Int64 -- ^ 'profileId'
    -> AdvertiserGroupsList'
advertiserGroupsList' pAglProfileId_ =
    AdvertiserGroupsList'
    { _aglQuotaUser = Nothing
    , _aglPrettyPrint = True
    , _aglUserIp = Nothing
    , _aglSearchString = Nothing
    , _aglIds = Nothing
    , _aglProfileId = pAglProfileId_
    , _aglSortOrder = Nothing
    , _aglKey = Nothing
    , _aglPageToken = Nothing
    , _aglSortField = Nothing
    , _aglOauthToken = Nothing
    , _aglMaxResults = Nothing
    , _aglFields = Nothing
    , _aglAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aglQuotaUser :: Lens' AdvertiserGroupsList' (Maybe Text)
aglQuotaUser
  = lens _aglQuotaUser (\ s a -> s{_aglQuotaUser = a})

-- | Returns response with indentations and line breaks.
aglPrettyPrint :: Lens' AdvertiserGroupsList' Bool
aglPrettyPrint
  = lens _aglPrettyPrint
      (\ s a -> s{_aglPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aglUserIp :: Lens' AdvertiserGroupsList' (Maybe Text)
aglUserIp
  = lens _aglUserIp (\ s a -> s{_aglUserIp = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"advertiser*2015\" will return objects with names like
-- \"advertiser group June 2015\", \"advertiser group April 2015\", or
-- simply \"advertiser group 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"advertisergroup\" will match objects with
-- name \"my advertisergroup\", \"advertisergroup 2015\", or simply
-- \"advertisergroup\".
aglSearchString :: Lens' AdvertiserGroupsList' (Maybe Text)
aglSearchString
  = lens _aglSearchString
      (\ s a -> s{_aglSearchString = a})

-- | Select only advertiser groups with these IDs.
aglIds :: Lens' AdvertiserGroupsList' (Maybe Int64)
aglIds = lens _aglIds (\ s a -> s{_aglIds = a})

-- | User profile ID associated with this request.
aglProfileId :: Lens' AdvertiserGroupsList' Int64
aglProfileId
  = lens _aglProfileId (\ s a -> s{_aglProfileId = a})

-- | Order of sorted results, default is ASCENDING.
aglSortOrder :: Lens' AdvertiserGroupsList' (Maybe DfareportingAdvertiserGroupsListSortOrder)
aglSortOrder
  = lens _aglSortOrder (\ s a -> s{_aglSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aglKey :: Lens' AdvertiserGroupsList' (Maybe Text)
aglKey = lens _aglKey (\ s a -> s{_aglKey = a})

-- | Value of the nextPageToken from the previous result page.
aglPageToken :: Lens' AdvertiserGroupsList' (Maybe Text)
aglPageToken
  = lens _aglPageToken (\ s a -> s{_aglPageToken = a})

-- | Field by which to sort the list.
aglSortField :: Lens' AdvertiserGroupsList' (Maybe DfareportingAdvertiserGroupsListSortField)
aglSortField
  = lens _aglSortField (\ s a -> s{_aglSortField = a})

-- | OAuth 2.0 token for the current user.
aglOauthToken :: Lens' AdvertiserGroupsList' (Maybe Text)
aglOauthToken
  = lens _aglOauthToken
      (\ s a -> s{_aglOauthToken = a})

-- | Maximum number of results to return.
aglMaxResults :: Lens' AdvertiserGroupsList' (Maybe Int32)
aglMaxResults
  = lens _aglMaxResults
      (\ s a -> s{_aglMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aglFields :: Lens' AdvertiserGroupsList' (Maybe Text)
aglFields
  = lens _aglFields (\ s a -> s{_aglFields = a})

-- | Data format for the response.
aglAlt :: Lens' AdvertiserGroupsList' Alt
aglAlt = lens _aglAlt (\ s a -> s{_aglAlt = a})

instance GoogleRequest AdvertiserGroupsList' where
        type Rs AdvertiserGroupsList' =
             AdvertiserGroupsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsList'{..}
          = go _aglQuotaUser (Just _aglPrettyPrint) _aglUserIp
              _aglSearchString
              _aglIds
              _aglProfileId
              _aglSortOrder
              _aglKey
              _aglPageToken
              _aglSortField
              _aglOauthToken
              _aglMaxResults
              _aglFields
              (Just _aglAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsListResource)
                      r
                      u
