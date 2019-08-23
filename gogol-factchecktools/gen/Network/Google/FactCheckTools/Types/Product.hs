{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FactCheckTools.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FactCheckTools.Types.Product where

import           Network.Google.FactCheckTools.Types.Sum
import           Network.Google.Prelude

-- | Information about the claim.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1Claim' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1Claim =
  GoogleFactcheckingFactchecktoolsV1alpha1Claim'
    { _gffvcText        :: !(Maybe Text)
    , _gffvcClaimReview :: !(Maybe [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview])
    , _gffvcClaimDate   :: !(Maybe DateTime')
    , _gffvcClaimant    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1Claim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvcText'
--
-- * 'gffvcClaimReview'
--
-- * 'gffvcClaimDate'
--
-- * 'gffvcClaimant'
googleFactcheckingFactchecktoolsV1alpha1Claim
    :: GoogleFactcheckingFactchecktoolsV1alpha1Claim
googleFactcheckingFactchecktoolsV1alpha1Claim =
  GoogleFactcheckingFactchecktoolsV1alpha1Claim'
    { _gffvcText = Nothing
    , _gffvcClaimReview = Nothing
    , _gffvcClaimDate = Nothing
    , _gffvcClaimant = Nothing
    }


-- | The claim text. For instance, \"Crime has doubled in the last 2 years.\"
gffvcText :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1Claim (Maybe Text)
gffvcText
  = lens _gffvcText (\ s a -> s{_gffvcText = a})

-- | One or more reviews of this claim (namely, a fact-checking article).
gffvcClaimReview :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1Claim [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview]
gffvcClaimReview
  = lens _gffvcClaimReview
      (\ s a -> s{_gffvcClaimReview = a})
      . _Default
      . _Coerce

-- | The date that the claim was made.
gffvcClaimDate :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1Claim (Maybe UTCTime)
gffvcClaimDate
  = lens _gffvcClaimDate
      (\ s a -> s{_gffvcClaimDate = a})
      . mapping _DateTime

-- | A person or organization stating the claim. For instance, \"John Doe\".
gffvcClaimant :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1Claim (Maybe Text)
gffvcClaimant
  = lens _gffvcClaimant
      (\ s a -> s{_gffvcClaimant = a})

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1Claim
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1Claim"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1Claim' <$>
                   (o .:? "text") <*> (o .:? "claimReview" .!= mempty)
                     <*> (o .:? "claimDate")
                     <*> (o .:? "claimant"))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1Claim
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1Claim'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gffvcText,
                  ("claimReview" .=) <$> _gffvcClaimReview,
                  ("claimDate" .=) <$> _gffvcClaimDate,
                  ("claimant" .=) <$> _gffvcClaimant])

