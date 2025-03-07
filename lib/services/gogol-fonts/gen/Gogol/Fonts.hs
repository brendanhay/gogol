{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Fonts
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Web Fonts Developer API lets you retrieve information about web fonts served by Google.
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Web Fonts Developer API Reference>
module Gogol.Fonts
  ( -- * Configuration
    fontsService,

    -- * Resources

    -- ** webfonts.webfonts.list
    WebfontsWebfontsListResource,
    WebfontsWebfontsList (..),
    newWebfontsWebfontsList,

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

import Gogol.Fonts.Types
import Gogol.Fonts.Webfonts.List
