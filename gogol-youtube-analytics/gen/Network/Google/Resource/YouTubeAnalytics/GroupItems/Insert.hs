{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module YouTubeAnalytics.GroupItems.Insert
    (
    -- * REST Resource
      GroupItemsInsertAPI

    -- * Creating a Request
    , groupItemsInsert
    , GroupItemsInsert

    -- * Request Lenses
    , giiQuotaUser
    , giiPrettyPrint
    , giiUserIp
    , giiOnBehalfOfContentOwner
    , giiKey
    , giiOauthToken
    , giiFields
    , giiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupItemsInsert@ which the
-- 'GroupItemsInsert' request conforms to.
type GroupItemsInsertAPI =
     "groupItems" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         Post '[JSON] GroupItem

-- | Creates a group item.
--
-- /See:/ 'groupItemsInsert' smart constructor.
data GroupItemsInsert = GroupItemsInsert
    { _giiQuotaUser              :: !(Maybe Text)
    , _giiPrettyPrint            :: !Bool
    , _giiUserIp                 :: !(Maybe Text)
    , _giiOnBehalfOfContentOwner :: !(Maybe Text)
    , _giiKey                    :: !(Maybe Text)
    , _giiOauthToken             :: !(Maybe Text)
    , _giiFields                 :: !(Maybe Text)
    , _giiAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giiQuotaUser'
--
-- * 'giiPrettyPrint'
--
-- * 'giiUserIp'
--
-- * 'giiOnBehalfOfContentOwner'
--
-- * 'giiKey'
--
-- * 'giiOauthToken'
--
-- * 'giiFields'
--
-- * 'giiAlt'
groupItemsInsert
    :: GroupItemsInsert
groupItemsInsert =
    GroupItemsInsert
    { _giiQuotaUser = Nothing
    , _giiPrettyPrint = True
    , _giiUserIp = Nothing
    , _giiOnBehalfOfContentOwner = Nothing
    , _giiKey = Nothing
    , _giiOauthToken = Nothing
    , _giiFields = Nothing
    , _giiAlt = "json"
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
giiUserIp :: Lens' GroupItemsInsert' (Maybe Text)
giiUserIp
  = lens _giiUserIp (\ s a -> s{_giiUserIp = a})

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
giiKey :: Lens' GroupItemsInsert' (Maybe Text)
giiKey = lens _giiKey (\ s a -> s{_giiKey = a})

-- | OAuth 2.0 token for the current user.
giiOauthToken :: Lens' GroupItemsInsert' (Maybe Text)
giiOauthToken
  = lens _giiOauthToken
      (\ s a -> s{_giiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
giiFields :: Lens' GroupItemsInsert' (Maybe Text)
giiFields
  = lens _giiFields (\ s a -> s{_giiFields = a})

-- | Data format for the response.
giiAlt :: Lens' GroupItemsInsert' Text
giiAlt = lens _giiAlt (\ s a -> s{_giiAlt = a})

instance GoogleRequest GroupItemsInsert' where
        type Rs GroupItemsInsert' = GroupItem
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u GroupItemsInsert{..}
          = go _giiQuotaUser _giiPrettyPrint _giiUserIp
              _giiOnBehalfOfContentOwner
              _giiKey
              _giiOauthToken
              _giiFields
              _giiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupItemsInsertAPI)
                      r
                      u
