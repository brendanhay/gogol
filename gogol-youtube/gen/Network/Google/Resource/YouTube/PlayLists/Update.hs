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
-- Module      : Network.Google.Resource.YouTube.PlayLists.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a playlist. For example, you could change a playlist\'s title,
-- description, or privacy status.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListsUpdate@.
module Network.Google.Resource.YouTube.PlayLists.Update
    (
    -- * REST Resource
      PlayListsUpdateResource

    -- * Creating a Request
    , playListsUpdate'
    , PlayListsUpdate'

    -- * Request Lenses
    , pluQuotaUser
    , pluPart
    , pluPrettyPrint
    , pluUserIP
    , pluPayload
    , pluOnBehalfOfContentOwner
    , pluKey
    , pluOAuthToken
    , pluFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListsUpdate@ method which the
-- 'PlayListsUpdate'' request conforms to.
type PlayListsUpdateResource =
     "playlists" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PlayList :> Put '[JSON] PlayList

-- | Modifies a playlist. For example, you could change a playlist\'s title,
-- description, or privacy status.
--
-- /See:/ 'playListsUpdate'' smart constructor.
data PlayListsUpdate' = PlayListsUpdate'
    { _pluQuotaUser              :: !(Maybe Text)
    , _pluPart                   :: !Text
    , _pluPrettyPrint            :: !Bool
    , _pluUserIP                 :: !(Maybe Text)
    , _pluPayload                :: !PlayList
    , _pluOnBehalfOfContentOwner :: !(Maybe Text)
    , _pluKey                    :: !(Maybe AuthKey)
    , _pluOAuthToken             :: !(Maybe OAuthToken)
    , _pluFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pluQuotaUser'
--
-- * 'pluPart'
--
-- * 'pluPrettyPrint'
--
-- * 'pluUserIP'
--
-- * 'pluPayload'
--
-- * 'pluOnBehalfOfContentOwner'
--
-- * 'pluKey'
--
-- * 'pluOAuthToken'
--
-- * 'pluFields'
playListsUpdate'
    :: Text -- ^ 'part'
    -> PlayList -- ^ 'payload'
    -> PlayListsUpdate'
playListsUpdate' pPluPart_ pPluPayload_ =
    PlayListsUpdate'
    { _pluQuotaUser = Nothing
    , _pluPart = pPluPart_
    , _pluPrettyPrint = True
    , _pluUserIP = Nothing
    , _pluPayload = pPluPayload_
    , _pluOnBehalfOfContentOwner = Nothing
    , _pluKey = Nothing
    , _pluOAuthToken = Nothing
    , _pluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pluQuotaUser :: Lens' PlayListsUpdate' (Maybe Text)
pluQuotaUser
  = lens _pluQuotaUser (\ s a -> s{_pluQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Note that this method
-- will override the existing values for mutable properties that are
-- contained in any parts that the request body specifies. For example, a
-- playlist\'s description is contained in the snippet part, which must be
-- included in the request body. If the request does not specify a value
-- for the snippet.description property, the playlist\'s existing
-- description will be deleted.
pluPart :: Lens' PlayListsUpdate' Text
pluPart = lens _pluPart (\ s a -> s{_pluPart = a})

-- | Returns response with indentations and line breaks.
pluPrettyPrint :: Lens' PlayListsUpdate' Bool
pluPrettyPrint
  = lens _pluPrettyPrint
      (\ s a -> s{_pluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pluUserIP :: Lens' PlayListsUpdate' (Maybe Text)
pluUserIP
  = lens _pluUserIP (\ s a -> s{_pluUserIP = a})

-- | Multipart request metadata.
pluPayload :: Lens' PlayListsUpdate' PlayList
pluPayload
  = lens _pluPayload (\ s a -> s{_pluPayload = a})

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
pluOnBehalfOfContentOwner :: Lens' PlayListsUpdate' (Maybe Text)
pluOnBehalfOfContentOwner
  = lens _pluOnBehalfOfContentOwner
      (\ s a -> s{_pluOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pluKey :: Lens' PlayListsUpdate' (Maybe AuthKey)
pluKey = lens _pluKey (\ s a -> s{_pluKey = a})

-- | OAuth 2.0 token for the current user.
pluOAuthToken :: Lens' PlayListsUpdate' (Maybe OAuthToken)
pluOAuthToken
  = lens _pluOAuthToken
      (\ s a -> s{_pluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pluFields :: Lens' PlayListsUpdate' (Maybe Text)
pluFields
  = lens _pluFields (\ s a -> s{_pluFields = a})

instance GoogleAuth PlayListsUpdate' where
        _AuthKey = pluKey . _Just
        _AuthToken = pluOAuthToken . _Just

instance GoogleRequest PlayListsUpdate' where
        type Rs PlayListsUpdate' = PlayList
        request = requestWith youTubeRequest
        requestWith rq PlayListsUpdate'{..}
          = go (Just _pluPart) _pluOnBehalfOfContentOwner
              _pluQuotaUser
              (Just _pluPrettyPrint)
              _pluUserIP
              _pluFields
              _pluKey
              _pluOAuthToken
              (Just AltJSON)
              _pluPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PlayListsUpdateResource)
                      rq
