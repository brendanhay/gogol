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
-- Module      : Network.Google.Resource.GamesManagement.Quests.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all player progress on the quest with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.quests.reset@.
module Network.Google.Resource.GamesManagement.Quests.Reset
    (
    -- * REST Resource
      QuestsResetResource

    -- * Creating a Request
    , questsReset
    , QuestsReset

    -- * Request Lenses
    , qrQuestId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.quests.reset@ method which the
-- 'QuestsReset' request conforms to.
type QuestsResetResource =
     "games" :>
       "v1management" :>
         "quests" :>
           Capture "questId" Text :>
             "reset" :>
               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on the quest with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application.
--
-- /See:/ 'questsReset' smart constructor.
newtype QuestsReset = QuestsReset
    { _qrQuestId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrQuestId'
questsReset
    :: Text -- ^ 'qrQuestId'
    -> QuestsReset
questsReset pQrQuestId_ =
    QuestsReset
    { _qrQuestId = pQrQuestId_
    }

-- | The ID of the quest.
qrQuestId :: Lens' QuestsReset Text
qrQuestId
  = lens _qrQuestId (\ s a -> s{_qrQuestId = a})

instance GoogleRequest QuestsReset where
        type Rs QuestsReset = ()
        requestClient QuestsReset{..}
          = go _qrQuestId (Just AltJSON) gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy QuestsResetResource)
                      mempty
