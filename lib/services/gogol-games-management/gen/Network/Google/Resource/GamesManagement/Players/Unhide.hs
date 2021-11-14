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
-- Module      : Network.Google.Resource.GamesManagement.Players.Unhide
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.players.unhide@.
module Network.Google.Resource.GamesManagement.Players.Unhide
    (
    -- * REST Resource
      PlayersUnhideResource

    -- * Creating a Request
    , playersUnhide
    , PlayersUnhide

    -- * Request Lenses
    , puXgafv
    , puUploadProtocol
    , puAccessToken
    , puUploadType
    , puApplicationId
    , puPlayerId
    , puCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.players.unhide@ method which the
-- 'PlayersUnhide' request conforms to.
type PlayersUnhideResource =
     "games" :>
       "v1management" :>
         "applications" :>
           Capture "applicationId" Text :>
             "players" :>
               "hidden" :>
                 Capture "playerId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
--
-- /See:/ 'playersUnhide' smart constructor.
data PlayersUnhide =
  PlayersUnhide'
    { _puXgafv :: !(Maybe Xgafv)
    , _puUploadProtocol :: !(Maybe Text)
    , _puAccessToken :: !(Maybe Text)
    , _puUploadType :: !(Maybe Text)
    , _puApplicationId :: !Text
    , _puPlayerId :: !Text
    , _puCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayersUnhide' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puApplicationId'
--
-- * 'puPlayerId'
--
-- * 'puCallback'
playersUnhide
    :: Text -- ^ 'puApplicationId'
    -> Text -- ^ 'puPlayerId'
    -> PlayersUnhide
playersUnhide pPuApplicationId_ pPuPlayerId_ =
  PlayersUnhide'
    { _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puApplicationId = pPuApplicationId_
    , _puPlayerId = pPuPlayerId_
    , _puCallback = Nothing
    }


-- | V1 error format.
puXgafv :: Lens' PlayersUnhide (Maybe Xgafv)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' PlayersUnhide (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | OAuth access token.
puAccessToken :: Lens' PlayersUnhide (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' PlayersUnhide (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | The application ID from the Google Play developer console.
puApplicationId :: Lens' PlayersUnhide Text
puApplicationId
  = lens _puApplicationId
      (\ s a -> s{_puApplicationId = a})

-- | A player ID. A value of \`me\` may be used in place of the authenticated
-- player\'s ID.
puPlayerId :: Lens' PlayersUnhide Text
puPlayerId
  = lens _puPlayerId (\ s a -> s{_puPlayerId = a})

-- | JSONP
puCallback :: Lens' PlayersUnhide (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest PlayersUnhide where
        type Rs PlayersUnhide = ()
        type Scopes PlayersUnhide =
             '["https://www.googleapis.com/auth/games"]
        requestClient PlayersUnhide'{..}
          = go _puApplicationId _puPlayerId _puXgafv
              _puUploadProtocol
              _puAccessToken
              _puUploadType
              _puCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy PlayersUnhideResource)
                      mempty
