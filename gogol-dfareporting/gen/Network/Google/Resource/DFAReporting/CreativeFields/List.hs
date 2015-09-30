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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of creative fields, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsList@.
module Network.Google.Resource.DFAReporting.CreativeFields.List
    (
    -- * REST Resource
      CreativeFieldsListResource

    -- * Creating a Request
    , creativeFieldsList'
    , CreativeFieldsList'

    -- * Request Lenses
    , cflQuotaUser
    , cflPrettyPrint
    , cflUserIp
    , cflSearchString
    , cflIds
    , cflProfileId
    , cflSortOrder
    , cflKey
    , cflPageToken
    , cflSortField
    , cflOauthToken
    , cflAdvertiserIds
    , cflMaxResults
    , cflFields
    , cflAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsList@ which the
-- 'CreativeFieldsList'' request conforms to.
type CreativeFieldsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" Int64 :>
                     QueryParam "sortOrder"
                       DfareportingCreativeFieldsListSortOrder
                       :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField"
                             DfareportingCreativeFieldsListSortField
                             :>
                             QueryParam "oauth_token" Text :>
                               QueryParams "advertiserIds" Int64 :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON] CreativeFieldsListResponse

-- | Retrieves a list of creative fields, possibly filtered.
--
-- /See:/ 'creativeFieldsList'' smart constructor.
data CreativeFieldsList' = CreativeFieldsList'
    { _cflQuotaUser     :: !(Maybe Text)
    , _cflPrettyPrint   :: !Bool
    , _cflUserIp        :: !(Maybe Text)
    , _cflSearchString  :: !(Maybe Text)
    , _cflIds           :: !(Maybe Int64)
    , _cflProfileId     :: !Int64
    , _cflSortOrder     :: !(Maybe DfareportingCreativeFieldsListSortOrder)
    , _cflKey           :: !(Maybe Text)
    , _cflPageToken     :: !(Maybe Text)
    , _cflSortField     :: !(Maybe DfareportingCreativeFieldsListSortField)
    , _cflOauthToken    :: !(Maybe Text)
    , _cflAdvertiserIds :: !(Maybe Int64)
    , _cflMaxResults    :: !(Maybe Int32)
    , _cflFields        :: !(Maybe Text)
    , _cflAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflQuotaUser'
--
-- * 'cflPrettyPrint'
--
-- * 'cflUserIp'
--
-- * 'cflSearchString'
--
-- * 'cflIds'
--
-- * 'cflProfileId'
--
-- * 'cflSortOrder'
--
-- * 'cflKey'
--
-- * 'cflPageToken'
--
-- * 'cflSortField'
--
-- * 'cflOauthToken'
--
-- * 'cflAdvertiserIds'
--
-- * 'cflMaxResults'
--
-- * 'cflFields'
--
-- * 'cflAlt'
creativeFieldsList'
    :: Int64 -- ^ 'profileId'
    -> CreativeFieldsList'
creativeFieldsList' pCflProfileId_ =
    CreativeFieldsList'
    { _cflQuotaUser = Nothing
    , _cflPrettyPrint = True
    , _cflUserIp = Nothing
    , _cflSearchString = Nothing
    , _cflIds = Nothing
    , _cflProfileId = pCflProfileId_
    , _cflSortOrder = Nothing
    , _cflKey = Nothing
    , _cflPageToken = Nothing
    , _cflSortField = Nothing
    , _cflOauthToken = Nothing
    , _cflAdvertiserIds = Nothing
    , _cflMaxResults = Nothing
    , _cflFields = Nothing
    , _cflAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cflQuotaUser :: Lens' CreativeFieldsList' (Maybe Text)
cflQuotaUser
  = lens _cflQuotaUser (\ s a -> s{_cflQuotaUser = a})

-- | Returns response with indentations and line breaks.
cflPrettyPrint :: Lens' CreativeFieldsList' Bool
cflPrettyPrint
  = lens _cflPrettyPrint
      (\ s a -> s{_cflPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cflUserIp :: Lens' CreativeFieldsList' (Maybe Text)
cflUserIp
  = lens _cflUserIp (\ s a -> s{_cflUserIp = a})

-- | Allows searching for creative fields by name or ID. Wildcards (*) are
-- allowed. For example, \"creativefield*2015\" will return creative fields
-- with names like \"creativefield June 2015\", \"creativefield April
-- 2015\", or simply \"creativefield 2015\". Most of the searches also add
-- wild-cards implicitly at the start and the end of the search string. For
-- example, a search string of \"creativefield\" will match creative fields
-- with the name \"my creativefield\", \"creativefield 2015\", or simply
-- \"creativefield\".
cflSearchString :: Lens' CreativeFieldsList' (Maybe Text)
cflSearchString
  = lens _cflSearchString
      (\ s a -> s{_cflSearchString = a})

-- | Select only creative fields with these IDs.
cflIds :: Lens' CreativeFieldsList' (Maybe Int64)
cflIds = lens _cflIds (\ s a -> s{_cflIds = a})

-- | User profile ID associated with this request.
cflProfileId :: Lens' CreativeFieldsList' Int64
cflProfileId
  = lens _cflProfileId (\ s a -> s{_cflProfileId = a})

-- | Order of sorted results, default is ASCENDING.
cflSortOrder :: Lens' CreativeFieldsList' (Maybe DfareportingCreativeFieldsListSortOrder)
cflSortOrder
  = lens _cflSortOrder (\ s a -> s{_cflSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cflKey :: Lens' CreativeFieldsList' (Maybe Text)
cflKey = lens _cflKey (\ s a -> s{_cflKey = a})

-- | Value of the nextPageToken from the previous result page.
cflPageToken :: Lens' CreativeFieldsList' (Maybe Text)
cflPageToken
  = lens _cflPageToken (\ s a -> s{_cflPageToken = a})

-- | Field by which to sort the list.
cflSortField :: Lens' CreativeFieldsList' (Maybe DfareportingCreativeFieldsListSortField)
cflSortField
  = lens _cflSortField (\ s a -> s{_cflSortField = a})

-- | OAuth 2.0 token for the current user.
cflOauthToken :: Lens' CreativeFieldsList' (Maybe Text)
cflOauthToken
  = lens _cflOauthToken
      (\ s a -> s{_cflOauthToken = a})

-- | Select only creative fields that belong to these advertisers.
cflAdvertiserIds :: Lens' CreativeFieldsList' (Maybe Int64)
cflAdvertiserIds
  = lens _cflAdvertiserIds
      (\ s a -> s{_cflAdvertiserIds = a})

-- | Maximum number of results to return.
cflMaxResults :: Lens' CreativeFieldsList' (Maybe Int32)
cflMaxResults
  = lens _cflMaxResults
      (\ s a -> s{_cflMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cflFields :: Lens' CreativeFieldsList' (Maybe Text)
cflFields
  = lens _cflFields (\ s a -> s{_cflFields = a})

-- | Data format for the response.
cflAlt :: Lens' CreativeFieldsList' Alt
cflAlt = lens _cflAlt (\ s a -> s{_cflAlt = a})

instance GoogleRequest CreativeFieldsList' where
        type Rs CreativeFieldsList' =
             CreativeFieldsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsList'{..}
          = go _cflQuotaUser (Just _cflPrettyPrint) _cflUserIp
              _cflSearchString
              _cflIds
              _cflProfileId
              _cflSortOrder
              _cflKey
              _cflPageToken
              _cflSortField
              _cflOauthToken
              _cflAdvertiserIds
              _cflMaxResults
              _cflFields
              (Just _cflAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsListResource)
                      r
                      u
