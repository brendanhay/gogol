{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.AppState.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppState.Types
    (
    -- * API Definition
      appstate


    -- * GetResponse
    , GetResponse
    , getResponse
    , grCurrentStateVersion
    , grKind
    , grData
    , grStateKey

    -- * ListResponse
    , ListResponse
    , listResponse
    , lrMaximumKeyCount
    , lrKind
    , lrItems

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
    ) where

import           Network.Google.AppState.Types.Product
import           Network.Google.AppState.Types.Sum
import           Network.Google.Prelude

appstate :: a
appstate = error "appstate"
