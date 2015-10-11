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
    , guQuotaUser
    , guPrettyPrint
    , guUserIP
    , guPayload
    , guKey
    , guOAuthToken
    , guGroupUniqueId
    , guFields
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude

-- | A resource alias for @GroupsSettingsGroupsUpdate@ method which the
-- 'GroupsUpdate'' request conforms to.
type GroupsUpdateResource =
     Capture "groupUniqueId" Text :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 Header "Authorization" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Groups :> Put '[JSON] Groups

-- | Updates an existing resource.
--
-- /See:/ 'groupsUpdate'' smart constructor.
data GroupsUpdate' = GroupsUpdate'
    { _guQuotaUser     :: !(Maybe Text)
    , _guPrettyPrint   :: !Bool
    , _guUserIP        :: !(Maybe Text)
    , _guPayload       :: !Groups
    , _guKey           :: !(Maybe AuthKey)
    , _guOAuthToken    :: !(Maybe OAuthToken)
    , _guGroupUniqueId :: !Text
    , _guFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guQuotaUser'
--
-- * 'guPrettyPrint'
--
-- * 'guUserIP'
--
-- * 'guPayload'
--
-- * 'guKey'
--
-- * 'guOAuthToken'
--
-- * 'guGroupUniqueId'
--
-- * 'guFields'
groupsUpdate'
    :: Groups -- ^ 'payload'
    -> Text -- ^ 'groupUniqueId'
    -> GroupsUpdate'
groupsUpdate' pGuPayload_ pGuGroupUniqueId_ =
    GroupsUpdate'
    { _guQuotaUser = Nothing
    , _guPrettyPrint = True
    , _guUserIP = Nothing
    , _guPayload = pGuPayload_
    , _guKey = Nothing
    , _guOAuthToken = Nothing
    , _guGroupUniqueId = pGuGroupUniqueId_
    , _guFields = Nothing
    }

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

-- | Multipart request metadata.
guPayload :: Lens' GroupsUpdate' Groups
guPayload
  = lens _guPayload (\ s a -> s{_guPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
guKey :: Lens' GroupsUpdate' (Maybe AuthKey)
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
        _AuthKey = guKey . _Just
        _AuthToken = guOAuthToken . _Just

instance GoogleRequest GroupsUpdate' where
        type Rs GroupsUpdate' = Groups
        request = requestWith groupsSettingsRequest
        requestWith rq GroupsUpdate'{..}
          = go _guGroupUniqueId _guQuotaUser
              (Just _guPrettyPrint)
              _guUserIP
              _guFields
              _guKey
              _guOAuthToken
              (Just AltJSON)
              _guPayload
          where go
                  = clientBuild (Proxy :: Proxy GroupsUpdateResource)
                      rq
