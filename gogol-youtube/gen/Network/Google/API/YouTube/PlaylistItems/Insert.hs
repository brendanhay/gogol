{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.PlaylistItems.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a resource to a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.playlistItems.insert@.
module Network.Google.API.YouTube.PlaylistItems.Insert
    (
    -- * REST Resource
      PlaylistItemsInsertAPI

    -- * Creating a Request
    , playlistItemsInsert'
    , PlaylistItemsInsert'

    -- * Request Lenses
    , piiQuotaUser
    , piiPart
    , piiPrettyPrint
    , piiUserIp
    , piiOnBehalfOfContentOwner
    , piiKey
    , piiOauthToken
    , piiFields
    , piiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.playlistItems.insert which the
-- 'PlaylistItemsInsert'' request conforms to.
type PlaylistItemsInsertAPI =
     "playlistItems" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] PlaylistItem

-- | Adds a resource to a playlist.
--
-- /See:/ 'playlistItemsInsert'' smart constructor.
data PlaylistItemsInsert' = PlaylistItemsInsert'
    { _piiQuotaUser              :: !(Maybe Text)
    , _piiPart                   :: !Text
    , _piiPrettyPrint            :: !Bool
    , _piiUserIp                 :: !(Maybe Text)
    , _piiOnBehalfOfContentOwner :: !(Maybe Text)
    , _piiKey                    :: !(Maybe Text)
    , _piiOauthToken             :: !(Maybe Text)
    , _piiFields                 :: !(Maybe Text)
    , _piiAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItemsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiQuotaUser'
--
-- * 'piiPart'
--
-- * 'piiPrettyPrint'
--
-- * 'piiUserIp'
--
-- * 'piiOnBehalfOfContentOwner'
--
-- * 'piiKey'
--
-- * 'piiOauthToken'
--
-- * 'piiFields'
--
-- * 'piiAlt'
playlistItemsInsert'
    :: Text -- ^ 'part'
    -> PlaylistItemsInsert'
playlistItemsInsert' pPiiPart_ =
    PlaylistItemsInsert'
    { _piiQuotaUser = Nothing
    , _piiPart = pPiiPart_
    , _piiPrettyPrint = True
    , _piiUserIp = Nothing
    , _piiOnBehalfOfContentOwner = Nothing
    , _piiKey = Nothing
    , _piiOauthToken = Nothing
    , _piiFields = Nothing
    , _piiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piiQuotaUser :: Lens' PlaylistItemsInsert' (Maybe Text)
piiQuotaUser
  = lens _piiQuotaUser (\ s a -> s{_piiQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
piiPart :: Lens' PlaylistItemsInsert' Text
piiPart = lens _piiPart (\ s a -> s{_piiPart = a})

-- | Returns response with indentations and line breaks.
piiPrettyPrint :: Lens' PlaylistItemsInsert' Bool
piiPrettyPrint
  = lens _piiPrettyPrint
      (\ s a -> s{_piiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piiUserIp :: Lens' PlaylistItemsInsert' (Maybe Text)
piiUserIp
  = lens _piiUserIp (\ s a -> s{_piiUserIp = a})

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
piiOnBehalfOfContentOwner :: Lens' PlaylistItemsInsert' (Maybe Text)
piiOnBehalfOfContentOwner
  = lens _piiOnBehalfOfContentOwner
      (\ s a -> s{_piiOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piiKey :: Lens' PlaylistItemsInsert' (Maybe Text)
piiKey = lens _piiKey (\ s a -> s{_piiKey = a})

-- | OAuth 2.0 token for the current user.
piiOauthToken :: Lens' PlaylistItemsInsert' (Maybe Text)
piiOauthToken
  = lens _piiOauthToken
      (\ s a -> s{_piiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
piiFields :: Lens' PlaylistItemsInsert' (Maybe Text)
piiFields
  = lens _piiFields (\ s a -> s{_piiFields = a})

-- | Data format for the response.
piiAlt :: Lens' PlaylistItemsInsert' Alt
piiAlt = lens _piiAlt (\ s a -> s{_piiAlt = a})

instance GoogleRequest PlaylistItemsInsert' where
        type Rs PlaylistItemsInsert' = PlaylistItem
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlaylistItemsInsert'{..}
          = go _piiQuotaUser (Just _piiPart)
              (Just _piiPrettyPrint)
              _piiUserIp
              _piiOnBehalfOfContentOwner
              _piiKey
              _piiOauthToken
              _piiFields
              (Just _piiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlaylistItemsInsertAPI)
                      r
                      u
