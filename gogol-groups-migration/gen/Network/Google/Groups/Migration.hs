{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Groups.Migration
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Groups Migration Api.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference>
module Network.Google.Groups.Migration
    (
    -- * REST Resources

    -- ** Groups Migration API
      GroupsMigration
    , groupsMigration
    , groupsMigrationURL

    -- ** groupsmigration.archive.insert
    , module Network.Google.API.GroupsMigration.Archive.Insert

    -- * Types

    -- ** Alt
    , Alt (..)

    -- ** Groups
    , Groups
    , groups
    , gKind
    , gResponseCode
    ) where

import           Network.Google.API.GroupsMigration.Archive.Insert
import           Network.Google.Groups.Migration.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type GroupsMigration = ArchiveInsertAPI

groupsMigration :: Proxy GroupsMigration
groupsMigration = Proxy
