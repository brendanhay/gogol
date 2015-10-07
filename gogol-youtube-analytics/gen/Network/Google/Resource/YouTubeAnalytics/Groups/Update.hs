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
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a group. For example, you could change a group\'s title.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupsUpdate@.
module Network.Google.Resource.YouTubeAnalytics.Groups.Update
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
    , guOnBehalfOfContentOwner
    , guKey
    , guOAuthToken
    , guFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupsUpdate@ method which the
-- 'GroupsUpdate'' request conforms to.
type GroupsUpdateResource =
     "groups" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Group :> Put '[JSON] Group

-- | Modifies a group. For example, you could change a group\'s title.
--
-- /See:/ 'groupsUpdate'' smart constructor.
data GroupsUpdate' = GroupsUpdate'
    { _guQuotaUser              :: !(Maybe Text)
    , _guPrettyPrint            :: !Bool
    , _guUserIP                 :: !(Maybe Text)
    , _guPayload                :: !Group
    , _guOnBehalfOfContentOwner :: !(Maybe Text)
    , _guKey                    :: !(Maybe AuthKey)
    , _guOAuthToken             :: !(Maybe OAuthToken)
    , _guFields                 :: !(Maybe Text)
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
-- * 'guOnBehalfOfContentOwner'
--
-- * 'guKey'
--
-- * 'guOAuthToken'
--
-- * 'guFields'
groupsUpdate'
    :: Group -- ^ 'payload'
    -> GroupsUpdate'
groupsUpdate' pGuPayload_ =
    GroupsUpdate'
    { _guQuotaUser = Nothing
    , _guPrettyPrint = True
    , _guUserIP = Nothing
    , _guPayload = pGuPayload_
    , _guOnBehalfOfContentOwner = Nothing
    , _guKey = Nothing
    , _guOAuthToken = Nothing
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
guPayload :: Lens' GroupsUpdate' Group
guPayload
  = lens _guPayload (\ s a -> s{_guPayload = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
guOnBehalfOfContentOwner :: Lens' GroupsUpdate' (Maybe Text)
guOnBehalfOfContentOwner
  = lens _guOnBehalfOfContentOwner
      (\ s a -> s{_guOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
guKey :: Lens' GroupsUpdate' (Maybe AuthKey)
guKey = lens _guKey (\ s a -> s{_guKey = a})

-- | OAuth 2.0 token for the current user.
guOAuthToken :: Lens' GroupsUpdate' (Maybe OAuthToken)
guOAuthToken
  = lens _guOAuthToken (\ s a -> s{_guOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
guFields :: Lens' GroupsUpdate' (Maybe Text)
guFields = lens _guFields (\ s a -> s{_guFields = a})

instance GoogleAuth GroupsUpdate' where
        _AuthKey = guKey . _Just
        _AuthToken = guOAuthToken . _Just

instance GoogleRequest GroupsUpdate' where
        type Rs GroupsUpdate' = Group
        request = requestWith youTubeAnalyticsRequest
        requestWith rq GroupsUpdate'{..}
          = go _guOnBehalfOfContentOwner _guQuotaUser
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
