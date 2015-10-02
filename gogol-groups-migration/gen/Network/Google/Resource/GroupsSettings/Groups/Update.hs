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
-- Module      : Network.Google.Resource.GroupsSettings.Groups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing resource.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @GroupsSettingsGroupsUpdate@.
module Network.Google.Resource.GroupsSettings.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateResource

    -- * Creating a Request
    , groupsUpdate'
    , GroupsUpdate'

    -- * Request Lenses
    , guGroups
    , guQuotaUser
    , guPrettyPrint
    , guUserIP
    , guKey
    , guOAuthToken
    , guGroupUniqueId
    , guFields
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude

-- | A resource alias for @GroupsSettingsGroupsUpdate@ which the
-- 'GroupsUpdate'' request conforms to.
type GroupsUpdateResource =
     Capture "groupUniqueId" Text :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltATOM :>
                     ReqBody '[JSON] Groups :> Put '[JSON] Groups

-- | Updates an existing resource.
--
-- /See:/ 'groupsUpdate'' smart constructor.
data GroupsUpdate' = GroupsUpdate'
    { _guGroups        :: !Groups
    , _guQuotaUser     :: !(Maybe Text)
    , _guPrettyPrint   :: !Bool
    , _guUserIP        :: !(Maybe Text)
    , _guKey           :: !(Maybe Key)
    , _guOAuthToken    :: !(Maybe OAuthToken)
    , _guGroupUniqueId :: !Text
    , _guFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guGroups'
--
-- * 'guQuotaUser'
--
-- * 'guPrettyPrint'
--
-- * 'guUserIP'
--
-- * 'guKey'
--
-- * 'guOAuthToken'
--
-- * 'guGroupUniqueId'
--
-- * 'guFields'
groupsUpdate'
    :: Groups -- ^ 'Groups'
    -> Text -- ^ 'groupUniqueId'
    -> GroupsUpdate'
groupsUpdate' pGuGroups_ pGuGroupUniqueId_ =
    GroupsUpdate'
    { _guGroups = pGuGroups_
    , _guQuotaUser = Nothing
    , _guPrettyPrint = True
    , _guUserIP = Nothing
    , _guKey = Nothing
    , _guOAuthToken = Nothing
    , _guGroupUniqueId = pGuGroupUniqueId_
    , _guFields = Nothing
    }

-- | Multipart request metadata.
guGroups :: Lens' GroupsUpdate' Groups
guGroups = lens _guGroups (\ s a -> s{_guGroups = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
guQuotaUser :: Lens' GroupsUpdate' (Maybe Text)
guQuotaUser
  = lens _guQuotaUser (\ s a -> s{_guQuotaUser = a})

-- | Returns response with indentations and line breaks.
guPrettyPrint :: Lens' GroupsUpdate' Bool
guPrettyPrint
  = lens _guPrettyPrint
      (\ s a -> s{_guPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
guUserIP :: Lens' GroupsUpdate' (Maybe Text)
guUserIP = lens _guUserIP (\ s a -> s{_guUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
guKey :: Lens' GroupsUpdate' (Maybe Key)
guKey = lens _guKey (\ s a -> s{_guKey = a})

-- | OAuth 2.0 token for the current user.
guOAuthToken :: Lens' GroupsUpdate' (Maybe OAuthToken)
guOAuthToken
  = lens _guOAuthToken (\ s a -> s{_guOAuthToken = a})

-- | The resource ID
guGroupUniqueId :: Lens' GroupsUpdate' Text
guGroupUniqueId
  = lens _guGroupUniqueId
      (\ s a -> s{_guGroupUniqueId = a})

-- | Selector specifying which fields to include in a partial response.
guFields :: Lens' GroupsUpdate' (Maybe Text)
guFields = lens _guFields (\ s a -> s{_guFields = a})

instance GoogleAuth GroupsUpdate' where
        authKey = guKey . _Just
        authToken = guOAuthToken . _Just

instance GoogleRequest GroupsUpdate' where
        type Rs GroupsUpdate' = Groups
        request = requestWithRoute defReq groupsSettingsURL
        requestWithRoute r u GroupsUpdate'{..}
          = go _guQuotaUser (Just _guPrettyPrint) _guUserIP
              _guKey
              _guOAuthToken
              _guGroupUniqueId
              _guFields
              (Just AltATOM)
              _guGroups
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsUpdateResource)
                      r
                      u
