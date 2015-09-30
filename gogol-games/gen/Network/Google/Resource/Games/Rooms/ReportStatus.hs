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
-- Module      : Network.Google.Resource.Games.Rooms.ReportStatus
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates sent by a client reporting the status of peers in a room. For
-- internal use by the Games SDK only. Calling this method directly is
-- unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsReportStatus@.
module Network.Google.Resource.Games.Rooms.ReportStatus
    (
    -- * REST Resource
      RoomsReportStatusResource

    -- * Creating a Request
    , roomsReportStatus'
    , RoomsReportStatus'

    -- * Request Lenses
    , rrsQuotaUser
    , rrsPrettyPrint
    , rrsUserIp
    , rrsKey
    , rrsRoomId
    , rrsLanguage
    , rrsOauthToken
    , rrsFields
    , rrsAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsReportStatus@ which the
-- 'RoomsReportStatus'' request conforms to.
type RoomsReportStatusResource =
     "rooms" :>
       Capture "roomId" Text :>
         "reportstatus" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] RoomStatus

-- | Updates sent by a client reporting the status of peers in a room. For
-- internal use by the Games SDK only. Calling this method directly is
-- unsupported.
--
-- /See:/ 'roomsReportStatus'' smart constructor.
data RoomsReportStatus' = RoomsReportStatus'
    { _rrsQuotaUser   :: !(Maybe Text)
    , _rrsPrettyPrint :: !Bool
    , _rrsUserIp      :: !(Maybe Text)
    , _rrsKey         :: !(Maybe Text)
    , _rrsRoomId      :: !Text
    , _rrsLanguage    :: !(Maybe Text)
    , _rrsOauthToken  :: !(Maybe Text)
    , _rrsFields      :: !(Maybe Text)
    , _rrsAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsReportStatus'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsQuotaUser'
--
-- * 'rrsPrettyPrint'
--
-- * 'rrsUserIp'
--
-- * 'rrsKey'
--
-- * 'rrsRoomId'
--
-- * 'rrsLanguage'
--
-- * 'rrsOauthToken'
--
-- * 'rrsFields'
--
-- * 'rrsAlt'
roomsReportStatus'
    :: Text -- ^ 'roomId'
    -> RoomsReportStatus'
roomsReportStatus' pRrsRoomId_ =
    RoomsReportStatus'
    { _rrsQuotaUser = Nothing
    , _rrsPrettyPrint = True
    , _rrsUserIp = Nothing
    , _rrsKey = Nothing
    , _rrsRoomId = pRrsRoomId_
    , _rrsLanguage = Nothing
    , _rrsOauthToken = Nothing
    , _rrsFields = Nothing
    , _rrsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrsQuotaUser :: Lens' RoomsReportStatus' (Maybe Text)
rrsQuotaUser
  = lens _rrsQuotaUser (\ s a -> s{_rrsQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrsPrettyPrint :: Lens' RoomsReportStatus' Bool
rrsPrettyPrint
  = lens _rrsPrettyPrint
      (\ s a -> s{_rrsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrsUserIp :: Lens' RoomsReportStatus' (Maybe Text)
rrsUserIp
  = lens _rrsUserIp (\ s a -> s{_rrsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrsKey :: Lens' RoomsReportStatus' (Maybe Text)
rrsKey = lens _rrsKey (\ s a -> s{_rrsKey = a})

-- | The ID of the room.
rrsRoomId :: Lens' RoomsReportStatus' Text
rrsRoomId
  = lens _rrsRoomId (\ s a -> s{_rrsRoomId = a})

-- | The preferred language to use for strings returned by this method.
rrsLanguage :: Lens' RoomsReportStatus' (Maybe Text)
rrsLanguage
  = lens _rrsLanguage (\ s a -> s{_rrsLanguage = a})

-- | OAuth 2.0 token for the current user.
rrsOauthToken :: Lens' RoomsReportStatus' (Maybe Text)
rrsOauthToken
  = lens _rrsOauthToken
      (\ s a -> s{_rrsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrsFields :: Lens' RoomsReportStatus' (Maybe Text)
rrsFields
  = lens _rrsFields (\ s a -> s{_rrsFields = a})

-- | Data format for the response.
rrsAlt :: Lens' RoomsReportStatus' Alt
rrsAlt = lens _rrsAlt (\ s a -> s{_rrsAlt = a})

instance GoogleRequest RoomsReportStatus' where
        type Rs RoomsReportStatus' = RoomStatus
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsReportStatus'{..}
          = go _rrsQuotaUser (Just _rrsPrettyPrint) _rrsUserIp
              _rrsKey
              _rrsRoomId
              _rrsLanguage
              _rrsOauthToken
              _rrsFields
              (Just _rrsAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoomsReportStatusResource)
                      r
                      u
