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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySiteContacts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of directory site contacts, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDirectorySiteContactsList@.
module Network.Google.Resource.DFAReporting.DirectorySiteContacts.List
    (
    -- * REST Resource
      DirectorySiteContactsListResource

    -- * Creating a Request
    , directorySiteContactsList'
    , DirectorySiteContactsList'

    -- * Request Lenses
    , dsclQuotaUser
    , dsclPrettyPrint
    , dsclUserIP
    , dsclSearchString
    , dsclIds
    , dsclProfileId
    , dsclDirectorySiteIds
    , dsclSortOrder
    , dsclKey
    , dsclPageToken
    , dsclSortField
    , dsclOAuthToken
    , dsclMaxResults
    , dsclFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDirectorySiteContactsList@ which the
-- 'DirectorySiteContactsList'' request conforms to.
type DirectorySiteContactsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySiteContacts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" Int64 :>
                     QueryParams "directorySiteIds" Int64 :>
                       QueryParam "sortOrder"
                         DfareportingDirectorySiteContactsListSortOrder
                         :>
                         QueryParam "key" Key :>
                           QueryParam "pageToken" Text :>
                             QueryParam "sortField"
                               DfareportingDirectorySiteContactsListSortField
                               :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         DirectorySiteContactsListResponse

-- | Retrieves a list of directory site contacts, possibly filtered.
--
-- /See:/ 'directorySiteContactsList'' smart constructor.
data DirectorySiteContactsList' = DirectorySiteContactsList'
    { _dsclQuotaUser        :: !(Maybe Text)
    , _dsclPrettyPrint      :: !Bool
    , _dsclUserIP           :: !(Maybe Text)
    , _dsclSearchString     :: !(Maybe Text)
    , _dsclIds              :: !(Maybe Int64)
    , _dsclProfileId        :: !Int64
    , _dsclDirectorySiteIds :: !(Maybe Int64)
    , _dsclSortOrder        :: !(Maybe DfareportingDirectorySiteContactsListSortOrder)
    , _dsclKey              :: !(Maybe Key)
    , _dsclPageToken        :: !(Maybe Text)
    , _dsclSortField        :: !(Maybe DfareportingDirectorySiteContactsListSortField)
    , _dsclOAuthToken       :: !(Maybe OAuthToken)
    , _dsclMaxResults       :: !(Maybe Int32)
    , _dsclFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySiteContactsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsclQuotaUser'
--
-- * 'dsclPrettyPrint'
--
-- * 'dsclUserIP'
--
-- * 'dsclSearchString'
--
-- * 'dsclIds'
--
-- * 'dsclProfileId'
--
-- * 'dsclDirectorySiteIds'
--
-- * 'dsclSortOrder'
--
-- * 'dsclKey'
--
-- * 'dsclPageToken'
--
-- * 'dsclSortField'
--
-- * 'dsclOAuthToken'
--
-- * 'dsclMaxResults'
--
-- * 'dsclFields'
directorySiteContactsList'
    :: Int64 -- ^ 'profileId'
    -> DirectorySiteContactsList'
directorySiteContactsList' pDsclProfileId_ =
    DirectorySiteContactsList'
    { _dsclQuotaUser = Nothing
    , _dsclPrettyPrint = True
    , _dsclUserIP = Nothing
    , _dsclSearchString = Nothing
    , _dsclIds = Nothing
    , _dsclProfileId = pDsclProfileId_
    , _dsclDirectorySiteIds = Nothing
    , _dsclSortOrder = Nothing
    , _dsclKey = Nothing
    , _dsclPageToken = Nothing
    , _dsclSortField = Nothing
    , _dsclOAuthToken = Nothing
    , _dsclMaxResults = Nothing
    , _dsclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dsclQuotaUser :: Lens' DirectorySiteContactsList' (Maybe Text)
dsclQuotaUser
  = lens _dsclQuotaUser
      (\ s a -> s{_dsclQuotaUser = a})

-- | Returns response with indentations and line breaks.
dsclPrettyPrint :: Lens' DirectorySiteContactsList' Bool
dsclPrettyPrint
  = lens _dsclPrettyPrint
      (\ s a -> s{_dsclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dsclUserIP :: Lens' DirectorySiteContactsList' (Maybe Text)
dsclUserIP
  = lens _dsclUserIP (\ s a -> s{_dsclUserIP = a})

-- | Allows searching for objects by name, ID or email. Wildcards (*) are
-- allowed. For example, \"directory site contact*2015\" will return
-- objects with names like \"directory site contact June 2015\",
-- \"directory site contact April 2015\", or simply \"directory site
-- contact 2015\". Most of the searches also add wildcards implicitly at
-- the start and the end of the search string. For example, a search string
-- of \"directory site contact\" will match objects with name \"my
-- directory site contact\", \"directory site contact 2015\", or simply
-- \"directory site contact\".
dsclSearchString :: Lens' DirectorySiteContactsList' (Maybe Text)
dsclSearchString
  = lens _dsclSearchString
      (\ s a -> s{_dsclSearchString = a})

-- | Select only directory site contacts with these IDs.
dsclIds :: Lens' DirectorySiteContactsList' (Maybe Int64)
dsclIds = lens _dsclIds (\ s a -> s{_dsclIds = a})

-- | User profile ID associated with this request.
dsclProfileId :: Lens' DirectorySiteContactsList' Int64
dsclProfileId
  = lens _dsclProfileId
      (\ s a -> s{_dsclProfileId = a})

-- | Select only directory site contacts with these directory site IDs. This
-- is a required field.
dsclDirectorySiteIds :: Lens' DirectorySiteContactsList' (Maybe Int64)
dsclDirectorySiteIds
  = lens _dsclDirectorySiteIds
      (\ s a -> s{_dsclDirectorySiteIds = a})

-- | Order of sorted results, default is ASCENDING.
dsclSortOrder :: Lens' DirectorySiteContactsList' (Maybe DfareportingDirectorySiteContactsListSortOrder)
dsclSortOrder
  = lens _dsclSortOrder
      (\ s a -> s{_dsclSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsclKey :: Lens' DirectorySiteContactsList' (Maybe Key)
dsclKey = lens _dsclKey (\ s a -> s{_dsclKey = a})

-- | Value of the nextPageToken from the previous result page.
dsclPageToken :: Lens' DirectorySiteContactsList' (Maybe Text)
dsclPageToken
  = lens _dsclPageToken
      (\ s a -> s{_dsclPageToken = a})

-- | Field by which to sort the list.
dsclSortField :: Lens' DirectorySiteContactsList' (Maybe DfareportingDirectorySiteContactsListSortField)
dsclSortField
  = lens _dsclSortField
      (\ s a -> s{_dsclSortField = a})

-- | OAuth 2.0 token for the current user.
dsclOAuthToken :: Lens' DirectorySiteContactsList' (Maybe OAuthToken)
dsclOAuthToken
  = lens _dsclOAuthToken
      (\ s a -> s{_dsclOAuthToken = a})

-- | Maximum number of results to return.
dsclMaxResults :: Lens' DirectorySiteContactsList' (Maybe Int32)
dsclMaxResults
  = lens _dsclMaxResults
      (\ s a -> s{_dsclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dsclFields :: Lens' DirectorySiteContactsList' (Maybe Text)
dsclFields
  = lens _dsclFields (\ s a -> s{_dsclFields = a})

instance GoogleAuth DirectorySiteContactsList' where
        authKey = dsclKey . _Just
        authToken = dsclOAuthToken . _Just

instance GoogleRequest DirectorySiteContactsList'
         where
        type Rs DirectorySiteContactsList' =
             DirectorySiteContactsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u DirectorySiteContactsList'{..}
          = go _dsclQuotaUser (Just _dsclPrettyPrint)
              _dsclUserIP
              _dsclSearchString
              _dsclIds
              _dsclProfileId
              _dsclDirectorySiteIds
              _dsclSortOrder
              _dsclKey
              _dsclPageToken
              _dsclSortField
              _dsclOAuthToken
              _dsclMaxResults
              _dsclFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DirectorySiteContactsListResource)
                      r
                      u
