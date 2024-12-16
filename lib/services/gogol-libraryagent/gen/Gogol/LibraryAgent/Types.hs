{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.LibraryAgent.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.LibraryAgent.Types
    (
    -- * Configuration
      libraryAgentService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleExampleLibraryagentV1Book
    , GoogleExampleLibraryagentV1Book (..)
    , newGoogleExampleLibraryagentV1Book

    -- ** GoogleExampleLibraryagentV1ListBooksResponse
    , GoogleExampleLibraryagentV1ListBooksResponse (..)
    , newGoogleExampleLibraryagentV1ListBooksResponse

    -- ** GoogleExampleLibraryagentV1ListShelvesResponse
    , GoogleExampleLibraryagentV1ListShelvesResponse (..)
    , newGoogleExampleLibraryagentV1ListShelvesResponse

    -- ** GoogleExampleLibraryagentV1Shelf
    , GoogleExampleLibraryagentV1Shelf (..)
    , newGoogleExampleLibraryagentV1Shelf
    ) where

import qualified Gogol.Prelude as Core
import Gogol.LibraryAgent.Internal.Product
import Gogol.LibraryAgent.Internal.Sum

-- | Default request referring to version @v1@ of the Library Agent API. This contains the host and root path used as a starting point for constructing service requests.
libraryAgentService :: Core.ServiceConfig
libraryAgentService
  = Core.defaultService
      (Core.ServiceId "libraryagent:v1")
      "libraryagent.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
