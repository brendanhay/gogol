{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GroupsMigration
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Groups Migration API allows domain administrators to archive emails into Google groups.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference>
module Gogol.GroupsMigration
  ( -- * Configuration
    groupsMigrationService,

    -- * OAuth Scopes
    Apps'Groups'Migration,

    -- * Resources

    -- ** groupsmigration.archive.insert
    GroupsMigrationArchiveInsertResource,
    GroupsMigrationArchiveInsert (..),
    newGroupsMigrationArchiveInsert,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Groups
    Groups (..),
    newGroups,
  )
where

import Gogol.GroupsMigration.Archive.Insert
import Gogol.GroupsMigration.Types
