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
-- Module      : Gogol.Fonts.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Fonts.Types
  ( -- * Configuration
    fontsService,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Axis
    Axis (..),
    newAxis,

    -- ** Webfont
    Webfont (..),
    newWebfont,

    -- ** Webfont_Files
    Webfont_Files (..),
    newWebfont_Files,

    -- ** WebfontList
    WebfontList (..),
    newWebfontList,

    -- ** WebfontsListCapability
    WebfontsListCapability (..),

    -- ** WebfontsListSort
    WebfontsListSort (..),
  )
where

import Gogol.Fonts.Internal.Product
import Gogol.Fonts.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Web Fonts Developer API. This contains the host and root path used as a starting point for constructing service requests.
fontsService :: Core.ServiceConfig
fontsService =
  Core.defaultService
    (Core.ServiceId "webfonts:v1")
    "webfonts.googleapis.com"
