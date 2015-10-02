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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of user roles, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesList@.
module Network.Google.Resource.DFAReporting.UserRoles.List
    (
    -- * REST Resource
      UserRolesListResource

    -- * Creating a Request
    , userRolesList'
    , UserRolesList'

    -- * Request Lenses
    , urlQuotaUser
    , urlPrettyPrint
    , urlUserIP
    , urlSearchString
    , urlIds
    , urlProfileId
    , urlSortOrder
    , urlKey
    , urlAccountUserRoleOnly
    , urlPageToken
    , urlSortField
    , urlSubAccountId
    , urlOAuthToken
    , urlMaxResults
    , urlFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesList@ which the
-- 'UserRolesList'' request conforms to.
type UserRolesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "accountUserRoleOnly" Bool :>
             QueryParams "ids" Int64 :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "searchString" Text :>
                     QueryParam "sortField"
                       DfareportingUserRolesListSortField
                       :>
                       QueryParam "sortOrder"
                         DfareportingUserRolesListSortOrder
                         :>
                         QueryParam "subaccountId" Int64 :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] UserRolesListResponse

-- | Retrieves a list of user roles, possibly filtered.
--
-- /See:/ 'userRolesList'' smart constructor.
data UserRolesList' = UserRolesList'
    { _urlQuotaUser           :: !(Maybe Text)
    , _urlPrettyPrint         :: !Bool
    , _urlUserIP              :: !(Maybe Text)
    , _urlSearchString        :: !(Maybe Text)
    , _urlIds                 :: !(Maybe Int64)
    , _urlProfileId           :: !Int64
    , _urlSortOrder           :: !(Maybe DfareportingUserRolesListSortOrder)
    , _urlKey                 :: !(Maybe Key)
    , _urlAccountUserRoleOnly :: !(Maybe Bool)
    , _urlPageToken           :: !(Maybe Text)
    , _urlSortField           :: !(Maybe DfareportingUserRolesListSortField)
    , _urlSubAccountId        :: !(Maybe Int64)
    , _urlOAuthToken          :: !(Maybe OAuthToken)
    , _urlMaxResults          :: !(Maybe Int32)
    , _urlFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urlQuotaUser'
--
-- * 'urlPrettyPrint'
--
-- * 'urlUserIP'
--
-- * 'urlSearchString'
--
-- * 'urlIds'
--
-- * 'urlProfileId'
--
-- * 'urlSortOrder'
--
-- * 'urlKey'
--
-- * 'urlAccountUserRoleOnly'
--
-- * 'urlPageToken'
--
-- * 'urlSortField'
--
-- * 'urlSubAccountId'
--
-- * 'urlOAuthToken'
--
-- * 'urlMaxResults'
--
-- * 'urlFields'
userRolesList'
    :: Int64 -- ^ 'profileId'
    -> UserRolesList'
userRolesList' pUrlProfileId_ =
    UserRolesList'
    { _urlQuotaUser = Nothing
    , _urlPrettyPrint = True
    , _urlUserIP = Nothing
    , _urlSearchString = Nothing
    , _urlIds = Nothing
    , _urlProfileId = pUrlProfileId_
    , _urlSortOrder = Nothing
    , _urlKey = Nothing
    , _urlAccountUserRoleOnly = Nothing
    , _urlPageToken = Nothing
    , _urlSortField = Nothing
    , _urlSubAccountId = Nothing
    , _urlOAuthToken = Nothing
    , _urlMaxResults = Nothing
    , _urlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urlQuotaUser :: Lens' UserRolesList' (Maybe Text)
urlQuotaUser
  = lens _urlQuotaUser (\ s a -> s{_urlQuotaUser = a})

-- | Returns response with indentations and line breaks.
urlPrettyPrint :: Lens' UserRolesList' Bool
urlPrettyPrint
  = lens _urlPrettyPrint
      (\ s a -> s{_urlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urlUserIP :: Lens' UserRolesList' (Maybe Text)
urlUserIP
  = lens _urlUserIP (\ s a -> s{_urlUserIP = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"userrole*2015\" will return objects with names like
-- \"userrole June 2015\", \"userrole April 2015\", or simply \"userrole
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"userrole\" will match objects with name \"my userrole\", \"userrole
-- 2015\", or simply \"userrole\".
urlSearchString :: Lens' UserRolesList' (Maybe Text)
urlSearchString
  = lens _urlSearchString
      (\ s a -> s{_urlSearchString = a})

-- | Select only user roles with the specified IDs.
urlIds :: Lens' UserRolesList' (Maybe Int64)
urlIds = lens _urlIds (\ s a -> s{_urlIds = a})

-- | User profile ID associated with this request.
urlProfileId :: Lens' UserRolesList' Int64
urlProfileId
  = lens _urlProfileId (\ s a -> s{_urlProfileId = a})

-- | Order of sorted results, default is ASCENDING.
urlSortOrder :: Lens' UserRolesList' (Maybe DfareportingUserRolesListSortOrder)
urlSortOrder
  = lens _urlSortOrder (\ s a -> s{_urlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urlKey :: Lens' UserRolesList' (Maybe Key)
urlKey = lens _urlKey (\ s a -> s{_urlKey = a})

-- | Select only account level user roles not associated with any specific
-- subaccount.
urlAccountUserRoleOnly :: Lens' UserRolesList' (Maybe Bool)
urlAccountUserRoleOnly
  = lens _urlAccountUserRoleOnly
      (\ s a -> s{_urlAccountUserRoleOnly = a})

-- | Value of the nextPageToken from the previous result page.
urlPageToken :: Lens' UserRolesList' (Maybe Text)
urlPageToken
  = lens _urlPageToken (\ s a -> s{_urlPageToken = a})

-- | Field by which to sort the list.
urlSortField :: Lens' UserRolesList' (Maybe DfareportingUserRolesListSortField)
urlSortField
  = lens _urlSortField (\ s a -> s{_urlSortField = a})

-- | Select only user roles that belong to this subaccount.
urlSubAccountId :: Lens' UserRolesList' (Maybe Int64)
urlSubAccountId
  = lens _urlSubAccountId
      (\ s a -> s{_urlSubAccountId = a})

-- | OAuth 2.0 token for the current user.
urlOAuthToken :: Lens' UserRolesList' (Maybe OAuthToken)
urlOAuthToken
  = lens _urlOAuthToken
      (\ s a -> s{_urlOAuthToken = a})

-- | Maximum number of results to return.
urlMaxResults :: Lens' UserRolesList' (Maybe Int32)
urlMaxResults
  = lens _urlMaxResults
      (\ s a -> s{_urlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
urlFields :: Lens' UserRolesList' (Maybe Text)
urlFields
  = lens _urlFields (\ s a -> s{_urlFields = a})

instance GoogleAuth UserRolesList' where
        authKey = urlKey . _Just
        authToken = urlOAuthToken . _Just

instance GoogleRequest UserRolesList' where
        type Rs UserRolesList' = UserRolesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesList'{..}
          = go _urlAccountUserRoleOnly _urlIds _urlMaxResults
              _urlPageToken
              _urlSearchString
              _urlSortField
              _urlSortOrder
              _urlSubAccountId
              _urlProfileId
              _urlQuotaUser
              (Just _urlPrettyPrint)
              _urlUserIP
              _urlFields
              _urlKey
              _urlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolesListResource)
                      r
                      u
