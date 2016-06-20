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
-- Module      : Network.Google.Resource.Games.Metagame.GetMetagameConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return the metagame configuration data for the calling application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.metagame.getMetagameConfig@.
module Network.Google.Resource.Games.Metagame.GetMetagameConfig
    (
    -- * REST Resource
      MetagameGetMetagameConfigResource

    -- * Creating a Request
    , metagameGetMetagameConfig
    , MetagameGetMetagameConfig

    -- * Request Lenses
    , mgmcConsistencyToken
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.metagame.getMetagameConfig@ method which the
-- 'MetagameGetMetagameConfig' request conforms to.
type MetagameGetMetagameConfigResource =
     "games" :>
       "v1" :>
         "metagameConfig" :>
           QueryParam "consistencyToken" (Textual Int64) :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] MetagameConfig

-- | Return the metagame configuration data for the calling application.
--
-- /See:/ 'metagameGetMetagameConfig' smart constructor.
newtype MetagameGetMetagameConfig = MetagameGetMetagameConfig'
    { _mgmcConsistencyToken :: Maybe (Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetagameGetMetagameConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgmcConsistencyToken'
metagameGetMetagameConfig
    :: MetagameGetMetagameConfig
metagameGetMetagameConfig =
    MetagameGetMetagameConfig'
    { _mgmcConsistencyToken = Nothing
    }

-- | The last-seen mutation timestamp.
mgmcConsistencyToken :: Lens' MetagameGetMetagameConfig (Maybe Int64)
mgmcConsistencyToken
  = lens _mgmcConsistencyToken
      (\ s a -> s{_mgmcConsistencyToken = a})
      . mapping _Coerce

instance GoogleRequest MetagameGetMetagameConfig
         where
        type Rs MetagameGetMetagameConfig = MetagameConfig
        type Scopes MetagameGetMetagameConfig =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient MetagameGetMetagameConfig'{..}
          = go _mgmcConsistencyToken (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy MetagameGetMetagameConfigResource)
                      mempty
