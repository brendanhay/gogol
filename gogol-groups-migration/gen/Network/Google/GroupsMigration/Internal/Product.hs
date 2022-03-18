{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.GroupsMigration.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.GroupsMigration.Internal.Product
  ( -- * Groups
    Groups (..),
    newGroups,
  )
where

import Network.Google.GroupsMigration.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | JSON response template for groups migration API.
--
-- /See:/ 'newGroups' smart constructor.
data Groups = Groups
  { -- | The kind of insert resource this is.
    kind :: (Core.Maybe Core.Text),
    -- | The status of the insert request.
    responseCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Groups' with the minimum fields required to make a request.
newGroups ::
  Groups
newGroups = Groups {kind = Core.Nothing, responseCode = Core.Nothing}

instance Core.FromJSON Groups where
  parseJSON =
    Core.withObject
      "Groups"
      ( \o ->
          Groups
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "responseCode")
      )

instance Core.ToJSON Groups where
  toJSON Groups {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("responseCode" Core..=) Core.<$> responseCode
          ]
      )
