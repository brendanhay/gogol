{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PlayCustomApp
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API to create and publish custom Android apps
--
-- /See:/ <https://developers.google.com/android/work/play/custom-app-api/ Google Play Custom App Publishing API Reference>
module Network.Google.PlayCustomApp
    (
    -- * Service Configuration
      playCustomAppService

    -- * OAuth Scopes
    , androidPublisherScope

    -- * API Declaration
    , PlayCustomAppAPI

    -- * Resources

    -- ** playcustomapp.accounts.customApps.create
    , module Network.Google.Resource.PlayCustomApp.Accounts.CustomApps.Create

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** CustomApp
    , CustomApp
    , customApp
    , caLanguageCode
    , caPackageName
    , caTitle
    ) where

import Network.Google.Prelude
import Network.Google.PlayCustomApp.Types
import Network.Google.Resource.PlayCustomApp.Accounts.CustomApps.Create

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play Custom App Publishing API service.
type PlayCustomAppAPI =
     AccountsCustomAppsCreateResource
