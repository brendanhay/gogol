{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GroupsSettings.Groups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing resource. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @GroupsSettingsGroupsPatch@.
module Network.Google.Resource.GroupsSettings.Groups.Patch
    (
    -- * REST Resource
      GroupsPatchResource

    -- * Creating a Request
    , groupsPatch'
    , GroupsPatch'

    -- * Request Lenses
    , gpQuotaUser
    , gpPrettyPrint
    , gpUserIP
    , gpPayload
    , gpKey
    , gpOAuthToken
    , gpGroupUniqueId
    , gpFields
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude

-- | A resource alias for @GroupsSettingsGroupsPatch@ which the
-- 'GroupsPatch'' request conforms to.
type GroupsPatchResource =
     Capture "groupUniqueId" Text :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltATOM :>
                     ReqBody '[JSON] Groups :> Patch '[JSON] Groups

-- | Updates an existing resource. This method supports patch semantics.
--
-- /See:/ 'groupsPatch'' smart constructor.
data GroupsPatch' = GroupsPatch'
    { _gpQuotaUser     :: !(Maybe Text)
    , _gpPrettyPrint   :: !Bool
    , _gpUserIP        :: !(Maybe Text)
    , _gpPayload       :: !Groups
    , _gpKey           :: !(Maybe Key)
    , _gpOAuthToken    :: !(Maybe OAuthToken)
    , _gpGroupUniqueId :: !Text
    , _gpFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpQuotaUser'
--
-- * 'gpPrettyPrint'
--
-- * 'gpUserIP'
--
-- * 'gpPayload'
--
-- * 'gpKey'
--
-- * 'gpOAuthToken'
--
-- * 'gpGroupUniqueId'
--
-- * 'gpFields'
groupsPatch'
    :: Groups -- ^ 'payload'
    -> Text -- ^ 'groupUniqueId'
    -> GroupsPatch'
groupsPatch' pGpPayload_ pGpGroupUniqueId_ =
    GroupsPatch'
    { _gpQuotaUser = Nothing
    , _gpPrettyPrint = True
    , _gpUserIP = Nothing
    , _gpPayload = pGpPayload_
    , _gpKey = Nothing
    , _gpOAuthToken = Nothing
    , _gpGroupUniqueId = pGpGroupUniqueId_
    , _gpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gpQuotaUser :: Lens' GroupsPatch' (Maybe Text)
gpQuotaUser
  = lens _gpQuotaUser (\ s a -> s{_gpQuotaUser = a})

-- | Returns response with indentations and line breaks.
gpPrettyPrint :: Lens' GroupsPatch' Bool
gpPrettyPrint
  = lens _gpPrettyPrint
      (\ s a -> s{_gpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gpUserIP :: Lens' GroupsPatch' (Maybe Text)
gpUserIP = lens _gpUserIP (\ s a -> s{_gpUserIP = a})

-- | Multipart request metadata.
gpPayload :: Lens' GroupsPatch' Groups
gpPayload
  = lens _gpPayload (\ s a -> s{_gpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gpKey :: Lens' GroupsPatch' (Maybe Key)
gpKey = lens _gpKey (\ s a -> s{_gpKey = a})

-- | OAuth 2.0 token for the current user.
gpOAuthToken :: Lens' GroupsPatch' (Maybe OAuthToken)
gpOAuthToken
  = lens _gpOAuthToken (\ s a -> s{_gpOAuthToken = a})

-- | The resource ID
gpGroupUniqueId :: Lens' GroupsPatch' Text
gpGroupUniqueId
  = lens _gpGroupUniqueId
      (\ s a -> s{_gpGroupUniqueId = a})

-- | Selector specifying which fields to include in a partial response.
gpFields :: Lens' GroupsPatch' (Maybe Text)
gpFields = lens _gpFields (\ s a -> s{_gpFields = a})

instance GoogleAuth GroupsPatch' where
        authKey = gpKey . _Just
        authToken = gpOAuthToken . _Just

instance GoogleRequest GroupsPatch' where
        type Rs GroupsPatch' = Groups
        request = requestWithRoute defReq groupsSettingsURL
        requestWithRoute r u GroupsPatch'{..}
          = go _gpGroupUniqueId _gpQuotaUser
              (Just _gpPrettyPrint)
              _gpUserIP
              _gpFields
              _gpKey
              _gpOAuthToken
              (Just AltATOM)
              _gpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsPatchResource)
                      r
                      u
