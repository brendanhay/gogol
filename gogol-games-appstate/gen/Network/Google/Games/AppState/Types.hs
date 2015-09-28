{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Games.AppState.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Games.AppState.Types
    (
    -- * Service URL
      gamesAppStateURL

    -- * Alt
    , Alt (..)

    -- * GetResponse
    , GetResponse
    , getResponse
    , grCurrentStateVersion
    , grKind
    , grData
    , grStateKey

    -- * UpdateRequest
    , UpdateRequest
    , updateRequest
    , urKind
    , urData

    -- * WriteResult
    , WriteResult
    , writeResult
    , wrCurrentStateVersion
    , wrKind
    , wrStateKey

    -- * ListResponse
    , ListResponse
    , listResponse
    , lrMaximumKeyCount
    , lrKind
    , lrItems
    ) where

import           Network.Google.Games.AppState.Types.Product
import           Network.Google.Games.AppState.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google App State API.
gamesAppStateURL :: BaseUrl
gamesAppStateURL
  = BaseUrl Https
      "https://www.googleapis.com/appstate/v1/"
      443
