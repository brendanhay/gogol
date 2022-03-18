{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GroupsMigration
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Groups Migration API allows domain administrators to archive emails into Google groups.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference>
module Gogol.GroupsMigration
    (
    -- * Configuration
      groupsMigrationService

    -- * OAuth Scopes
    , appsGroupsMigrationScope

    -- * Resources

    -- ** groupsmigration.archive.insert
    , GroupsMigrationArchiveInsertResource
    , newGroupsMigrationArchiveInsert
    , GroupsMigrationArchiveInsert

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Groups
    , Groups (..)
    , newGroups
    ) where

import Gogol.GroupsMigration.Archive.Insert
import Gogol.GroupsMigration.Types
