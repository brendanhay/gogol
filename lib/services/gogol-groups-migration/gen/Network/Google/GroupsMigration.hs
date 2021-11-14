{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GroupsMigration
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Groups Migration API allows domain administrators to archive emails
-- into Google groups.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference>
module Network.Google.GroupsMigration
    (
    -- * Service Configuration
      groupsMigrationService

    -- * OAuth Scopes
    , appsGroupsMigrationScope

    -- * API Declaration
    , GroupsMigrationAPI

    -- * Resources

    -- ** groupsmigration.archive.insert
    , module Network.Google.Resource.GroupsMigration.Archive.Insert

    -- * Types

    -- ** Groups
    , Groups
    , groups
    , gKind
    , gResponseCode

    -- ** Xgafv
    , Xgafv (..)
    ) where

import Network.Google.Prelude
import Network.Google.GroupsMigration.Types
import Network.Google.Resource.GroupsMigration.Archive.Insert

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Groups Migration API service.
type GroupsMigrationAPI = ArchiveInsertResource
