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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.update@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update
    (
    -- * REST Resource
      LeaderboardConfigurationsUpdateResource

    -- * Creating a Request
    , leaderboardConfigurationsUpdate
    , LeaderboardConfigurationsUpdate

    -- * Request Lenses
    , lcuPayload
    , lcuLeaderboardId
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.update@ method which the
-- 'LeaderboardConfigurationsUpdate' request conforms to.
type LeaderboardConfigurationsUpdateResource =
     "games" :>
       "v1configuration" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] LeaderboardConfiguration :>
                 Put '[JSON] LeaderboardConfiguration

-- | Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ 'leaderboardConfigurationsUpdate' smart constructor.
data LeaderboardConfigurationsUpdate =
  LeaderboardConfigurationsUpdate'
    { _lcuPayload       :: !LeaderboardConfiguration
    , _lcuLeaderboardId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LeaderboardConfigurationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcuPayload'
--
-- * 'lcuLeaderboardId'
leaderboardConfigurationsUpdate
    :: LeaderboardConfiguration -- ^ 'lcuPayload'
    -> Text -- ^ 'lcuLeaderboardId'
    -> LeaderboardConfigurationsUpdate
leaderboardConfigurationsUpdate pLcuPayload_ pLcuLeaderboardId_ =
  LeaderboardConfigurationsUpdate'
    {_lcuPayload = pLcuPayload_, _lcuLeaderboardId = pLcuLeaderboardId_}

-- | Multipart request metadata.
lcuPayload :: Lens' LeaderboardConfigurationsUpdate LeaderboardConfiguration
lcuPayload
  = lens _lcuPayload (\ s a -> s{_lcuPayload = a})

-- | The ID of the leaderboard.
lcuLeaderboardId :: Lens' LeaderboardConfigurationsUpdate Text
lcuLeaderboardId
  = lens _lcuLeaderboardId
      (\ s a -> s{_lcuLeaderboardId = a})

instance GoogleRequest
           LeaderboardConfigurationsUpdate
         where
        type Rs LeaderboardConfigurationsUpdate =
             LeaderboardConfiguration
        type Scopes LeaderboardConfigurationsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient LeaderboardConfigurationsUpdate'{..}
          = go _lcuLeaderboardId (Just AltJSON) _lcuPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LeaderboardConfigurationsUpdateResource)
                      mempty
