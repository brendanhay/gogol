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
-- Module      : Network.Google.Resource.Games.Applications.Played
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Indicate that the the currently authenticated user is playing your
-- application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.applications.played@.
module Network.Google.Resource.Games.Applications.Played
    (
    -- * REST Resource
      ApplicationsPlayedResource

    -- * Creating a Request
    , applicationsPlayed
    , ApplicationsPlayed

    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.applications.played@ method which the
-- 'ApplicationsPlayed' request conforms to.
type ApplicationsPlayedResource =
     "games" :>
       "v1" :>
         "applications" :>
           "played" :>
             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Indicate that the the currently authenticated user is playing your
-- application.
--
-- /See:/ 'applicationsPlayed' smart constructor.
data ApplicationsPlayed =
    ApplicationsPlayed
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsPlayed' with the minimum fields required to make a request.
--
applicationsPlayed
    :: ApplicationsPlayed
applicationsPlayed = ApplicationsPlayed

instance GoogleRequest ApplicationsPlayed where
        type Rs ApplicationsPlayed = ()
        requestClient ApplicationsPlayed{}
          = go (Just AltJSON) gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsPlayedResource)
                      mempty
