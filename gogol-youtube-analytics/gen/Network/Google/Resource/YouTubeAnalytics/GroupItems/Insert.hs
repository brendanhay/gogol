{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a group item.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupItemsInsert@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert
    (
    -- * REST Resource
      GroupItemsInsertResource

    -- * Creating a Request
    , groupItemsInsert'
    , GroupItemsInsert'

    -- * Request Lenses
    , giiQuotaUser
    , giiPrettyPrint
    , giiUserIP
    , giiPayload
    , giiOnBehalfOfContentOwner
    , giiKey
    , giiOAuthToken
    , giiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupItemsInsert@ which the
-- 'GroupItemsInsert'' request conforms to.
type GroupItemsInsertResource =
     "groupItems" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] GroupItem :>
                         Post '[JSON] GroupItem

-- | Creates a group item.
--
-- /See:/ 'groupItemsInsert'' smart constructor.
data GroupItemsInsert' = GroupItemsInsert'
    { _giiQuotaUser              :: !(Maybe Text)
    , _giiPrettyPrint            :: !Bool
    , _giiUserIP                 :: !(Maybe Text)
    , _giiPayload                :: !GroupItem
    , _giiOnBehalfOfContentOwner :: !(Maybe Text)
    , _giiKey                    :: !(Maybe Key)
    , _giiOAuthToken             :: !(Maybe OAuthToken)
    , _giiFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giiQuotaUser'
--
-- * 'giiPrettyPrint'
--
-- * 'giiUserIP'
--
-- * 'giiPayload'
--
-- * 'giiOnBehalfOfContentOwner'
--
-- * 'giiKey'
--
-- * 'giiOAuthToken'
--
-- * 'giiFields'
groupItemsInsert'
    :: GroupItem -- ^ 'payload'
    -> GroupItemsInsert'
groupItemsInsert' pGiiPayload_ =
    GroupItemsInsert'
    { _giiQuotaUser = Nothing
    , _giiPrettyPrint = True
    , _giiUserIP = Nothing
    , _giiPayload = pGiiPayload_
    , _giiOnBehalfOfContentOwner = Nothing
    , _giiKey = Nothing
    , _giiOAuthToken = Nothing
    , _giiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
giiQuotaUser :: Lens' GroupItemsInsert' (Maybe Text)
giiQuotaUser
  = lens _giiQuotaUser (\ s a -> s{_giiQuotaUser = a})

-- | Returns response with indentations and line breaks.
giiPrettyPrint :: Lens' GroupItemsInsert' Bool
giiPrettyPrint
  = lens _giiPrettyPrint
      (\ s a -> s{_giiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
giiUserIP :: Lens' GroupItemsInsert' (Maybe Text)
giiUserIP
  = lens _giiUserIP (\ s a -> s{_giiUserIP = a})

-- | Multipart request metadata.
giiPayload :: Lens' GroupItemsInsert' GroupItem
giiPayload
  = lens _giiPayload (\ s a -> s{_giiPayload = a})

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
giiOnBehalfOfContentOwner :: Lens' GroupItemsInsert' (Maybe Text)
giiOnBehalfOfContentOwner
  = lens _giiOnBehalfOfContentOwner
      (\ s a -> s{_giiOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
giiKey :: Lens' GroupItemsInsert' (Maybe Key)
giiKey = lens _giiKey (\ s a -> s{_giiKey = a})

-- | OAuth 2.0 token for the current user.
giiOAuthToken :: Lens' GroupItemsInsert' (Maybe OAuthToken)
giiOAuthToken
  = lens _giiOAuthToken
      (\ s a -> s{_giiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
giiFields :: Lens' GroupItemsInsert' (Maybe Text)
giiFields
  = lens _giiFields (\ s a -> s{_giiFields = a})

instance GoogleAuth GroupItemsInsert' where
        authKey = giiKey . _Just
        authToken = giiOAuthToken . _Just

instance GoogleRequest GroupItemsInsert' where
        type Rs GroupItemsInsert' = GroupItem
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u GroupItemsInsert'{..}
          = go _giiOnBehalfOfContentOwner _giiQuotaUser
              (Just _giiPrettyPrint)
              _giiUserIP
              _giiFields
              _giiKey
              _giiOAuthToken
              (Just AltJSON)
              _giiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupItemsInsertResource)
                      r
                      u
