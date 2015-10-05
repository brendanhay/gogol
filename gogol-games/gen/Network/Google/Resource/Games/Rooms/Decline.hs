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
-- Module      : Network.Google.Resource.Games.Rooms.Decline
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsDecline@.
module Network.Google.Resource.Games.Rooms.Decline
    (
    -- * REST Resource
      RoomsDeclineResource

    -- * Creating a Request
    , roomsDecline'
    , RoomsDecline'

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdUserIP
    , rdKey
    , rdRoomId
    , rdLanguage
    , rdOAuthToken
    , rdFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsDecline@ which the
-- 'RoomsDecline'' request conforms to.
type RoomsDeclineResource =
     "rooms" :>
       Capture "roomId" Text :>
         "decline" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Room

-- | Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDecline'' smart constructor.
data RoomsDecline' = RoomsDecline'
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdUserIP      :: !(Maybe Text)
    , _rdKey         :: !(Maybe AuthKey)
    , _rdRoomId      :: !Text
    , _rdLanguage    :: !(Maybe Text)
    , _rdOAuthToken  :: !(Maybe OAuthToken)
    , _rdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDecline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdUserIP'
--
-- * 'rdKey'
--
-- * 'rdRoomId'
--
-- * 'rdLanguage'
--
-- * 'rdOAuthToken'
--
-- * 'rdFields'
roomsDecline'
    :: Text -- ^ 'roomId'
    -> RoomsDecline'
roomsDecline' pRdRoomId_ =
    RoomsDecline'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdUserIP = Nothing
    , _rdKey = Nothing
    , _rdRoomId = pRdRoomId_
    , _rdLanguage = Nothing
    , _rdOAuthToken = Nothing
    , _rdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdQuotaUser :: Lens' RoomsDecline' (Maybe Text)
rdQuotaUser
  = lens _rdQuotaUser (\ s a -> s{_rdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdPrettyPrint :: Lens' RoomsDecline' Bool
rdPrettyPrint
  = lens _rdPrettyPrint
      (\ s a -> s{_rdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdUserIP :: Lens' RoomsDecline' (Maybe Text)
rdUserIP = lens _rdUserIP (\ s a -> s{_rdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' RoomsDecline' (Maybe AuthKey)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | The ID of the room.
rdRoomId :: Lens' RoomsDecline' Text
rdRoomId = lens _rdRoomId (\ s a -> s{_rdRoomId = a})

-- | The preferred language to use for strings returned by this method.
rdLanguage :: Lens' RoomsDecline' (Maybe Text)
rdLanguage
  = lens _rdLanguage (\ s a -> s{_rdLanguage = a})

-- | OAuth 2.0 token for the current user.
rdOAuthToken :: Lens' RoomsDecline' (Maybe OAuthToken)
rdOAuthToken
  = lens _rdOAuthToken (\ s a -> s{_rdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' RoomsDecline' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

instance GoogleAuth RoomsDecline' where
        authKey = rdKey . _Just
        authToken = rdOAuthToken . _Just

instance GoogleRequest RoomsDecline' where
        type Rs RoomsDecline' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsDecline'{..}
          = go _rdRoomId _rdLanguage _rdQuotaUser
              (Just _rdPrettyPrint)
              _rdUserIP
              _rdFields
              _rdKey
              _rdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoomsDeclineResource)
                      r
                      u
