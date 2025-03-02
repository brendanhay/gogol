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
-- Module      : Gogol.Fonts.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Fonts.Types
    (
    -- * Configuration
      fontsService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Axis
    , Axis (..)
    , newAxis

    -- ** Webfont
    , Webfont (..)
    , newWebfont

    -- ** Webfont_Files
    , Webfont_Files (..)
    , newWebfont_Files

    -- ** WebfontList
    , WebfontList (..)
    , newWebfontList

    -- ** WebfontsListCapability
    , WebfontsListCapability (..)

    -- ** WebfontsListSort
    , WebfontsListSort (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Fonts.Internal.Product
import Gogol.Fonts.Internal.Sum

-- | Default request referring to version @v1@ of the Web Fonts Developer API. This contains the host and root path used as a starting point for constructing service requests.
fontsService :: Core.ServiceConfig
fontsService
  = Core.defaultService (Core.ServiceId "webfonts:v1")
      "webfonts.googleapis.com"
