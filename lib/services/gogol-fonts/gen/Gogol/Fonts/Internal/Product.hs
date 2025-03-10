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
-- Module      : Gogol.Fonts.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Fonts.Internal.Product
  ( -- * Axis
    Axis (..),
    newAxis,

    -- * Webfont
    Webfont (..),
    newWebfont,

    -- * Webfont_Files
    Webfont_Files (..),
    newWebfont_Files,

    -- * WebfontList
    WebfontList (..),
    newWebfontList,
  )
where

import Gogol.Fonts.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Metadata for a variable font axis.
--
-- /See:/ 'newAxis' smart constructor.
data Axis = Axis
  { -- | maximum value
    end :: (Core.Maybe Core.Double),
    -- | minimum value
    start :: (Core.Maybe Core.Double),
    -- | tag name.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Axis' with the minimum fields required to make a request.
newAxis ::
  Axis
newAxis =
  Axis
    { end = Core.Nothing,
      start = Core.Nothing,
      tag = Core.Nothing
    }

instance Core.FromJSON Axis where
  parseJSON =
    Core.withObject
      "Axis"
      ( \o ->
          Axis
            Core.<$> (o Core..:? "end")
            Core.<*> (o Core..:? "start")
            Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON Axis where
  toJSON Axis {..} =
    Core.object
      ( Core.catMaybes
          [ ("end" Core..=) Core.<$> end,
            ("start" Core..=) Core.<$> start,
            ("tag" Core..=) Core.<$> tag
          ]
      )

-- | Metadata describing a family of fonts.
--
-- /See:/ 'newWebfont' smart constructor.
data Webfont = Webfont
  { -- | Axis for variable fonts.
    axes :: (Core.Maybe [Axis]),
    -- | The category of the font.
    category :: (Core.Maybe Core.Text),
    -- | The color format(s) available for this family.
    colorCapabilities :: (Core.Maybe [Core.Text]),
    -- | The name of the font.
    family :: (Core.Maybe Core.Text),
    -- | The font files (with all supported scripts) for each one of the available variants, as a key : value map.
    files :: (Core.Maybe Webfont_Files),
    -- | This kind represents a webfont object in the webfonts service.
    kind :: (Core.Maybe Core.Text),
    -- | The date (format \"yyyy-MM-dd\") the font was modified for the last time.
    lastModified :: (Core.Maybe Core.Text),
    -- | Font URL for menu subset, a subset of the font that is enough to display the font name
    menu :: (Core.Maybe Core.Text),
    -- | The scripts supported by the font.
    subsets :: (Core.Maybe [Core.Text]),
    -- | The available variants for the font.
    variants :: (Core.Maybe [Core.Text]),
    -- | The font version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Webfont' with the minimum fields required to make a request.
newWebfont ::
  Webfont
newWebfont =
  Webfont
    { axes = Core.Nothing,
      category = Core.Nothing,
      colorCapabilities = Core.Nothing,
      family = Core.Nothing,
      files = Core.Nothing,
      kind = Core.Nothing,
      lastModified = Core.Nothing,
      menu = Core.Nothing,
      subsets = Core.Nothing,
      variants = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Webfont where
  parseJSON =
    Core.withObject
      "Webfont"
      ( \o ->
          Webfont
            Core.<$> (o Core..:? "axes")
            Core.<*> (o Core..:? "category")
            Core.<*> (o Core..:? "colorCapabilities")
            Core.<*> (o Core..:? "family")
            Core.<*> (o Core..:? "files")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "lastModified")
            Core.<*> (o Core..:? "menu")
            Core.<*> (o Core..:? "subsets")
            Core.<*> (o Core..:? "variants")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Webfont where
  toJSON Webfont {..} =
    Core.object
      ( Core.catMaybes
          [ ("axes" Core..=) Core.<$> axes,
            ("category" Core..=) Core.<$> category,
            ("colorCapabilities" Core..=) Core.<$> colorCapabilities,
            ("family" Core..=) Core.<$> family,
            ("files" Core..=) Core.<$> files,
            ("kind" Core..=) Core.<$> kind,
            ("lastModified" Core..=) Core.<$> lastModified,
            ("menu" Core..=) Core.<$> menu,
            ("subsets" Core..=) Core.<$> subsets,
            ("variants" Core..=) Core.<$> variants,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | The font files (with all supported scripts) for each one of the available variants, as a key : value map.
--
-- /See:/ 'newWebfont_Files' smart constructor.
newtype Webfont_Files = Webfont_Files
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Webfont_Files' with the minimum fields required to make a request.
newWebfont_Files ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Webfont_Files
newWebfont_Files additional =
  Webfont_Files {additional = additional}

instance Core.FromJSON Webfont_Files where
  parseJSON =
    Core.withObject
      "Webfont_Files"
      (\o -> Webfont_Files Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Webfont_Files where
  toJSON Webfont_Files {..} = Core.toJSON additional

-- | Response containing the list of fonts currently served by the Google Fonts API.
--
-- /See:/ 'newWebfontList' smart constructor.
data WebfontList = WebfontList
  { -- | The list of fonts currently served by the Google Fonts API.
    items :: (Core.Maybe [Webfont]),
    -- | This kind represents a list of webfont objects in the webfonts service.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebfontList' with the minimum fields required to make a request.
newWebfontList ::
  WebfontList
newWebfontList =
  WebfontList {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON WebfontList where
  parseJSON =
    Core.withObject
      "WebfontList"
      ( \o ->
          WebfontList
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON WebfontList where
  toJSON WebfontList {..} =
    Core.object
      ( Core.catMaybes
          [("items" Core..=) Core.<$> items, ("kind" Core..=) Core.<$> kind]
      )
