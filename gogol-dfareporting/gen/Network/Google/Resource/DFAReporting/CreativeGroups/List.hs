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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of creative groups, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeGroupsList@.
module Network.Google.Resource.DFAReporting.CreativeGroups.List
    (
    -- * REST Resource
      CreativeGroupsListResource

    -- * Creating a Request
    , creativeGroupsList'
    , CreativeGroupsList'

    -- * Request Lenses
    , cglQuotaUser
    , cglPrettyPrint
    , cglUserIP
    , cglSearchString
    , cglIds
    , cglProFileId
    , cglSortOrder
    , cglGroupNumber
    , cglKey
    , cglPageToken
    , cglSortField
    , cglOAuthToken
    , cglAdvertiserIds
    , cglMaxResults
    , cglFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeGroupsList@ method which the
-- 'CreativeGroupsList'' request conforms to.
type CreativeGroupsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder" CreativeGroupsListSortOrder :>
                 QueryParam "groupNumber" Int32 :>
                   QueryParam "pageToken" Text :>
                     QueryParam "sortField" CreativeGroupsListSortField :>
                       QueryParams "advertiserIds" Int64 :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] CreativeGroupsListResponse

-- | Retrieves a list of creative groups, possibly filtered.
--
-- /See:/ 'creativeGroupsList'' smart constructor.
data CreativeGroupsList' = CreativeGroupsList'
    { _cglQuotaUser     :: !(Maybe Text)
    , _cglPrettyPrint   :: !Bool
    , _cglUserIP        :: !(Maybe Text)
    , _cglSearchString  :: !(Maybe Text)
    , _cglIds           :: !(Maybe [Int64])
    , _cglProFileId     :: !Int64
    , _cglSortOrder     :: !(Maybe CreativeGroupsListSortOrder)
    , _cglGroupNumber   :: !(Maybe Int32)
    , _cglKey           :: !(Maybe AuthKey)
    , _cglPageToken     :: !(Maybe Text)
    , _cglSortField     :: !(Maybe CreativeGroupsListSortField)
    , _cglOAuthToken    :: !(Maybe OAuthToken)
    , _cglAdvertiserIds :: !(Maybe [Int64])
    , _cglMaxResults    :: !(Maybe Int32)
    , _cglFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cglQuotaUser'
--
-- * 'cglPrettyPrint'
--
-- * 'cglUserIP'
--
-- * 'cglSearchString'
--
-- * 'cglIds'
--
-- * 'cglProFileId'
--
-- * 'cglSortOrder'
--
-- * 'cglGroupNumber'
--
-- * 'cglKey'
--
-- * 'cglPageToken'
--
-- * 'cglSortField'
--
-- * 'cglOAuthToken'
--
-- * 'cglAdvertiserIds'
--
-- * 'cglMaxResults'
--
-- * 'cglFields'
creativeGroupsList'
    :: Int64 -- ^ 'profileId'
    -> CreativeGroupsList'
creativeGroupsList' pCglProFileId_ =
    CreativeGroupsList'
    { _cglQuotaUser = Nothing
    , _cglPrettyPrint = True
    , _cglUserIP = Nothing
    , _cglSearchString = Nothing
    , _cglIds = Nothing
    , _cglProFileId = pCglProFileId_
    , _cglSortOrder = Nothing
    , _cglGroupNumber = Nothing
    , _cglKey = Nothing
    , _cglPageToken = Nothing
    , _cglSortField = Nothing
    , _cglOAuthToken = Nothing
    , _cglAdvertiserIds = Nothing
    , _cglMaxResults = Nothing
    , _cglFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cglQuotaUser :: Lens' CreativeGroupsList' (Maybe Text)
cglQuotaUser
  = lens _cglQuotaUser (\ s a -> s{_cglQuotaUser = a})

-- | Returns response with indentations and line breaks.
cglPrettyPrint :: Lens' CreativeGroupsList' Bool
cglPrettyPrint
  = lens _cglPrettyPrint
      (\ s a -> s{_cglPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cglUserIP :: Lens' CreativeGroupsList' (Maybe Text)
cglUserIP
  = lens _cglUserIP (\ s a -> s{_cglUserIP = a})

-- | Allows searching for creative groups by name or ID. Wildcards (*) are
-- allowed. For example, \"creativegroup*2015\" will return creative groups
-- with names like \"creativegroup June 2015\", \"creativegroup April
-- 2015\", or simply \"creativegroup 2015\". Most of the searches also add
-- wild-cards implicitly at the start and the end of the search string. For
-- example, a search string of \"creativegroup\" will match creative groups
-- with the name \"my creativegroup\", \"creativegroup 2015\", or simply
-- \"creativegroup\".
cglSearchString :: Lens' CreativeGroupsList' (Maybe Text)
cglSearchString
  = lens _cglSearchString
      (\ s a -> s{_cglSearchString = a})

-- | Select only creative groups with these IDs.
cglIds :: Lens' CreativeGroupsList' [Int64]
cglIds
  = lens _cglIds (\ s a -> s{_cglIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
cglProFileId :: Lens' CreativeGroupsList' Int64
cglProFileId
  = lens _cglProFileId (\ s a -> s{_cglProFileId = a})

-- | Order of sorted results, default is ASCENDING.
cglSortOrder :: Lens' CreativeGroupsList' (Maybe CreativeGroupsListSortOrder)
cglSortOrder
  = lens _cglSortOrder (\ s a -> s{_cglSortOrder = a})

-- | Select only creative groups that belong to this subgroup.
cglGroupNumber :: Lens' CreativeGroupsList' (Maybe Int32)
cglGroupNumber
  = lens _cglGroupNumber
      (\ s a -> s{_cglGroupNumber = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cglKey :: Lens' CreativeGroupsList' (Maybe AuthKey)
cglKey = lens _cglKey (\ s a -> s{_cglKey = a})

-- | Value of the nextPageToken from the previous result page.
cglPageToken :: Lens' CreativeGroupsList' (Maybe Text)
cglPageToken
  = lens _cglPageToken (\ s a -> s{_cglPageToken = a})

-- | Field by which to sort the list.
cglSortField :: Lens' CreativeGroupsList' (Maybe CreativeGroupsListSortField)
cglSortField
  = lens _cglSortField (\ s a -> s{_cglSortField = a})

-- | OAuth 2.0 token for the current user.
cglOAuthToken :: Lens' CreativeGroupsList' (Maybe OAuthToken)
cglOAuthToken
  = lens _cglOAuthToken
      (\ s a -> s{_cglOAuthToken = a})

-- | Select only creative groups that belong to these advertisers.
cglAdvertiserIds :: Lens' CreativeGroupsList' [Int64]
cglAdvertiserIds
  = lens _cglAdvertiserIds
      (\ s a -> s{_cglAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Maximum number of results to return.
cglMaxResults :: Lens' CreativeGroupsList' (Maybe Int32)
cglMaxResults
  = lens _cglMaxResults
      (\ s a -> s{_cglMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cglFields :: Lens' CreativeGroupsList' (Maybe Text)
cglFields
  = lens _cglFields (\ s a -> s{_cglFields = a})

instance GoogleAuth CreativeGroupsList' where
        _AuthKey = cglKey . _Just
        _AuthToken = cglOAuthToken . _Just

instance GoogleRequest CreativeGroupsList' where
        type Rs CreativeGroupsList' =
             CreativeGroupsListResponse
        request = requestWith dFAReportingRequest
        requestWith rq CreativeGroupsList'{..}
          = go _cglProFileId _cglSearchString
              (_cglIds ^. _Default)
              _cglSortOrder
              _cglGroupNumber
              _cglPageToken
              _cglSortField
              (_cglAdvertiserIds ^. _Default)
              _cglMaxResults
              _cglQuotaUser
              (Just _cglPrettyPrint)
              _cglUserIP
              _cglFields
              _cglKey
              _cglOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CreativeGroupsListResource)
                      rq
