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
-- Module      : Network.Google.Resource.Games.Rooms.Dismiss
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsDismiss@.
module Network.Google.Resource.Games.Rooms.Dismiss
    (
    -- * REST Resource
      RoomsDismissResource

    -- * Creating a Request
    , roomsDismiss'
    , RoomsDismiss'

    -- * Request Lenses
    , rddQuotaUser
    , rddPrettyPrint
    , rddUserIp
    , rddKey
    , rddRoomId
    , rddOauthToken
    , rddFields
    , rddAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsDismiss@ which the
-- 'RoomsDismiss'' request conforms to.
type RoomsDismissResource =
     "rooms" :>
       Capture "roomId" Text :>
         "dismiss" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDismiss'' smart constructor.
data RoomsDismiss' = RoomsDismiss'
    { _rddQuotaUser   :: !(Maybe Text)
    , _rddPrettyPrint :: !Bool
    , _rddUserIp      :: !(Maybe Text)
    , _rddKey         :: !(Maybe Text)
    , _rddRoomId      :: !Text
    , _rddOauthToken  :: !(Maybe Text)
    , _rddFields      :: !(Maybe Text)
    , _rddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddQuotaUser'
--
-- * 'rddPrettyPrint'
--
-- * 'rddUserIp'
--
-- * 'rddKey'
--
-- * 'rddRoomId'
--
-- * 'rddOauthToken'
--
-- * 'rddFields'
--
-- * 'rddAlt'
roomsDismiss'
    :: Text -- ^ 'roomId'
    -> RoomsDismiss'
roomsDismiss' pRddRoomId_ =
    RoomsDismiss'
    { _rddQuotaUser = Nothing
    , _rddPrettyPrint = True
    , _rddUserIp = Nothing
    , _rddKey = Nothing
    , _rddRoomId = pRddRoomId_
    , _rddOauthToken = Nothing
    , _rddFields = Nothing
    , _rddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rddQuotaUser :: Lens' RoomsDismiss' (Maybe Text)
rddQuotaUser
  = lens _rddQuotaUser (\ s a -> s{_rddQuotaUser = a})

-- | Returns response with indentations and line breaks.
rddPrettyPrint :: Lens' RoomsDismiss' Bool
rddPrettyPrint
  = lens _rddPrettyPrint
      (\ s a -> s{_rddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rddUserIp :: Lens' RoomsDismiss' (Maybe Text)
rddUserIp
  = lens _rddUserIp (\ s a -> s{_rddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rddKey :: Lens' RoomsDismiss' (Maybe Text)
rddKey = lens _rddKey (\ s a -> s{_rddKey = a})

-- | The ID of the room.
rddRoomId :: Lens' RoomsDismiss' Text
rddRoomId
  = lens _rddRoomId (\ s a -> s{_rddRoomId = a})

-- | OAuth 2.0 token for the current user.
rddOauthToken :: Lens' RoomsDismiss' (Maybe Text)
rddOauthToken
  = lens _rddOauthToken
      (\ s a -> s{_rddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rddFields :: Lens' RoomsDismiss' (Maybe Text)
rddFields
  = lens _rddFields (\ s a -> s{_rddFields = a})

-- | Data format for the response.
rddAlt :: Lens' RoomsDismiss' Alt
rddAlt = lens _rddAlt (\ s a -> s{_rddAlt = a})

instance GoogleRequest RoomsDismiss' where
        type Rs RoomsDismiss' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsDismiss'{..}
          = go _rddQuotaUser (Just _rddPrettyPrint) _rddUserIp
              _rddKey
              _rddRoomId
              _rddOauthToken
              _rddFields
              (Just _rddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoomsDismissResource)
                      r
                      u
