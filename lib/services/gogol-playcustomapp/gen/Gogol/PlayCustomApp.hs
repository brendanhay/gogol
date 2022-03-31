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
-- Module      : Gogol.PlayCustomApp
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API to create and publish custom Android apps
--
-- /See:/ <https://developers.google.com/android/work/play/custom-app-api/ Google Play Custom App Publishing API Reference>
module Gogol.PlayCustomApp
  ( -- * Configuration
    playCustomAppService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,

    -- * Resources

    -- ** playcustomapp.accounts.customApps.create
    PlayCustomAppAccountsCustomAppsCreateResource,
    newPlayCustomAppAccountsCustomAppsCreate,
    PlayCustomAppAccountsCustomAppsCreate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CustomApp
    CustomApp (..),
    newCustomApp,

    -- ** Organization
    Organization (..),
    newOrganization,
  )
where

import Gogol.PlayCustomApp.Accounts.CustomApps.Create
import Gogol.PlayCustomApp.Types
