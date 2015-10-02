{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | Groups Migration Api.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference>
module Network.Google.GroupsMigration
    (
    -- * API
      GroupsMigrationAPI
    , groupsMigrationAPI
    , groupsMigrationURL

    -- * Service Methods

    -- * REST Resources

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

type GroupsMigrationAPI = ArchiveInsertResource

groupsMigrationAPI :: Proxy GroupsMigrationAPI
groupsMigrationAPI = Proxy
