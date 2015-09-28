{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Clouduseraccounts.Groups.RemoveMember
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes users from the specified group.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.groups.removeMember@.
module Network.Google.API.Clouduseraccounts.Groups.RemoveMember
    (
    -- * REST Resource
      GroupsRemoveMemberAPI

    -- * Creating a Request
    , groupsRemoveMember'
    , GroupsRemoveMember'

    -- * Request Lenses
    , grmQuotaUser
    , grmPrettyPrint
    , grmProject
    , grmUserIp
    , grmKey
    , grmGroupName
    , grmOauthToken
    , grmFields
    , grmAlt
    ) where

import           Network.Google.Compute.UserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for clouduseraccounts.groups.removeMember which the
-- 'GroupsRemoveMember'' request conforms to.
type GroupsRemoveMemberAPI =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           Capture "groupName" Text :>
             "removeMember" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Removes users from the specified group.
--
-- /See:/ 'groupsRemoveMember'' smart constructor.
data GroupsRemoveMember' = GroupsRemoveMember'
    { _grmQuotaUser   :: !(Maybe Text)
    , _grmPrettyPrint :: !Bool
    , _grmProject     :: !Text
    , _grmUserIp      :: !(Maybe Text)
    , _grmKey         :: !(Maybe Text)
    , _grmGroupName   :: !Text
    , _grmOauthToken  :: !(Maybe Text)
    , _grmFields      :: !(Maybe Text)
    , _grmAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsRemoveMember'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grmQuotaUser'
--
-- * 'grmPrettyPrint'
--
-- * 'grmProject'
--
-- * 'grmUserIp'
--
-- * 'grmKey'
--
-- * 'grmGroupName'
--
-- * 'grmOauthToken'
--
-- * 'grmFields'
--
-- * 'grmAlt'
groupsRemoveMember'
    :: Text -- ^ 'project'
    -> Text -- ^ 'groupName'
    -> GroupsRemoveMember'
groupsRemoveMember' pGrmProject_ pGrmGroupName_ =
    GroupsRemoveMember'
    { _grmQuotaUser = Nothing
    , _grmPrettyPrint = True
    , _grmProject = pGrmProject_
    , _grmUserIp = Nothing
    , _grmKey = Nothing
    , _grmGroupName = pGrmGroupName_
    , _grmOauthToken = Nothing
    , _grmFields = Nothing
    , _grmAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
grmQuotaUser :: Lens' GroupsRemoveMember' (Maybe Text)
grmQuotaUser
  = lens _grmQuotaUser (\ s a -> s{_grmQuotaUser = a})

-- | Returns response with indentations and line breaks.
grmPrettyPrint :: Lens' GroupsRemoveMember' Bool
grmPrettyPrint
  = lens _grmPrettyPrint
      (\ s a -> s{_grmPrettyPrint = a})

-- | Project ID for this request.
grmProject :: Lens' GroupsRemoveMember' Text
grmProject
  = lens _grmProject (\ s a -> s{_grmProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
grmUserIp :: Lens' GroupsRemoveMember' (Maybe Text)
grmUserIp
  = lens _grmUserIp (\ s a -> s{_grmUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
grmKey :: Lens' GroupsRemoveMember' (Maybe Text)
grmKey = lens _grmKey (\ s a -> s{_grmKey = a})

-- | Name of the group for this request.
grmGroupName :: Lens' GroupsRemoveMember' Text
grmGroupName
  = lens _grmGroupName (\ s a -> s{_grmGroupName = a})

-- | OAuth 2.0 token for the current user.
grmOauthToken :: Lens' GroupsRemoveMember' (Maybe Text)
grmOauthToken
  = lens _grmOauthToken
      (\ s a -> s{_grmOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
grmFields :: Lens' GroupsRemoveMember' (Maybe Text)
grmFields
  = lens _grmFields (\ s a -> s{_grmFields = a})

-- | Data format for the response.
grmAlt :: Lens' GroupsRemoveMember' Alt
grmAlt = lens _grmAlt (\ s a -> s{_grmAlt = a})

instance GoogleRequest GroupsRemoveMember' where
        type Rs GroupsRemoveMember' = Operation
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u GroupsRemoveMember'{..}
          = go _grmQuotaUser (Just _grmPrettyPrint) _grmProject
              _grmUserIp
              _grmKey
              _grmGroupName
              _grmOauthToken
              _grmFields
              (Just _grmAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsRemoveMemberAPI)
                      r
                      u
