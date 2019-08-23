{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploy and manage user provided container images that scale
-- automatically based on HTTP traffic.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run API Reference>
module Network.Google.Run
    (
    -- * Service Configuration
      runService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , RunAPI

    -- * Resources

    -- ** run.projects.locations.get
    , module Network.Google.Resource.Run.Projects.Locations.Get

    -- * Types

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Xgafv
    , Xgafv (..)

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Run.Projects.Locations.Get
import           Network.Google.Run.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Run API service.
type RunAPI = ProjectsLocationsGetResource