-- | Information about the claim rating.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1ClaimRating' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating'
    { _gffvcrWorstRating   :: !(Maybe (Textual Int32))
    , _gffvcrRatingValue   :: !(Maybe (Textual Int32))
    , _gffvcrImageURL      :: !(Maybe Text)
    , _gffvcrBestRating    :: !(Maybe (Textual Int32))
    , _gffvcrTextualRating :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvcrWorstRating'
--
-- * 'gffvcrRatingValue'
--
-- * 'gffvcrImageURL'
--
-- * 'gffvcrBestRating'
--
-- * 'gffvcrTextualRating'
googleFactcheckingFactchecktoolsV1alpha1ClaimRating
    :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
googleFactcheckingFactchecktoolsV1alpha1ClaimRating =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating'
    { _gffvcrWorstRating = Nothing
    , _gffvcrRatingValue = Nothing
    , _gffvcrImageURL = Nothing
    , _gffvcrBestRating = Nothing
    , _gffvcrTextualRating = Nothing
    }


-- | For numeric ratings, the worst value possible in the scale from worst to
-- best.
-- Corresponds to \`ClaimReview.reviewRating.worstRating\`.
gffvcrWorstRating :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating (Maybe Int32)
gffvcrWorstRating
  = lens _gffvcrWorstRating
      (\ s a -> s{_gffvcrWorstRating = a})
      . mapping _Coerce

-- | A numeric rating of this claim, in the range worstRating — bestRating
-- inclusive.
-- Corresponds to \`ClaimReview.reviewRating.ratingValue\`.
gffvcrRatingValue :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating (Maybe Int32)
gffvcrRatingValue
  = lens _gffvcrRatingValue
      (\ s a -> s{_gffvcrRatingValue = a})
      . mapping _Coerce

-- | Corresponds to \`ClaimReview.reviewRating.image\`.
gffvcrImageURL :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating (Maybe Text)
gffvcrImageURL
  = lens _gffvcrImageURL
      (\ s a -> s{_gffvcrImageURL = a})

-- | For numeric ratings, the best value possible in the scale from worst to
-- best.
-- Corresponds to \`ClaimReview.reviewRating.bestRating\`.
gffvcrBestRating :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating (Maybe Int32)
gffvcrBestRating
  = lens _gffvcrBestRating
      (\ s a -> s{_gffvcrBestRating = a})
      . mapping _Coerce

-- | The truthfulness rating as a human-readible short word or phrase.
-- Corresponds to \`ClaimReview.reviewRating.alternateName\`.
gffvcrTextualRating :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating (Maybe Text)
gffvcrTextualRating
  = lens _gffvcrTextualRating
      (\ s a -> s{_gffvcrTextualRating = a})

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating'
                   <$>
                   (o .:? "worstRating") <*> (o .:? "ratingValue") <*>
                     (o .:? "imageUrl")
                     <*> (o .:? "bestRating")
                     <*> (o .:? "textualRating"))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating'{..}
          = object
              (catMaybes
                 [("worstRating" .=) <$> _gffvcrWorstRating,
                  ("ratingValue" .=) <$> _gffvcrRatingValue,
                  ("imageUrl" .=) <$> _gffvcrImageURL,
                  ("bestRating" .=) <$> _gffvcrBestRating,
                  ("textualRating" .=) <$> _gffvcrTextualRating])

-- | Information about the claim review author.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor'
    { _gffvcraImageURL :: !(Maybe Text)
    , _gffvcraName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvcraImageURL'
--
-- * 'gffvcraName'
googleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
googleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor'
    {_gffvcraImageURL = Nothing, _gffvcraName = Nothing}


-- | Corresponds to \`ClaimReview.author.image\`.
gffvcraImageURL :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor (Maybe Text)
gffvcraImageURL
  = lens _gffvcraImageURL
      (\ s a -> s{_gffvcraImageURL = a})

-- | Name of the organization that is publishing the fact check.
-- Corresponds to \`ClaimReview.author.name\`.
gffvcraName :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor (Maybe Text)
gffvcraName
  = lens _gffvcraName (\ s a -> s{_gffvcraName = a})

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor'
                   <$> (o .:? "imageUrl") <*> (o .:? "name"))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor'{..}
          = object
              (catMaybes
                 [("imageUrl" .=) <$> _gffvcraImageURL,
                  ("name" .=) <$> _gffvcraName])

-- | Response from searching fact-checked claims.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse =
  GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse'
    { _gffvfccsrNextPageToken :: !(Maybe Text)
    , _gffvfccsrClaims        :: !(Maybe [GoogleFactcheckingFactchecktoolsV1alpha1Claim])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvfccsrNextPageToken'
--
-- * 'gffvfccsrClaims'
googleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    :: GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
googleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse =
  GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse'
    {_gffvfccsrNextPageToken = Nothing, _gffvfccsrClaims = Nothing}


-- | The next pagination token in the Search response. It should be used as
-- the \`page_token\` for the following request. An empty value means no
-- more results.
gffvfccsrNextPageToken :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse (Maybe Text)
gffvfccsrNextPageToken
  = lens _gffvfccsrNextPageToken
      (\ s a -> s{_gffvfccsrNextPageToken = a})

-- | The list of claims and all of their associated information.
gffvfccsrClaims :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse [GoogleFactcheckingFactchecktoolsV1alpha1Claim]
gffvfccsrClaims
  = lens _gffvfccsrClaims
      (\ s a -> s{_gffvfccsrClaims = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "claims" .!= mempty))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gffvfccsrNextPageToken,
                  ("claims" .=) <$> _gffvfccsrClaims])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'googleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty =
  GoogleProtobufEmpty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
--
googleProtobufEmpty
    :: GoogleProtobufEmpty
googleProtobufEmpty = GoogleProtobufEmpty'


instance FromJSON GoogleProtobufEmpty where
        parseJSON
          = withObject "GoogleProtobufEmpty"
              (\ o -> pure GoogleProtobufEmpty')

instance ToJSON GoogleProtobufEmpty where
        toJSON = const emptyObject

-- | Information about the publisher.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1Publisher' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1Publisher =
  GoogleFactcheckingFactchecktoolsV1alpha1Publisher'
    { _gffvpName :: !(Maybe Text)
    , _gffvpSite :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1Publisher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvpName'
--
-- * 'gffvpSite'
googleFactcheckingFactchecktoolsV1alpha1Publisher
    :: GoogleFactcheckingFactchecktoolsV1alpha1Publisher
googleFactcheckingFactchecktoolsV1alpha1Publisher =
  GoogleFactcheckingFactchecktoolsV1alpha1Publisher'
    {_gffvpName = Nothing, _gffvpSite = Nothing}


-- | The name of this publisher. For instance, \"Awesome Fact Checks\".
gffvpName :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1Publisher (Maybe Text)
gffvpName
  = lens _gffvpName (\ s a -> s{_gffvpName = a})

-- | Host-level site name, without the protocol or \"www\" prefix. For
-- instance, \"awesomefactchecks.com\". This value of this field is based
-- purely on the claim review URL.
gffvpSite :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1Publisher (Maybe Text)
gffvpSite
  = lens _gffvpSite (\ s a -> s{_gffvpSite = a})

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1Publisher
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1Publisher"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1Publisher'
                   <$> (o .:? "name") <*> (o .:? "site"))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1Publisher
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1Publisher'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gffvpName,
                  ("site" .=) <$> _gffvpSite])

-- | Information about the claim author.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1ClaimAuthor' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor'
    { _gffvcaSameAs   :: !(Maybe Text)
    , _gffvcaImageURL :: !(Maybe Text)
    , _gffvcaName     :: !(Maybe Text)
    , _gffvcaJobTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvcaSameAs'
--
-- * 'gffvcaImageURL'
--
-- * 'gffvcaName'
--
-- * 'gffvcaJobTitle'
googleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
googleFactcheckingFactchecktoolsV1alpha1ClaimAuthor =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor'
    { _gffvcaSameAs = Nothing
    , _gffvcaImageURL = Nothing
    , _gffvcaName = Nothing
    , _gffvcaJobTitle = Nothing
    }


-- | Corresponds to \`ClaimReview.itemReviewed.author.sameAs\`.
gffvcaSameAs :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor (Maybe Text)
gffvcaSameAs
  = lens _gffvcaSameAs (\ s a -> s{_gffvcaSameAs = a})

-- | Corresponds to \`ClaimReview.itemReviewed.author.image\`.
gffvcaImageURL :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor (Maybe Text)
gffvcaImageURL
  = lens _gffvcaImageURL
      (\ s a -> s{_gffvcaImageURL = a})

-- | A person or organization stating the claim. For instance, \"John Doe\".
-- Corresponds to \`ClaimReview.itemReviewed.author.name\`.
gffvcaName :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor (Maybe Text)
gffvcaName
  = lens _gffvcaName (\ s a -> s{_gffvcaName = a})

-- | Corresponds to \`ClaimReview.itemReviewed.author.jobTitle\`.
gffvcaJobTitle :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor (Maybe Text)
gffvcaJobTitle
  = lens _gffvcaJobTitle
      (\ s a -> s{_gffvcaJobTitle = a})

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor'
                   <$>
                   (o .:? "sameAs") <*> (o .:? "imageUrl") <*>
                     (o .:? "name")
                     <*> (o .:? "jobTitle"))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor'{..}
          = object
              (catMaybes
                 [("sameAs" .=) <$> _gffvcaSameAs,
                  ("imageUrl" .=) <$> _gffvcaImageURL,
                  ("name" .=) <$> _gffvcaName,
                  ("jobTitle" .=) <$> _gffvcaJobTitle])

-- | Information about a claim review.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1ClaimReview' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview'
    { _gLanguageCode  :: !(Maybe Text)
    , _gURL           :: !(Maybe Text)
    , _gTextualRating :: !(Maybe Text)
    , _gTitle         :: !(Maybe Text)
    , _gPublisher     :: !(Maybe GoogleFactcheckingFactchecktoolsV1alpha1Publisher)
    , _gReviewDate    :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gLanguageCode'
--
-- * 'gURL'
--
-- * 'gTextualRating'
--
-- * 'gTitle'
--
-- * 'gPublisher'
--
-- * 'gReviewDate'
googleFactcheckingFactchecktoolsV1alpha1ClaimReview
    :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
googleFactcheckingFactchecktoolsV1alpha1ClaimReview =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview'
    { _gLanguageCode = Nothing
    , _gURL = Nothing
    , _gTextualRating = Nothing
    , _gTitle = Nothing
    , _gPublisher = Nothing
    , _gReviewDate = Nothing
    }


-- | The language this review was written in. For instance, \"en\" or \"de\".
gLanguageCode :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview (Maybe Text)
gLanguageCode
  = lens _gLanguageCode
      (\ s a -> s{_gLanguageCode = a})

-- | The URL of this claim review.
gURL :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview (Maybe Text)
gURL = lens _gURL (\ s a -> s{_gURL = a})

-- | Textual rating. For instance, \"Mostly false\".
gTextualRating :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview (Maybe Text)
gTextualRating
  = lens _gTextualRating
      (\ s a -> s{_gTextualRating = a})

-- | The title of this claim review, if it can be determined.
gTitle :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview (Maybe Text)
gTitle = lens _gTitle (\ s a -> s{_gTitle = a})

-- | The publisher of this claim review.
gPublisher :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview (Maybe GoogleFactcheckingFactchecktoolsV1alpha1Publisher)
gPublisher
  = lens _gPublisher (\ s a -> s{_gPublisher = a})

-- | The date the claim was reviewed.
gReviewDate :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview (Maybe UTCTime)
gReviewDate
  = lens _gReviewDate (\ s a -> s{_gReviewDate = a}) .
      mapping _DateTime

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "url") <*>
                     (o .:? "textualRating")
                     <*> (o .:? "title")
                     <*> (o .:? "publisher")
                     <*> (o .:? "reviewDate"))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gLanguageCode,
                  ("url" .=) <$> _gURL,
                  ("textualRating" .=) <$> _gTextualRating,
                  ("title" .=) <$> _gTitle,
                  ("publisher" .=) <$> _gPublisher,
                  ("reviewDate" .=) <$> _gReviewDate])

-- | Fields for an individual \`ClaimReview\` element. Except for
-- sub-messages that group fields together, each of these fields correspond
-- those in https:\/\/schema.org\/ClaimReview. We list the precise mapping
-- for each field.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup'
    { _gffvcrmRating               :: !(Maybe GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating)
    , _gffvcrmClaimAuthor          :: !(Maybe GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor)
    , _gffvcrmURL                  :: !(Maybe Text)
    , _gffvcrmClaimAppearances     :: !(Maybe [Text])
    , _gffvcrmClaimLocation        :: !(Maybe Text)
    , _gffvcrmClaimFirstAppearance :: !(Maybe Text)
    , _gffvcrmClaimDate            :: !(Maybe Text)
    , _gffvcrmClaimReviewed        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvcrmRating'
--
-- * 'gffvcrmClaimAuthor'
--
-- * 'gffvcrmURL'
--
-- * 'gffvcrmClaimAppearances'
--
-- * 'gffvcrmClaimLocation'
--
-- * 'gffvcrmClaimFirstAppearance'
--
-- * 'gffvcrmClaimDate'
--
-- * 'gffvcrmClaimReviewed'
googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup'
    { _gffvcrmRating = Nothing
    , _gffvcrmClaimAuthor = Nothing
    , _gffvcrmURL = Nothing
    , _gffvcrmClaimAppearances = Nothing
    , _gffvcrmClaimLocation = Nothing
    , _gffvcrmClaimFirstAppearance = Nothing
    , _gffvcrmClaimDate = Nothing
    , _gffvcrmClaimReviewed = Nothing
    }


-- | Info about the rating of this claim review.
gffvcrmRating :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (Maybe GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating)
gffvcrmRating
  = lens _gffvcrmRating
      (\ s a -> s{_gffvcrmRating = a})

-- | Info about the author of this claim.
gffvcrmClaimAuthor :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (Maybe GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor)
gffvcrmClaimAuthor
  = lens _gffvcrmClaimAuthor
      (\ s a -> s{_gffvcrmClaimAuthor = a})

-- | This field is optional, and will default to the page URL. We provide
-- this field to allow you the override the default value, but the only
-- permitted override is the page URL plus an optional anchor link (\"page
-- jump\").
-- Corresponds to \`ClaimReview.url\`
gffvcrmURL :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (Maybe Text)
gffvcrmURL
  = lens _gffvcrmURL (\ s a -> s{_gffvcrmURL = a})

-- | A list of links to works in which this claim appears, aside from the one
-- specified in \`claim_first_appearance\`.
-- Corresponds to
-- \`ClaimReview.itemReviewed[\'type=Claim].appearance.url\`.
gffvcrmClaimAppearances :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup [Text]
gffvcrmClaimAppearances
  = lens _gffvcrmClaimAppearances
      (\ s a -> s{_gffvcrmClaimAppearances = a})
      . _Default
      . _Coerce

-- | The location where this claim was made.
-- Corresponds to \`ClaimReview.itemReviewed.name\`.
gffvcrmClaimLocation :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (Maybe Text)
gffvcrmClaimLocation
  = lens _gffvcrmClaimLocation
      (\ s a -> s{_gffvcrmClaimLocation = a})

-- | A link to a work in which this claim first appears.
-- Corresponds to
-- \`ClaimReview.itemReviewed[\'type=Claim].firstAppearance.url\`.
gffvcrmClaimFirstAppearance :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (Maybe Text)
gffvcrmClaimFirstAppearance
  = lens _gffvcrmClaimFirstAppearance
      (\ s a -> s{_gffvcrmClaimFirstAppearance = a})

-- | The date when the claim was made or entered public discourse.
-- Corresponds to \`ClaimReview.itemReviewed.datePublished\`.
gffvcrmClaimDate :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (Maybe Text)
gffvcrmClaimDate
  = lens _gffvcrmClaimDate
      (\ s a -> s{_gffvcrmClaimDate = a})

-- | A short summary of the claim being evaluated.
-- Corresponds to \`ClaimReview.claimReviewed\`.
gffvcrmClaimReviewed :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup (Maybe Text)
gffvcrmClaimReviewed
  = lens _gffvcrmClaimReviewed
      (\ s a -> s{_gffvcrmClaimReviewed = a})

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup'
                   <$>
                   (o .:? "rating") <*> (o .:? "claimAuthor") <*>
                     (o .:? "url")
                     <*> (o .:? "claimAppearances" .!= mempty)
                     <*> (o .:? "claimLocation")
                     <*> (o .:? "claimFirstAppearance")
                     <*> (o .:? "claimDate")
                     <*> (o .:? "claimReviewed"))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup'{..}
          = object
              (catMaybes
                 [("rating" .=) <$> _gffvcrmRating,
                  ("claimAuthor" .=) <$> _gffvcrmClaimAuthor,
                  ("url" .=) <$> _gffvcrmURL,
                  ("claimAppearances" .=) <$> _gffvcrmClaimAppearances,
                  ("claimLocation" .=) <$> _gffvcrmClaimLocation,
                  ("claimFirstAppearance" .=) <$>
                    _gffvcrmClaimFirstAppearance,
                  ("claimDate" .=) <$> _gffvcrmClaimDate,
                  ("claimReviewed" .=) <$> _gffvcrmClaimReviewed])

-- | Holds one or more instances of \`ClaimReview\` markup for a webpage.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage'
    { _gffvcrmpVersionId          :: !(Maybe Text)
    , _gffvcrmpPublishDate        :: !(Maybe Text)
    , _gffvcrmpName               :: !(Maybe Text)
    , _gffvcrmpClaimReviewAuthor  :: !(Maybe GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor)
    , _gffvcrmpPageURL            :: !(Maybe Text)
    , _gffvcrmpClaimReviewMarkups :: !(Maybe [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvcrmpVersionId'
--
-- * 'gffvcrmpPublishDate'
--
-- * 'gffvcrmpName'
--
-- * 'gffvcrmpClaimReviewAuthor'
--
-- * 'gffvcrmpPageURL'
--
-- * 'gffvcrmpClaimReviewMarkups'
googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
googleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage =
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage'
    { _gffvcrmpVersionId = Nothing
    , _gffvcrmpPublishDate = Nothing
    , _gffvcrmpName = Nothing
    , _gffvcrmpClaimReviewAuthor = Nothing
    , _gffvcrmpPageURL = Nothing
    , _gffvcrmpClaimReviewMarkups = Nothing
    }


-- | The version ID for this markup. Except for update requests, this field
-- is output-only and should not be set by the user.
gffvcrmpVersionId :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage (Maybe Text)
gffvcrmpVersionId
  = lens _gffvcrmpVersionId
      (\ s a -> s{_gffvcrmpVersionId = a})

-- | The date when the fact check was published. Similar to the URL,
-- semantically this is a page-level field, and each \`ClaimReview\` on
-- this page will contain the same value.
-- Corresponds to \`ClaimReview.datePublished\`
gffvcrmpPublishDate :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage (Maybe Text)
gffvcrmpPublishDate
  = lens _gffvcrmpPublishDate
      (\ s a -> s{_gffvcrmpPublishDate = a})

-- | The name of this \`ClaimReview\` markup page resource, in the form of
-- \`pages\/{page_id}\`. Except for update requests, this field is
-- output-only and should not be set by the user.
gffvcrmpName :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage (Maybe Text)
gffvcrmpName
  = lens _gffvcrmpName (\ s a -> s{_gffvcrmpName = a})

-- | Info about the author of this claim review. Similar to the above,
-- semantically these are page-level fields, and each \`ClaimReview\` on
-- this page will contain the same values.
gffvcrmpClaimReviewAuthor :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage (Maybe GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor)
gffvcrmpClaimReviewAuthor
  = lens _gffvcrmpClaimReviewAuthor
      (\ s a -> s{_gffvcrmpClaimReviewAuthor = a})

-- | The URL of the page associated with this \`ClaimReview\` markup. While
-- every individual \`ClaimReview\` has its own URL field, semantically
-- this is a page-level field, and each \`ClaimReview\` on this page will
-- use this value unless individually overridden.
-- Corresponds to \`ClaimReview.url\`
gffvcrmpPageURL :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage (Maybe Text)
gffvcrmpPageURL
  = lens _gffvcrmpPageURL
      (\ s a -> s{_gffvcrmpPageURL = a})

-- | A list of individual claim reviews for this page. Each item in the list
-- corresponds to one \`ClaimReview\` element.
gffvcrmpClaimReviewMarkups :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup]
gffvcrmpClaimReviewMarkups
  = lens _gffvcrmpClaimReviewMarkups
      (\ s a -> s{_gffvcrmpClaimReviewMarkups = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage'
                   <$>
                   (o .:? "versionId") <*> (o .:? "publishDate") <*>
                     (o .:? "name")
                     <*> (o .:? "claimReviewAuthor")
                     <*> (o .:? "pageUrl")
                     <*> (o .:? "claimReviewMarkups" .!= mempty))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage'{..}
          = object
              (catMaybes
                 [("versionId" .=) <$> _gffvcrmpVersionId,
                  ("publishDate" .=) <$> _gffvcrmpPublishDate,
                  ("name" .=) <$> _gffvcrmpName,
                  ("claimReviewAuthor" .=) <$>
                    _gffvcrmpClaimReviewAuthor,
                  ("pageUrl" .=) <$> _gffvcrmpPageURL,
                  ("claimReviewMarkups" .=) <$>
                    _gffvcrmpClaimReviewMarkups])

-- | Response from listing \`ClaimReview\` markup.
--
-- /See:/ 'googleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse' smart constructor.
data GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse =
  GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse'
    { _gffvlcrmprNextPageToken          :: !(Maybe Text)
    , _gffvlcrmprClaimReviewMarkupPages :: !(Maybe [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gffvlcrmprNextPageToken'
--
-- * 'gffvlcrmprClaimReviewMarkupPages'
googleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    :: GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
googleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse =
  GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse'
    { _gffvlcrmprNextPageToken = Nothing
    , _gffvlcrmprClaimReviewMarkupPages = Nothing
    }


-- | The next pagination token in the Search response. It should be used as
-- the \`page_token\` for the following request. An empty value means no
-- more results.
gffvlcrmprNextPageToken :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse (Maybe Text)
gffvlcrmprNextPageToken
  = lens _gffvlcrmprNextPageToken
      (\ s a -> s{_gffvlcrmprNextPageToken = a})

-- | The result list of pages of \`ClaimReview\` markup.
gffvlcrmprClaimReviewMarkupPages :: Lens' GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage]
gffvlcrmprClaimReviewMarkupPages
  = lens _gffvlcrmprClaimReviewMarkupPages
      (\ s a -> s{_gffvlcrmprClaimReviewMarkupPages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
         where
        parseJSON
          = withObject
              "GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse"
              (\ o ->
                 GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "claimReviewMarkupPages" .!= mempty))

instance ToJSON
           GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
         where
        toJSON
          GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gffvlcrmprNextPageToken,
                  ("claimReviewMarkupPages" .=) <$>
                    _gffvlcrmprClaimReviewMarkupPages])
