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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the leaderboard configuration with the given
-- ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.get@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
    (
    -- * REST Resource
      LeaderboardConfigurationsGetResource

    -- * Creating a Request
    , leaderboardConfigurationsGet
    , LeaderboardConfigurationsGet

    -- * Request Lenses
    , lcgLeaderboardId
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.get@ method which the
-- 'LeaderboardConfigurationsGet' request conforms to.
type LeaderboardConfigurationsGetResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "alt" AltJSON :>
           Get '[JSON] LeaderboardConfiguration

-- | Retrieves the metadata of the leaderboard configuration with the given
-- ID.
--
-- /See:/ 'leaderboardConfigurationsGet' smart constructor.
newtype LeaderboardConfigurationsGet = LeaderboardConfigurationsGet
    { _lcgLeaderboardId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcgLeaderboardId'
leaderboardConfigurationsGet
    :: Text -- ^ 'lcgLeaderboardId'
    -> LeaderboardConfigurationsGet
leaderboardConfigurationsGet pLcgLeaderboardId_ =
    LeaderboardConfigurationsGet
    { _lcgLeaderboardId = pLcgLeaderboardId_
    }

-- | The ID of the leaderboard.
lcgLeaderboardId :: Lens' LeaderboardConfigurationsGet Text
lcgLeaderboardId
  = lens _lcgLeaderboardId
      (\ s a -> s{_lcgLeaderboardId = a})

instance GoogleRequest LeaderboardConfigurationsGet
         where
        type Rs LeaderboardConfigurationsGet =
             LeaderboardConfiguration
        requestClient LeaderboardConfigurationsGet{..}
          = go _lcgLeaderboardId (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy :: Proxy LeaderboardConfigurationsGetResource)
                      mempty
