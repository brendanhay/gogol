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
-- Module      : Gogol.FactCheckTools
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
--
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference>
module Gogol.FactCheckTools
  ( -- * Configuration
    factCheckToolsService,

    -- * OAuth Scopes
    Userinfo'Email,

    -- * Resources

    -- ** factchecktools.claims.search
    FactCheckToolsClaimsSearchResource,
    FactCheckToolsClaimsSearch (..),
    newFactCheckToolsClaimsSearch,

    -- ** factchecktools.pages.create
    FactCheckToolsPagesCreateResource,
    FactCheckToolsPagesCreate (..),
    newFactCheckToolsPagesCreate,

    -- ** factchecktools.pages.delete
    FactCheckToolsPagesDeleteResource,
    FactCheckToolsPagesDelete (..),
    newFactCheckToolsPagesDelete,

    -- ** factchecktools.pages.get
    FactCheckToolsPagesGetResource,
    FactCheckToolsPagesGet (..),
    newFactCheckToolsPagesGet,

    -- ** factchecktools.pages.list
    FactCheckToolsPagesListResource,
    FactCheckToolsPagesList (..),
    newFactCheckToolsPagesList,

    -- ** factchecktools.pages.update
    FactCheckToolsPagesUpdateResource,
    FactCheckToolsPagesUpdate (..),
    newFactCheckToolsPagesUpdate,

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

import Gogol.FactCheckTools.Claims.Search
import Gogol.FactCheckTools.Pages.Create
import Gogol.FactCheckTools.Pages.Delete
import Gogol.FactCheckTools.Pages.Get
import Gogol.FactCheckTools.Pages.List
import Gogol.FactCheckTools.Pages.Update
import Gogol.FactCheckTools.Types
