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
    , urlProFileId
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

-- | A resource alias for @DfareportingUserRolesList@ method which the
-- 'UserRolesList'' request conforms to.
type UserRolesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder" UserRolesListSortOrder :>
                 QueryParam "accountUserRoleOnly" Bool :>
                   QueryParam "pageToken" Text :>
                     QueryParam "sortField" UserRolesListSortField :>
                       QueryParam "subaccountId" Int64 :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
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
    , _urlIds                 :: !(Maybe [Int64])
    , _urlProFileId           :: !Int64
    , _urlSortOrder           :: !(Maybe UserRolesListSortOrder)
    , _urlKey                 :: !(Maybe AuthKey)
    , _urlAccountUserRoleOnly :: !(Maybe Bool)
    , _urlPageToken           :: !(Maybe Text)
    , _urlSortField           :: !(Maybe UserRolesListSortField)
    , _urlSubAccountId        :: !(Maybe Int64)
    , _urlOAuthToken          :: !(Maybe OAuthToken)
    , _urlMaxResults          :: !(Maybe Int32)
    , _urlFields              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'urlProFileId'
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
userRolesList' pUrlProFileId_ =
    UserRolesList'
    { _urlQuotaUser = Nothing
    , _urlPrettyPrint = True
    , _urlUserIP = Nothing
    , _urlSearchString = Nothing
    , _urlIds = Nothing
    , _urlProFileId = pUrlProFileId_
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
urlIds :: Lens' UserRolesList' [Int64]
urlIds
  = lens _urlIds (\ s a -> s{_urlIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
urlProFileId :: Lens' UserRolesList' Int64
urlProFileId
  = lens _urlProFileId (\ s a -> s{_urlProFileId = a})

-- | Order of sorted results, default is ASCENDING.
urlSortOrder :: Lens' UserRolesList' (Maybe UserRolesListSortOrder)
urlSortOrder
  = lens _urlSortOrder (\ s a -> s{_urlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urlKey :: Lens' UserRolesList' (Maybe AuthKey)
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
urlSortField :: Lens' UserRolesList' (Maybe UserRolesListSortField)
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
        _AuthKey = urlKey . _Just
        _AuthToken = urlOAuthToken . _Just

instance GoogleRequest UserRolesList' where
        type Rs UserRolesList' = UserRolesListResponse
        request = requestWith dFAReportingRequest
        requestWith rq UserRolesList'{..}
          = go _urlProFileId _urlSearchString
              (_urlIds ^. _Default)
              _urlSortOrder
              _urlAccountUserRoleOnly
              _urlPageToken
              _urlSortField
              _urlSubAccountId
              _urlMaxResults
              _urlQuotaUser
              (Just _urlPrettyPrint)
              _urlUserIP
              _urlFields
              _urlKey
              _urlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy UserRolesListResource)
                      rq
