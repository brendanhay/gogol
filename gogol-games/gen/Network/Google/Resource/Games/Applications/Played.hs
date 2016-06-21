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
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- * Request Lenses
    , apConsistencyToken
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
             QueryParam "consistencyToken" (Textual Int64) :>
               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Indicate that the the currently authenticated user is playing your
-- application.
--
-- /See:/ 'applicationsPlayed' smart constructor.
newtype ApplicationsPlayed = ApplicationsPlayed'
    { _apConsistencyToken :: Maybe (Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsPlayed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apConsistencyToken'
applicationsPlayed
    :: ApplicationsPlayed
applicationsPlayed =
    ApplicationsPlayed'
    { _apConsistencyToken = Nothing
    }

-- | The last-seen mutation timestamp.
apConsistencyToken :: Lens' ApplicationsPlayed (Maybe Int64)
apConsistencyToken
  = lens _apConsistencyToken
      (\ s a -> s{_apConsistencyToken = a})
      . mapping _Coerce

instance GoogleRequest ApplicationsPlayed where
        type Rs ApplicationsPlayed = ()
        type Scopes ApplicationsPlayed =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient ApplicationsPlayed'{..}
          = go _apConsistencyToken (Just AltJSON) gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsPlayedResource)
                      mempty
