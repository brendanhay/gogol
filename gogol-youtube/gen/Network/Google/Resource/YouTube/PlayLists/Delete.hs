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
-- Module      : Network.Google.Resource.YouTube.PlayLists.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListsDelete@.
module Network.Google.Resource.YouTube.PlayLists.Delete
    (
    -- * REST Resource
      PlayListsDeleteResource

    -- * Creating a Request
    , playListsDelete'
    , PlayListsDelete'

    -- * Request Lenses
    , pldQuotaUser
    , pldPrettyPrint
    , pldUserIP
    , pldOnBehalfOfContentOwner
    , pldKey
    , pldId
    , pldOAuthToken
    , pldFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListsDelete@ which the
-- 'PlayListsDelete'' request conforms to.
type PlayListsDeleteResource =
     "playlists" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a playlist.
--
-- /See:/ 'playListsDelete'' smart constructor.
data PlayListsDelete' = PlayListsDelete'
    { _pldQuotaUser              :: !(Maybe Text)
    , _pldPrettyPrint            :: !Bool
    , _pldUserIP                 :: !(Maybe Text)
    , _pldOnBehalfOfContentOwner :: !(Maybe Text)
    , _pldKey                    :: !(Maybe Key)
    , _pldId                     :: !Text
    , _pldOAuthToken             :: !(Maybe OAuthToken)
    , _pldFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldQuotaUser'
--
-- * 'pldPrettyPrint'
--
-- * 'pldUserIP'
--
-- * 'pldOnBehalfOfContentOwner'
--
-- * 'pldKey'
--
-- * 'pldId'
--
-- * 'pldOAuthToken'
--
-- * 'pldFields'
playListsDelete'
    :: Text -- ^ 'id'
    -> PlayListsDelete'
playListsDelete' pPldId_ =
    PlayListsDelete'
    { _pldQuotaUser = Nothing
    , _pldPrettyPrint = True
    , _pldUserIP = Nothing
    , _pldOnBehalfOfContentOwner = Nothing
    , _pldKey = Nothing
    , _pldId = pPldId_
    , _pldOAuthToken = Nothing
    , _pldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pldQuotaUser :: Lens' PlayListsDelete' (Maybe Text)
pldQuotaUser
  = lens _pldQuotaUser (\ s a -> s{_pldQuotaUser = a})

-- | Returns response with indentations and line breaks.
pldPrettyPrint :: Lens' PlayListsDelete' Bool
pldPrettyPrint
  = lens _pldPrettyPrint
      (\ s a -> s{_pldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pldUserIP :: Lens' PlayListsDelete' (Maybe Text)
pldUserIP
  = lens _pldUserIP (\ s a -> s{_pldUserIP = a})

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
pldOnBehalfOfContentOwner :: Lens' PlayListsDelete' (Maybe Text)
pldOnBehalfOfContentOwner
  = lens _pldOnBehalfOfContentOwner
      (\ s a -> s{_pldOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pldKey :: Lens' PlayListsDelete' (Maybe Key)
pldKey = lens _pldKey (\ s a -> s{_pldKey = a})

-- | The id parameter specifies the YouTube playlist ID for the playlist that
-- is being deleted. In a playlist resource, the id property specifies the
-- playlist\'s ID.
pldId :: Lens' PlayListsDelete' Text
pldId = lens _pldId (\ s a -> s{_pldId = a})

-- | OAuth 2.0 token for the current user.
pldOAuthToken :: Lens' PlayListsDelete' (Maybe OAuthToken)
pldOAuthToken
  = lens _pldOAuthToken
      (\ s a -> s{_pldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pldFields :: Lens' PlayListsDelete' (Maybe Text)
pldFields
  = lens _pldFields (\ s a -> s{_pldFields = a})

instance GoogleAuth PlayListsDelete' where
        authKey = pldKey . _Just
        authToken = pldOAuthToken . _Just

instance GoogleRequest PlayListsDelete' where
        type Rs PlayListsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlayListsDelete'{..}
          = go _pldOnBehalfOfContentOwner (Just _pldId)
              _pldQuotaUser
              (Just _pldPrettyPrint)
              _pldUserIP
              _pldFields
              _pldKey
              _pldOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlayListsDeleteResource)
                      r
                      u
