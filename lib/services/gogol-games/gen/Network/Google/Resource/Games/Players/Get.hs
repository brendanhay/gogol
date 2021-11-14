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
-- Module      : Network.Google.Resource.Games.Players.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the Player resource with the given ID. To retrieve the player
-- for the currently authenticated user, set \`playerId\` to \`me\`.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.players.get@.
module Network.Google.Resource.Games.Players.Get
    (
    -- * REST Resource
      PlayersGetResource

    -- * Creating a Request
    , playersGet
    , PlayersGet

    -- * Request Lenses
    , pgXgafv
    , pgUploadProtocol
    , pgAccessToken
    , pgUploadType
    , pgLanguage
    , pgPlayerId
    , pgCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.players.get@ method which the
-- 'PlayersGet' request conforms to.
type PlayersGetResource =
     "games" :>
       "v1" :>
         "players" :>
           Capture "playerId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "language" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Player

-- | Retrieves the Player resource with the given ID. To retrieve the player
-- for the currently authenticated user, set \`playerId\` to \`me\`.
--
-- /See:/ 'playersGet' smart constructor.
data PlayersGet =
  PlayersGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgAccessToken :: !(Maybe Text)
    , _pgUploadType :: !(Maybe Text)
    , _pgLanguage :: !(Maybe Text)
    , _pgPlayerId :: !Text
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgUploadProtocol'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgLanguage'
--
-- * 'pgPlayerId'
--
-- * 'pgCallback'
playersGet
    :: Text -- ^ 'pgPlayerId'
    -> PlayersGet
playersGet pPgPlayerId_ =
  PlayersGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgLanguage = Nothing
    , _pgPlayerId = pPgPlayerId_
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' PlayersGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PlayersGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | OAuth access token.
pgAccessToken :: Lens' PlayersGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PlayersGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | The preferred language to use for strings returned by this method.
pgLanguage :: Lens' PlayersGet (Maybe Text)
pgLanguage
  = lens _pgLanguage (\ s a -> s{_pgLanguage = a})

-- | A player ID. A value of \`me\` may be used in place of the authenticated
-- player\'s ID.
pgPlayerId :: Lens' PlayersGet Text
pgPlayerId
  = lens _pgPlayerId (\ s a -> s{_pgPlayerId = a})

-- | JSONP
pgCallback :: Lens' PlayersGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PlayersGet where
        type Rs PlayersGet = Player
        type Scopes PlayersGet =
             '["https://www.googleapis.com/auth/games"]
        requestClient PlayersGet'{..}
          = go _pgPlayerId _pgXgafv _pgUploadProtocol
              _pgAccessToken
              _pgUploadType
              _pgLanguage
              _pgCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy PlayersGetResource)
                      mempty
