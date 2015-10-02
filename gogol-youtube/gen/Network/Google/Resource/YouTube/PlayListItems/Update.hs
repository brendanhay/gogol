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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a playlist item. For example, you could update the item\'s
-- position in the playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListItemsUpdate@.
module Network.Google.Resource.YouTube.PlayListItems.Update
    (
    -- * REST Resource
      PlayListItemsUpdateResource

    -- * Creating a Request
    , playListItemsUpdate'
    , PlayListItemsUpdate'

    -- * Request Lenses
    , pliuQuotaUser
    , pliuPart
    , pliuPrettyPrint
    , pliuUserIP
    , pliuKey
    , pliuOAuthToken
    , pliuPlayListItem
    , pliuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListItemsUpdate@ which the
-- 'PlayListItemsUpdate'' request conforms to.
type PlayListItemsUpdateResource =
     "playlistItems" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PlayListItem :>
                         Put '[JSON] PlayListItem

-- | Modifies a playlist item. For example, you could update the item\'s
-- position in the playlist.
--
-- /See:/ 'playListItemsUpdate'' smart constructor.
data PlayListItemsUpdate' = PlayListItemsUpdate'
    { _pliuQuotaUser    :: !(Maybe Text)
    , _pliuPart         :: !Text
    , _pliuPrettyPrint  :: !Bool
    , _pliuUserIP       :: !(Maybe Text)
    , _pliuKey          :: !(Maybe Key)
    , _pliuOAuthToken   :: !(Maybe OAuthToken)
    , _pliuPlayListItem :: !PlayListItem
    , _pliuFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliuQuotaUser'
--
-- * 'pliuPart'
--
-- * 'pliuPrettyPrint'
--
-- * 'pliuUserIP'
--
-- * 'pliuKey'
--
-- * 'pliuOAuthToken'
--
-- * 'pliuPlayListItem'
--
-- * 'pliuFields'
playListItemsUpdate'
    :: Text -- ^ 'part'
    -> PlayListItem -- ^ 'PlayListItem'
    -> PlayListItemsUpdate'
playListItemsUpdate' pPliuPart_ pPliuPlayListItem_ =
    PlayListItemsUpdate'
    { _pliuQuotaUser = Nothing
    , _pliuPart = pPliuPart_
    , _pliuPrettyPrint = True
    , _pliuUserIP = Nothing
    , _pliuKey = Nothing
    , _pliuOAuthToken = Nothing
    , _pliuPlayListItem = pPliuPlayListItem_
    , _pliuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pliuQuotaUser :: Lens' PlayListItemsUpdate' (Maybe Text)
pliuQuotaUser
  = lens _pliuQuotaUser
      (\ s a -> s{_pliuQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Note that this method
-- will override the existing values for all of the mutable properties that
-- are contained in any parts that the parameter value specifies. For
-- example, a playlist item can specify a start time and end time, which
-- identify the times portion of the video that should play when users
-- watch the video in the playlist. If your request is updating a playlist
-- item that sets these values, and the request\'s part parameter value
-- includes the contentDetails part, the playlist item\'s start and end
-- times will be updated to whatever value the request body specifies. If
-- the request body does not specify values, the existing start and end
-- times will be removed and replaced with the default settings.
pliuPart :: Lens' PlayListItemsUpdate' Text
pliuPart = lens _pliuPart (\ s a -> s{_pliuPart = a})

-- | Returns response with indentations and line breaks.
pliuPrettyPrint :: Lens' PlayListItemsUpdate' Bool
pliuPrettyPrint
  = lens _pliuPrettyPrint
      (\ s a -> s{_pliuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pliuUserIP :: Lens' PlayListItemsUpdate' (Maybe Text)
pliuUserIP
  = lens _pliuUserIP (\ s a -> s{_pliuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pliuKey :: Lens' PlayListItemsUpdate' (Maybe Key)
pliuKey = lens _pliuKey (\ s a -> s{_pliuKey = a})

-- | OAuth 2.0 token for the current user.
pliuOAuthToken :: Lens' PlayListItemsUpdate' (Maybe OAuthToken)
pliuOAuthToken
  = lens _pliuOAuthToken
      (\ s a -> s{_pliuOAuthToken = a})

-- | Multipart request metadata.
pliuPlayListItem :: Lens' PlayListItemsUpdate' PlayListItem
pliuPlayListItem
  = lens _pliuPlayListItem
      (\ s a -> s{_pliuPlayListItem = a})

-- | Selector specifying which fields to include in a partial response.
pliuFields :: Lens' PlayListItemsUpdate' (Maybe Text)
pliuFields
  = lens _pliuFields (\ s a -> s{_pliuFields = a})

instance GoogleAuth PlayListItemsUpdate' where
        authKey = pliuKey . _Just
        authToken = pliuOAuthToken . _Just

instance GoogleRequest PlayListItemsUpdate' where
        type Rs PlayListItemsUpdate' = PlayListItem
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlayListItemsUpdate'{..}
          = go _pliuQuotaUser (Just _pliuPart)
              (Just _pliuPrettyPrint)
              _pliuUserIP
              _pliuKey
              _pliuOAuthToken
              _pliuFields
              (Just AltJSON)
              _pliuPlayListItem
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlayListItemsUpdateResource)
                      r
                      u
