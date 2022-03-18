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
-- Module      : Gogol.FactCheckTools.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FactCheckTools.Internal.Product
  (

    -- * GoogleFactcheckingFactchecktoolsV1alpha1Claim
    GoogleFactcheckingFactchecktoolsV1alpha1Claim (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1Claim,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse,

    -- * GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    GoogleFactcheckingFactchecktoolsV1alpha1Publisher (..),
    newGoogleFactcheckingFactchecktoolsV1alpha1Publisher,

    -- * GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.FactCheckTools.Internal.Sum

-- | Information about the claim.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1Claim' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1Claim = GoogleFactcheckingFactchecktoolsV1alpha1Claim
    {
      -- | The date that the claim was made.
      claimDate :: (Core.Maybe Core.DateTime')
      -- | One or more reviews of this claim (namely, a fact-checking article).
    , claimReview :: (Core.Maybe [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview])
      -- | A person or organization stating the claim. For instance, \"John Doe\".
    , claimant :: (Core.Maybe Core.Text)
      -- | The claim text. For instance, \"Crime has doubled in the last 2 years.\"
    , text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1Claim' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1Claim 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1Claim
newGoogleFactcheckingFactchecktoolsV1alpha1Claim =
  GoogleFactcheckingFactchecktoolsV1alpha1Claim
    { claimDate = Core.Nothing
    , claimReview = Core.Nothing
    , claimant = Core.Nothing
    , text = Core.Nothing
    }

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1Claim
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1Claim"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1Claim
                   Core.<$>
                   (o Core..:? "claimDate") Core.<*>
                     (o Core..:? "claimReview" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "claimant")
                     Core.<*> (o Core..:? "text"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1Claim
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1Claim{..}
          = Core.object
              (Core.catMaybes
                 [("claimDate" Core..=) Core.<$> claimDate,
                  ("claimReview" Core..=) Core.<$> claimReview,
                  ("claimant" Core..=) Core.<$> claimant,
                  ("text" Core..=) Core.<$> text])


-- | Information about the claim author.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor = GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    {
      -- | Corresponds to @ClaimReview.itemReviewed.author.image@.
      imageUrl :: (Core.Maybe Core.Text)
      -- | Corresponds to @ClaimReview.itemReviewed.author.jobTitle@.
    , jobTitle :: (Core.Maybe Core.Text)
      -- | A person or organization stating the claim. For instance, \"John Doe\". Corresponds to @ClaimReview.itemReviewed.author.name@.
    , name :: (Core.Maybe Core.Text)
      -- | Corresponds to @ClaimReview.itemReviewed.author.sameAs@.
    , sameAs :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    { imageUrl = Core.Nothing
    , jobTitle = Core.Nothing
    , name = Core.Nothing
    , sameAs = Core.Nothing
    }

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
                   Core.<$>
                   (o Core..:? "imageUrl") Core.<*>
                     (o Core..:? "jobTitle")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "sameAs"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor{..}
          = Core.object
              (Core.catMaybes
                 [("imageUrl" Core..=) Core.<$> imageUrl,
                  ("jobTitle" Core..=) Core.<$> jobTitle,
                  ("name" Core..=) Core.<$> name,
                  ("sameAs" Core..=) Core.<$> sameAs])


-- | Information about the claim rating.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating = GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    {
      -- | For numeric ratings, the best value possible in the scale from worst to best. Corresponds to @ClaimReview.reviewRating.bestRating@.
      bestRating :: (Core.Maybe Core.Int32)
      -- | Corresponds to @ClaimReview.reviewRating.image@.
    , imageUrl :: (Core.Maybe Core.Text)
      -- | Corresponds to @ClaimReview.reviewRating.ratingExplanation@.
    , ratingExplanation :: (Core.Maybe Core.Text)
      -- | A numeric rating of this claim, in the range worstRating — bestRating inclusive. Corresponds to @ClaimReview.reviewRating.ratingValue@.
    , ratingValue :: (Core.Maybe Core.Int32)
      -- | The truthfulness rating as a human-readible short word or phrase. Corresponds to @ClaimReview.reviewRating.alternateName@.
    , textualRating :: (Core.Maybe Core.Text)
      -- | For numeric ratings, the worst value possible in the scale from worst to best. Corresponds to @ClaimReview.reviewRating.worstRating@.
    , worstRating :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    { bestRating = Core.Nothing
    , imageUrl = Core.Nothing
    , ratingExplanation = Core.Nothing
    , ratingValue = Core.Nothing
    , textualRating = Core.Nothing
    , worstRating = Core.Nothing
    }

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
                   Core.<$>
                   (o Core..:? "bestRating") Core.<*>
                     (o Core..:? "imageUrl")
                     Core.<*> (o Core..:? "ratingExplanation")
                     Core.<*> (o Core..:? "ratingValue")
                     Core.<*> (o Core..:? "textualRating")
                     Core.<*> (o Core..:? "worstRating"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating{..}
          = Core.object
              (Core.catMaybes
                 [("bestRating" Core..=) Core.<$> bestRating,
                  ("imageUrl" Core..=) Core.<$> imageUrl,
                  ("ratingExplanation" Core..=) Core.<$>
                    ratingExplanation,
                  ("ratingValue" Core..=) Core.<$> ratingValue,
                  ("textualRating" Core..=) Core.<$> textualRating,
                  ("worstRating" Core..=) Core.<$> worstRating])


-- | Information about a claim review.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview = GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    {
      -- | The language this review was written in. For instance, \"en\" or \"de\".
      languageCode :: (Core.Maybe Core.Text)
      -- | The publisher of this claim review.
    , publisher :: (Core.Maybe GoogleFactcheckingFactchecktoolsV1alpha1Publisher)
      -- | The date the claim was reviewed.
    , reviewDate :: (Core.Maybe Core.DateTime')
      -- | Textual rating. For instance, \"Mostly false\".
    , textualRating :: (Core.Maybe Core.Text)
      -- | The title of this claim review, if it can be determined.
    , title :: (Core.Maybe Core.Text)
      -- | The URL of this claim review.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    { languageCode = Core.Nothing
    , publisher = Core.Nothing
    , reviewDate = Core.Nothing
    , textualRating = Core.Nothing
    , title = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
                   Core.<$>
                   (o Core..:? "languageCode") Core.<*>
                     (o Core..:? "publisher")
                     Core.<*> (o Core..:? "reviewDate")
                     Core.<*> (o Core..:? "textualRating")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview{..}
          = Core.object
              (Core.catMaybes
                 [("languageCode" Core..=) Core.<$> languageCode,
                  ("publisher" Core..=) Core.<$> publisher,
                  ("reviewDate" Core..=) Core.<$> reviewDate,
                  ("textualRating" Core..=) Core.<$> textualRating,
                  ("title" Core..=) Core.<$> title,
                  ("url" Core..=) Core.<$> url])


-- | Information about the claim review author.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor = GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    {
      -- | Corresponds to @ClaimReview.author.image@.
      imageUrl :: (Core.Maybe Core.Text)
      -- | Name of the organization that is publishing the fact check. Corresponds to @ClaimReview.author.name@.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    {imageUrl = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
                   Core.<$>
                   (o Core..:? "imageUrl") Core.<*> (o Core..:? "name"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor{..}
          = Core.object
              (Core.catMaybes
                 [("imageUrl" Core..=) Core.<$> imageUrl,
                  ("name" Core..=) Core.<$> name])


-- | Fields for an individual @ClaimReview@ element. Except for sub-messages that group fields together, each of these fields correspond those in https:\/\/schema.org\/ClaimReview. We list the precise mapping for each field.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup = GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    {
      -- | A list of links to works in which this claim appears, aside from the one specified in @claim_first_appearance@. Corresponds to @ClaimReview.itemReviewed[\@type=Claim].appearance.url@.
      claimAppearances :: (Core.Maybe [Core.Text])
      -- | Info about the author of this claim.
    , claimAuthor :: (Core.Maybe GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor)
      -- | The date when the claim was made or entered public discourse. Corresponds to @ClaimReview.itemReviewed.datePublished@.
    , claimDate :: (Core.Maybe Core.Text)
      -- | A link to a work in which this claim first appears. Corresponds to @ClaimReview.itemReviewed[\@type=Claim].firstAppearance.url@.
    , claimFirstAppearance :: (Core.Maybe Core.Text)
      -- | The location where this claim was made. Corresponds to @ClaimReview.itemReviewed.name@.
    , claimLocation :: (Core.Maybe Core.Text)
      -- | A short summary of the claim being evaluated. Corresponds to @ClaimReview.claimReviewed@.
    , claimReviewed :: (Core.Maybe Core.Text)
      -- | Info about the rating of this claim review.
    , rating :: (Core.Maybe GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating)
      -- | This field is optional, and will default to the page URL. We provide this field to allow you the override the default value, but the only permitted override is the page URL plus an optional anchor link (\"page jump\"). Corresponds to @ClaimReview.url@
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    { claimAppearances = Core.Nothing
    , claimAuthor = Core.Nothing
    , claimDate = Core.Nothing
    , claimFirstAppearance = Core.Nothing
    , claimLocation = Core.Nothing
    , claimReviewed = Core.Nothing
    , rating = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
                   Core.<$>
                   (o Core..:? "claimAppearances" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "claimAuthor")
                     Core.<*> (o Core..:? "claimDate")
                     Core.<*> (o Core..:? "claimFirstAppearance")
                     Core.<*> (o Core..:? "claimLocation")
                     Core.<*> (o Core..:? "claimReviewed")
                     Core.<*> (o Core..:? "rating")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup{..}
          = Core.object
              (Core.catMaybes
                 [("claimAppearances" Core..=) Core.<$>
                    claimAppearances,
                  ("claimAuthor" Core..=) Core.<$> claimAuthor,
                  ("claimDate" Core..=) Core.<$> claimDate,
                  ("claimFirstAppearance" Core..=) Core.<$>
                    claimFirstAppearance,
                  ("claimLocation" Core..=) Core.<$> claimLocation,
                  ("claimReviewed" Core..=) Core.<$> claimReviewed,
                  ("rating" Core..=) Core.<$> rating,
                  ("url" Core..=) Core.<$> url])


-- | Holds one or more instances of @ClaimReview@ markup for a webpage.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage = GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    {
      -- | Info about the author of this claim review. Similar to the above, semantically these are page-level fields, and each @ClaimReview@ on this page will contain the same values.
      claimReviewAuthor :: (Core.Maybe
   GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor)
      -- | A list of individual claim reviews for this page. Each item in the list corresponds to one @ClaimReview@ element.
    , claimReviewMarkups :: (Core.Maybe
   [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup])
      -- | The name of this @ClaimReview@ markup page resource, in the form of @pages\/{page_id}@. Except for update requests, this field is output-only and should not be set by the user.
    , name :: (Core.Maybe Core.Text)
      -- | The URL of the page associated with this @ClaimReview@ markup. While every individual @ClaimReview@ has its own URL field, semantically this is a page-level field, and each @ClaimReview@ on this page will use this value unless individually overridden. Corresponds to @ClaimReview.url@
    , pageUrl :: (Core.Maybe Core.Text)
      -- | The date when the fact check was published. Similar to the URL, semantically this is a page-level field, and each @ClaimReview@ on this page will contain the same value. Corresponds to @ClaimReview.datePublished@
    , publishDate :: (Core.Maybe Core.Text)
      -- | The version ID for this markup. Except for update requests, this field is output-only and should not be set by the user.
    , versionId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
newGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    { claimReviewAuthor = Core.Nothing
    , claimReviewMarkups = Core.Nothing
    , name = Core.Nothing
    , pageUrl = Core.Nothing
    , publishDate = Core.Nothing
    , versionId = Core.Nothing
    }

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
                   Core.<$>
                   (o Core..:? "claimReviewAuthor") Core.<*>
                     (o Core..:? "claimReviewMarkups" Core..!=
                        Core.mempty)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "pageUrl")
                     Core.<*> (o Core..:? "publishDate")
                     Core.<*> (o Core..:? "versionId"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage{..}
          = Core.object
              (Core.catMaybes
                 [("claimReviewAuthor" Core..=) Core.<$>
                    claimReviewAuthor,
                  ("claimReviewMarkups" Core..=) Core.<$>
                    claimReviewMarkups,
                  ("name" Core..=) Core.<$> name,
                  ("pageUrl" Core..=) Core.<$> pageUrl,
                  ("publishDate" Core..=) Core.<$> publishDate,
                  ("versionId" Core..=) Core.<$> versionId])


-- | Response from searching fact-checked claims.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse = GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    {
      -- | The list of claims and all of their associated information.
      claims :: (Core.Maybe [GoogleFactcheckingFactchecktoolsV1alpha1Claim])
      -- | The next pagination token in the Search response. It should be used as the @page_token@ for the following request. An empty value means no more results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
newGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse =
  GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    {claims = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
                   Core.<$>
                   (o Core..:? "claims" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse{..}
          = Core.object
              (Core.catMaybes
                 [("claims" Core..=) Core.<$> claims,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response from listing @ClaimReview@ markup.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse = GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    {
      -- | The result list of pages of @ClaimReview@ markup.
      claimReviewMarkupPages :: (Core.Maybe
   [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage])
      -- | The next pagination token in the Search response. It should be used as the @page_token@ for the following request. An empty value means no more results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
newGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse =
  GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    {claimReviewMarkupPages = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
                   Core.<$>
                   (o Core..:? "claimReviewMarkupPages" Core..!=
                      Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("claimReviewMarkupPages" Core..=) Core.<$>
                    claimReviewMarkupPages,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Information about the publisher.
--
-- /See:/ 'newGoogleFactcheckingFactchecktoolsV1alpha1Publisher' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1Publisher = GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    {
      -- | The name of this publisher. For instance, \"Awesome Fact Checks\".
      name :: (Core.Maybe Core.Text)
      -- | Host-level site name, without the protocol or \"www\" prefix. For instance, \"awesomefactchecks.com\". This value of this field is based purely on the claim review URL.
    , site :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1Publisher' with the minimum fields required to make a request.
newGoogleFactcheckingFactchecktoolsV1alpha1Publisher 
    ::  GoogleFactcheckingFactchecktoolsV1alpha1Publisher
newGoogleFactcheckingFactchecktoolsV1alpha1Publisher =
  GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    {name = Core.Nothing, site = Core.Nothing}

instance Core.FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1Publisher
         where
        parseJSON
          = Core.withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1Publisher"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1Publisher
                   Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "site"))

instance Core.ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1Publisher
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1Publisher{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("site" Core..=) Core.<$> site])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newGoogleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty = GoogleProtobufEmpty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
newGoogleProtobufEmpty 
    ::  GoogleProtobufEmpty
newGoogleProtobufEmpty = GoogleProtobufEmpty

instance Core.FromJSON GoogleProtobufEmpty where
        parseJSON
          = Core.withObject "GoogleProtobufEmpty"
              (\ o -> Core.pure GoogleProtobufEmpty)

instance Core.ToJSON GoogleProtobufEmpty where
        toJSON = Core.const Core.emptyObject

