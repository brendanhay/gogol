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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Group resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGroupsInsert@.
module Network.Google.Resource.CloudUserAccounts.Groups.Insert
    (
    -- * REST Resource
      GroupsInsertResource

    -- * Creating a Request
    , groupsInsert'
    , GroupsInsert'

    -- * Request Lenses
    , giQuotaUser
    , giGroup
    , giPrettyPrint
    , giProject
    , giUserIP
    , giKey
    , giOAuthToken
    , giFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGroupsInsert@ which the
-- 'GroupsInsert'' request conforms to.
type GroupsInsertResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Group :> Post '[JSON] Operation

-- | Creates a Group resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'groupsInsert'' smart constructor.
data GroupsInsert' = GroupsInsert'
    { _giQuotaUser   :: !(Maybe Text)
    , _giGroup       :: !Group
    , _giPrettyPrint :: !Bool
    , _giProject     :: !Text
    , _giUserIP      :: !(Maybe Text)
    , _giKey         :: !(Maybe Key)
    , _giOAuthToken  :: !(Maybe OAuthToken)
    , _giFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giQuotaUser'
--
-- * 'giGroup'
--
-- * 'giPrettyPrint'
--
-- * 'giProject'
--
-- * 'giUserIP'
--
-- * 'giKey'
--
-- * 'giOAuthToken'
--
-- * 'giFields'
groupsInsert'
    :: Group -- ^ 'Group'
    -> Text -- ^ 'project'
    -> GroupsInsert'
groupsInsert' pGiGroup_ pGiProject_ =
    GroupsInsert'
    { _giQuotaUser = Nothing
    , _giGroup = pGiGroup_
    , _giPrettyPrint = True
    , _giProject = pGiProject_
    , _giUserIP = Nothing
    , _giKey = Nothing
    , _giOAuthToken = Nothing
    , _giFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
giQuotaUser :: Lens' GroupsInsert' (Maybe Text)
giQuotaUser
  = lens _giQuotaUser (\ s a -> s{_giQuotaUser = a})

-- | Multipart request metadata.
giGroup :: Lens' GroupsInsert' Group
giGroup = lens _giGroup (\ s a -> s{_giGroup = a})

-- | Returns response with indentations and line breaks.
giPrettyPrint :: Lens' GroupsInsert' Bool
giPrettyPrint
  = lens _giPrettyPrint
      (\ s a -> s{_giPrettyPrint = a})

-- | Project ID for this request.
giProject :: Lens' GroupsInsert' Text
giProject
  = lens _giProject (\ s a -> s{_giProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
giUserIP :: Lens' GroupsInsert' (Maybe Text)
giUserIP = lens _giUserIP (\ s a -> s{_giUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
giKey :: Lens' GroupsInsert' (Maybe Key)
giKey = lens _giKey (\ s a -> s{_giKey = a})

-- | OAuth 2.0 token for the current user.
giOAuthToken :: Lens' GroupsInsert' (Maybe OAuthToken)
giOAuthToken
  = lens _giOAuthToken (\ s a -> s{_giOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
giFields :: Lens' GroupsInsert' (Maybe Text)
giFields = lens _giFields (\ s a -> s{_giFields = a})

instance GoogleAuth GroupsInsert' where
        authKey = giKey . _Just
        authToken = giOAuthToken . _Just

instance GoogleRequest GroupsInsert' where
        type Rs GroupsInsert' = Operation
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u GroupsInsert'{..}
          = go _giQuotaUser (Just _giPrettyPrint) _giProject
              _giUserIP
              _giKey
              _giOAuthToken
              _giFields
              (Just AltJSON)
              _giGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsInsertResource)
                      r
                      u
