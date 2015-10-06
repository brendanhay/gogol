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
-- Module      : Network.Google.Resource.Games.Rooms.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the data for a room.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsGet@.
module Network.Google.Resource.Games.Rooms.Get
    (
    -- * REST Resource
      RoomsGetResource

    -- * Creating a Request
    , roomsGet'
    , RoomsGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIP
    , rgKey
    , rgRoomId
    , rgLanguage
    , rgOAuthToken
    , rgFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsGet@ which the
-- 'RoomsGet'' request conforms to.
type RoomsGetResource =
     "rooms" :>
       Capture "roomId" Text :>
         QueryParam "language" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Room

-- | Get the data for a room.
--
-- /See:/ 'roomsGet'' smart constructor.
data RoomsGet' = RoomsGet'
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgUserIP      :: !(Maybe Text)
    , _rgKey         :: !(Maybe AuthKey)
    , _rgRoomId      :: !Text
    , _rgLanguage    :: !(Maybe Text)
    , _rgOAuthToken  :: !(Maybe OAuthToken)
    , _rgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIP'
--
-- * 'rgKey'
--
-- * 'rgRoomId'
--
-- * 'rgLanguage'
--
-- * 'rgOAuthToken'
--
-- * 'rgFields'
roomsGet'
    :: Text -- ^ 'roomId'
    -> RoomsGet'
roomsGet' pRgRoomId_ =
    RoomsGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIP = Nothing
    , _rgKey = Nothing
    , _rgRoomId = pRgRoomId_
    , _rgLanguage = Nothing
    , _rgOAuthToken = Nothing
    , _rgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' RoomsGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' RoomsGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIP :: Lens' RoomsGet' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' RoomsGet' (Maybe AuthKey)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | The ID of the room.
rgRoomId :: Lens' RoomsGet' Text
rgRoomId = lens _rgRoomId (\ s a -> s{_rgRoomId = a})

-- | The preferred language to use for strings returned by this method.
rgLanguage :: Lens' RoomsGet' (Maybe Text)
rgLanguage
  = lens _rgLanguage (\ s a -> s{_rgLanguage = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' RoomsGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' RoomsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

instance GoogleAuth RoomsGet' where
        _AuthKey = rgKey . _Just
        _AuthToken = rgOAuthToken . _Just

instance GoogleRequest RoomsGet' where
        type Rs RoomsGet' = Room
        request = requestWith gamesRequest
        requestWith rq RoomsGet'{..}
          = go _rgRoomId _rgLanguage _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy RoomsGetResource) rq
