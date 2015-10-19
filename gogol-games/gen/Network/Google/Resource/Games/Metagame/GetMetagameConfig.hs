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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return the metagame configuration data for the calling application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesMetagameGetMetagameConfig@.
module Network.Google.Resource.Games.Metagame.GetMetagameConfig
    (
    -- * REST Resource
      MetagameGetMetagameConfigResource

    -- * Creating a Request
    , metagameGetMetagameConfig'
    , MetagameGetMetagameConfig'

    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesMetagameGetMetagameConfig@ method which the
-- 'MetagameGetMetagameConfig'' request conforms to.
type MetagameGetMetagameConfigResource =
     "metagameConfig" :>
       QueryParam "alt" AltJSON :>
         Get '[JSON] MetagameConfig

-- | Return the metagame configuration data for the calling application.
--
-- /See:/ 'metagameGetMetagameConfig'' smart constructor.
data MetagameGetMetagameConfig' =
    MetagameGetMetagameConfig'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetagameGetMetagameConfig'' with the minimum fields required to make a request.
--
metagameGetMetagameConfig'
    :: MetagameGetMetagameConfig'
metagameGetMetagameConfig' = MetagameGetMetagameConfig'

instance GoogleRequest MetagameGetMetagameConfig'
         where
        type Rs MetagameGetMetagameConfig' = MetagameConfig
        requestClient MetagameGetMetagameConfig'{}
          = go (Just AltJSON) gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy MetagameGetMetagameConfigResource)
                      mempty
