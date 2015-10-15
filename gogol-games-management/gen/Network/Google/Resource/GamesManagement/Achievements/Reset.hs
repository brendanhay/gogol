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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets the achievement with the given ID for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementAchievementsReset@.
module Network.Google.Resource.GamesManagement.Achievements.Reset
    (
    -- * REST Resource
      AchievementsResetResource

    -- * Creating a Request
    , achievementsReset'
    , AchievementsReset'

    -- * Request Lenses
    , arAchievementId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementAchievementsReset@ method which the
-- 'AchievementsReset'' request conforms to.
type AchievementsResetResource =
     "achievements" :>
       Capture "achievementId" Text :>
         "reset" :>
           QueryParam "alt" AltJSON :>
             Post '[JSON] AchievementResetResponse

-- | Resets the achievement with the given ID for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'achievementsReset'' smart constructor.
newtype AchievementsReset' = AchievementsReset'
    { _arAchievementId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arAchievementId'
achievementsReset'
    :: Text -- ^ 'achievementId'
    -> AchievementsReset'
achievementsReset' pArAchievementId_ =
    AchievementsReset'
    { _arAchievementId = pArAchievementId_
    }

-- | The ID of the achievement used by this method.
arAchievementId :: Lens' AchievementsReset' Text
arAchievementId
  = lens _arAchievementId
      (\ s a -> s{_arAchievementId = a})

instance GoogleRequest AchievementsReset' where
        type Rs AchievementsReset' = AchievementResetResponse
        requestClient AchievementsReset'{..}
          = go _arAchievementId (Just AltJSON) gamesManagement
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsResetResource)
                      mempty
