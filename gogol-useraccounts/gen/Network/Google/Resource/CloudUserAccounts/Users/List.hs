{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of users contained within the specified project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsUsersList@.
module Network.Google.Resource.CloudUserAccounts.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList'
    , UsersList'

    -- * Request Lenses
    , ulQuotaUser
    , ulPrettyPrint
    , ulOrderBy
    , ulProject
    , ulUserIP
    , ulKey
    , ulFilter
    , ulPageToken
    , ulOAuthToken
    , ulMaxResults
    , ulFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsUsersList@ which the
-- 'UsersList'' request conforms to.
type UsersListResource =
     Capture "project" Text :>
       "global" :>
         "users" :>
           QueryParam "orderBy" Text :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] UserList

-- | Retrieves a list of users contained within the specified project.
--
-- /See:/ 'usersList'' smart constructor.
data UsersList' = UsersList'
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulOrderBy     :: !(Maybe Text)
    , _ulProject     :: !Text
    , _ulUserIP      :: !(Maybe Text)
    , _ulKey         :: !(Maybe Key)
    , _ulFilter      :: !(Maybe Text)
    , _ulPageToken   :: !(Maybe Text)
    , _ulOAuthToken  :: !(Maybe OAuthToken)
    , _ulMaxResults  :: !Word32
    , _ulFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulOrderBy'
--
-- * 'ulProject'
--
-- * 'ulUserIP'
--
-- * 'ulKey'
--
-- * 'ulFilter'
--
-- * 'ulPageToken'
--
-- * 'ulOAuthToken'
--
-- * 'ulMaxResults'
--
-- * 'ulFields'
usersList'
    :: Text -- ^ 'project'
    -> UsersList'
usersList' pUlProject_ =
    UsersList'
    { _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulOrderBy = Nothing
    , _ulProject = pUlProject_
    , _ulUserIP = Nothing
    , _ulKey = Nothing
    , _ulFilter = Nothing
    , _ulPageToken = Nothing
    , _ulOAuthToken = Nothing
    , _ulMaxResults = 500
    , _ulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulQuotaUser :: Lens' UsersList' (Maybe Text)
ulQuotaUser
  = lens _ulQuotaUser (\ s a -> s{_ulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulPrettyPrint :: Lens' UsersList' Bool
ulPrettyPrint
  = lens _ulPrettyPrint
      (\ s a -> s{_ulPrettyPrint = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
ulOrderBy :: Lens' UsersList' (Maybe Text)
ulOrderBy
  = lens _ulOrderBy (\ s a -> s{_ulOrderBy = a})

-- | Project ID for this request.
ulProject :: Lens' UsersList' Text
ulProject
  = lens _ulProject (\ s a -> s{_ulProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulUserIP :: Lens' UsersList' (Maybe Text)
ulUserIP = lens _ulUserIP (\ s a -> s{_ulUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' UsersList' (Maybe Key)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
ulFilter :: Lens' UsersList' (Maybe Text)
ulFilter = lens _ulFilter (\ s a -> s{_ulFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
ulPageToken :: Lens' UsersList' (Maybe Text)
ulPageToken
  = lens _ulPageToken (\ s a -> s{_ulPageToken = a})

-- | OAuth 2.0 token for the current user.
ulOAuthToken :: Lens' UsersList' (Maybe OAuthToken)
ulOAuthToken
  = lens _ulOAuthToken (\ s a -> s{_ulOAuthToken = a})

-- | Maximum count of results to be returned.
ulMaxResults :: Lens' UsersList' Word32
ulMaxResults
  = lens _ulMaxResults (\ s a -> s{_ulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' UsersList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

instance GoogleAuth UsersList' where
        authKey = ulKey . _Just
        authToken = ulOAuthToken . _Just

instance GoogleRequest UsersList' where
        type Rs UsersList' = UserList
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u UsersList'{..}
          = go _ulProject _ulOrderBy _ulFilter _ulPageToken
              (Just _ulMaxResults)
              _ulQuotaUser
              (Just _ulPrettyPrint)
              _ulUserIP
              _ulFields
              _ulKey
              _ulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersListResource)
                      r
                      u
