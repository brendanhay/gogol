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
-- Module      : Network.Google.Resource.GamesManagement.Quests.ResetAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all player progress on all quests for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementQuestsResetAll@.
module Network.Google.Resource.GamesManagement.Quests.ResetAll
    (
    -- * REST Resource
      QuestsResetAllResource

    -- * Creating a Request
    , questsResetAll'
    , QuestsResetAll'

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementQuestsResetAll@ method which the
-- 'QuestsResetAll'' request conforms to.
type QuestsResetAllResource =
     "quests" :>
       "reset" :>
         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on all quests for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'questsResetAll'' smart constructor.
data QuestsResetAll' =
    QuestsResetAll'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetAll'' with the minimum fields required to make a request.
--
questsResetAll'
    :: QuestsResetAll'
questsResetAll' = QuestsResetAll'

instance GoogleRequest QuestsResetAll' where
        type Rs QuestsResetAll' = ()
        requestClient QuestsResetAll'{..}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy QuestsResetAllResource)
                      mempty
