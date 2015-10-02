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
-- Module      : Network.Google.Resource.YouTube.PlayLists.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListsInsert@.
module Network.Google.Resource.YouTube.PlayLists.Insert
    (
    -- * REST Resource
      PlayListsInsertResource

    -- * Creating a Request
    , playListsInsert'
    , PlayListsInsert'

    -- * Request Lenses
    , pliQuotaUser
    , pliPart
    , pliPrettyPrint
    , pliUserIP
    , pliOnBehalfOfContentOwner
    , pliKey
    , pliOnBehalfOfContentOwnerChannel
    , pliOAuthToken
    , pliPlayList
    , pliFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListsInsert@ which the
-- 'PlayListsInsert'' request conforms to.
type PlayListsInsertResource =
     "playlists" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "onBehalfOfContentOwnerChannel" Text :>
           QueryParam "part" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlayList :> Post '[JSON] PlayList

-- | Creates a playlist.
--
-- /See:/ 'playListsInsert'' smart constructor.
data PlayListsInsert' = PlayListsInsert'
    { _pliQuotaUser                     :: !(Maybe Text)
    , _pliPart                          :: !Text
    , _pliPrettyPrint                   :: !Bool
    , _pliUserIP                        :: !(Maybe Text)
    , _pliOnBehalfOfContentOwner        :: !(Maybe Text)
    , _pliKey                           :: !(Maybe Key)
    , _pliOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _pliOAuthToken                    :: !(Maybe OAuthToken)
    , _pliPlayList                      :: !PlayList
    , _pliFields                        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliQuotaUser'
--
-- * 'pliPart'
--
-- * 'pliPrettyPrint'
--
-- * 'pliUserIP'
--
-- * 'pliOnBehalfOfContentOwner'
--
-- * 'pliKey'
--
-- * 'pliOnBehalfOfContentOwnerChannel'
--
-- * 'pliOAuthToken'
--
-- * 'pliPlayList'
--
-- * 'pliFields'
playListsInsert'
    :: Text -- ^ 'part'
    -> PlayList -- ^ 'PlayList'
    -> PlayListsInsert'
playListsInsert' pPliPart_ pPliPlayList_ =
    PlayListsInsert'
    { _pliQuotaUser = Nothing
    , _pliPart = pPliPart_
    , _pliPrettyPrint = True
    , _pliUserIP = Nothing
    , _pliOnBehalfOfContentOwner = Nothing
    , _pliKey = Nothing
    , _pliOnBehalfOfContentOwnerChannel = Nothing
    , _pliOAuthToken = Nothing
    , _pliPlayList = pPliPlayList_
    , _pliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pliQuotaUser :: Lens' PlayListsInsert' (Maybe Text)
pliQuotaUser
  = lens _pliQuotaUser (\ s a -> s{_pliQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
pliPart :: Lens' PlayListsInsert' Text
pliPart = lens _pliPart (\ s a -> s{_pliPart = a})

-- | Returns response with indentations and line breaks.
pliPrettyPrint :: Lens' PlayListsInsert' Bool
pliPrettyPrint
  = lens _pliPrettyPrint
      (\ s a -> s{_pliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pliUserIP :: Lens' PlayListsInsert' (Maybe Text)
pliUserIP
  = lens _pliUserIP (\ s a -> s{_pliUserIP = a})

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
pliOnBehalfOfContentOwner :: Lens' PlayListsInsert' (Maybe Text)
pliOnBehalfOfContentOwner
  = lens _pliOnBehalfOfContentOwner
      (\ s a -> s{_pliOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pliKey :: Lens' PlayListsInsert' (Maybe Key)
pliKey = lens _pliKey (\ s a -> s{_pliKey = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
pliOnBehalfOfContentOwnerChannel :: Lens' PlayListsInsert' (Maybe Text)
pliOnBehalfOfContentOwnerChannel
  = lens _pliOnBehalfOfContentOwnerChannel
      (\ s a -> s{_pliOnBehalfOfContentOwnerChannel = a})

-- | OAuth 2.0 token for the current user.
pliOAuthToken :: Lens' PlayListsInsert' (Maybe OAuthToken)
pliOAuthToken
  = lens _pliOAuthToken
      (\ s a -> s{_pliOAuthToken = a})

-- | Multipart request metadata.
pliPlayList :: Lens' PlayListsInsert' PlayList
pliPlayList
  = lens _pliPlayList (\ s a -> s{_pliPlayList = a})

-- | Selector specifying which fields to include in a partial response.
pliFields :: Lens' PlayListsInsert' (Maybe Text)
pliFields
  = lens _pliFields (\ s a -> s{_pliFields = a})

instance GoogleAuth PlayListsInsert' where
        authKey = pliKey . _Just
        authToken = pliOAuthToken . _Just

instance GoogleRequest PlayListsInsert' where
        type Rs PlayListsInsert' = PlayList
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlayListsInsert'{..}
          = go _pliOnBehalfOfContentOwner
              _pliOnBehalfOfContentOwnerChannel
              (Just _pliPart)
              _pliQuotaUser
              (Just _pliPrettyPrint)
              _pliUserIP
              _pliFields
              _pliKey
              _pliOAuthToken
              (Just AltJSON)
              _pliPlayList
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlayListsInsertResource)
                      r
                      u
