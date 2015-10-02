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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified Group resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGroupsDelete@.
module Network.Google.Resource.CloudUserAccounts.Groups.Delete
    (
    -- * REST Resource
      GroupsDeleteResource

    -- * Creating a Request
    , groupsDelete'
    , GroupsDelete'

    -- * Request Lenses
    , gdQuotaUser
    , gdPrettyPrint
    , gdProject
    , gdUserIP
    , gdKey
    , gdGroupName
    , gdOAuthToken
    , gdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGroupsDelete@ which the
-- 'GroupsDelete'' request conforms to.
type GroupsDeleteResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           Capture "groupName" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Group resource.
--
-- /See:/ 'groupsDelete'' smart constructor.
data GroupsDelete' = GroupsDelete'
    { _gdQuotaUser   :: !(Maybe Text)
    , _gdPrettyPrint :: !Bool
    , _gdProject     :: !Text
    , _gdUserIP      :: !(Maybe Text)
    , _gdKey         :: !(Maybe Key)
    , _gdGroupName   :: !Text
    , _gdOAuthToken  :: !(Maybe OAuthToken)
    , _gdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdQuotaUser'
--
-- * 'gdPrettyPrint'
--
-- * 'gdProject'
--
-- * 'gdUserIP'
--
-- * 'gdKey'
--
-- * 'gdGroupName'
--
-- * 'gdOAuthToken'
--
-- * 'gdFields'
groupsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'groupName'
    -> GroupsDelete'
groupsDelete' pGdProject_ pGdGroupName_ =
    GroupsDelete'
    { _gdQuotaUser = Nothing
    , _gdPrettyPrint = True
    , _gdProject = pGdProject_
    , _gdUserIP = Nothing
    , _gdKey = Nothing
    , _gdGroupName = pGdGroupName_
    , _gdOAuthToken = Nothing
    , _gdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gdQuotaUser :: Lens' GroupsDelete' (Maybe Text)
gdQuotaUser
  = lens _gdQuotaUser (\ s a -> s{_gdQuotaUser = a})

-- | Returns response with indentations and line breaks.
gdPrettyPrint :: Lens' GroupsDelete' Bool
gdPrettyPrint
  = lens _gdPrettyPrint
      (\ s a -> s{_gdPrettyPrint = a})

-- | Project ID for this request.
gdProject :: Lens' GroupsDelete' Text
gdProject
  = lens _gdProject (\ s a -> s{_gdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gdUserIP :: Lens' GroupsDelete' (Maybe Text)
gdUserIP = lens _gdUserIP (\ s a -> s{_gdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gdKey :: Lens' GroupsDelete' (Maybe Key)
gdKey = lens _gdKey (\ s a -> s{_gdKey = a})

-- | Name of the Group resource to delete.
gdGroupName :: Lens' GroupsDelete' Text
gdGroupName
  = lens _gdGroupName (\ s a -> s{_gdGroupName = a})

-- | OAuth 2.0 token for the current user.
gdOAuthToken :: Lens' GroupsDelete' (Maybe OAuthToken)
gdOAuthToken
  = lens _gdOAuthToken (\ s a -> s{_gdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gdFields :: Lens' GroupsDelete' (Maybe Text)
gdFields = lens _gdFields (\ s a -> s{_gdFields = a})

instance GoogleAuth GroupsDelete' where
        authKey = gdKey . _Just
        authToken = gdOAuthToken . _Just

instance GoogleRequest GroupsDelete' where
        type Rs GroupsDelete' = Operation
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u GroupsDelete'{..}
          = go _gdQuotaUser (Just _gdPrettyPrint) _gdProject
              _gdUserIP
              _gdKey
              _gdGroupName
              _gdOAuthToken
              _gdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsDeleteResource)
                      r
                      u
