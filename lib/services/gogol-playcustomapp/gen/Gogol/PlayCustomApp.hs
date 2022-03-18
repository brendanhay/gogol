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
    (
    -- * Configuration
      playCustomAppService

    -- * OAuth Scopes
    , androidpublisherScope

    -- * Resources

    -- ** playcustomapp.accounts.customApps.create
    , PlayCustomAppAccountsCustomAppsCreateResource
    , newPlayCustomAppAccountsCustomAppsCreate
    , PlayCustomAppAccountsCustomAppsCreate

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** CustomApp
    , CustomApp (..)
    , newCustomApp

    -- ** Organization
    , Organization (..)
    , newOrganization
    ) where

import Gogol.PlayCustomApp.Accounts.CustomApps.Create
import Gogol.PlayCustomApp.Types
