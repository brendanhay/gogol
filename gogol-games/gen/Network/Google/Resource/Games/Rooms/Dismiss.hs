{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Games.Rooms.Dismiss
    (
    -- * REST Resource
      RoomsDismissAPI

    -- * Creating a Request
    , roomsDismiss
    , RoomsDismiss

    -- * Request Lenses
    , rooQuotaUser
    , rooPrettyPrint
    , rooUserIp
    , rooKey
    , rooRoomId
    , rooOauthToken
    , rooFields
    , rooAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsDismiss@ which the
-- 'RoomsDismiss' request conforms to.
type RoomsDismissAPI =
     "rooms" :>
       Capture "roomId" Text :> "dismiss" :> Post '[JSON] ()

-- | Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDismiss' smart constructor.
data RoomsDismiss = RoomsDismiss
    { _rooQuotaUser   :: !(Maybe Text)
    , _rooPrettyPrint :: !Bool
    , _rooUserIp      :: !(Maybe Text)
    , _rooKey         :: !(Maybe Text)
    , _rooRoomId      :: !Text
    , _rooOauthToken  :: !(Maybe Text)
    , _rooFields      :: !(Maybe Text)
    , _rooAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rooQuotaUser'
--
-- * 'rooPrettyPrint'
--
-- * 'rooUserIp'
--
-- * 'rooKey'
--
-- * 'rooRoomId'
--
-- * 'rooOauthToken'
--
-- * 'rooFields'
--
-- * 'rooAlt'
roomsDismiss
    :: Text -- ^ 'roomId'
    -> RoomsDismiss
roomsDismiss pRooRoomId_ =
    RoomsDismiss
    { _rooQuotaUser = Nothing
    , _rooPrettyPrint = True
    , _rooUserIp = Nothing
    , _rooKey = Nothing
    , _rooRoomId = pRooRoomId_
    , _rooOauthToken = Nothing
    , _rooFields = Nothing
    , _rooAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rooQuotaUser :: Lens' RoomsDismiss' (Maybe Text)
rooQuotaUser
  = lens _rooQuotaUser (\ s a -> s{_rooQuotaUser = a})

-- | Returns response with indentations and line breaks.
rooPrettyPrint :: Lens' RoomsDismiss' Bool
rooPrettyPrint
  = lens _rooPrettyPrint
      (\ s a -> s{_rooPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rooUserIp :: Lens' RoomsDismiss' (Maybe Text)
rooUserIp
  = lens _rooUserIp (\ s a -> s{_rooUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rooKey :: Lens' RoomsDismiss' (Maybe Text)
rooKey = lens _rooKey (\ s a -> s{_rooKey = a})

-- | The ID of the room.
rooRoomId :: Lens' RoomsDismiss' Text
rooRoomId
  = lens _rooRoomId (\ s a -> s{_rooRoomId = a})

-- | OAuth 2.0 token for the current user.
rooOauthToken :: Lens' RoomsDismiss' (Maybe Text)
rooOauthToken
  = lens _rooOauthToken
      (\ s a -> s{_rooOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rooFields :: Lens' RoomsDismiss' (Maybe Text)
rooFields
  = lens _rooFields (\ s a -> s{_rooFields = a})

-- | Data format for the response.
rooAlt :: Lens' RoomsDismiss' Text
rooAlt = lens _rooAlt (\ s a -> s{_rooAlt = a})

instance GoogleRequest RoomsDismiss' where
        type Rs RoomsDismiss' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsDismiss{..}
          = go _rooQuotaUser _rooPrettyPrint _rooUserIp _rooKey
              _rooRoomId
              _rooOauthToken
              _rooFields
              _rooAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsDismissAPI) r
                      u
