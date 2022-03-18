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
-- Module      : Gogol.PlayCustomApp.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PlayCustomApp.Internal.Product
  ( -- * CustomApp
    CustomApp (..),
    newCustomApp,

    -- * Organization
    Organization (..),
    newOrganization,
  )
where

import Gogol.PlayCustomApp.Internal.Sum
import qualified Gogol.Prelude as Core

-- | This resource represents a custom app.
--
-- /See:/ 'newCustomApp' smart constructor.
data CustomApp = CustomApp
  { -- | Default listing language in BCP 47 format.
    languageCode :: (Core.Maybe Core.Text),
    -- | Organizations to which the custom app should be made available. If the request contains any organizations, then the app will be restricted to only these organizations. To support the organization linked to the developer account, the organization ID should be provided explicitly together with other organizations. If no organizations are provided, then the app is only available to the organization linked to the developer account.
    organizations :: (Core.Maybe [Organization]),
    -- | Output only. Package name of the created Android app. Only present in the API response.
    packageName :: (Core.Maybe Core.Text),
    -- | Title for the Android app.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomApp' with the minimum fields required to make a request.
newCustomApp ::
  CustomApp
newCustomApp =
  CustomApp
    { languageCode = Core.Nothing,
      organizations = Core.Nothing,
      packageName = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON CustomApp where
  parseJSON =
    Core.withObject
      "CustomApp"
      ( \o ->
          CustomApp
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "organizations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON CustomApp where
  toJSON CustomApp {..} =
    Core.object
      ( Core.catMaybes
          [ ("languageCode" Core..=) Core.<$> languageCode,
            ("organizations" Core..=) Core.<$> organizations,
            ("packageName" Core..=) Core.<$> packageName,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Represents an organization that can access a custom app.
--
-- /See:/ 'newOrganization' smart constructor.
data Organization = Organization
  { -- | Required. ID of the organization.
    organizationId :: (Core.Maybe Core.Text),
    -- | Optional. A human-readable name of the organization, to help recognize the organization.
    organizationName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Organization' with the minimum fields required to make a request.
newOrganization ::
  Organization
newOrganization =
  Organization {organizationId = Core.Nothing, organizationName = Core.Nothing}

instance Core.FromJSON Organization where
  parseJSON =
    Core.withObject
      "Organization"
      ( \o ->
          Organization
            Core.<$> (o Core..:? "organizationId")
            Core.<*> (o Core..:? "organizationName")
      )

instance Core.ToJSON Organization where
  toJSON Organization {..} =
    Core.object
      ( Core.catMaybes
          [ ("organizationId" Core..=) Core.<$> organizationId,
            ("organizationName" Core..=)
              Core.<$> organizationName
          ]
      )
