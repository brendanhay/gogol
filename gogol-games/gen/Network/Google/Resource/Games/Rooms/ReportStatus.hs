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
-- Module      : Network.Google.Resource.Games.Rooms.ReportStatus
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates sent by a client reporting the status of peers in a room. For
-- internal use by the Games SDK only. Calling this method directly is
-- unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.reportStatus@.
module Network.Google.Resource.Games.Rooms.ReportStatus
    (
    -- * REST Resource
      RoomsReportStatusResource

    -- * Creating a Request
    , roomsReportStatus
    , RoomsReportStatus

    -- * Request Lenses
    , rrsPayload
    , rrsRoomId
    , rrsLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.rooms.reportStatus@ method which the
-- 'RoomsReportStatus' request conforms to.
type RoomsReportStatusResource =
     "games" :>
       "v1" :>
         "rooms" :>
           Capture "roomId" Text :>
             "reportstatus" :>
               QueryParam "language" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] RoomP2PStatuses :>
                     Post '[JSON] RoomStatus

-- | Updates sent by a client reporting the status of peers in a room. For
-- internal use by the Games SDK only. Calling this method directly is
-- unsupported.
--
-- /See:/ 'roomsReportStatus' smart constructor.
data RoomsReportStatus =
  RoomsReportStatus'
    { _rrsPayload  :: !RoomP2PStatuses
    , _rrsRoomId   :: !Text
    , _rrsLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RoomsReportStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsPayload'
--
-- * 'rrsRoomId'
--
-- * 'rrsLanguage'
roomsReportStatus
    :: RoomP2PStatuses -- ^ 'rrsPayload'
    -> Text -- ^ 'rrsRoomId'
    -> RoomsReportStatus
roomsReportStatus pRrsPayload_ pRrsRoomId_ =
  RoomsReportStatus'
    { _rrsPayload = pRrsPayload_
    , _rrsRoomId = pRrsRoomId_
    , _rrsLanguage = Nothing
    }

-- | Multipart request metadata.
rrsPayload :: Lens' RoomsReportStatus RoomP2PStatuses
rrsPayload
  = lens _rrsPayload (\ s a -> s{_rrsPayload = a})

-- | The ID of the room.
rrsRoomId :: Lens' RoomsReportStatus Text
rrsRoomId
  = lens _rrsRoomId (\ s a -> s{_rrsRoomId = a})

-- | The preferred language to use for strings returned by this method.
rrsLanguage :: Lens' RoomsReportStatus (Maybe Text)
rrsLanguage
  = lens _rrsLanguage (\ s a -> s{_rrsLanguage = a})

instance GoogleRequest RoomsReportStatus where
        type Rs RoomsReportStatus = RoomStatus
        type Scopes RoomsReportStatus =
             '["https://www.googleapis.com/auth/games"]
        requestClient RoomsReportStatus'{..}
          = go _rrsRoomId _rrsLanguage (Just AltJSON)
              _rrsPayload
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy RoomsReportStatusResource)
                      mempty
