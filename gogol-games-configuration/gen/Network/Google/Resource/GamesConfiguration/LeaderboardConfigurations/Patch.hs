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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the metadata of the leaderboard configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.patch@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Patch
    (
    -- * REST Resource
      LeaderboardConfigurationsPatchResource

    -- * Creating a Request
    , leaderboardConfigurationsPatch
    , LeaderboardConfigurationsPatch

    -- * Request Lenses
    , lcpPayload
    , lcpLeaderboardId
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.patch@ method which the
-- 'LeaderboardConfigurationsPatch' request conforms to.
type LeaderboardConfigurationsPatchResource =
     "games" :>
       "v1configuration" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] LeaderboardConfiguration :>
                 Patch '[JSON] LeaderboardConfiguration

-- | Update the metadata of the leaderboard configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ 'leaderboardConfigurationsPatch' smart constructor.
data LeaderboardConfigurationsPatch = LeaderboardConfigurationsPatch
    { _lcpPayload       :: !LeaderboardConfiguration
    , _lcpLeaderboardId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardConfigurationsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpPayload'
--
-- * 'lcpLeaderboardId'
leaderboardConfigurationsPatch
    :: LeaderboardConfiguration -- ^ 'lcpPayload'
    -> Text -- ^ 'lcpLeaderboardId'
    -> LeaderboardConfigurationsPatch
leaderboardConfigurationsPatch pLcpPayload_ pLcpLeaderboardId_ =
    LeaderboardConfigurationsPatch
    { _lcpPayload = pLcpPayload_
    , _lcpLeaderboardId = pLcpLeaderboardId_
    }

-- | Multipart request metadata.
lcpPayload :: Lens' LeaderboardConfigurationsPatch LeaderboardConfiguration
lcpPayload
  = lens _lcpPayload (\ s a -> s{_lcpPayload = a})

-- | The ID of the leaderboard.
lcpLeaderboardId :: Lens' LeaderboardConfigurationsPatch Text
lcpLeaderboardId
  = lens _lcpLeaderboardId
      (\ s a -> s{_lcpLeaderboardId = a})

instance GoogleRequest LeaderboardConfigurationsPatch
         where
        type Rs LeaderboardConfigurationsPatch =
             LeaderboardConfiguration
        requestClient LeaderboardConfigurationsPatch{..}
          = go _lcpLeaderboardId (Just AltJSON) _lcpPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LeaderboardConfigurationsPatchResource)
                      mempty
