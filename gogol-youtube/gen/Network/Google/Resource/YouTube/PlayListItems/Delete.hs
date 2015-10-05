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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a playlist item.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListItemsDelete@.
module Network.Google.Resource.YouTube.PlayListItems.Delete
    (
    -- * REST Resource
      PlayListItemsDeleteResource

    -- * Creating a Request
    , playListItemsDelete'
    , PlayListItemsDelete'

    -- * Request Lenses
    , plidQuotaUser
    , plidPrettyPrint
    , plidUserIP
    , plidKey
    , plidId
    , plidOAuthToken
    , plidFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListItemsDelete@ which the
-- 'PlayListItemsDelete'' request conforms to.
type PlayListItemsDeleteResource =
     "playlistItems" :>
       QueryParam "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a playlist item.
--
-- /See:/ 'playListItemsDelete'' smart constructor.
data PlayListItemsDelete' = PlayListItemsDelete'
    { _plidQuotaUser   :: !(Maybe Text)
    , _plidPrettyPrint :: !Bool
    , _plidUserIP      :: !(Maybe Text)
    , _plidKey         :: !(Maybe Key)
    , _plidId          :: !Text
    , _plidOAuthToken  :: !(Maybe OAuthToken)
    , _plidFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plidQuotaUser'
--
-- * 'plidPrettyPrint'
--
-- * 'plidUserIP'
--
-- * 'plidKey'
--
-- * 'plidId'
--
-- * 'plidOAuthToken'
--
-- * 'plidFields'
playListItemsDelete'
    :: Text -- ^ 'id'
    -> PlayListItemsDelete'
playListItemsDelete' pPlidId_ =
    PlayListItemsDelete'
    { _plidQuotaUser = Nothing
    , _plidPrettyPrint = True
    , _plidUserIP = Nothing
    , _plidKey = Nothing
    , _plidId = pPlidId_
    , _plidOAuthToken = Nothing
    , _plidFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plidQuotaUser :: Lens' PlayListItemsDelete' (Maybe Text)
plidQuotaUser
  = lens _plidQuotaUser
      (\ s a -> s{_plidQuotaUser = a})

-- | Returns response with indentations and line breaks.
plidPrettyPrint :: Lens' PlayListItemsDelete' Bool
plidPrettyPrint
  = lens _plidPrettyPrint
      (\ s a -> s{_plidPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plidUserIP :: Lens' PlayListItemsDelete' (Maybe Text)
plidUserIP
  = lens _plidUserIP (\ s a -> s{_plidUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plidKey :: Lens' PlayListItemsDelete' (Maybe Key)
plidKey = lens _plidKey (\ s a -> s{_plidKey = a})

-- | The id parameter specifies the YouTube playlist item ID for the playlist
-- item that is being deleted. In a playlistItem resource, the id property
-- specifies the playlist item\'s ID.
plidId :: Lens' PlayListItemsDelete' Text
plidId = lens _plidId (\ s a -> s{_plidId = a})

-- | OAuth 2.0 token for the current user.
plidOAuthToken :: Lens' PlayListItemsDelete' (Maybe OAuthToken)
plidOAuthToken
  = lens _plidOAuthToken
      (\ s a -> s{_plidOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
plidFields :: Lens' PlayListItemsDelete' (Maybe Text)
plidFields
  = lens _plidFields (\ s a -> s{_plidFields = a})

instance GoogleAuth PlayListItemsDelete' where
        authKey = plidKey . _Just
        authToken = plidOAuthToken . _Just

instance GoogleRequest PlayListItemsDelete' where
        type Rs PlayListItemsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlayListItemsDelete'{..}
          = go (Just _plidId) _plidQuotaUser
              (Just _plidPrettyPrint)
              _plidUserIP
              _plidFields
              _plidKey
              _plidOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlayListItemsDeleteResource)
                      r
                      u
