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
-- Module      : Gogol.FactCheckTools.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FactCheckTools.Types
  ( -- * Configuration
    factCheckToolsService,

    -- * OAuth Scopes
    Userinfo'Email,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1Claim
    GoogleFactcheckingFactchecktoolsV1alpha1Claim (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1Claim,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse,

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    GoogleFactcheckingFactchecktoolsV1alpha1Publisher (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1Publisher,

    -- ** GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,
  )
where

import Gogol.FactCheckTools.Internal.Product
import Gogol.FactCheckTools.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1alpha1@ of the Fact Check Tools API. This contains the host and root path used as a starting point for constructing service requests.
factCheckToolsService :: Core.ServiceConfig
factCheckToolsService =
  Core.defaultService
    (Core.ServiceId "factchecktools:v1alpha1")
    "factchecktools.googleapis.com"

-- | See your primary Google Account email address
type Userinfo'Email = "https://www.googleapis.com/auth/userinfo.email"
