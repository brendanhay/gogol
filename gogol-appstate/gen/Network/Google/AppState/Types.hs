{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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
    -- * Service URL
      appStateRequest

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
    ) where

import           Network.Google.AppState.Types.Product
import           Network.Google.AppState.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google App State API.
appStateRequest :: RequestBuilder
appStateRequest
  = defaultRequest "https://www.googleapis.com/"
      "appstate/v1/"
