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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the event with the given ID for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- can be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.resetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers
    (
    -- * REST Resource
      EventsResetForAllPlayersResource

    -- * Creating a Request
    , eventsResetForAllPlayers
    , EventsResetForAllPlayers

    -- * Request Lenses
    , erfapXgafv
    , erfapUploadProtocol
    , erfapAccessToken
    , erfapUploadType
    , erfapEventId
    , erfapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.resetForAllPlayers@ method which the
-- 'EventsResetForAllPlayers' request conforms to.
type EventsResetForAllPlayersResource =
     "games" :>
       "v1management" :>
         "events" :>
           Capture "eventId" Text :>
             "resetForAllPlayers" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets the event with the given ID for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- can be reset.
--
-- /See:/ 'eventsResetForAllPlayers' smart constructor.
data EventsResetForAllPlayers =
  EventsResetForAllPlayers'
    { _erfapXgafv :: !(Maybe Xgafv)
    , _erfapUploadProtocol :: !(Maybe Text)
    , _erfapAccessToken :: !(Maybe Text)
    , _erfapUploadType :: !(Maybe Text)
    , _erfapEventId :: !Text
    , _erfapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsResetForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erfapXgafv'
--
-- * 'erfapUploadProtocol'
--
-- * 'erfapAccessToken'
--
-- * 'erfapUploadType'
--
-- * 'erfapEventId'
--
-- * 'erfapCallback'
eventsResetForAllPlayers
    :: Text -- ^ 'erfapEventId'
    -> EventsResetForAllPlayers
eventsResetForAllPlayers pErfapEventId_ =
  EventsResetForAllPlayers'
    { _erfapXgafv = Nothing
    , _erfapUploadProtocol = Nothing
    , _erfapAccessToken = Nothing
    , _erfapUploadType = Nothing
    , _erfapEventId = pErfapEventId_
    , _erfapCallback = Nothing
    }


-- | V1 error format.
erfapXgafv :: Lens' EventsResetForAllPlayers (Maybe Xgafv)
erfapXgafv
  = lens _erfapXgafv (\ s a -> s{_erfapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
erfapUploadProtocol :: Lens' EventsResetForAllPlayers (Maybe Text)
erfapUploadProtocol
  = lens _erfapUploadProtocol
      (\ s a -> s{_erfapUploadProtocol = a})

-- | OAuth access token.
erfapAccessToken :: Lens' EventsResetForAllPlayers (Maybe Text)
erfapAccessToken
  = lens _erfapAccessToken
      (\ s a -> s{_erfapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
erfapUploadType :: Lens' EventsResetForAllPlayers (Maybe Text)
erfapUploadType
  = lens _erfapUploadType
      (\ s a -> s{_erfapUploadType = a})

-- | The ID of the event.
erfapEventId :: Lens' EventsResetForAllPlayers Text
erfapEventId
  = lens _erfapEventId (\ s a -> s{_erfapEventId = a})

-- | JSONP
erfapCallback :: Lens' EventsResetForAllPlayers (Maybe Text)
erfapCallback
  = lens _erfapCallback
      (\ s a -> s{_erfapCallback = a})

instance GoogleRequest EventsResetForAllPlayers where
        type Rs EventsResetForAllPlayers = ()
        type Scopes EventsResetForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsResetForAllPlayers'{..}
          = go _erfapEventId _erfapXgafv _erfapUploadProtocol
              _erfapAccessToken
              _erfapUploadType
              _erfapCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsResetForAllPlayersResource)
                      mempty
