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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified Group resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGroupsGet@.
module Network.Google.Resource.CloudUserAccounts.Groups.Get
    (
    -- * REST Resource
      GroupsGetResource

    -- * Creating a Request
    , groupsGet'
    , GroupsGet'

    -- * Request Lenses
    , ggQuotaUser
    , ggPrettyPrint
    , ggProject
    , ggUserIP
    , ggKey
    , ggGroupName
    , ggOAuthToken
    , ggFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGroupsGet@ which the
-- 'GroupsGet'' request conforms to.
type GroupsGetResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           Capture "groupName" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Group

-- | Returns the specified Group resource.
--
-- /See:/ 'groupsGet'' smart constructor.
data GroupsGet' = GroupsGet'
    { _ggQuotaUser   :: !(Maybe Text)
    , _ggPrettyPrint :: !Bool
    , _ggProject     :: !Text
    , _ggUserIP      :: !(Maybe Text)
    , _ggKey         :: !(Maybe Key)
    , _ggGroupName   :: !Text
    , _ggOAuthToken  :: !(Maybe OAuthToken)
    , _ggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggQuotaUser'
--
-- * 'ggPrettyPrint'
--
-- * 'ggProject'
--
-- * 'ggUserIP'
--
-- * 'ggKey'
--
-- * 'ggGroupName'
--
-- * 'ggOAuthToken'
--
-- * 'ggFields'
groupsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'groupName'
    -> GroupsGet'
groupsGet' pGgProject_ pGgGroupName_ =
    GroupsGet'
    { _ggQuotaUser = Nothing
    , _ggPrettyPrint = True
    , _ggProject = pGgProject_
    , _ggUserIP = Nothing
    , _ggKey = Nothing
    , _ggGroupName = pGgGroupName_
    , _ggOAuthToken = Nothing
    , _ggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ggQuotaUser :: Lens' GroupsGet' (Maybe Text)
ggQuotaUser
  = lens _ggQuotaUser (\ s a -> s{_ggQuotaUser = a})

-- | Returns response with indentations and line breaks.
ggPrettyPrint :: Lens' GroupsGet' Bool
ggPrettyPrint
  = lens _ggPrettyPrint
      (\ s a -> s{_ggPrettyPrint = a})

-- | Project ID for this request.
ggProject :: Lens' GroupsGet' Text
ggProject
  = lens _ggProject (\ s a -> s{_ggProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ggUserIP :: Lens' GroupsGet' (Maybe Text)
ggUserIP = lens _ggUserIP (\ s a -> s{_ggUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ggKey :: Lens' GroupsGet' (Maybe Key)
ggKey = lens _ggKey (\ s a -> s{_ggKey = a})

-- | Name of the Group resource to return.
ggGroupName :: Lens' GroupsGet' Text
ggGroupName
  = lens _ggGroupName (\ s a -> s{_ggGroupName = a})

-- | OAuth 2.0 token for the current user.
ggOAuthToken :: Lens' GroupsGet' (Maybe OAuthToken)
ggOAuthToken
  = lens _ggOAuthToken (\ s a -> s{_ggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ggFields :: Lens' GroupsGet' (Maybe Text)
ggFields = lens _ggFields (\ s a -> s{_ggFields = a})

instance GoogleAuth GroupsGet' where
        authKey = ggKey . _Just
        authToken = ggOAuthToken . _Just

instance GoogleRequest GroupsGet' where
        type Rs GroupsGet' = Group
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u GroupsGet'{..}
          = go _ggProject _ggGroupName _ggQuotaUser
              (Just _ggPrettyPrint)
              _ggUserIP
              _ggFields
              _ggKey
              _ggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsGetResource)
                      r
                      u
