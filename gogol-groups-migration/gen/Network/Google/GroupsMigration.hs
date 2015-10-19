{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GroupsMigration
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Groups Migration Api.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference>
module Network.Google.GroupsMigration
    (
    -- * Service Configuration
      groupsMigrationService

    -- * API Declaration
    , GroupsMigrationAPI

    -- * Resources

    -- ** GroupsmigrationArchiveInsert
    , module Network.Google.Resource.GroupsMigration.Archive.Insert

    -- * Types

    -- ** Groups
    , Groups
    , groups
    , gKind
    , gResponseCode
    ) where

import           Network.Google.GroupsMigration.Types
import           Network.Google.Prelude
import           Network.Google.Resource.GroupsMigration.Archive.Insert

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Groups Migration API service.
type GroupsMigrationAPI = ArchiveInsertResource
