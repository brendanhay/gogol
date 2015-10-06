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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.RemoveMember
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes users from the specified group.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGroupsRemoveMember@.
module Network.Google.Resource.CloudUserAccounts.Groups.RemoveMember
    (
    -- * REST Resource
      GroupsRemoveMemberResource

    -- * Creating a Request
    , groupsRemoveMember'
    , GroupsRemoveMember'

    -- * Request Lenses
    , grmQuotaUser
    , grmPrettyPrint
    , grmProject
    , grmUserIP
    , grmPayload
    , grmKey
    , grmGroupName
    , grmOAuthToken
    , grmFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGroupsRemoveMember@ which the
-- 'GroupsRemoveMember'' request conforms to.
type GroupsRemoveMemberResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           Capture "groupName" Text :>
             "removeMember" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] GroupsRemoveMemberRequest :>
                               Post '[JSON] Operation

-- | Removes users from the specified group.
--
-- /See:/ 'groupsRemoveMember'' smart constructor.
data GroupsRemoveMember' = GroupsRemoveMember'
    { _grmQuotaUser   :: !(Maybe Text)
    , _grmPrettyPrint :: !Bool
    , _grmProject     :: !Text
    , _grmUserIP      :: !(Maybe Text)
    , _grmPayload     :: !GroupsRemoveMemberRequest
    , _grmKey         :: !(Maybe AuthKey)
    , _grmGroupName   :: !Text
    , _grmOAuthToken  :: !(Maybe OAuthToken)
    , _grmFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'grmUserIP'
--
-- * 'grmPayload'
--
-- * 'grmKey'
--
-- * 'grmGroupName'
--
-- * 'grmOAuthToken'
--
-- * 'grmFields'
groupsRemoveMember'
    :: Text -- ^ 'project'
    -> GroupsRemoveMemberRequest -- ^ 'payload'
    -> Text -- ^ 'groupName'
    -> GroupsRemoveMember'
groupsRemoveMember' pGrmProject_ pGrmPayload_ pGrmGroupName_ =
    GroupsRemoveMember'
    { _grmQuotaUser = Nothing
    , _grmPrettyPrint = True
    , _grmProject = pGrmProject_
    , _grmUserIP = Nothing
    , _grmPayload = pGrmPayload_
    , _grmKey = Nothing
    , _grmGroupName = pGrmGroupName_
    , _grmOAuthToken = Nothing
    , _grmFields = Nothing
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
grmUserIP :: Lens' GroupsRemoveMember' (Maybe Text)
grmUserIP
  = lens _grmUserIP (\ s a -> s{_grmUserIP = a})

-- | Multipart request metadata.
grmPayload :: Lens' GroupsRemoveMember' GroupsRemoveMemberRequest
grmPayload
  = lens _grmPayload (\ s a -> s{_grmPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
grmKey :: Lens' GroupsRemoveMember' (Maybe AuthKey)
grmKey = lens _grmKey (\ s a -> s{_grmKey = a})

-- | Name of the group for this request.
grmGroupName :: Lens' GroupsRemoveMember' Text
grmGroupName
  = lens _grmGroupName (\ s a -> s{_grmGroupName = a})

-- | OAuth 2.0 token for the current user.
grmOAuthToken :: Lens' GroupsRemoveMember' (Maybe OAuthToken)
grmOAuthToken
  = lens _grmOAuthToken
      (\ s a -> s{_grmOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
grmFields :: Lens' GroupsRemoveMember' (Maybe Text)
grmFields
  = lens _grmFields (\ s a -> s{_grmFields = a})

instance GoogleAuth GroupsRemoveMember' where
        authKey = grmKey . _Just
        authToken = grmOAuthToken . _Just

instance GoogleRequest GroupsRemoveMember' where
        type Rs GroupsRemoveMember' = Operation
        request = requestWith userAccountsRequest
        requestWith rq GroupsRemoveMember'{..}
          = go _grmProject _grmGroupName _grmQuotaUser
              (Just _grmPrettyPrint)
              _grmUserIP
              _grmFields
              _grmKey
              _grmOAuthToken
              (Just AltJSON)
              _grmPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy GroupsRemoveMemberResource)
                      rq
