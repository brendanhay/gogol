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
    , cflUserIP
    , cflSearchString
    , cflIds
    , cflProfileId
    , cflSortOrder
    , cflKey
    , cflPageToken
    , cflSortField
    , cflOAuthToken
    , cflAdvertiserIds
    , cflMaxResults
    , cflFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsList@ which the
-- 'CreativeFieldsList'' request conforms to.
type CreativeFieldsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParams "advertiserIds" Int64 :>
             QueryParams "ids" Int64 :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "searchString" Text :>
                     QueryParam "sortField"
                       DfareportingCreativeFieldsListSortField
                       :>
                       QueryParam "sortOrder"
                         DfareportingCreativeFieldsListSortOrder
                         :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] CreativeFieldsListResponse

-- | Retrieves a list of creative fields, possibly filtered.
--
-- /See:/ 'creativeFieldsList'' smart constructor.
data CreativeFieldsList' = CreativeFieldsList'
    { _cflQuotaUser     :: !(Maybe Text)
    , _cflPrettyPrint   :: !Bool
    , _cflUserIP        :: !(Maybe Text)
    , _cflSearchString  :: !(Maybe Text)
    , _cflIds           :: !(Maybe Int64)
    , _cflProfileId     :: !Int64
    , _cflSortOrder     :: !(Maybe DfareportingCreativeFieldsListSortOrder)
    , _cflKey           :: !(Maybe Key)
    , _cflPageToken     :: !(Maybe Text)
    , _cflSortField     :: !(Maybe DfareportingCreativeFieldsListSortField)
    , _cflOAuthToken    :: !(Maybe OAuthToken)
    , _cflAdvertiserIds :: !(Maybe Int64)
    , _cflMaxResults    :: !(Maybe Int32)
    , _cflFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflQuotaUser'
--
-- * 'cflPrettyPrint'
--
-- * 'cflUserIP'
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
-- * 'cflOAuthToken'
--
-- * 'cflAdvertiserIds'
--
-- * 'cflMaxResults'
--
-- * 'cflFields'
creativeFieldsList'
    :: Int64 -- ^ 'profileId'
    -> CreativeFieldsList'
creativeFieldsList' pCflProfileId_ =
    CreativeFieldsList'
    { _cflQuotaUser = Nothing
    , _cflPrettyPrint = True
    , _cflUserIP = Nothing
    , _cflSearchString = Nothing
    , _cflIds = Nothing
    , _cflProfileId = pCflProfileId_
    , _cflSortOrder = Nothing
    , _cflKey = Nothing
    , _cflPageToken = Nothing
    , _cflSortField = Nothing
    , _cflOAuthToken = Nothing
    , _cflAdvertiserIds = Nothing
    , _cflMaxResults = Nothing
    , _cflFields = Nothing
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
cflUserIP :: Lens' CreativeFieldsList' (Maybe Text)
cflUserIP
  = lens _cflUserIP (\ s a -> s{_cflUserIP = a})

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
cflKey :: Lens' CreativeFieldsList' (Maybe Key)
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
cflOAuthToken :: Lens' CreativeFieldsList' (Maybe OAuthToken)
cflOAuthToken
  = lens _cflOAuthToken
      (\ s a -> s{_cflOAuthToken = a})

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

instance GoogleAuth CreativeFieldsList' where
        authKey = cflKey . _Just
        authToken = cflOAuthToken . _Just

instance GoogleRequest CreativeFieldsList' where
        type Rs CreativeFieldsList' =
             CreativeFieldsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsList'{..}
          = go _cflAdvertiserIds _cflIds _cflMaxResults
              _cflPageToken
              _cflSearchString
              _cflSortField
              _cflSortOrder
              _cflProfileId
              _cflQuotaUser
              (Just _cflPrettyPrint)
              _cflUserIP
              _cflFields
              _cflKey
              _cflOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsListResource)
                      r
                      u
