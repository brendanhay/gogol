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
    , aglUserIP
    , aglSearchString
    , aglIds
    , aglProFileId
    , aglSortOrder
    , aglKey
    , aglPageToken
    , aglSortField
    , aglOAuthToken
    , aglMaxResults
    , aglFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsList@ which the
-- 'AdvertiserGroupsList'' request conforms to.
type AdvertiserGroupsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder" AdvertiserGroupsListSortOrder
                 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "sortField" AdvertiserGroupsListSortField
                     :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] AdvertiserGroupsListResponse

-- | Retrieves a list of advertiser groups, possibly filtered.
--
-- /See:/ 'advertiserGroupsList'' smart constructor.
data AdvertiserGroupsList' = AdvertiserGroupsList'
    { _aglQuotaUser    :: !(Maybe Text)
    , _aglPrettyPrint  :: !Bool
    , _aglUserIP       :: !(Maybe Text)
    , _aglSearchString :: !(Maybe Text)
    , _aglIds          :: !(Maybe [Int64])
    , _aglProFileId    :: !Int64
    , _aglSortOrder    :: !(Maybe AdvertiserGroupsListSortOrder)
    , _aglKey          :: !(Maybe AuthKey)
    , _aglPageToken    :: !(Maybe Text)
    , _aglSortField    :: !(Maybe AdvertiserGroupsListSortField)
    , _aglOAuthToken   :: !(Maybe OAuthToken)
    , _aglMaxResults   :: !(Maybe Int32)
    , _aglFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aglQuotaUser'
--
-- * 'aglPrettyPrint'
--
-- * 'aglUserIP'
--
-- * 'aglSearchString'
--
-- * 'aglIds'
--
-- * 'aglProFileId'
--
-- * 'aglSortOrder'
--
-- * 'aglKey'
--
-- * 'aglPageToken'
--
-- * 'aglSortField'
--
-- * 'aglOAuthToken'
--
-- * 'aglMaxResults'
--
-- * 'aglFields'
advertiserGroupsList'
    :: Int64 -- ^ 'profileId'
    -> AdvertiserGroupsList'
advertiserGroupsList' pAglProFileId_ =
    AdvertiserGroupsList'
    { _aglQuotaUser = Nothing
    , _aglPrettyPrint = True
    , _aglUserIP = Nothing
    , _aglSearchString = Nothing
    , _aglIds = Nothing
    , _aglProFileId = pAglProFileId_
    , _aglSortOrder = Nothing
    , _aglKey = Nothing
    , _aglPageToken = Nothing
    , _aglSortField = Nothing
    , _aglOAuthToken = Nothing
    , _aglMaxResults = Nothing
    , _aglFields = Nothing
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
aglUserIP :: Lens' AdvertiserGroupsList' (Maybe Text)
aglUserIP
  = lens _aglUserIP (\ s a -> s{_aglUserIP = a})

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
aglIds :: Lens' AdvertiserGroupsList' [Int64]
aglIds
  = lens _aglIds (\ s a -> s{_aglIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
aglProFileId :: Lens' AdvertiserGroupsList' Int64
aglProFileId
  = lens _aglProFileId (\ s a -> s{_aglProFileId = a})

-- | Order of sorted results, default is ASCENDING.
aglSortOrder :: Lens' AdvertiserGroupsList' (Maybe AdvertiserGroupsListSortOrder)
aglSortOrder
  = lens _aglSortOrder (\ s a -> s{_aglSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aglKey :: Lens' AdvertiserGroupsList' (Maybe AuthKey)
aglKey = lens _aglKey (\ s a -> s{_aglKey = a})

-- | Value of the nextPageToken from the previous result page.
aglPageToken :: Lens' AdvertiserGroupsList' (Maybe Text)
aglPageToken
  = lens _aglPageToken (\ s a -> s{_aglPageToken = a})

-- | Field by which to sort the list.
aglSortField :: Lens' AdvertiserGroupsList' (Maybe AdvertiserGroupsListSortField)
aglSortField
  = lens _aglSortField (\ s a -> s{_aglSortField = a})

-- | OAuth 2.0 token for the current user.
aglOAuthToken :: Lens' AdvertiserGroupsList' (Maybe OAuthToken)
aglOAuthToken
  = lens _aglOAuthToken
      (\ s a -> s{_aglOAuthToken = a})

-- | Maximum number of results to return.
aglMaxResults :: Lens' AdvertiserGroupsList' (Maybe Int32)
aglMaxResults
  = lens _aglMaxResults
      (\ s a -> s{_aglMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aglFields :: Lens' AdvertiserGroupsList' (Maybe Text)
aglFields
  = lens _aglFields (\ s a -> s{_aglFields = a})

instance GoogleAuth AdvertiserGroupsList' where
        authKey = aglKey . _Just
        authToken = aglOAuthToken . _Just

instance GoogleRequest AdvertiserGroupsList' where
        type Rs AdvertiserGroupsList' =
             AdvertiserGroupsListResponse
        request = requestWith dFAReportingRequest
        requestWith rq AdvertiserGroupsList'{..}
          = go _aglProFileId _aglSearchString
              (_aglIds ^. _Default)
              _aglSortOrder
              _aglPageToken
              _aglSortField
              _aglMaxResults
              _aglQuotaUser
              (Just _aglPrettyPrint)
              _aglUserIP
              _aglFields
              _aglKey
              _aglOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AdvertiserGroupsListResource)
                      rq
