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
    -- * Resources
      GroupsMigration
    , ArchiveAPI
    , ArchiveInsert

    -- * Types

    -- ** Groups
    , Groups
    , groups
    , gKind
    , gResponseCode
    ) where

import           Network.Google.GroupsMigration.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type GroupsMigration = ArchiveAPI

type ArchiveAPI = ArchiveInsert

-- | Inserts a new mail into the archive of the Google group.
type ArchiveInsert =
     "groups" :> "v1" :> "groups" :>
       Capture "groupId" Text
       :> "archive"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
