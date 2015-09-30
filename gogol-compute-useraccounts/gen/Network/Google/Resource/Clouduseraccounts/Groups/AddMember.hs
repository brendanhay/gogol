{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Clouduseraccounts.Groups.AddMember
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds users to the specified group.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @ClouduseraccountsGroupsAddMember@.
module Clouduseraccounts.Groups.AddMember
    (
    -- * REST Resource
      GroupsAddMemberAPI

    -- * Creating a Request
    , groupsAddMember
    , GroupsAddMember

    -- * Request Lenses
    , gamQuotaUser
    , gamPrettyPrint
    , gamProject
    , gamUserIp
    , gamKey
    , gamGroupName
    , gamOauthToken
    , gamFields
    , gamAlt
    ) where

import           Network.Google.ComputeUserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouduseraccountsGroupsAddMember@ which the
-- 'GroupsAddMember' request conforms to.
type GroupsAddMemberAPI =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           Capture "groupName" Text :>
             "addMember" :> Post '[JSON] Operation

-- | Adds users to the specified group.
--
-- /See:/ 'groupsAddMember' smart constructor.
data GroupsAddMember = GroupsAddMember
    { _gamQuotaUser   :: !(Maybe Text)
    , _gamPrettyPrint :: !Bool
    , _gamProject     :: !Text
    , _gamUserIp      :: !(Maybe Text)
    , _gamKey         :: !(Maybe Text)
    , _gamGroupName   :: !Text
    , _gamOauthToken  :: !(Maybe Text)
    , _gamFields      :: !(Maybe Text)
    , _gamAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAddMember'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gamQuotaUser'
--
-- * 'gamPrettyPrint'
--
-- * 'gamProject'
--
-- * 'gamUserIp'
--
-- * 'gamKey'
--
-- * 'gamGroupName'
--
-- * 'gamOauthToken'
--
-- * 'gamFields'
--
-- * 'gamAlt'
groupsAddMember
    :: Text -- ^ 'project'
    -> Text -- ^ 'groupName'
    -> GroupsAddMember
groupsAddMember pGamProject_ pGamGroupName_ =
    GroupsAddMember
    { _gamQuotaUser = Nothing
    , _gamPrettyPrint = True
    , _gamProject = pGamProject_
    , _gamUserIp = Nothing
    , _gamKey = Nothing
    , _gamGroupName = pGamGroupName_
    , _gamOauthToken = Nothing
    , _gamFields = Nothing
    , _gamAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gamQuotaUser :: Lens' GroupsAddMember' (Maybe Text)
gamQuotaUser
  = lens _gamQuotaUser (\ s a -> s{_gamQuotaUser = a})

-- | Returns response with indentations and line breaks.
gamPrettyPrint :: Lens' GroupsAddMember' Bool
gamPrettyPrint
  = lens _gamPrettyPrint
      (\ s a -> s{_gamPrettyPrint = a})

-- | Project ID for this request.
gamProject :: Lens' GroupsAddMember' Text
gamProject
  = lens _gamProject (\ s a -> s{_gamProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gamUserIp :: Lens' GroupsAddMember' (Maybe Text)
gamUserIp
  = lens _gamUserIp (\ s a -> s{_gamUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gamKey :: Lens' GroupsAddMember' (Maybe Text)
gamKey = lens _gamKey (\ s a -> s{_gamKey = a})

-- | Name of the group for this request.
gamGroupName :: Lens' GroupsAddMember' Text
gamGroupName
  = lens _gamGroupName (\ s a -> s{_gamGroupName = a})

-- | OAuth 2.0 token for the current user.
gamOauthToken :: Lens' GroupsAddMember' (Maybe Text)
gamOauthToken
  = lens _gamOauthToken
      (\ s a -> s{_gamOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gamFields :: Lens' GroupsAddMember' (Maybe Text)
gamFields
  = lens _gamFields (\ s a -> s{_gamFields = a})

-- | Data format for the response.
gamAlt :: Lens' GroupsAddMember' Text
gamAlt = lens _gamAlt (\ s a -> s{_gamAlt = a})

instance GoogleRequest GroupsAddMember' where
        type Rs GroupsAddMember' = Operation
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u GroupsAddMember{..}
          = go _gamQuotaUser _gamPrettyPrint _gamProject
              _gamUserIp
              _gamKey
              _gamGroupName
              _gamOauthToken
              _gamFields
              _gamAlt
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsAddMemberAPI)
                      r
                      u
