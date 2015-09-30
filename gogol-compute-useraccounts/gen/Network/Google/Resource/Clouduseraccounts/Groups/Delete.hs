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
-- Module      : Network.Google.Resource.Clouduseraccounts.Groups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified Group resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @ClouduseraccountsGroupsDelete@.
module Network.Google.Resource.Clouduseraccounts.Groups.Delete
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
    , gdUserIp
    , gdKey
    , gdGroupName
    , gdOauthToken
    , gdFields
    , gdAlt
    ) where

import           Network.Google.ComputeUserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouduseraccountsGroupsDelete@ which the
-- 'GroupsDelete'' request conforms to.
type GroupsDeleteResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           Capture "groupName" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified Group resource.
--
-- /See:/ 'groupsDelete'' smart constructor.
data GroupsDelete' = GroupsDelete'
    { _gdQuotaUser   :: !(Maybe Text)
    , _gdPrettyPrint :: !Bool
    , _gdProject     :: !Text
    , _gdUserIp      :: !(Maybe Text)
    , _gdKey         :: !(Maybe Text)
    , _gdGroupName   :: !Text
    , _gdOauthToken  :: !(Maybe Text)
    , _gdFields      :: !(Maybe Text)
    , _gdAlt         :: !Alt
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
-- * 'gdUserIp'
--
-- * 'gdKey'
--
-- * 'gdGroupName'
--
-- * 'gdOauthToken'
--
-- * 'gdFields'
--
-- * 'gdAlt'
groupsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'groupName'
    -> GroupsDelete'
groupsDelete' pGdProject_ pGdGroupName_ =
    GroupsDelete'
    { _gdQuotaUser = Nothing
    , _gdPrettyPrint = True
    , _gdProject = pGdProject_
    , _gdUserIp = Nothing
    , _gdKey = Nothing
    , _gdGroupName = pGdGroupName_
    , _gdOauthToken = Nothing
    , _gdFields = Nothing
    , _gdAlt = JSON
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
gdUserIp :: Lens' GroupsDelete' (Maybe Text)
gdUserIp = lens _gdUserIp (\ s a -> s{_gdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gdKey :: Lens' GroupsDelete' (Maybe Text)
gdKey = lens _gdKey (\ s a -> s{_gdKey = a})

-- | Name of the Group resource to delete.
gdGroupName :: Lens' GroupsDelete' Text
gdGroupName
  = lens _gdGroupName (\ s a -> s{_gdGroupName = a})

-- | OAuth 2.0 token for the current user.
gdOauthToken :: Lens' GroupsDelete' (Maybe Text)
gdOauthToken
  = lens _gdOauthToken (\ s a -> s{_gdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gdFields :: Lens' GroupsDelete' (Maybe Text)
gdFields = lens _gdFields (\ s a -> s{_gdFields = a})

-- | Data format for the response.
gdAlt :: Lens' GroupsDelete' Alt
gdAlt = lens _gdAlt (\ s a -> s{_gdAlt = a})

instance GoogleRequest GroupsDelete' where
        type Rs GroupsDelete' = Operation
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u GroupsDelete'{..}
          = go _gdQuotaUser (Just _gdPrettyPrint) _gdProject
              _gdUserIp
              _gdKey
              _gdGroupName
              _gdOauthToken
              _gdFields
              (Just _gdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsDeleteResource)
                      r
                      u
