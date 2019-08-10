{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FactCheckTools.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FactCheckTools.Types
    (
    -- * Service Configuration
      factCheckToolsService

    -- * OAuth Scopes
    , userInfoEmailScope

    -- * GoogleFactcheckingFactchecktoolsV1alpha1Claim
    , GoogleFactcheckingFactchecktoolsV1alpha1Claim
    , googleFactcheckingFactchecktoolsV1alpha1Claim
    , gffvcText
    , gffvcClaimReview
    , gffvcClaimDate
    , gffvcClaimant

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    , googleFactcheckingFactchecktoolsV1alpha1ClaimRating
    , gffvcrWorstRating
    , gffvcrRatingValue
    , gffvcrImageURL
    , gffvcrBestRating
    , gffvcrTextualRating

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    , googleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    , gffvcraImageURL
    , gffvcraName

    -- * GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    , GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    , googleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    , gffvfccsrNextPageToken
    , gffvfccsrClaims

    -- * GoogleProtobufEmpty
    , GoogleProtobufEmpty
    , googleProtobufEmpty

    -- * GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    , GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    , googleFactcheckingFactchecktoolsV1alpha1Publisher
    , gffvpName
    , gffvpSite

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    , googleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    , gffvcaSameAs
    , gffvcaImageURL
    , gffvcaName
    , gffvcaJobTitle

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    , googleFactcheckingFactchecktoolsV1alpha1ClaimReview
    , gLanguageCode
    , gURL
    , gTextualRating
    , gTitle
    , gPublisher
    , gReviewDate

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
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

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    , GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    , googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    , gffvcrmpVersionId
    , gffvcrmpPublishDate
    , gffvcrmpName
    , gffvcrmpClaimReviewAuthor
    , gffvcrmpPageURL
    , gffvcrmpClaimReviewMarkups

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    , GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    , googleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    , gffvlcrmprNextPageToken
    , gffvlcrmprClaimReviewMarkupPages
    ) where

import           Network.Google.FactCheckTools.Types.Product
import           Network.Google.FactCheckTools.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1alpha1' of the Fact Check Tools API. This contains the host and root path used as a starting point for constructing service requests.
factCheckToolsService :: ServiceConfig
factCheckToolsService
  = defaultService
      (ServiceId "factchecktools:v1alpha1")
      "factchecktools.googleapis.com"

-- | View your email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy
