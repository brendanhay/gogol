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
-- Module      : Network.Google.FactCheckTools
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
--
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference>
module Network.Google.FactCheckTools
  ( -- * Configuration
    factCheckToolsService,

    -- * OAuth Scopes
    userinfoEmailScope,

    -- * Resources

    -- ** factchecktools.claims.search
    FactCheckToolsClaimsSearchResource,
    newFactCheckToolsClaimsSearch,
    FactCheckToolsClaimsSearch,

    -- ** factchecktools.pages.create
    FactCheckToolsPagesCreateResource,
    newFactCheckToolsPagesCreate,
    FactCheckToolsPagesCreate,

    -- ** factchecktools.pages.delete
    FactCheckToolsPagesDeleteResource,
    newFactCheckToolsPagesDelete,
    FactCheckToolsPagesDelete,

    -- ** factchecktools.pages.get
    FactCheckToolsPagesGetResource,
    newFactCheckToolsPagesGet,
    FactCheckToolsPagesGet,

    -- ** factchecktools.pages.list
    FactCheckToolsPagesListResource,
    newFactCheckToolsPagesList,
    FactCheckToolsPagesList,

    -- ** factchecktools.pages.update
    FactCheckToolsPagesUpdateResource,
    newFactCheckToolsPagesUpdate,
    FactCheckToolsPagesUpdate,

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

import Network.Google.FactCheckTools.Claims.Search
import Network.Google.FactCheckTools.Pages.Create
import Network.Google.FactCheckTools.Pages.Delete
import Network.Google.FactCheckTools.Pages.Get
import Network.Google.FactCheckTools.Pages.List
import Network.Google.FactCheckTools.Pages.Update
import Network.Google.FactCheckTools.Types
