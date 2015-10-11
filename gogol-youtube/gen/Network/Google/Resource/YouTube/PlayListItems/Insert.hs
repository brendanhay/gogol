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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a resource to a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListItemsInsert@.
module Network.Google.Resource.YouTube.PlayListItems.Insert
    (
    -- * REST Resource
      PlayListItemsInsertResource

    -- * Creating a Request
    , playListItemsInsert'
    , PlayListItemsInsert'

    -- * Request Lenses
    , pliiQuotaUser
    , pliiPart
    , pliiPrettyPrint
    , pliiUserIP
    , pliiPayload
    , pliiOnBehalfOfContentOwner
    , pliiKey
    , pliiOAuthToken
    , pliiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListItemsInsert@ method which the
-- 'PlayListItemsInsert'' request conforms to.
type PlayListItemsInsertResource =
     "playlistItems" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PlayListItem :>
                           Post '[JSON] PlayListItem

-- | Adds a resource to a playlist.
--
-- /See:/ 'playListItemsInsert'' smart constructor.
data PlayListItemsInsert' = PlayListItemsInsert'
    { _pliiQuotaUser              :: !(Maybe Text)
    , _pliiPart                   :: !Text
    , _pliiPrettyPrint            :: !Bool
    , _pliiUserIP                 :: !(Maybe Text)
    , _pliiPayload                :: !PlayListItem
    , _pliiOnBehalfOfContentOwner :: !(Maybe Text)
    , _pliiKey                    :: !(Maybe AuthKey)
    , _pliiOAuthToken             :: !(Maybe OAuthToken)
    , _pliiFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliiQuotaUser'
--
-- * 'pliiPart'
--
-- * 'pliiPrettyPrint'
--
-- * 'pliiUserIP'
--
-- * 'pliiPayload'
--
-- * 'pliiOnBehalfOfContentOwner'
--
-- * 'pliiKey'
--
-- * 'pliiOAuthToken'
--
-- * 'pliiFields'
playListItemsInsert'
    :: Text -- ^ 'part'
    -> PlayListItem -- ^ 'payload'
    -> PlayListItemsInsert'
playListItemsInsert' pPliiPart_ pPliiPayload_ =
    PlayListItemsInsert'
    { _pliiQuotaUser = Nothing
    , _pliiPart = pPliiPart_
    , _pliiPrettyPrint = True
    , _pliiUserIP = Nothing
    , _pliiPayload = pPliiPayload_
    , _pliiOnBehalfOfContentOwner = Nothing
    , _pliiKey = Nothing
    , _pliiOAuthToken = Nothing
    , _pliiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pliiQuotaUser :: Lens' PlayListItemsInsert' (Maybe Text)
pliiQuotaUser
  = lens _pliiQuotaUser
      (\ s a -> s{_pliiQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
pliiPart :: Lens' PlayListItemsInsert' Text
pliiPart = lens _pliiPart (\ s a -> s{_pliiPart = a})

-- | Returns response with indentations and line breaks.
pliiPrettyPrint :: Lens' PlayListItemsInsert' Bool
pliiPrettyPrint
  = lens _pliiPrettyPrint
      (\ s a -> s{_pliiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pliiUserIP :: Lens' PlayListItemsInsert' (Maybe Text)
pliiUserIP
  = lens _pliiUserIP (\ s a -> s{_pliiUserIP = a})

-- | Multipart request metadata.
pliiPayload :: Lens' PlayListItemsInsert' PlayListItem
pliiPayload
  = lens _pliiPayload (\ s a -> s{_pliiPayload = a})

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
pliiOnBehalfOfContentOwner :: Lens' PlayListItemsInsert' (Maybe Text)
pliiOnBehalfOfContentOwner
  = lens _pliiOnBehalfOfContentOwner
      (\ s a -> s{_pliiOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pliiKey :: Lens' PlayListItemsInsert' (Maybe AuthKey)
pliiKey = lens _pliiKey (\ s a -> s{_pliiKey = a})

-- | OAuth 2.0 token for the current user.
pliiOAuthToken :: Lens' PlayListItemsInsert' (Maybe OAuthToken)
pliiOAuthToken
  = lens _pliiOAuthToken
      (\ s a -> s{_pliiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pliiFields :: Lens' PlayListItemsInsert' (Maybe Text)
pliiFields
  = lens _pliiFields (\ s a -> s{_pliiFields = a})

instance GoogleAuth PlayListItemsInsert' where
        _AuthKey = pliiKey . _Just
        _AuthToken = pliiOAuthToken . _Just

instance GoogleRequest PlayListItemsInsert' where
        type Rs PlayListItemsInsert' = PlayListItem
        request = requestWith youTubeRequest
        requestWith rq PlayListItemsInsert'{..}
          = go (Just _pliiPart) _pliiOnBehalfOfContentOwner
              _pliiQuotaUser
              (Just _pliiPrettyPrint)
              _pliiUserIP
              _pliiFields
              _pliiKey
              _pliiOAuthToken
              (Just AltJSON)
              _pliiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PlayListItemsInsertResource)
                      rq
