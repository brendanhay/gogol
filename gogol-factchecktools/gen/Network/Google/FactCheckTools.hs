{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FactCheckTools
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference>
module Network.Google.FactCheckTools
    (
    -- * Service Configuration
      factCheckToolsService

    -- * OAuth Scopes
    , userInfoEmailScope

    -- * API Declaration
    , FactCheckToolsAPI

    -- * Resources

    -- ** factchecktools.claims.search
    , module Network.Google.Resource.FactCheckTools.Claims.Search

    -- ** factchecktools.pages.create
    , module Network.Google.Resource.FactCheckTools.Pages.Create

    -- ** factchecktools.pages.delete
    , module Network.Google.Resource.FactCheckTools.Pages.Delete

    -- ** factchecktools.pages.get
    , module Network.Google.Resource.FactCheckTools.Pages.Get

    -- ** factchecktools.pages.list
    , module Network.Google.Resource.FactCheckTools.Pages.List

    -- ** factchecktools.pages.update
    , module Network.Google.Resource.FactCheckTools.Pages.Update

    -- * Types

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1Claim
    , GoogleFactcheckingFactchecktoolsV1alpha1Claim
    , googleFactcheckingFactchecktoolsV1alpha1Claim
    , gffvcText
    , gffvcClaimReview
    , gffvcClaimDate
    , gffvcClaimant

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    , googleFactcheckingFactchecktoolsV1alpha1ClaimRating
    , gffvcrWorstRating
    , gffvcrRatingExplanation
    , gffvcrRatingValue
    , gffvcrImageURL
    , gffvcrBestRating
    , gffvcrTextualRating

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    , googleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    , gffvcraImageURL
    , gffvcraName

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    , GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    , googleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    , gffvfccsrNextPageToken
    , gffvfccsrClaims

    -- ** GoogleProtobufEmpty
    , GoogleProtobufEmpty
    , googleProtobufEmpty

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    , GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    , googleFactcheckingFactchecktoolsV1alpha1Publisher
    , gffvpName
    , gffvpSite

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    , googleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    , gffvcaSameAs
    , gffvcaImageURL
    , gffvcaName
    , gffvcaJobTitle

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    , googleFactcheckingFactchecktoolsV1alpha1ClaimReview
    , gLanguageCode
    , gURL
    , gTextualRating
    , gTitle
    , gPublisher
    , gReviewDate

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    , googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    , gffvcrmRating
    , gffvcrmClaimAuthor
    , gffvcrmURL
    , gffvcrmClaimAppearances
    , gffvcrmClaimLocation
    , gffvcrmClaimFirstAppearance
    , gffvcrmClaimDate
    , gffvcrmClaimReviewed

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    , googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    , gffvcrmpVersionId
    , gffvcrmpPublishDate
    , gffvcrmpName
    , gffvcrmpClaimReviewAuthor
    , gffvcrmpPageURL
    , gffvcrmpClaimReviewMarkups

    -- ** GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    , GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    , googleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    , gffvlcrmprNextPageToken
    , gffvlcrmprClaimReviewMarkupPages
    ) where

import Network.Google.Prelude
import Network.Google.FactCheckTools.Types
import Network.Google.Resource.FactCheckTools.Claims.Search
import Network.Google.Resource.FactCheckTools.Pages.Create
import Network.Google.Resource.FactCheckTools.Pages.Delete
import Network.Google.Resource.FactCheckTools.Pages.Get
import Network.Google.Resource.FactCheckTools.Pages.List
import Network.Google.Resource.FactCheckTools.Pages.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Fact Check Tools API service.
type FactCheckToolsAPI =
     PagesListResource :<|> PagesGetResource :<|>
       PagesCreateResource
       :<|> PagesDeleteResource
       :<|> PagesUpdateResource
       :<|> ClaimsSearchResource
