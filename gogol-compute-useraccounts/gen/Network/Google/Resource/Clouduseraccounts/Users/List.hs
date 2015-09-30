{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Clouduseraccounts.Users.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of users contained within the specified project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @ClouduseraccountsUsersList@.
module Clouduseraccounts.Users.List
    (
    -- * REST Resource
      UsersListAPI

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulQuotaUser
    , ulPrettyPrint
    , ulOrderBy
    , ulProject
    , ulUserIp
    , ulKey
    , ulFilter
    , ulPageToken
    , ulOauthToken
    , ulMaxResults
    , ulFields
    , ulAlt
    ) where

import           Network.Google.ComputeUserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouduseraccountsUsersList@ which the
-- 'UsersList' request conforms to.
type UsersListAPI =
     Capture "project" Text :>
       "global" :>
         "users" :>
           QueryParam "orderBy" Text :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   Get '[JSON] UserList

-- | Retrieves a list of users contained within the specified project.
--
-- /See:/ 'usersList' smart constructor.
data UsersList = UsersList
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulOrderBy     :: !(Maybe Text)
    , _ulProject     :: !Text
    , _ulUserIp      :: !(Maybe Text)
    , _ulKey         :: !(Maybe Text)
    , _ulFilter      :: !(Maybe Text)
    , _ulPageToken   :: !(Maybe Text)
    , _ulOauthToken  :: !(Maybe Text)
    , _ulMaxResults  :: !Word32
    , _ulFields      :: !(Maybe Text)
    , _ulAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ulUserIp'
--
-- * 'ulKey'
--
-- * 'ulFilter'
--
-- * 'ulPageToken'
--
-- * 'ulOauthToken'
--
-- * 'ulMaxResults'
--
-- * 'ulFields'
--
-- * 'ulAlt'
usersList
    :: Text -- ^ 'project'
    -> UsersList
usersList pUlProject_ =
    UsersList
    { _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulOrderBy = Nothing
    , _ulProject = pUlProject_
    , _ulUserIp = Nothing
    , _ulKey = Nothing
    , _ulFilter = Nothing
    , _ulPageToken = Nothing
    , _ulOauthToken = Nothing
    , _ulMaxResults = 500
    , _ulFields = Nothing
    , _ulAlt = "json"
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
ulUserIp :: Lens' UsersList' (Maybe Text)
ulUserIp = lens _ulUserIp (\ s a -> s{_ulUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' UsersList' (Maybe Text)
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
ulOauthToken :: Lens' UsersList' (Maybe Text)
ulOauthToken
  = lens _ulOauthToken (\ s a -> s{_ulOauthToken = a})

-- | Maximum count of results to be returned.
ulMaxResults :: Lens' UsersList' Word32
ulMaxResults
  = lens _ulMaxResults (\ s a -> s{_ulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' UsersList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

-- | Data format for the response.
ulAlt :: Lens' UsersList' Text
ulAlt = lens _ulAlt (\ s a -> s{_ulAlt = a})

instance GoogleRequest UsersList' where
        type Rs UsersList' = UserList
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u UsersList{..}
          = go _ulQuotaUser _ulPrettyPrint _ulOrderBy
              _ulProject
              _ulUserIp
              _ulKey
              _ulFilter
              _ulPageToken
              _ulOauthToken
              (Just _ulMaxResults)
              _ulFields
              _ulAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersListAPI) r u
