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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.AddMember
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds users to the specified group.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGroupsAddMember@.
module Network.Google.Resource.CloudUserAccounts.Groups.AddMember
    (
    -- * REST Resource
      GroupsAddMemberResource

    -- * Creating a Request
    , groupsAddMember'
    , GroupsAddMember'

    -- * Request Lenses
    , gamQuotaUser
    , gamPrettyPrint
    , gamProject
    , gamUserIP
    , gamGroupsAddMemberRequest
    , gamKey
    , gamGroupName
    , gamOAuthToken
    , gamFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGroupsAddMember@ which the
-- 'GroupsAddMember'' request conforms to.
type GroupsAddMemberResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           Capture "groupName" Text :>
             "addMember" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] GroupsAddMemberRequest :>
                               Post '[JSON] Operation

-- | Adds users to the specified group.
--
-- /See:/ 'groupsAddMember'' smart constructor.
data GroupsAddMember' = GroupsAddMember'
    { _gamQuotaUser              :: !(Maybe Text)
    , _gamPrettyPrint            :: !Bool
    , _gamProject                :: !Text
    , _gamUserIP                 :: !(Maybe Text)
    , _gamGroupsAddMemberRequest :: !GroupsAddMemberRequest
    , _gamKey                    :: !(Maybe Key)
    , _gamGroupName              :: !Text
    , _gamOAuthToken             :: !(Maybe OAuthToken)
    , _gamFields                 :: !(Maybe Text)
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
-- * 'gamUserIP'
--
-- * 'gamGroupsAddMemberRequest'
--
-- * 'gamKey'
--
-- * 'gamGroupName'
--
-- * 'gamOAuthToken'
--
-- * 'gamFields'
groupsAddMember'
    :: Text -- ^ 'project'
    -> GroupsAddMemberRequest -- ^ 'GroupsAddMemberRequest'
    -> Text -- ^ 'groupName'
    -> GroupsAddMember'
groupsAddMember' pGamProject_ pGamGroupsAddMemberRequest_ pGamGroupName_ =
    GroupsAddMember'
    { _gamQuotaUser = Nothing
    , _gamPrettyPrint = True
    , _gamProject = pGamProject_
    , _gamUserIP = Nothing
    , _gamGroupsAddMemberRequest = pGamGroupsAddMemberRequest_
    , _gamKey = Nothing
    , _gamGroupName = pGamGroupName_
    , _gamOAuthToken = Nothing
    , _gamFields = Nothing
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
gamUserIP :: Lens' GroupsAddMember' (Maybe Text)
gamUserIP
  = lens _gamUserIP (\ s a -> s{_gamUserIP = a})

-- | Multipart request metadata.
gamGroupsAddMemberRequest :: Lens' GroupsAddMember' GroupsAddMemberRequest
gamGroupsAddMemberRequest
  = lens _gamGroupsAddMemberRequest
      (\ s a -> s{_gamGroupsAddMemberRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gamKey :: Lens' GroupsAddMember' (Maybe Key)
gamKey = lens _gamKey (\ s a -> s{_gamKey = a})

-- | Name of the group for this request.
gamGroupName :: Lens' GroupsAddMember' Text
gamGroupName
  = lens _gamGroupName (\ s a -> s{_gamGroupName = a})

-- | OAuth 2.0 token for the current user.
gamOAuthToken :: Lens' GroupsAddMember' (Maybe OAuthToken)
gamOAuthToken
  = lens _gamOAuthToken
      (\ s a -> s{_gamOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gamFields :: Lens' GroupsAddMember' (Maybe Text)
gamFields
  = lens _gamFields (\ s a -> s{_gamFields = a})

instance GoogleAuth GroupsAddMember' where
        authKey = gamKey . _Just
        authToken = gamOAuthToken . _Just

instance GoogleRequest GroupsAddMember' where
        type Rs GroupsAddMember' = Operation
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u GroupsAddMember'{..}
          = go _gamProject _gamGroupName _gamQuotaUser
              (Just _gamPrettyPrint)
              _gamUserIP
              _gamFields
              _gamKey
              _gamOAuthToken
              (Just AltJSON)
              _gamGroupsAddMemberRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsAddMemberResource)
                      r
                      u
