{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidPublisher.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidPublisher.Types.Product where

import Network.Google.AndroidPublisher.Types.Sum
import Network.Google.Prelude

-- | List of localized title and description data. Map key is the language of
-- the localized data, as defined by BCP-47, e.g. \"en-US\".
--
-- /See:/ 'inAppProductListings' smart constructor.
newtype InAppProductListings =
  InAppProductListings'
    { _iaplAddtional :: HashMap Text InAppProductListing
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductListings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaplAddtional'
inAppProductListings
    :: HashMap Text InAppProductListing -- ^ 'iaplAddtional'
    -> InAppProductListings
inAppProductListings pIaplAddtional_ =
  InAppProductListings' {_iaplAddtional = _Coerce # pIaplAddtional_}


iaplAddtional :: Lens' InAppProductListings (HashMap Text InAppProductListing)
iaplAddtional
  = lens _iaplAddtional
      (\ s a -> s{_iaplAddtional = a})
      . _Coerce

instance FromJSON InAppProductListings where
        parseJSON
          = withObject "InAppProductListings"
              (\ o ->
                 InAppProductListings' <$> (parseJSONObject o))

instance ToJSON InAppProductListings where
        toJSON = toJSON . _iaplAddtional

-- | A track configuration. The resource for TracksService.
--
-- /See:/ 'track' smart constructor.
data Track =
  Track'
    { _tTrack :: !(Maybe Text)
    , _tReleases :: !(Maybe [TrackRelease])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Track' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTrack'
--
-- * 'tReleases'
track
    :: Track
track = Track' {_tTrack = Nothing, _tReleases = Nothing}


-- | Identifier of the track.
tTrack :: Lens' Track (Maybe Text)
tTrack = lens _tTrack (\ s a -> s{_tTrack = a})

-- | In a read request, represents all active releases in the track. In an
-- update request, represents desired changes.
tReleases :: Lens' Track [TrackRelease]
tReleases
  = lens _tReleases (\ s a -> s{_tReleases = a}) .
      _Default
      . _Coerce

instance FromJSON Track where
        parseJSON
          = withObject "Track"
              (\ o ->
                 Track' <$>
                   (o .:? "track") <*> (o .:? "releases" .!= mempty))

instance ToJSON Track where
        toJSON Track'{..}
          = object
              (catMaybes
                 [("track" .=) <$> _tTrack,
                  ("releases" .=) <$> _tReleases])

-- | APK that is suitable for inclusion in a system image. The resource of
-- SystemApksService.
--
-- /See:/ 'variant' smart constructor.
data Variant =
  Variant'
    { _vVariantId :: !(Maybe (Textual Word32))
    , _vDeviceSpec :: !(Maybe DeviceSpec)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Variant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vVariantId'
--
-- * 'vDeviceSpec'
variant
    :: Variant
variant = Variant' {_vVariantId = Nothing, _vDeviceSpec = Nothing}


-- | Output only. The ID of a previously created system APK variant.
vVariantId :: Lens' Variant (Maybe Word32)
vVariantId
  = lens _vVariantId (\ s a -> s{_vVariantId = a}) .
      mapping _Coerce

-- | The device spec used to generate the APK.
vDeviceSpec :: Lens' Variant (Maybe DeviceSpec)
vDeviceSpec
  = lens _vDeviceSpec (\ s a -> s{_vDeviceSpec = a})

instance FromJSON Variant where
        parseJSON
          = withObject "Variant"
              (\ o ->
                 Variant' <$>
                   (o .:? "variantId") <*> (o .:? "deviceSpec"))

instance ToJSON Variant where
        toJSON Variant'{..}
          = object
              (catMaybes
                 [("variantId" .=) <$> _vVariantId,
                  ("deviceSpec" .=) <$> _vDeviceSpec])

-- | An uploaded image. The resource for ImagesService.
--
-- /See:/ 'image' smart constructor.
data Image =
  Image'
    { _iURL :: !(Maybe Text)
    , _iSha1 :: !(Maybe Text)
    , _iId :: !(Maybe Text)
    , _iSha256 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iURL'
--
-- * 'iSha1'
--
-- * 'iId'
--
-- * 'iSha256'
image
    :: Image
image =
  Image' {_iURL = Nothing, _iSha1 = Nothing, _iId = Nothing, _iSha256 = Nothing}


-- | A URL that will serve a preview of the image.
iURL :: Lens' Image (Maybe Text)
iURL = lens _iURL (\ s a -> s{_iURL = a})

-- | A sha1 hash of the image.
iSha1 :: Lens' Image (Maybe Text)
iSha1 = lens _iSha1 (\ s a -> s{_iSha1 = a})

-- | A unique id representing this image.
iId :: Lens' Image (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

-- | A sha256 hash of the image.
iSha256 :: Lens' Image (Maybe Text)
iSha256 = lens _iSha256 (\ s a -> s{_iSha256 = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$>
                   (o .:? "url") <*> (o .:? "sha1") <*> (o .:? "id") <*>
                     (o .:? "sha256"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _iURL, ("sha1" .=) <$> _iSha1,
                  ("id" .=) <$> _iId, ("sha256" .=) <$> _iSha256])

-- | Store listing of a single in-app product.
--
-- /See:/ 'inAppProductListing' smart constructor.
data InAppProductListing =
  InAppProductListing'
    { _iaplBenefits :: !(Maybe [Text])
    , _iaplTitle :: !(Maybe Text)
    , _iaplDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductListing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaplBenefits'
--
-- * 'iaplTitle'
--
-- * 'iaplDescription'
inAppProductListing
    :: InAppProductListing
inAppProductListing =
  InAppProductListing'
    {_iaplBenefits = Nothing, _iaplTitle = Nothing, _iaplDescription = Nothing}


-- | Localized entitlement benefits for a subscription.
iaplBenefits :: Lens' InAppProductListing [Text]
iaplBenefits
  = lens _iaplBenefits (\ s a -> s{_iaplBenefits = a})
      . _Default
      . _Coerce

-- | Title for the store listing.
iaplTitle :: Lens' InAppProductListing (Maybe Text)
iaplTitle
  = lens _iaplTitle (\ s a -> s{_iaplTitle = a})

-- | Description for the store listing.
iaplDescription :: Lens' InAppProductListing (Maybe Text)
iaplDescription
  = lens _iaplDescription
      (\ s a -> s{_iaplDescription = a})

instance FromJSON InAppProductListing where
        parseJSON
          = withObject "InAppProductListing"
              (\ o ->
                 InAppProductListing' <$>
                   (o .:? "benefits" .!= mempty) <*> (o .:? "title") <*>
                     (o .:? "description"))

instance ToJSON InAppProductListing where
        toJSON InAppProductListing'{..}
          = object
              (catMaybes
                 [("benefits" .=) <$> _iaplBenefits,
                  ("title" .=) <$> _iaplTitle,
                  ("description" .=) <$> _iaplDescription])

-- | Response for deleting all images.
--
-- /See:/ 'imagesDeleteAllResponse' smart constructor.
newtype ImagesDeleteAllResponse =
  ImagesDeleteAllResponse'
    { _idarDeleted :: Maybe [Image]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesDeleteAllResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idarDeleted'
imagesDeleteAllResponse
    :: ImagesDeleteAllResponse
imagesDeleteAllResponse = ImagesDeleteAllResponse' {_idarDeleted = Nothing}


-- | The deleted images.
idarDeleted :: Lens' ImagesDeleteAllResponse [Image]
idarDeleted
  = lens _idarDeleted (\ s a -> s{_idarDeleted = a}) .
      _Default
      . _Coerce

instance FromJSON ImagesDeleteAllResponse where
        parseJSON
          = withObject "ImagesDeleteAllResponse"
              (\ o ->
                 ImagesDeleteAllResponse' <$>
                   (o .:? "deleted" .!= mempty))

instance ToJSON ImagesDeleteAllResponse where
        toJSON ImagesDeleteAllResponse'{..}
          = object
              (catMaybes [("deleted" .=) <$> _idarDeleted])

-- | Contains the introductory price information for a subscription.
--
-- /See:/ 'introductoryPriceInfo' smart constructor.
data IntroductoryPriceInfo =
  IntroductoryPriceInfo'
    { _ipiIntroductoryPricePeriod :: !(Maybe Text)
    , _ipiIntroductoryPriceAmountMicros :: !(Maybe (Textual Int64))
    , _ipiIntroductoryPriceCycles :: !(Maybe (Textual Int32))
    , _ipiIntroductoryPriceCurrencyCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntroductoryPriceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipiIntroductoryPricePeriod'
--
-- * 'ipiIntroductoryPriceAmountMicros'
--
-- * 'ipiIntroductoryPriceCycles'
--
-- * 'ipiIntroductoryPriceCurrencyCode'
introductoryPriceInfo
    :: IntroductoryPriceInfo
introductoryPriceInfo =
  IntroductoryPriceInfo'
    { _ipiIntroductoryPricePeriod = Nothing
    , _ipiIntroductoryPriceAmountMicros = Nothing
    , _ipiIntroductoryPriceCycles = Nothing
    , _ipiIntroductoryPriceCurrencyCode = Nothing
    }


-- | Introductory price period, specified in ISO 8601 format. Common values
-- are (but not limited to) \"P1W\" (one week), \"P1M\" (one month),
-- \"P3M\" (three months), \"P6M\" (six months), and \"P1Y\" (one year).
ipiIntroductoryPricePeriod :: Lens' IntroductoryPriceInfo (Maybe Text)
ipiIntroductoryPricePeriod
  = lens _ipiIntroductoryPricePeriod
      (\ s a -> s{_ipiIntroductoryPricePeriod = a})

-- | Introductory price of the subscription, not including tax. The currency
-- is the same as price_currency_code. Price is expressed in micro-units,
-- where 1,000,000 micro-units represents one unit of the currency. For
-- example, if the subscription price is €1.99, price_amount_micros is
-- 1990000.
ipiIntroductoryPriceAmountMicros :: Lens' IntroductoryPriceInfo (Maybe Int64)
ipiIntroductoryPriceAmountMicros
  = lens _ipiIntroductoryPriceAmountMicros
      (\ s a -> s{_ipiIntroductoryPriceAmountMicros = a})
      . mapping _Coerce

-- | The number of billing period to offer introductory pricing.
ipiIntroductoryPriceCycles :: Lens' IntroductoryPriceInfo (Maybe Int32)
ipiIntroductoryPriceCycles
  = lens _ipiIntroductoryPriceCycles
      (\ s a -> s{_ipiIntroductoryPriceCycles = a})
      . mapping _Coerce

-- | ISO 4217 currency code for the introductory subscription price. For
-- example, if the price is specified in British pounds sterling,
-- price_currency_code is \"GBP\".
ipiIntroductoryPriceCurrencyCode :: Lens' IntroductoryPriceInfo (Maybe Text)
ipiIntroductoryPriceCurrencyCode
  = lens _ipiIntroductoryPriceCurrencyCode
      (\ s a -> s{_ipiIntroductoryPriceCurrencyCode = a})

instance FromJSON IntroductoryPriceInfo where
        parseJSON
          = withObject "IntroductoryPriceInfo"
              (\ o ->
                 IntroductoryPriceInfo' <$>
                   (o .:? "introductoryPricePeriod") <*>
                     (o .:? "introductoryPriceAmountMicros")
                     <*> (o .:? "introductoryPriceCycles")
                     <*> (o .:? "introductoryPriceCurrencyCode"))

instance ToJSON IntroductoryPriceInfo where
        toJSON IntroductoryPriceInfo'{..}
          = object
              (catMaybes
                 [("introductoryPricePeriod" .=) <$>
                    _ipiIntroductoryPricePeriod,
                  ("introductoryPriceAmountMicros" .=) <$>
                    _ipiIntroductoryPriceAmountMicros,
                  ("introductoryPriceCycles" .=) <$>
                    _ipiIntroductoryPriceCycles,
                  ("introductoryPriceCurrencyCode" .=) <$>
                    _ipiIntroductoryPriceCurrencyCode])

-- | Pagination information returned by a List operation when token
-- pagination is enabled. List operations that supports paging return only
-- one \"page\" of results. This protocol buffer message describes the page
-- that has been returned. When using token pagination, clients should use
-- the next\/previous token to get another page of the result. The presence
-- or absence of next\/previous token indicates whether a next\/previous
-- page is available and provides a mean of accessing this page.
-- ListRequest.page_token should be set to either next_page_token or
-- previous_page_token to access another page.
--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination =
  TokenPagination'
    { _tpNextPageToken :: !(Maybe Text)
    , _tpPreviousPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpNextPageToken'
--
-- * 'tpPreviousPageToken'
tokenPagination
    :: TokenPagination
tokenPagination =
  TokenPagination' {_tpNextPageToken = Nothing, _tpPreviousPageToken = Nothing}


-- | Tokens to pass to the standard list field \'page_token\'. Whenever
-- available, tokens are preferred over manipulating start_index.
tpNextPageToken :: Lens' TokenPagination (Maybe Text)
tpNextPageToken
  = lens _tpNextPageToken
      (\ s a -> s{_tpNextPageToken = a})

tpPreviousPageToken :: Lens' TokenPagination (Maybe Text)
tpPreviousPageToken
  = lens _tpPreviousPageToken
      (\ s a -> s{_tpPreviousPageToken = a})

instance FromJSON TokenPagination where
        parseJSON
          = withObject "TokenPagination"
              (\ o ->
                 TokenPagination' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "previousPageToken"))

instance ToJSON TokenPagination where
        toJSON TokenPagination'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tpNextPageToken,
                  ("previousPageToken" .=) <$> _tpPreviousPageToken])

-- | An expansion file. The resource for ExpansionFilesService.
--
-- /See:/ 'expansionFile' smart constructor.
data ExpansionFile =
  ExpansionFile'
    { _efFileSize :: !(Maybe (Textual Int64))
    , _efReferencesVersion :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExpansionFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efFileSize'
--
-- * 'efReferencesVersion'
expansionFile
    :: ExpansionFile
expansionFile =
  ExpansionFile' {_efFileSize = Nothing, _efReferencesVersion = Nothing}


-- | If set, this field indicates that this APK has an expansion file
-- uploaded to it: this APK does not reference another APK\'s expansion
-- file. The field\'s value is the size of the uploaded expansion file in
-- bytes.
efFileSize :: Lens' ExpansionFile (Maybe Int64)
efFileSize
  = lens _efFileSize (\ s a -> s{_efFileSize = a}) .
      mapping _Coerce

-- | If set, this APK\'s expansion file references another APK\'s expansion
-- file. The file_size field will not be set.
efReferencesVersion :: Lens' ExpansionFile (Maybe Int32)
efReferencesVersion
  = lens _efReferencesVersion
      (\ s a -> s{_efReferencesVersion = a})
      . mapping _Coerce

instance FromJSON ExpansionFile where
        parseJSON
          = withObject "ExpansionFile"
              (\ o ->
                 ExpansionFile' <$>
                   (o .:? "fileSize") <*> (o .:? "referencesVersion"))

instance ToJSON ExpansionFile where
        toJSON ExpansionFile'{..}
          = object
              (catMaybes
                 [("fileSize" .=) <$> _efFileSize,
                  ("referencesVersion" .=) <$> _efReferencesVersion])

-- | Request for the purchases.subscriptions.acknowledge API.
--
-- /See:/ 'subscriptionPurchasesAcknowledgeRequest' smart constructor.
newtype SubscriptionPurchasesAcknowledgeRequest =
  SubscriptionPurchasesAcknowledgeRequest'
    { _sparDeveloperPayload :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionPurchasesAcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sparDeveloperPayload'
subscriptionPurchasesAcknowledgeRequest
    :: SubscriptionPurchasesAcknowledgeRequest
subscriptionPurchasesAcknowledgeRequest =
  SubscriptionPurchasesAcknowledgeRequest' {_sparDeveloperPayload = Nothing}


-- | Payload to attach to the purchase.
sparDeveloperPayload :: Lens' SubscriptionPurchasesAcknowledgeRequest (Maybe Text)
sparDeveloperPayload
  = lens _sparDeveloperPayload
      (\ s a -> s{_sparDeveloperPayload = a})

instance FromJSON
           SubscriptionPurchasesAcknowledgeRequest
         where
        parseJSON
          = withObject
              "SubscriptionPurchasesAcknowledgeRequest"
              (\ o ->
                 SubscriptionPurchasesAcknowledgeRequest' <$>
                   (o .:? "developerPayload"))

instance ToJSON
           SubscriptionPurchasesAcknowledgeRequest
         where
        toJSON SubscriptionPurchasesAcknowledgeRequest'{..}
          = object
              (catMaybes
                 [("developerPayload" .=) <$> _sparDeveloperPayload])

-- | User entry from conversation between user and developer.
--
-- /See:/ 'userComment' smart constructor.
data UserComment =
  UserComment'
    { _ucAndroidOSVersion :: !(Maybe (Textual Int32))
    , _ucText :: !(Maybe Text)
    , _ucDevice :: !(Maybe Text)
    , _ucThumbsUpCount :: !(Maybe (Textual Int32))
    , _ucAppVersionCode :: !(Maybe (Textual Int32))
    , _ucThumbsDownCount :: !(Maybe (Textual Int32))
    , _ucOriginalText :: !(Maybe Text)
    , _ucAppVersionName :: !(Maybe Text)
    , _ucReviewerLanguage :: !(Maybe Text)
    , _ucDeviceMetadata :: !(Maybe DeviceMetadata)
    , _ucStarRating :: !(Maybe (Textual Int32))
    , _ucLastModified :: !(Maybe Timestamp)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserComment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucAndroidOSVersion'
--
-- * 'ucText'
--
-- * 'ucDevice'
--
-- * 'ucThumbsUpCount'
--
-- * 'ucAppVersionCode'
--
-- * 'ucThumbsDownCount'
--
-- * 'ucOriginalText'
--
-- * 'ucAppVersionName'
--
-- * 'ucReviewerLanguage'
--
-- * 'ucDeviceMetadata'
--
-- * 'ucStarRating'
--
-- * 'ucLastModified'
userComment
    :: UserComment
userComment =
  UserComment'
    { _ucAndroidOSVersion = Nothing
    , _ucText = Nothing
    , _ucDevice = Nothing
    , _ucThumbsUpCount = Nothing
    , _ucAppVersionCode = Nothing
    , _ucThumbsDownCount = Nothing
    , _ucOriginalText = Nothing
    , _ucAppVersionName = Nothing
    , _ucReviewerLanguage = Nothing
    , _ucDeviceMetadata = Nothing
    , _ucStarRating = Nothing
    , _ucLastModified = Nothing
    }


-- | Integer Android SDK version of the user\'s device at the time the review
-- was written, e.g. 23 is Marshmallow. May be absent.
ucAndroidOSVersion :: Lens' UserComment (Maybe Int32)
ucAndroidOSVersion
  = lens _ucAndroidOSVersion
      (\ s a -> s{_ucAndroidOSVersion = a})
      . mapping _Coerce

-- | The content of the comment, i.e. review body. In some cases users have
-- been able to write a review with separate title and body; in those cases
-- the title and body are concatenated and separated by a tab character.
ucText :: Lens' UserComment (Maybe Text)
ucText = lens _ucText (\ s a -> s{_ucText = a})

-- | Codename for the reviewer\'s device, e.g. klte, flounder. May be absent.
ucDevice :: Lens' UserComment (Maybe Text)
ucDevice = lens _ucDevice (\ s a -> s{_ucDevice = a})

-- | Number of users who have given this review a thumbs up.
ucThumbsUpCount :: Lens' UserComment (Maybe Int32)
ucThumbsUpCount
  = lens _ucThumbsUpCount
      (\ s a -> s{_ucThumbsUpCount = a})
      . mapping _Coerce

-- | Integer version code of the app as installed at the time the review was
-- written. May be absent.
ucAppVersionCode :: Lens' UserComment (Maybe Int32)
ucAppVersionCode
  = lens _ucAppVersionCode
      (\ s a -> s{_ucAppVersionCode = a})
      . mapping _Coerce

-- | Number of users who have given this review a thumbs down.
ucThumbsDownCount :: Lens' UserComment (Maybe Int32)
ucThumbsDownCount
  = lens _ucThumbsDownCount
      (\ s a -> s{_ucThumbsDownCount = a})
      . mapping _Coerce

-- | Untranslated text of the review, where the review was translated. If the
-- review was not translated this is left blank.
ucOriginalText :: Lens' UserComment (Maybe Text)
ucOriginalText
  = lens _ucOriginalText
      (\ s a -> s{_ucOriginalText = a})

-- | String version name of the app as installed at the time the review was
-- written. May be absent.
ucAppVersionName :: Lens' UserComment (Maybe Text)
ucAppVersionName
  = lens _ucAppVersionName
      (\ s a -> s{_ucAppVersionName = a})

-- | Language code for the reviewer. This is taken from the device settings
-- so is not guaranteed to match the language the review is written in. May
-- be absent.
ucReviewerLanguage :: Lens' UserComment (Maybe Text)
ucReviewerLanguage
  = lens _ucReviewerLanguage
      (\ s a -> s{_ucReviewerLanguage = a})

-- | Information about the characteristics of the user\'s device.
ucDeviceMetadata :: Lens' UserComment (Maybe DeviceMetadata)
ucDeviceMetadata
  = lens _ucDeviceMetadata
      (\ s a -> s{_ucDeviceMetadata = a})

-- | The star rating associated with the review, from 1 to 5.
ucStarRating :: Lens' UserComment (Maybe Int32)
ucStarRating
  = lens _ucStarRating (\ s a -> s{_ucStarRating = a})
      . mapping _Coerce

-- | The last time at which this comment was updated.
ucLastModified :: Lens' UserComment (Maybe Timestamp)
ucLastModified
  = lens _ucLastModified
      (\ s a -> s{_ucLastModified = a})

instance FromJSON UserComment where
        parseJSON
          = withObject "UserComment"
              (\ o ->
                 UserComment' <$>
                   (o .:? "androidOsVersion") <*> (o .:? "text") <*>
                     (o .:? "device")
                     <*> (o .:? "thumbsUpCount")
                     <*> (o .:? "appVersionCode")
                     <*> (o .:? "thumbsDownCount")
                     <*> (o .:? "originalText")
                     <*> (o .:? "appVersionName")
                     <*> (o .:? "reviewerLanguage")
                     <*> (o .:? "deviceMetadata")
                     <*> (o .:? "starRating")
                     <*> (o .:? "lastModified"))

instance ToJSON UserComment where
        toJSON UserComment'{..}
          = object
              (catMaybes
                 [("androidOsVersion" .=) <$> _ucAndroidOSVersion,
                  ("text" .=) <$> _ucText, ("device" .=) <$> _ucDevice,
                  ("thumbsUpCount" .=) <$> _ucThumbsUpCount,
                  ("appVersionCode" .=) <$> _ucAppVersionCode,
                  ("thumbsDownCount" .=) <$> _ucThumbsDownCount,
                  ("originalText" .=) <$> _ucOriginalText,
                  ("appVersionName" .=) <$> _ucAppVersionName,
                  ("reviewerLanguage" .=) <$> _ucReviewerLanguage,
                  ("deviceMetadata" .=) <$> _ucDeviceMetadata,
                  ("starRating" .=) <$> _ucStarRating,
                  ("lastModified" .=) <$> _ucLastModified])

-- | The testers of an app. The resource for TestersService.
--
-- /See:/ 'testers' smart constructor.
newtype Testers =
  Testers'
    { _tGoogleGroups :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Testers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tGoogleGroups'
testers
    :: Testers
testers = Testers' {_tGoogleGroups = Nothing}


-- | All testing Google Groups, as email addresses.
tGoogleGroups :: Lens' Testers [Text]
tGoogleGroups
  = lens _tGoogleGroups
      (\ s a -> s{_tGoogleGroups = a})
      . _Default
      . _Coerce

instance FromJSON Testers where
        parseJSON
          = withObject "Testers"
              (\ o ->
                 Testers' <$> (o .:? "googleGroups" .!= mempty))

instance ToJSON Testers where
        toJSON Testers'{..}
          = object
              (catMaybes [("googleGroups" .=) <$> _tGoogleGroups])

-- | Information provided by the user when they complete the subscription
-- cancellation flow (cancellation reason survey).
--
-- /See:/ 'subscriptionCancelSurveyResult' smart constructor.
data SubscriptionCancelSurveyResult =
  SubscriptionCancelSurveyResult'
    { _scsrCancelSurveyReason :: !(Maybe (Textual Int32))
    , _scsrUserInputCancelReason :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionCancelSurveyResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrCancelSurveyReason'
--
-- * 'scsrUserInputCancelReason'
subscriptionCancelSurveyResult
    :: SubscriptionCancelSurveyResult
subscriptionCancelSurveyResult =
  SubscriptionCancelSurveyResult'
    {_scsrCancelSurveyReason = Nothing, _scsrUserInputCancelReason = Nothing}


-- | The cancellation reason the user chose in the survey. Possible values
-- are: 0. Other 1. I don\'t use this service enough 2. Technical issues 3.
-- Cost-related reasons 4. I found a better app
scsrCancelSurveyReason :: Lens' SubscriptionCancelSurveyResult (Maybe Int32)
scsrCancelSurveyReason
  = lens _scsrCancelSurveyReason
      (\ s a -> s{_scsrCancelSurveyReason = a})
      . mapping _Coerce

-- | The customized input cancel reason from the user. Only present when
-- cancelReason is 0.
scsrUserInputCancelReason :: Lens' SubscriptionCancelSurveyResult (Maybe Text)
scsrUserInputCancelReason
  = lens _scsrUserInputCancelReason
      (\ s a -> s{_scsrUserInputCancelReason = a})

instance FromJSON SubscriptionCancelSurveyResult
         where
        parseJSON
          = withObject "SubscriptionCancelSurveyResult"
              (\ o ->
                 SubscriptionCancelSurveyResult' <$>
                   (o .:? "cancelSurveyReason") <*>
                     (o .:? "userInputCancelReason"))

instance ToJSON SubscriptionCancelSurveyResult where
        toJSON SubscriptionCancelSurveyResult'{..}
          = object
              (catMaybes
                 [("cancelSurveyReason" .=) <$>
                    _scsrCancelSurveyReason,
                  ("userInputCancelReason" .=) <$>
                    _scsrUserInputCancelReason])

-- | A localized store listing. The resource for ListingsService.
--
-- /See:/ 'listing' smart constructor.
data Listing =
  Listing'
    { _lFullDescription :: !(Maybe Text)
    , _lVideo :: !(Maybe Text)
    , _lShortDescription :: !(Maybe Text)
    , _lLanguage :: !(Maybe Text)
    , _lTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Listing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lFullDescription'
--
-- * 'lVideo'
--
-- * 'lShortDescription'
--
-- * 'lLanguage'
--
-- * 'lTitle'
listing
    :: Listing
listing =
  Listing'
    { _lFullDescription = Nothing
    , _lVideo = Nothing
    , _lShortDescription = Nothing
    , _lLanguage = Nothing
    , _lTitle = Nothing
    }


-- | Full description of the app.
lFullDescription :: Lens' Listing (Maybe Text)
lFullDescription
  = lens _lFullDescription
      (\ s a -> s{_lFullDescription = a})

-- | URL of a promotional YouTube video for the app.
lVideo :: Lens' Listing (Maybe Text)
lVideo = lens _lVideo (\ s a -> s{_lVideo = a})

-- | Short description of the app.
lShortDescription :: Lens' Listing (Maybe Text)
lShortDescription
  = lens _lShortDescription
      (\ s a -> s{_lShortDescription = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German).
lLanguage :: Lens' Listing (Maybe Text)
lLanguage
  = lens _lLanguage (\ s a -> s{_lLanguage = a})

-- | Localized title of the app.
lTitle :: Lens' Listing (Maybe Text)
lTitle = lens _lTitle (\ s a -> s{_lTitle = a})

instance FromJSON Listing where
        parseJSON
          = withObject "Listing"
              (\ o ->
                 Listing' <$>
                   (o .:? "fullDescription") <*> (o .:? "video") <*>
                     (o .:? "shortDescription")
                     <*> (o .:? "language")
                     <*> (o .:? "title"))

instance ToJSON Listing where
        toJSON Listing'{..}
          = object
              (catMaybes
                 [("fullDescription" .=) <$> _lFullDescription,
                  ("video" .=) <$> _lVideo,
                  ("shortDescription" .=) <$> _lShortDescription,
                  ("language" .=) <$> _lLanguage,
                  ("title" .=) <$> _lTitle])

-- | Request for the product.purchases.acknowledge API.
--
-- /See:/ 'productPurchasesAcknowledgeRequest' smart constructor.
newtype ProductPurchasesAcknowledgeRequest =
  ProductPurchasesAcknowledgeRequest'
    { _pparDeveloperPayload :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductPurchasesAcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pparDeveloperPayload'
productPurchasesAcknowledgeRequest
    :: ProductPurchasesAcknowledgeRequest
productPurchasesAcknowledgeRequest =
  ProductPurchasesAcknowledgeRequest' {_pparDeveloperPayload = Nothing}


-- | Payload to attach to the purchase.
pparDeveloperPayload :: Lens' ProductPurchasesAcknowledgeRequest (Maybe Text)
pparDeveloperPayload
  = lens _pparDeveloperPayload
      (\ s a -> s{_pparDeveloperPayload = a})

instance FromJSON ProductPurchasesAcknowledgeRequest
         where
        parseJSON
          = withObject "ProductPurchasesAcknowledgeRequest"
              (\ o ->
                 ProductPurchasesAcknowledgeRequest' <$>
                   (o .:? "developerPayload"))

instance ToJSON ProductPurchasesAcknowledgeRequest
         where
        toJSON ProductPurchasesAcknowledgeRequest'{..}
          = object
              (catMaybes
                 [("developerPayload" .=) <$> _pparDeveloperPayload])

-- | Information about an APK. The resource for ApksService.
--
-- /See:/ 'aPK' smart constructor.
data APK =
  APK'
    { _aVersionCode :: !(Maybe (Textual Int32))
    , _aBinary :: !(Maybe APKBinary)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APK' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aVersionCode'
--
-- * 'aBinary'
aPK
    :: APK
aPK = APK' {_aVersionCode = Nothing, _aBinary = Nothing}


-- | The version code of the APK, as specified in the manifest file.
aVersionCode :: Lens' APK (Maybe Int32)
aVersionCode
  = lens _aVersionCode (\ s a -> s{_aVersionCode = a})
      . mapping _Coerce

-- | Information about the binary payload of this APK.
aBinary :: Lens' APK (Maybe APKBinary)
aBinary = lens _aBinary (\ s a -> s{_aBinary = a})

instance FromJSON APK where
        parseJSON
          = withObject "APK"
              (\ o ->
                 APK' <$> (o .:? "versionCode") <*> (o .:? "binary"))

instance ToJSON APK where
        toJSON APK'{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _aVersionCode,
                  ("binary" .=) <$> _aBinary])

-- | Request for the purchases.subscriptions.defer API.
--
-- /See:/ 'subscriptionPurchasesDeferRequest' smart constructor.
newtype SubscriptionPurchasesDeferRequest =
  SubscriptionPurchasesDeferRequest'
    { _spdrDeferralInfo :: Maybe SubscriptionDeferralInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionPurchasesDeferRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdrDeferralInfo'
subscriptionPurchasesDeferRequest
    :: SubscriptionPurchasesDeferRequest
subscriptionPurchasesDeferRequest =
  SubscriptionPurchasesDeferRequest' {_spdrDeferralInfo = Nothing}


-- | The information about the new desired expiry time for the subscription.
spdrDeferralInfo :: Lens' SubscriptionPurchasesDeferRequest (Maybe SubscriptionDeferralInfo)
spdrDeferralInfo
  = lens _spdrDeferralInfo
      (\ s a -> s{_spdrDeferralInfo = a})

instance FromJSON SubscriptionPurchasesDeferRequest
         where
        parseJSON
          = withObject "SubscriptionPurchasesDeferRequest"
              (\ o ->
                 SubscriptionPurchasesDeferRequest' <$>
                   (o .:? "deferralInfo"))

instance ToJSON SubscriptionPurchasesDeferRequest
         where
        toJSON SubscriptionPurchasesDeferRequest'{..}
          = object
              (catMaybes
                 [("deferralInfo" .=) <$> _spdrDeferralInfo])

-- | Response listing all tracks.
--
-- /See:/ 'tracksListResponse' smart constructor.
data TracksListResponse =
  TracksListResponse'
    { _tlrTracks :: !(Maybe [Track])
    , _tlrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TracksListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrTracks'
--
-- * 'tlrKind'
tracksListResponse
    :: TracksListResponse
tracksListResponse =
  TracksListResponse' {_tlrTracks = Nothing, _tlrKind = Nothing}


-- | All tracks.
tlrTracks :: Lens' TracksListResponse [Track]
tlrTracks
  = lens _tlrTracks (\ s a -> s{_tlrTracks = a}) .
      _Default
      . _Coerce

-- | The kind of this response (\"androidpublisher#tracksListResponse\").
tlrKind :: Lens' TracksListResponse (Maybe Text)
tlrKind = lens _tlrKind (\ s a -> s{_tlrKind = a})

instance FromJSON TracksListResponse where
        parseJSON
          = withObject "TracksListResponse"
              (\ o ->
                 TracksListResponse' <$>
                   (o .:? "tracks" .!= mempty) <*> (o .:? "kind"))

instance ToJSON TracksListResponse where
        toJSON TracksListResponse'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _tlrTracks,
                  ("kind" .=) <$> _tlrKind])

-- | Information about the current page. List operations that supports paging
-- return only one \"page\" of results. This protocol buffer message
-- describes the page that has been returned.
--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo =
  PageInfo'
    { _piResultPerPage :: !(Maybe (Textual Int32))
    , _piTotalResults :: !(Maybe (Textual Int32))
    , _piStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piResultPerPage'
--
-- * 'piTotalResults'
--
-- * 'piStartIndex'
pageInfo
    :: PageInfo
pageInfo =
  PageInfo'
    { _piResultPerPage = Nothing
    , _piTotalResults = Nothing
    , _piStartIndex = Nothing
    }


-- | Maximum number of results returned in one page. ! The number of results
-- included in the API response.
piResultPerPage :: Lens' PageInfo (Maybe Int32)
piResultPerPage
  = lens _piResultPerPage
      (\ s a -> s{_piResultPerPage = a})
      . mapping _Coerce

-- | Total number of results available on the backend ! The total number of
-- results in the result set.
piTotalResults :: Lens' PageInfo (Maybe Int32)
piTotalResults
  = lens _piTotalResults
      (\ s a -> s{_piTotalResults = a})
      . mapping _Coerce

-- | Index of the first result returned in the current page.
piStartIndex :: Lens' PageInfo (Maybe Int32)
piStartIndex
  = lens _piStartIndex (\ s a -> s{_piStartIndex = a})
      . mapping _Coerce

instance FromJSON PageInfo where
        parseJSON
          = withObject "PageInfo"
              (\ o ->
                 PageInfo' <$>
                   (o .:? "resultPerPage") <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex"))

instance ToJSON PageInfo where
        toJSON PageInfo'{..}
          = object
              (catMaybes
                 [("resultPerPage" .=) <$> _piResultPerPage,
                  ("totalResults" .=) <$> _piTotalResults,
                  ("startIndex" .=) <$> _piStartIndex])

-- | Response listing all images.
--
-- /See:/ 'imagesListResponse' smart constructor.
newtype ImagesListResponse =
  ImagesListResponse'
    { _ilrImages :: Maybe [Image]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrImages'
imagesListResponse
    :: ImagesListResponse
imagesListResponse = ImagesListResponse' {_ilrImages = Nothing}


-- | All listed Images.
ilrImages :: Lens' ImagesListResponse [Image]
ilrImages
  = lens _ilrImages (\ s a -> s{_ilrImages = a}) .
      _Default
      . _Coerce

instance FromJSON ImagesListResponse where
        parseJSON
          = withObject "ImagesListResponse"
              (\ o ->
                 ImagesListResponse' <$> (o .:? "images" .!= mempty))

instance ToJSON ImagesListResponse where
        toJSON ImagesListResponse'{..}
          = object (catMaybes [("images" .=) <$> _ilrImages])

-- | An app edit. The resource for EditsService.
--
-- /See:/ 'appEdit' smart constructor.
data AppEdit =
  AppEdit'
    { _aeId :: !(Maybe Text)
    , _aeExpiryTimeSeconds :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppEdit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeId'
--
-- * 'aeExpiryTimeSeconds'
appEdit
    :: AppEdit
appEdit = AppEdit' {_aeId = Nothing, _aeExpiryTimeSeconds = Nothing}


-- | Output only. Identifier of the edit. Can be used in subsequent API
-- calls.
aeId :: Lens' AppEdit (Maybe Text)
aeId = lens _aeId (\ s a -> s{_aeId = a})

-- | Output only. The time (as seconds since Epoch) at which the edit will
-- expire and will be no longer valid for use.
aeExpiryTimeSeconds :: Lens' AppEdit (Maybe Text)
aeExpiryTimeSeconds
  = lens _aeExpiryTimeSeconds
      (\ s a -> s{_aeExpiryTimeSeconds = a})

instance FromJSON AppEdit where
        parseJSON
          = withObject "AppEdit"
              (\ o ->
                 AppEdit' <$>
                   (o .:? "id") <*> (o .:? "expiryTimeSeconds"))

instance ToJSON AppEdit where
        toJSON AppEdit'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _aeId,
                  ("expiryTimeSeconds" .=) <$> _aeExpiryTimeSeconds])

-- | A ProductPurchase resource indicates the status of a user\'s inapp
-- product purchase.
--
-- /See:/ 'productPurchase' smart constructor.
data ProductPurchase =
  ProductPurchase'
    { _ppPurchaseState :: !(Maybe (Textual Int32))
    , _ppConsumptionState :: !(Maybe (Textual Int32))
    , _ppRegionCode :: !(Maybe Text)
    , _ppAcknowledgementState :: !(Maybe (Textual Int32))
    , _ppKind :: !(Maybe Text)
    , _ppPurchaseTimeMillis :: !(Maybe (Textual Int64))
    , _ppPurchaseToken :: !(Maybe Text)
    , _ppQuantity :: !(Maybe (Textual Int32))
    , _ppObfuscatedExternalAccountId :: !(Maybe Text)
    , _ppPurchaseType :: !(Maybe (Textual Int32))
    , _ppObfuscatedExternalProFileId :: !(Maybe Text)
    , _ppDeveloperPayload :: !(Maybe Text)
    , _ppOrderId :: !(Maybe Text)
    , _ppProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductPurchase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppPurchaseState'
--
-- * 'ppConsumptionState'
--
-- * 'ppRegionCode'
--
-- * 'ppAcknowledgementState'
--
-- * 'ppKind'
--
-- * 'ppPurchaseTimeMillis'
--
-- * 'ppPurchaseToken'
--
-- * 'ppQuantity'
--
-- * 'ppObfuscatedExternalAccountId'
--
-- * 'ppPurchaseType'
--
-- * 'ppObfuscatedExternalProFileId'
--
-- * 'ppDeveloperPayload'
--
-- * 'ppOrderId'
--
-- * 'ppProductId'
productPurchase
    :: ProductPurchase
productPurchase =
  ProductPurchase'
    { _ppPurchaseState = Nothing
    , _ppConsumptionState = Nothing
    , _ppRegionCode = Nothing
    , _ppAcknowledgementState = Nothing
    , _ppKind = Nothing
    , _ppPurchaseTimeMillis = Nothing
    , _ppPurchaseToken = Nothing
    , _ppQuantity = Nothing
    , _ppObfuscatedExternalAccountId = Nothing
    , _ppPurchaseType = Nothing
    , _ppObfuscatedExternalProFileId = Nothing
    , _ppDeveloperPayload = Nothing
    , _ppOrderId = Nothing
    , _ppProductId = Nothing
    }


-- | The purchase state of the order. Possible values are: 0. Purchased 1.
-- Canceled 2. Pending
ppPurchaseState :: Lens' ProductPurchase (Maybe Int32)
ppPurchaseState
  = lens _ppPurchaseState
      (\ s a -> s{_ppPurchaseState = a})
      . mapping _Coerce

-- | The consumption state of the inapp product. Possible values are: 0. Yet
-- to be consumed 1. Consumed
ppConsumptionState :: Lens' ProductPurchase (Maybe Int32)
ppConsumptionState
  = lens _ppConsumptionState
      (\ s a -> s{_ppConsumptionState = a})
      . mapping _Coerce

-- | ISO 3166-1 alpha-2 billing region code of the user at the time the
-- product was granted.
ppRegionCode :: Lens' ProductPurchase (Maybe Text)
ppRegionCode
  = lens _ppRegionCode (\ s a -> s{_ppRegionCode = a})

-- | The acknowledgement state of the inapp product. Possible values are: 0.
-- Yet to be acknowledged 1. Acknowledged
ppAcknowledgementState :: Lens' ProductPurchase (Maybe Int32)
ppAcknowledgementState
  = lens _ppAcknowledgementState
      (\ s a -> s{_ppAcknowledgementState = a})
      . mapping _Coerce

-- | This kind represents an inappPurchase object in the androidpublisher
-- service.
ppKind :: Lens' ProductPurchase (Maybe Text)
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | The time the product was purchased, in milliseconds since the epoch (Jan
-- 1, 1970).
ppPurchaseTimeMillis :: Lens' ProductPurchase (Maybe Int64)
ppPurchaseTimeMillis
  = lens _ppPurchaseTimeMillis
      (\ s a -> s{_ppPurchaseTimeMillis = a})
      . mapping _Coerce

-- | The purchase token generated to identify this purchase.
ppPurchaseToken :: Lens' ProductPurchase (Maybe Text)
ppPurchaseToken
  = lens _ppPurchaseToken
      (\ s a -> s{_ppPurchaseToken = a})

-- | The quantity associated with the purchase of the inapp product.
ppQuantity :: Lens' ProductPurchase (Maybe Int32)
ppQuantity
  = lens _ppQuantity (\ s a -> s{_ppQuantity = a}) .
      mapping _Coerce

-- | An obfuscated version of the id that is uniquely associated with the
-- user\'s account in your app. Only present if specified using
-- https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid
-- when the purchase was made.
ppObfuscatedExternalAccountId :: Lens' ProductPurchase (Maybe Text)
ppObfuscatedExternalAccountId
  = lens _ppObfuscatedExternalAccountId
      (\ s a -> s{_ppObfuscatedExternalAccountId = a})

-- | The type of purchase of the inapp product. This field is only set if
-- this purchase was not made using the standard in-app billing flow.
-- Possible values are: 0. Test (i.e. purchased from a license testing
-- account) 1. Promo (i.e. purchased using a promo code) 2. Rewarded (i.e.
-- from watching a video ad instead of paying)
ppPurchaseType :: Lens' ProductPurchase (Maybe Int32)
ppPurchaseType
  = lens _ppPurchaseType
      (\ s a -> s{_ppPurchaseType = a})
      . mapping _Coerce

-- | An obfuscated version of the id that is uniquely associated with the
-- user\'s profile in your app. Only present if specified using
-- https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid
-- when the purchase was made.
ppObfuscatedExternalProFileId :: Lens' ProductPurchase (Maybe Text)
ppObfuscatedExternalProFileId
  = lens _ppObfuscatedExternalProFileId
      (\ s a -> s{_ppObfuscatedExternalProFileId = a})

-- | A developer-specified string that contains supplemental information
-- about an order.
ppDeveloperPayload :: Lens' ProductPurchase (Maybe Text)
ppDeveloperPayload
  = lens _ppDeveloperPayload
      (\ s a -> s{_ppDeveloperPayload = a})

-- | The order id associated with the purchase of the inapp product.
ppOrderId :: Lens' ProductPurchase (Maybe Text)
ppOrderId
  = lens _ppOrderId (\ s a -> s{_ppOrderId = a})

-- | The inapp product SKU.
ppProductId :: Lens' ProductPurchase (Maybe Text)
ppProductId
  = lens _ppProductId (\ s a -> s{_ppProductId = a})

instance FromJSON ProductPurchase where
        parseJSON
          = withObject "ProductPurchase"
              (\ o ->
                 ProductPurchase' <$>
                   (o .:? "purchaseState") <*>
                     (o .:? "consumptionState")
                     <*> (o .:? "regionCode")
                     <*> (o .:? "acknowledgementState")
                     <*> (o .:? "kind")
                     <*> (o .:? "purchaseTimeMillis")
                     <*> (o .:? "purchaseToken")
                     <*> (o .:? "quantity")
                     <*> (o .:? "obfuscatedExternalAccountId")
                     <*> (o .:? "purchaseType")
                     <*> (o .:? "obfuscatedExternalProfileId")
                     <*> (o .:? "developerPayload")
                     <*> (o .:? "orderId")
                     <*> (o .:? "productId"))

instance ToJSON ProductPurchase where
        toJSON ProductPurchase'{..}
          = object
              (catMaybes
                 [("purchaseState" .=) <$> _ppPurchaseState,
                  ("consumptionState" .=) <$> _ppConsumptionState,
                  ("regionCode" .=) <$> _ppRegionCode,
                  ("acknowledgementState" .=) <$>
                    _ppAcknowledgementState,
                  ("kind" .=) <$> _ppKind,
                  ("purchaseTimeMillis" .=) <$> _ppPurchaseTimeMillis,
                  ("purchaseToken" .=) <$> _ppPurchaseToken,
                  ("quantity" .=) <$> _ppQuantity,
                  ("obfuscatedExternalAccountId" .=) <$>
                    _ppObfuscatedExternalAccountId,
                  ("purchaseType" .=) <$> _ppPurchaseType,
                  ("obfuscatedExternalProfileId" .=) <$>
                    _ppObfuscatedExternalProFileId,
                  ("developerPayload" .=) <$> _ppDeveloperPayload,
                  ("orderId" .=) <$> _ppOrderId,
                  ("productId" .=) <$> _ppProductId])

-- | Response listing reviews.
--
-- /See:/ 'reviewsListResponse' smart constructor.
data ReviewsListResponse =
  ReviewsListResponse'
    { _rlrTokenPagination :: !(Maybe TokenPagination)
    , _rlrPageInfo :: !(Maybe PageInfo)
    , _rlrReviews :: !(Maybe [Review])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReviewsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrTokenPagination'
--
-- * 'rlrPageInfo'
--
-- * 'rlrReviews'
reviewsListResponse
    :: ReviewsListResponse
reviewsListResponse =
  ReviewsListResponse'
    { _rlrTokenPagination = Nothing
    , _rlrPageInfo = Nothing
    , _rlrReviews = Nothing
    }


-- | Pagination token, to handle a number of products that is over one page.
rlrTokenPagination :: Lens' ReviewsListResponse (Maybe TokenPagination)
rlrTokenPagination
  = lens _rlrTokenPagination
      (\ s a -> s{_rlrTokenPagination = a})

-- | Information about the current page.
rlrPageInfo :: Lens' ReviewsListResponse (Maybe PageInfo)
rlrPageInfo
  = lens _rlrPageInfo (\ s a -> s{_rlrPageInfo = a})

-- | List of reviews.
rlrReviews :: Lens' ReviewsListResponse [Review]
rlrReviews
  = lens _rlrReviews (\ s a -> s{_rlrReviews = a}) .
      _Default
      . _Coerce

instance FromJSON ReviewsListResponse where
        parseJSON
          = withObject "ReviewsListResponse"
              (\ o ->
                 ReviewsListResponse' <$>
                   (o .:? "tokenPagination") <*> (o .:? "pageInfo") <*>
                     (o .:? "reviews" .!= mempty))

instance ToJSON ReviewsListResponse where
        toJSON ReviewsListResponse'{..}
          = object
              (catMaybes
                 [("tokenPagination" .=) <$> _rlrTokenPagination,
                  ("pageInfo" .=) <$> _rlrPageInfo,
                  ("reviews" .=) <$> _rlrReviews])

-- | Response for the purchases.subscriptions.defer API.
--
-- /See:/ 'subscriptionPurchasesDeferResponse' smart constructor.
newtype SubscriptionPurchasesDeferResponse =
  SubscriptionPurchasesDeferResponse'
    { _spdrNewExpiryTimeMillis :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionPurchasesDeferResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdrNewExpiryTimeMillis'
subscriptionPurchasesDeferResponse
    :: SubscriptionPurchasesDeferResponse
subscriptionPurchasesDeferResponse =
  SubscriptionPurchasesDeferResponse' {_spdrNewExpiryTimeMillis = Nothing}


-- | The new expiry time for the subscription in milliseconds since the
-- Epoch.
spdrNewExpiryTimeMillis :: Lens' SubscriptionPurchasesDeferResponse (Maybe Int64)
spdrNewExpiryTimeMillis
  = lens _spdrNewExpiryTimeMillis
      (\ s a -> s{_spdrNewExpiryTimeMillis = a})
      . mapping _Coerce

instance FromJSON SubscriptionPurchasesDeferResponse
         where
        parseJSON
          = withObject "SubscriptionPurchasesDeferResponse"
              (\ o ->
                 SubscriptionPurchasesDeferResponse' <$>
                   (o .:? "newExpiryTimeMillis"))

instance ToJSON SubscriptionPurchasesDeferResponse
         where
        toJSON SubscriptionPurchasesDeferResponse'{..}
          = object
              (catMaybes
                 [("newExpiryTimeMillis" .=) <$>
                    _spdrNewExpiryTimeMillis])

-- | A SubscriptionPurchase resource indicates the status of a user\'s
-- subscription purchase.
--
-- /See:/ 'subscriptionPurchase' smart constructor.
data SubscriptionPurchase =
  SubscriptionPurchase'
    { _spGivenName :: !(Maybe Text)
    , _spIntroductoryPriceInfo :: !(Maybe IntroductoryPriceInfo)
    , _spAcknowledgementState :: !(Maybe (Textual Int32))
    , _spAutoResumeTimeMillis :: !(Maybe (Textual Int64))
    , _spUserCancellationTimeMillis :: !(Maybe (Textual Int64))
    , _spPaymentState :: !(Maybe (Textual Int32))
    , _spKind :: !(Maybe Text)
    , _spObfuscatedExternalAccountId :: !(Maybe Text)
    , _spPurchaseType :: !(Maybe (Textual Int32))
    , _spPromotionType :: !(Maybe (Textual Int32))
    , _spPriceChange :: !(Maybe SubscriptionPriceChange)
    , _spProFileId :: !(Maybe Text)
    , _spLinkedPurchaseToken :: !(Maybe Text)
    , _spObfuscatedExternalProFileId :: !(Maybe Text)
    , _spFamilyName :: !(Maybe Text)
    , _spExternalAccountId :: !(Maybe Text)
    , _spProFileName :: !(Maybe Text)
    , _spExpiryTimeMillis :: !(Maybe (Textual Int64))
    , _spAutoRenewing :: !(Maybe Bool)
    , _spPriceCurrencyCode :: !(Maybe Text)
    , _spEmailAddress :: !(Maybe Text)
    , _spCancelReason :: !(Maybe (Textual Int32))
    , _spCountryCode :: !(Maybe Text)
    , _spDeveloperPayload :: !(Maybe Text)
    , _spPriceAmountMicros :: !(Maybe (Textual Int64))
    , _spStartTimeMillis :: !(Maybe (Textual Int64))
    , _spOrderId :: !(Maybe Text)
    , _spPromotionCode :: !(Maybe Text)
    , _spCancelSurveyResult :: !(Maybe SubscriptionCancelSurveyResult)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionPurchase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spGivenName'
--
-- * 'spIntroductoryPriceInfo'
--
-- * 'spAcknowledgementState'
--
-- * 'spAutoResumeTimeMillis'
--
-- * 'spUserCancellationTimeMillis'
--
-- * 'spPaymentState'
--
-- * 'spKind'
--
-- * 'spObfuscatedExternalAccountId'
--
-- * 'spPurchaseType'
--
-- * 'spPromotionType'
--
-- * 'spPriceChange'
--
-- * 'spProFileId'
--
-- * 'spLinkedPurchaseToken'
--
-- * 'spObfuscatedExternalProFileId'
--
-- * 'spFamilyName'
--
-- * 'spExternalAccountId'
--
-- * 'spProFileName'
--
-- * 'spExpiryTimeMillis'
--
-- * 'spAutoRenewing'
--
-- * 'spPriceCurrencyCode'
--
-- * 'spEmailAddress'
--
-- * 'spCancelReason'
--
-- * 'spCountryCode'
--
-- * 'spDeveloperPayload'
--
-- * 'spPriceAmountMicros'
--
-- * 'spStartTimeMillis'
--
-- * 'spOrderId'
--
-- * 'spPromotionCode'
--
-- * 'spCancelSurveyResult'
subscriptionPurchase
    :: SubscriptionPurchase
subscriptionPurchase =
  SubscriptionPurchase'
    { _spGivenName = Nothing
    , _spIntroductoryPriceInfo = Nothing
    , _spAcknowledgementState = Nothing
    , _spAutoResumeTimeMillis = Nothing
    , _spUserCancellationTimeMillis = Nothing
    , _spPaymentState = Nothing
    , _spKind = Nothing
    , _spObfuscatedExternalAccountId = Nothing
    , _spPurchaseType = Nothing
    , _spPromotionType = Nothing
    , _spPriceChange = Nothing
    , _spProFileId = Nothing
    , _spLinkedPurchaseToken = Nothing
    , _spObfuscatedExternalProFileId = Nothing
    , _spFamilyName = Nothing
    , _spExternalAccountId = Nothing
    , _spProFileName = Nothing
    , _spExpiryTimeMillis = Nothing
    , _spAutoRenewing = Nothing
    , _spPriceCurrencyCode = Nothing
    , _spEmailAddress = Nothing
    , _spCancelReason = Nothing
    , _spCountryCode = Nothing
    , _spDeveloperPayload = Nothing
    , _spPriceAmountMicros = Nothing
    , _spStartTimeMillis = Nothing
    , _spOrderId = Nothing
    , _spPromotionCode = Nothing
    , _spCancelSurveyResult = Nothing
    }


-- | The given name of the user when the subscription was purchased. Only
-- present for purchases made with \'Subscribe with Google\'.
spGivenName :: Lens' SubscriptionPurchase (Maybe Text)
spGivenName
  = lens _spGivenName (\ s a -> s{_spGivenName = a})

-- | Introductory price information of the subscription. This is only present
-- when the subscription was purchased with an introductory price. This
-- field does not indicate the subscription is currently in introductory
-- price period.
spIntroductoryPriceInfo :: Lens' SubscriptionPurchase (Maybe IntroductoryPriceInfo)
spIntroductoryPriceInfo
  = lens _spIntroductoryPriceInfo
      (\ s a -> s{_spIntroductoryPriceInfo = a})

-- | The acknowledgement state of the subscription product. Possible values
-- are: 0. Yet to be acknowledged 1. Acknowledged
spAcknowledgementState :: Lens' SubscriptionPurchase (Maybe Int32)
spAcknowledgementState
  = lens _spAcknowledgementState
      (\ s a -> s{_spAcknowledgementState = a})
      . mapping _Coerce

-- | Time at which the subscription will be automatically resumed, in
-- milliseconds since the Epoch. Only present if the user has requested to
-- pause the subscription.
spAutoResumeTimeMillis :: Lens' SubscriptionPurchase (Maybe Int64)
spAutoResumeTimeMillis
  = lens _spAutoResumeTimeMillis
      (\ s a -> s{_spAutoResumeTimeMillis = a})
      . mapping _Coerce

-- | The time at which the subscription was canceled by the user, in
-- milliseconds since the epoch. Only present if cancelReason is 0.
spUserCancellationTimeMillis :: Lens' SubscriptionPurchase (Maybe Int64)
spUserCancellationTimeMillis
  = lens _spUserCancellationTimeMillis
      (\ s a -> s{_spUserCancellationTimeMillis = a})
      . mapping _Coerce

-- | The payment state of the subscription. Possible values are: 0. Payment
-- pending 1. Payment received 2. Free trial 3. Pending deferred
-- upgrade\/downgrade Not present for canceled, expired subscriptions.
spPaymentState :: Lens' SubscriptionPurchase (Maybe Int32)
spPaymentState
  = lens _spPaymentState
      (\ s a -> s{_spPaymentState = a})
      . mapping _Coerce

-- | This kind represents a subscriptionPurchase object in the
-- androidpublisher service.
spKind :: Lens' SubscriptionPurchase (Maybe Text)
spKind = lens _spKind (\ s a -> s{_spKind = a})

-- | An obfuscated version of the id that is uniquely associated with the
-- user\'s account in your app. Present for the following purchases: * If
-- account linking happened as part of the subscription purchase flow. * It
-- was specified using
-- https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid
-- when the purchase was made.
spObfuscatedExternalAccountId :: Lens' SubscriptionPurchase (Maybe Text)
spObfuscatedExternalAccountId
  = lens _spObfuscatedExternalAccountId
      (\ s a -> s{_spObfuscatedExternalAccountId = a})

-- | The type of purchase of the subscription. This field is only set if this
-- purchase was not made using the standard in-app billing flow. Possible
-- values are: 0. Test (i.e. purchased from a license testing account) 1.
-- Promo (i.e. purchased using a promo code)
spPurchaseType :: Lens' SubscriptionPurchase (Maybe Int32)
spPurchaseType
  = lens _spPurchaseType
      (\ s a -> s{_spPurchaseType = a})
      . mapping _Coerce

-- | The type of promotion applied on this purchase. This field is only set
-- if a promotion is applied when the subscription was purchased. Possible
-- values are: 0. One time code 1. Vanity code
spPromotionType :: Lens' SubscriptionPurchase (Maybe Int32)
spPromotionType
  = lens _spPromotionType
      (\ s a -> s{_spPromotionType = a})
      . mapping _Coerce

-- | The latest price change information available. This is present only when
-- there is an upcoming price change for the subscription yet to be
-- applied. Once the subscription renews with the new price or the
-- subscription is canceled, no price change information will be returned.
spPriceChange :: Lens' SubscriptionPurchase (Maybe SubscriptionPriceChange)
spPriceChange
  = lens _spPriceChange
      (\ s a -> s{_spPriceChange = a})

-- | The Google profile id of the user when the subscription was purchased.
-- Only present for purchases made with \'Subscribe with Google\'.
spProFileId :: Lens' SubscriptionPurchase (Maybe Text)
spProFileId
  = lens _spProFileId (\ s a -> s{_spProFileId = a})

-- | The purchase token of the originating purchase if this subscription is
-- one of the following: 0. Re-signup of a canceled but non-lapsed
-- subscription 1. Upgrade\/downgrade from a previous subscription For
-- example, suppose a user originally signs up and you receive purchase
-- token X, then the user cancels and goes through the resignup flow
-- (before their subscription lapses) and you receive purchase token Y, and
-- finally the user upgrades their subscription and you receive purchase
-- token Z. If you call this API with purchase token Z, this field will be
-- set to Y. If you call this API with purchase token Y, this field will be
-- set to X. If you call this API with purchase token X, this field will
-- not be set.
spLinkedPurchaseToken :: Lens' SubscriptionPurchase (Maybe Text)
spLinkedPurchaseToken
  = lens _spLinkedPurchaseToken
      (\ s a -> s{_spLinkedPurchaseToken = a})

-- | An obfuscated version of the id that is uniquely associated with the
-- user\'s profile in your app. Only present if specified using
-- https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid
-- when the purchase was made.
spObfuscatedExternalProFileId :: Lens' SubscriptionPurchase (Maybe Text)
spObfuscatedExternalProFileId
  = lens _spObfuscatedExternalProFileId
      (\ s a -> s{_spObfuscatedExternalProFileId = a})

-- | The family name of the user when the subscription was purchased. Only
-- present for purchases made with \'Subscribe with Google\'.
spFamilyName :: Lens' SubscriptionPurchase (Maybe Text)
spFamilyName
  = lens _spFamilyName (\ s a -> s{_spFamilyName = a})

-- | User account identifier in the third-party service. Only present if
-- account linking happened as part of the subscription purchase flow.
spExternalAccountId :: Lens' SubscriptionPurchase (Maybe Text)
spExternalAccountId
  = lens _spExternalAccountId
      (\ s a -> s{_spExternalAccountId = a})

-- | The profile name of the user when the subscription was purchased. Only
-- present for purchases made with \'Subscribe with Google\'.
spProFileName :: Lens' SubscriptionPurchase (Maybe Text)
spProFileName
  = lens _spProFileName
      (\ s a -> s{_spProFileName = a})

-- | Time at which the subscription will expire, in milliseconds since the
-- Epoch.
spExpiryTimeMillis :: Lens' SubscriptionPurchase (Maybe Int64)
spExpiryTimeMillis
  = lens _spExpiryTimeMillis
      (\ s a -> s{_spExpiryTimeMillis = a})
      . mapping _Coerce

-- | Whether the subscription will automatically be renewed when it reaches
-- its current expiry time.
spAutoRenewing :: Lens' SubscriptionPurchase (Maybe Bool)
spAutoRenewing
  = lens _spAutoRenewing
      (\ s a -> s{_spAutoRenewing = a})

-- | ISO 4217 currency code for the subscription price. For example, if the
-- price is specified in British pounds sterling, price_currency_code is
-- \"GBP\".
spPriceCurrencyCode :: Lens' SubscriptionPurchase (Maybe Text)
spPriceCurrencyCode
  = lens _spPriceCurrencyCode
      (\ s a -> s{_spPriceCurrencyCode = a})

-- | The email address of the user when the subscription was purchased. Only
-- present for purchases made with \'Subscribe with Google\'.
spEmailAddress :: Lens' SubscriptionPurchase (Maybe Text)
spEmailAddress
  = lens _spEmailAddress
      (\ s a -> s{_spEmailAddress = a})

-- | The reason why a subscription was canceled or is not auto-renewing.
-- Possible values are: 0. User canceled the subscription 1. Subscription
-- was canceled by the system, for example because of a billing problem 2.
-- Subscription was replaced with a new subscription 3. Subscription was
-- canceled by the developer
spCancelReason :: Lens' SubscriptionPurchase (Maybe Int32)
spCancelReason
  = lens _spCancelReason
      (\ s a -> s{_spCancelReason = a})
      . mapping _Coerce

-- | ISO 3166-1 alpha-2 billing country\/region code of the user at the time
-- the subscription was granted.
spCountryCode :: Lens' SubscriptionPurchase (Maybe Text)
spCountryCode
  = lens _spCountryCode
      (\ s a -> s{_spCountryCode = a})

-- | A developer-specified string that contains supplemental information
-- about an order.
spDeveloperPayload :: Lens' SubscriptionPurchase (Maybe Text)
spDeveloperPayload
  = lens _spDeveloperPayload
      (\ s a -> s{_spDeveloperPayload = a})

-- | Price of the subscription, For tax exclusive countries, the price
-- doesn\'t include tax. For tax inclusive countries, the price includes
-- tax. Price is expressed in micro-units, where 1,000,000 micro-units
-- represents one unit of the currency. For example, if the subscription
-- price is €1.99, price_amount_micros is 1990000.
spPriceAmountMicros :: Lens' SubscriptionPurchase (Maybe Int64)
spPriceAmountMicros
  = lens _spPriceAmountMicros
      (\ s a -> s{_spPriceAmountMicros = a})
      . mapping _Coerce

-- | Time at which the subscription was granted, in milliseconds since the
-- Epoch.
spStartTimeMillis :: Lens' SubscriptionPurchase (Maybe Int64)
spStartTimeMillis
  = lens _spStartTimeMillis
      (\ s a -> s{_spStartTimeMillis = a})
      . mapping _Coerce

-- | The order id of the latest recurring order associated with the purchase
-- of the subscription. If the subscription was canceled because payment
-- was declined, this will be the order id from the payment declined order.
spOrderId :: Lens' SubscriptionPurchase (Maybe Text)
spOrderId
  = lens _spOrderId (\ s a -> s{_spOrderId = a})

-- | The promotion code applied on this purchase. This field is only set if a
-- vanity code promotion is applied when the subscription was purchased.
spPromotionCode :: Lens' SubscriptionPurchase (Maybe Text)
spPromotionCode
  = lens _spPromotionCode
      (\ s a -> s{_spPromotionCode = a})

-- | Information provided by the user when they complete the subscription
-- cancellation flow (cancellation reason survey).
spCancelSurveyResult :: Lens' SubscriptionPurchase (Maybe SubscriptionCancelSurveyResult)
spCancelSurveyResult
  = lens _spCancelSurveyResult
      (\ s a -> s{_spCancelSurveyResult = a})

instance FromJSON SubscriptionPurchase where
        parseJSON
          = withObject "SubscriptionPurchase"
              (\ o ->
                 SubscriptionPurchase' <$>
                   (o .:? "givenName") <*>
                     (o .:? "introductoryPriceInfo")
                     <*> (o .:? "acknowledgementState")
                     <*> (o .:? "autoResumeTimeMillis")
                     <*> (o .:? "userCancellationTimeMillis")
                     <*> (o .:? "paymentState")
                     <*> (o .:? "kind")
                     <*> (o .:? "obfuscatedExternalAccountId")
                     <*> (o .:? "purchaseType")
                     <*> (o .:? "promotionType")
                     <*> (o .:? "priceChange")
                     <*> (o .:? "profileId")
                     <*> (o .:? "linkedPurchaseToken")
                     <*> (o .:? "obfuscatedExternalProfileId")
                     <*> (o .:? "familyName")
                     <*> (o .:? "externalAccountId")
                     <*> (o .:? "profileName")
                     <*> (o .:? "expiryTimeMillis")
                     <*> (o .:? "autoRenewing")
                     <*> (o .:? "priceCurrencyCode")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "cancelReason")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "developerPayload")
                     <*> (o .:? "priceAmountMicros")
                     <*> (o .:? "startTimeMillis")
                     <*> (o .:? "orderId")
                     <*> (o .:? "promotionCode")
                     <*> (o .:? "cancelSurveyResult"))

instance ToJSON SubscriptionPurchase where
        toJSON SubscriptionPurchase'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _spGivenName,
                  ("introductoryPriceInfo" .=) <$>
                    _spIntroductoryPriceInfo,
                  ("acknowledgementState" .=) <$>
                    _spAcknowledgementState,
                  ("autoResumeTimeMillis" .=) <$>
                    _spAutoResumeTimeMillis,
                  ("userCancellationTimeMillis" .=) <$>
                    _spUserCancellationTimeMillis,
                  ("paymentState" .=) <$> _spPaymentState,
                  ("kind" .=) <$> _spKind,
                  ("obfuscatedExternalAccountId" .=) <$>
                    _spObfuscatedExternalAccountId,
                  ("purchaseType" .=) <$> _spPurchaseType,
                  ("promotionType" .=) <$> _spPromotionType,
                  ("priceChange" .=) <$> _spPriceChange,
                  ("profileId" .=) <$> _spProFileId,
                  ("linkedPurchaseToken" .=) <$>
                    _spLinkedPurchaseToken,
                  ("obfuscatedExternalProfileId" .=) <$>
                    _spObfuscatedExternalProFileId,
                  ("familyName" .=) <$> _spFamilyName,
                  ("externalAccountId" .=) <$> _spExternalAccountId,
                  ("profileName" .=) <$> _spProFileName,
                  ("expiryTimeMillis" .=) <$> _spExpiryTimeMillis,
                  ("autoRenewing" .=) <$> _spAutoRenewing,
                  ("priceCurrencyCode" .=) <$> _spPriceCurrencyCode,
                  ("emailAddress" .=) <$> _spEmailAddress,
                  ("cancelReason" .=) <$> _spCancelReason,
                  ("countryCode" .=) <$> _spCountryCode,
                  ("developerPayload" .=) <$> _spDeveloperPayload,
                  ("priceAmountMicros" .=) <$> _spPriceAmountMicros,
                  ("startTimeMillis" .=) <$> _spStartTimeMillis,
                  ("orderId" .=) <$> _spOrderId,
                  ("promotionCode" .=) <$> _spPromotionCode,
                  ("cancelSurveyResult" .=) <$> _spCancelSurveyResult])

-- | Contains the price change information for a subscription that can be
-- used to control the user journey for the price change in the app. This
-- can be in the form of seeking confirmation from the user or tailoring
-- the experience for a successful conversion.
--
-- /See:/ 'subscriptionPriceChange' smart constructor.
data SubscriptionPriceChange =
  SubscriptionPriceChange'
    { _spcState :: !(Maybe (Textual Int32))
    , _spcNewPrice :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionPriceChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spcState'
--
-- * 'spcNewPrice'
subscriptionPriceChange
    :: SubscriptionPriceChange
subscriptionPriceChange =
  SubscriptionPriceChange' {_spcState = Nothing, _spcNewPrice = Nothing}


-- | The current state of the price change. Possible values are: 0.
-- Outstanding: State for a pending price change waiting for the user to
-- agree. In this state, you can optionally seek confirmation from the user
-- using the In-App API. 1. Accepted: State for an accepted price change
-- that the subscription will renew with unless it\'s canceled. The price
-- change takes effect on a future date when the subscription renews. Note
-- that the change might not occur when the subscription is renewed next.
spcState :: Lens' SubscriptionPriceChange (Maybe Int32)
spcState
  = lens _spcState (\ s a -> s{_spcState = a}) .
      mapping _Coerce

-- | The new price the subscription will renew with if the price change is
-- accepted by the user.
spcNewPrice :: Lens' SubscriptionPriceChange (Maybe Price)
spcNewPrice
  = lens _spcNewPrice (\ s a -> s{_spcNewPrice = a})

instance FromJSON SubscriptionPriceChange where
        parseJSON
          = withObject "SubscriptionPriceChange"
              (\ o ->
                 SubscriptionPriceChange' <$>
                   (o .:? "state") <*> (o .:? "newPrice"))

instance ToJSON SubscriptionPriceChange where
        toJSON SubscriptionPriceChange'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _spcState,
                  ("newPrice" .=) <$> _spcNewPrice])

-- | The app details. The resource for DetailsService.
--
-- /See:/ 'appDetails' smart constructor.
data AppDetails =
  AppDetails'
    { _adContactPhone :: !(Maybe Text)
    , _adContactEmail :: !(Maybe Text)
    , _adContactWebsite :: !(Maybe Text)
    , _adDefaultLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adContactPhone'
--
-- * 'adContactEmail'
--
-- * 'adContactWebsite'
--
-- * 'adDefaultLanguage'
appDetails
    :: AppDetails
appDetails =
  AppDetails'
    { _adContactPhone = Nothing
    , _adContactEmail = Nothing
    , _adContactWebsite = Nothing
    , _adDefaultLanguage = Nothing
    }


-- | The user-visible support telephone number for this app.
adContactPhone :: Lens' AppDetails (Maybe Text)
adContactPhone
  = lens _adContactPhone
      (\ s a -> s{_adContactPhone = a})

-- | The user-visible support email for this app.
adContactEmail :: Lens' AppDetails (Maybe Text)
adContactEmail
  = lens _adContactEmail
      (\ s a -> s{_adContactEmail = a})

-- | The user-visible website for this app.
adContactWebsite :: Lens' AppDetails (Maybe Text)
adContactWebsite
  = lens _adContactWebsite
      (\ s a -> s{_adContactWebsite = a})

-- | Default language code, in BCP 47 format (eg \"en-US\").
adDefaultLanguage :: Lens' AppDetails (Maybe Text)
adDefaultLanguage
  = lens _adDefaultLanguage
      (\ s a -> s{_adDefaultLanguage = a})

instance FromJSON AppDetails where
        parseJSON
          = withObject "AppDetails"
              (\ o ->
                 AppDetails' <$>
                   (o .:? "contactPhone") <*> (o .:? "contactEmail") <*>
                     (o .:? "contactWebsite")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON AppDetails where
        toJSON AppDetails'{..}
          = object
              (catMaybes
                 [("contactPhone" .=) <$> _adContactPhone,
                  ("contactEmail" .=) <$> _adContactEmail,
                  ("contactWebsite" .=) <$> _adContactWebsite,
                  ("defaultLanguage" .=) <$> _adDefaultLanguage])

-- | Prices per buyer region. None of these can be zero, as in-app products
-- are never free. Map key is region code, as defined by ISO 3166-2.
--
-- /See:/ 'inAppProductPrices' smart constructor.
newtype InAppProductPrices =
  InAppProductPrices'
    { _iAppAddtional :: HashMap Text Price
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductPrices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAppAddtional'
inAppProductPrices
    :: HashMap Text Price -- ^ 'iAppAddtional'
    -> InAppProductPrices
inAppProductPrices pIAppAddtional_ =
  InAppProductPrices' {_iAppAddtional = _Coerce # pIAppAddtional_}


iAppAddtional :: Lens' InAppProductPrices (HashMap Text Price)
iAppAddtional
  = lens _iAppAddtional
      (\ s a -> s{_iAppAddtional = a})
      . _Coerce

instance FromJSON InAppProductPrices where
        parseJSON
          = withObject "InAppProductPrices"
              (\ o -> InAppProductPrices' <$> (parseJSONObject o))

instance ToJSON InAppProductPrices where
        toJSON = toJSON . _iAppAddtional

-- | Defines an APK available for this application that is hosted externally
-- and not uploaded to Google Play. This function is only available to
-- organizations using Managed Play whose application is configured to
-- restrict distribution to the organizations.
--
-- /See:/ 'externallyHostedAPK' smart constructor.
data ExternallyHostedAPK =
  ExternallyHostedAPK'
    { _ehapkApplicationLabel :: !(Maybe Text)
    , _ehapkMaximumSdk :: !(Maybe (Textual Int32))
    , _ehapkNATiveCodes :: !(Maybe [Text])
    , _ehapkVersionCode :: !(Maybe (Textual Int32))
    , _ehapkFileSha256Base64 :: !(Maybe Text)
    , _ehapkExternallyHostedURL :: !(Maybe Text)
    , _ehapkVersionName :: !(Maybe Text)
    , _ehapkPackageName :: !(Maybe Text)
    , _ehapkFileSize :: !(Maybe (Textual Int64))
    , _ehapkIconBase64 :: !(Maybe Text)
    , _ehapkUsesFeatures :: !(Maybe [Text])
    , _ehapkMinimumSdk :: !(Maybe (Textual Int32))
    , _ehapkFileSha1Base64 :: !(Maybe Text)
    , _ehapkUsesPermissions :: !(Maybe [UsesPermission])
    , _ehapkCertificateBase64s :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternallyHostedAPK' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehapkApplicationLabel'
--
-- * 'ehapkMaximumSdk'
--
-- * 'ehapkNATiveCodes'
--
-- * 'ehapkVersionCode'
--
-- * 'ehapkFileSha256Base64'
--
-- * 'ehapkExternallyHostedURL'
--
-- * 'ehapkVersionName'
--
-- * 'ehapkPackageName'
--
-- * 'ehapkFileSize'
--
-- * 'ehapkIconBase64'
--
-- * 'ehapkUsesFeatures'
--
-- * 'ehapkMinimumSdk'
--
-- * 'ehapkFileSha1Base64'
--
-- * 'ehapkUsesPermissions'
--
-- * 'ehapkCertificateBase64s'
externallyHostedAPK
    :: ExternallyHostedAPK
externallyHostedAPK =
  ExternallyHostedAPK'
    { _ehapkApplicationLabel = Nothing
    , _ehapkMaximumSdk = Nothing
    , _ehapkNATiveCodes = Nothing
    , _ehapkVersionCode = Nothing
    , _ehapkFileSha256Base64 = Nothing
    , _ehapkExternallyHostedURL = Nothing
    , _ehapkVersionName = Nothing
    , _ehapkPackageName = Nothing
    , _ehapkFileSize = Nothing
    , _ehapkIconBase64 = Nothing
    , _ehapkUsesFeatures = Nothing
    , _ehapkMinimumSdk = Nothing
    , _ehapkFileSha1Base64 = Nothing
    , _ehapkUsesPermissions = Nothing
    , _ehapkCertificateBase64s = Nothing
    }


-- | The application label.
ehapkApplicationLabel :: Lens' ExternallyHostedAPK (Maybe Text)
ehapkApplicationLabel
  = lens _ehapkApplicationLabel
      (\ s a -> s{_ehapkApplicationLabel = a})

-- | The maximum SDK supported by this APK (optional).
ehapkMaximumSdk :: Lens' ExternallyHostedAPK (Maybe Int32)
ehapkMaximumSdk
  = lens _ehapkMaximumSdk
      (\ s a -> s{_ehapkMaximumSdk = a})
      . mapping _Coerce

-- | The native code environments supported by this APK (optional).
ehapkNATiveCodes :: Lens' ExternallyHostedAPK [Text]
ehapkNATiveCodes
  = lens _ehapkNATiveCodes
      (\ s a -> s{_ehapkNATiveCodes = a})
      . _Default
      . _Coerce

-- | The version code of this APK.
ehapkVersionCode :: Lens' ExternallyHostedAPK (Maybe Int32)
ehapkVersionCode
  = lens _ehapkVersionCode
      (\ s a -> s{_ehapkVersionCode = a})
      . mapping _Coerce

-- | The sha256 checksum of this APK, represented as a base64 encoded byte
-- array.
ehapkFileSha256Base64 :: Lens' ExternallyHostedAPK (Maybe Text)
ehapkFileSha256Base64
  = lens _ehapkFileSha256Base64
      (\ s a -> s{_ehapkFileSha256Base64 = a})

-- | The URL at which the APK is hosted. This must be an https URL.
ehapkExternallyHostedURL :: Lens' ExternallyHostedAPK (Maybe Text)
ehapkExternallyHostedURL
  = lens _ehapkExternallyHostedURL
      (\ s a -> s{_ehapkExternallyHostedURL = a})

-- | The version name of this APK.
ehapkVersionName :: Lens' ExternallyHostedAPK (Maybe Text)
ehapkVersionName
  = lens _ehapkVersionName
      (\ s a -> s{_ehapkVersionName = a})

-- | The package name.
ehapkPackageName :: Lens' ExternallyHostedAPK (Maybe Text)
ehapkPackageName
  = lens _ehapkPackageName
      (\ s a -> s{_ehapkPackageName = a})

-- | The file size in bytes of this APK.
ehapkFileSize :: Lens' ExternallyHostedAPK (Maybe Int64)
ehapkFileSize
  = lens _ehapkFileSize
      (\ s a -> s{_ehapkFileSize = a})
      . mapping _Coerce

-- | The icon image from the APK, as a base64 encoded byte array.
ehapkIconBase64 :: Lens' ExternallyHostedAPK (Maybe Text)
ehapkIconBase64
  = lens _ehapkIconBase64
      (\ s a -> s{_ehapkIconBase64 = a})

-- | The features required by this APK (optional).
ehapkUsesFeatures :: Lens' ExternallyHostedAPK [Text]
ehapkUsesFeatures
  = lens _ehapkUsesFeatures
      (\ s a -> s{_ehapkUsesFeatures = a})
      . _Default
      . _Coerce

-- | The minimum SDK targeted by this APK.
ehapkMinimumSdk :: Lens' ExternallyHostedAPK (Maybe Int32)
ehapkMinimumSdk
  = lens _ehapkMinimumSdk
      (\ s a -> s{_ehapkMinimumSdk = a})
      . mapping _Coerce

-- | The sha1 checksum of this APK, represented as a base64 encoded byte
-- array.
ehapkFileSha1Base64 :: Lens' ExternallyHostedAPK (Maybe Text)
ehapkFileSha1Base64
  = lens _ehapkFileSha1Base64
      (\ s a -> s{_ehapkFileSha1Base64 = a})

-- | The permissions requested by this APK.
ehapkUsesPermissions :: Lens' ExternallyHostedAPK [UsesPermission]
ehapkUsesPermissions
  = lens _ehapkUsesPermissions
      (\ s a -> s{_ehapkUsesPermissions = a})
      . _Default
      . _Coerce

-- | A certificate (or array of certificates if a certificate-chain is used)
-- used to sign this APK, represented as a base64 encoded byte array.
ehapkCertificateBase64s :: Lens' ExternallyHostedAPK [Text]
ehapkCertificateBase64s
  = lens _ehapkCertificateBase64s
      (\ s a -> s{_ehapkCertificateBase64s = a})
      . _Default
      . _Coerce

instance FromJSON ExternallyHostedAPK where
        parseJSON
          = withObject "ExternallyHostedAPK"
              (\ o ->
                 ExternallyHostedAPK' <$>
                   (o .:? "applicationLabel") <*> (o .:? "maximumSdk")
                     <*> (o .:? "nativeCodes" .!= mempty)
                     <*> (o .:? "versionCode")
                     <*> (o .:? "fileSha256Base64")
                     <*> (o .:? "externallyHostedUrl")
                     <*> (o .:? "versionName")
                     <*> (o .:? "packageName")
                     <*> (o .:? "fileSize")
                     <*> (o .:? "iconBase64")
                     <*> (o .:? "usesFeatures" .!= mempty)
                     <*> (o .:? "minimumSdk")
                     <*> (o .:? "fileSha1Base64")
                     <*> (o .:? "usesPermissions" .!= mempty)
                     <*> (o .:? "certificateBase64s" .!= mempty))

instance ToJSON ExternallyHostedAPK where
        toJSON ExternallyHostedAPK'{..}
          = object
              (catMaybes
                 [("applicationLabel" .=) <$> _ehapkApplicationLabel,
                  ("maximumSdk" .=) <$> _ehapkMaximumSdk,
                  ("nativeCodes" .=) <$> _ehapkNATiveCodes,
                  ("versionCode" .=) <$> _ehapkVersionCode,
                  ("fileSha256Base64" .=) <$> _ehapkFileSha256Base64,
                  ("externallyHostedUrl" .=) <$>
                    _ehapkExternallyHostedURL,
                  ("versionName" .=) <$> _ehapkVersionName,
                  ("packageName" .=) <$> _ehapkPackageName,
                  ("fileSize" .=) <$> _ehapkFileSize,
                  ("iconBase64" .=) <$> _ehapkIconBase64,
                  ("usesFeatures" .=) <$> _ehapkUsesFeatures,
                  ("minimumSdk" .=) <$> _ehapkMinimumSdk,
                  ("fileSha1Base64" .=) <$> _ehapkFileSha1Base64,
                  ("usesPermissions" .=) <$> _ehapkUsesPermissions,
                  ("certificateBase64s" .=) <$>
                    _ehapkCertificateBase64s])

-- | A release within a track.
--
-- /See:/ 'trackRelease' smart constructor.
data TrackRelease =
  TrackRelease'
    { _trVersionCodes :: !(Maybe [Textual Int64])
    , _trStatus :: !(Maybe TrackReleaseStatus)
    , _trReleaseNotes :: !(Maybe [LocalizedText])
    , _trUserFraction :: !(Maybe (Textual Double))
    , _trCountryTargeting :: !(Maybe CountryTargeting)
    , _trName :: !(Maybe Text)
    , _trInAppUpdatePriority :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrackRelease' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trVersionCodes'
--
-- * 'trStatus'
--
-- * 'trReleaseNotes'
--
-- * 'trUserFraction'
--
-- * 'trCountryTargeting'
--
-- * 'trName'
--
-- * 'trInAppUpdatePriority'
trackRelease
    :: TrackRelease
trackRelease =
  TrackRelease'
    { _trVersionCodes = Nothing
    , _trStatus = Nothing
    , _trReleaseNotes = Nothing
    , _trUserFraction = Nothing
    , _trCountryTargeting = Nothing
    , _trName = Nothing
    , _trInAppUpdatePriority = Nothing
    }


-- | Version codes of all APKs in the release. Must include version codes to
-- retain from previous releases.
trVersionCodes :: Lens' TrackRelease [Int64]
trVersionCodes
  = lens _trVersionCodes
      (\ s a -> s{_trVersionCodes = a})
      . _Default
      . _Coerce

-- | The status of the release.
trStatus :: Lens' TrackRelease (Maybe TrackReleaseStatus)
trStatus = lens _trStatus (\ s a -> s{_trStatus = a})

-- | A description of what is new in this release.
trReleaseNotes :: Lens' TrackRelease [LocalizedText]
trReleaseNotes
  = lens _trReleaseNotes
      (\ s a -> s{_trReleaseNotes = a})
      . _Default
      . _Coerce

-- | Fraction of users who are eligible for a staged release. 0 \< fraction
-- \< 1. Can only be set when status is \"inProgress\" or \"halted\".
trUserFraction :: Lens' TrackRelease (Maybe Double)
trUserFraction
  = lens _trUserFraction
      (\ s a -> s{_trUserFraction = a})
      . mapping _Coerce

-- | Restricts a release to a specific set of countries.
trCountryTargeting :: Lens' TrackRelease (Maybe CountryTargeting)
trCountryTargeting
  = lens _trCountryTargeting
      (\ s a -> s{_trCountryTargeting = a})

-- | The release name. Not required to be unique. If not set, the name is
-- generated from the APK\'s version_name. If the release contains multiple
-- APKs, the name is generated from the date.
trName :: Lens' TrackRelease (Maybe Text)
trName = lens _trName (\ s a -> s{_trName = a})

-- | In-app update priority of the release. All newly added APKs in the
-- release will be considered at this priority. Can take values in the
-- range [0, 5], with 5 the highest priority. Defaults to 0.
-- in_app_update_priority can not be updated once the release is rolled
-- out. See
-- https:\/\/developer.android.com\/guide\/playcore\/in-app-updates.
trInAppUpdatePriority :: Lens' TrackRelease (Maybe Int32)
trInAppUpdatePriority
  = lens _trInAppUpdatePriority
      (\ s a -> s{_trInAppUpdatePriority = a})
      . mapping _Coerce

instance FromJSON TrackRelease where
        parseJSON
          = withObject "TrackRelease"
              (\ o ->
                 TrackRelease' <$>
                   (o .:? "versionCodes" .!= mempty) <*>
                     (o .:? "status")
                     <*> (o .:? "releaseNotes" .!= mempty)
                     <*> (o .:? "userFraction")
                     <*> (o .:? "countryTargeting")
                     <*> (o .:? "name")
                     <*> (o .:? "inAppUpdatePriority"))

instance ToJSON TrackRelease where
        toJSON TrackRelease'{..}
          = object
              (catMaybes
                 [("versionCodes" .=) <$> _trVersionCodes,
                  ("status" .=) <$> _trStatus,
                  ("releaseNotes" .=) <$> _trReleaseNotes,
                  ("userFraction" .=) <$> _trUserFraction,
                  ("countryTargeting" .=) <$> _trCountryTargeting,
                  ("name" .=) <$> _trName,
                  ("inAppUpdatePriority" .=) <$>
                    _trInAppUpdatePriority])

-- | Country targeting specification.
--
-- /See:/ 'countryTargeting' smart constructor.
data CountryTargeting =
  CountryTargeting'
    { _ctIncludeRestOfWorld :: !(Maybe Bool)
    , _ctCountries :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CountryTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctIncludeRestOfWorld'
--
-- * 'ctCountries'
countryTargeting
    :: CountryTargeting
countryTargeting =
  CountryTargeting' {_ctIncludeRestOfWorld = Nothing, _ctCountries = Nothing}


-- | Include \"rest of world\" as well as explicitly targeted countries.
ctIncludeRestOfWorld :: Lens' CountryTargeting (Maybe Bool)
ctIncludeRestOfWorld
  = lens _ctIncludeRestOfWorld
      (\ s a -> s{_ctIncludeRestOfWorld = a})

-- | Countries to target, specified as two letter [CLDR
-- codes](https:\/\/unicode.org\/cldr\/charts\/latest\/supplemental\/territory_containment_un_m_49.html).
ctCountries :: Lens' CountryTargeting [Text]
ctCountries
  = lens _ctCountries (\ s a -> s{_ctCountries = a}) .
      _Default
      . _Coerce

instance FromJSON CountryTargeting where
        parseJSON
          = withObject "CountryTargeting"
              (\ o ->
                 CountryTargeting' <$>
                   (o .:? "includeRestOfWorld") <*>
                     (o .:? "countries" .!= mempty))

instance ToJSON CountryTargeting where
        toJSON CountryTargeting'{..}
          = object
              (catMaybes
                 [("includeRestOfWorld" .=) <$> _ctIncludeRestOfWorld,
                  ("countries" .=) <$> _ctCountries])

-- | Information about an app bundle. The resource for BundlesService.
--
-- /See:/ 'bundle' smart constructor.
data Bundle =
  Bundle'
    { _bVersionCode :: !(Maybe (Textual Int32))
    , _bSha1 :: !(Maybe Text)
    , _bSha256 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Bundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bVersionCode'
--
-- * 'bSha1'
--
-- * 'bSha256'
bundle
    :: Bundle
bundle = Bundle' {_bVersionCode = Nothing, _bSha1 = Nothing, _bSha256 = Nothing}


-- | The version code of the Android App Bundle, as specified in the Android
-- App Bundle\'s base module APK manifest file.
bVersionCode :: Lens' Bundle (Maybe Int32)
bVersionCode
  = lens _bVersionCode (\ s a -> s{_bVersionCode = a})
      . mapping _Coerce

-- | A sha1 hash of the upload payload, encoded as a hex string and matching
-- the output of the sha1sum command.
bSha1 :: Lens' Bundle (Maybe Text)
bSha1 = lens _bSha1 (\ s a -> s{_bSha1 = a})

-- | A sha256 hash of the upload payload, encoded as a hex string and
-- matching the output of the sha256sum command.
bSha256 :: Lens' Bundle (Maybe Text)
bSha256 = lens _bSha256 (\ s a -> s{_bSha256 = a})

instance FromJSON Bundle where
        parseJSON
          = withObject "Bundle"
              (\ o ->
                 Bundle' <$>
                   (o .:? "versionCode") <*> (o .:? "sha1") <*>
                     (o .:? "sha256"))

instance ToJSON Bundle where
        toJSON Bundle'{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _bVersionCode,
                  ("sha1" .=) <$> _bSha1, ("sha256" .=) <$> _bSha256])

-- | Represents a deobfuscation file.
--
-- /See:/ 'deobfuscationFile' smart constructor.
newtype DeobfuscationFile =
  DeobfuscationFile'
    { _dfSymbolType :: Maybe DeobfuscationFileSymbolType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeobfuscationFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfSymbolType'
deobfuscationFile
    :: DeobfuscationFile
deobfuscationFile = DeobfuscationFile' {_dfSymbolType = Nothing}


-- | The type of the deobfuscation file.
dfSymbolType :: Lens' DeobfuscationFile (Maybe DeobfuscationFileSymbolType)
dfSymbolType
  = lens _dfSymbolType (\ s a -> s{_dfSymbolType = a})

instance FromJSON DeobfuscationFile where
        parseJSON
          = withObject "DeobfuscationFile"
              (\ o -> DeobfuscationFile' <$> (o .:? "symbolType"))

instance ToJSON DeobfuscationFile where
        toJSON DeobfuscationFile'{..}
          = object
              (catMaybes [("symbolType" .=) <$> _dfSymbolType])

-- | Response for the voidedpurchases.list API.
--
-- /See:/ 'voidedPurchasesListResponse' smart constructor.
data VoidedPurchasesListResponse =
  VoidedPurchasesListResponse'
    { _vplrTokenPagination :: !(Maybe TokenPagination)
    , _vplrPageInfo :: !(Maybe PageInfo)
    , _vplrVoidedPurchases :: !(Maybe [VoidedPurchase])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VoidedPurchasesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vplrTokenPagination'
--
-- * 'vplrPageInfo'
--
-- * 'vplrVoidedPurchases'
voidedPurchasesListResponse
    :: VoidedPurchasesListResponse
voidedPurchasesListResponse =
  VoidedPurchasesListResponse'
    { _vplrTokenPagination = Nothing
    , _vplrPageInfo = Nothing
    , _vplrVoidedPurchases = Nothing
    }


-- | Pagination information for token pagination.
vplrTokenPagination :: Lens' VoidedPurchasesListResponse (Maybe TokenPagination)
vplrTokenPagination
  = lens _vplrTokenPagination
      (\ s a -> s{_vplrTokenPagination = a})

-- | General pagination information.
vplrPageInfo :: Lens' VoidedPurchasesListResponse (Maybe PageInfo)
vplrPageInfo
  = lens _vplrPageInfo (\ s a -> s{_vplrPageInfo = a})

vplrVoidedPurchases :: Lens' VoidedPurchasesListResponse [VoidedPurchase]
vplrVoidedPurchases
  = lens _vplrVoidedPurchases
      (\ s a -> s{_vplrVoidedPurchases = a})
      . _Default
      . _Coerce

instance FromJSON VoidedPurchasesListResponse where
        parseJSON
          = withObject "VoidedPurchasesListResponse"
              (\ o ->
                 VoidedPurchasesListResponse' <$>
                   (o .:? "tokenPagination") <*> (o .:? "pageInfo") <*>
                     (o .:? "voidedPurchases" .!= mempty))

instance ToJSON VoidedPurchasesListResponse where
        toJSON VoidedPurchasesListResponse'{..}
          = object
              (catMaybes
                 [("tokenPagination" .=) <$> _vplrTokenPagination,
                  ("pageInfo" .=) <$> _vplrPageInfo,
                  ("voidedPurchases" .=) <$> _vplrVoidedPurchases])

-- | Response for uploading an expansion file.
--
-- /See:/ 'expansionFilesUploadResponse' smart constructor.
newtype ExpansionFilesUploadResponse =
  ExpansionFilesUploadResponse'
    { _efurExpansionFile :: Maybe ExpansionFile
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExpansionFilesUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efurExpansionFile'
expansionFilesUploadResponse
    :: ExpansionFilesUploadResponse
expansionFilesUploadResponse =
  ExpansionFilesUploadResponse' {_efurExpansionFile = Nothing}


-- | The uploaded expansion file configuration.
efurExpansionFile :: Lens' ExpansionFilesUploadResponse (Maybe ExpansionFile)
efurExpansionFile
  = lens _efurExpansionFile
      (\ s a -> s{_efurExpansionFile = a})

instance FromJSON ExpansionFilesUploadResponse where
        parseJSON
          = withObject "ExpansionFilesUploadResponse"
              (\ o ->
                 ExpansionFilesUploadResponse' <$>
                   (o .:? "expansionFile"))

instance ToJSON ExpansionFilesUploadResponse where
        toJSON ExpansionFilesUploadResponse'{..}
          = object
              (catMaybes
                 [("expansionFile" .=) <$> _efurExpansionFile])

-- | Response for uploading an image.
--
-- /See:/ 'imagesUploadResponse' smart constructor.
newtype ImagesUploadResponse =
  ImagesUploadResponse'
    { _iurImage :: Maybe Image
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iurImage'
imagesUploadResponse
    :: ImagesUploadResponse
imagesUploadResponse = ImagesUploadResponse' {_iurImage = Nothing}


-- | The uploaded image.
iurImage :: Lens' ImagesUploadResponse (Maybe Image)
iurImage = lens _iurImage (\ s a -> s{_iurImage = a})

instance FromJSON ImagesUploadResponse where
        parseJSON
          = withObject "ImagesUploadResponse"
              (\ o -> ImagesUploadResponse' <$> (o .:? "image"))

instance ToJSON ImagesUploadResponse where
        toJSON ImagesUploadResponse'{..}
          = object (catMaybes [("image" .=) <$> _iurImage])

-- | Responses for the upload.
--
-- /See:/ 'deobfuscationFilesUploadResponse' smart constructor.
newtype DeobfuscationFilesUploadResponse =
  DeobfuscationFilesUploadResponse'
    { _dfurDeobfuscationFile :: Maybe DeobfuscationFile
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeobfuscationFilesUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfurDeobfuscationFile'
deobfuscationFilesUploadResponse
    :: DeobfuscationFilesUploadResponse
deobfuscationFilesUploadResponse =
  DeobfuscationFilesUploadResponse' {_dfurDeobfuscationFile = Nothing}


-- | The uploaded Deobfuscation File configuration.
dfurDeobfuscationFile :: Lens' DeobfuscationFilesUploadResponse (Maybe DeobfuscationFile)
dfurDeobfuscationFile
  = lens _dfurDeobfuscationFile
      (\ s a -> s{_dfurDeobfuscationFile = a})

instance FromJSON DeobfuscationFilesUploadResponse
         where
        parseJSON
          = withObject "DeobfuscationFilesUploadResponse"
              (\ o ->
                 DeobfuscationFilesUploadResponse' <$>
                   (o .:? "deobfuscationFile"))

instance ToJSON DeobfuscationFilesUploadResponse
         where
        toJSON DeobfuscationFilesUploadResponse'{..}
          = object
              (catMaybes
                 [("deobfuscationFile" .=) <$>
                    _dfurDeobfuscationFile])

-- | Response listing all in-app products.
--
-- /See:/ 'inAppProductsListResponse' smart constructor.
data InAppProductsListResponse =
  InAppProductsListResponse'
    { _iaplrTokenPagination :: !(Maybe TokenPagination)
    , _iaplrPageInfo :: !(Maybe PageInfo)
    , _iaplrKind :: !(Maybe Text)
    , _iaplrInAppProduct :: !(Maybe [InAppProduct])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaplrTokenPagination'
--
-- * 'iaplrPageInfo'
--
-- * 'iaplrKind'
--
-- * 'iaplrInAppProduct'
inAppProductsListResponse
    :: InAppProductsListResponse
inAppProductsListResponse =
  InAppProductsListResponse'
    { _iaplrTokenPagination = Nothing
    , _iaplrPageInfo = Nothing
    , _iaplrKind = Nothing
    , _iaplrInAppProduct = Nothing
    }


-- | Pagination token, to handle a number of products that is over one page.
iaplrTokenPagination :: Lens' InAppProductsListResponse (Maybe TokenPagination)
iaplrTokenPagination
  = lens _iaplrTokenPagination
      (\ s a -> s{_iaplrTokenPagination = a})

-- | Information about the current page.
iaplrPageInfo :: Lens' InAppProductsListResponse (Maybe PageInfo)
iaplrPageInfo
  = lens _iaplrPageInfo
      (\ s a -> s{_iaplrPageInfo = a})

-- | The kind of this response
-- (\"androidpublisher#inappproductsListResponse\").
iaplrKind :: Lens' InAppProductsListResponse (Maybe Text)
iaplrKind
  = lens _iaplrKind (\ s a -> s{_iaplrKind = a})

-- | All in-app products.
iaplrInAppProduct :: Lens' InAppProductsListResponse [InAppProduct]
iaplrInAppProduct
  = lens _iaplrInAppProduct
      (\ s a -> s{_iaplrInAppProduct = a})
      . _Default
      . _Coerce

instance FromJSON InAppProductsListResponse where
        parseJSON
          = withObject "InAppProductsListResponse"
              (\ o ->
                 InAppProductsListResponse' <$>
                   (o .:? "tokenPagination") <*> (o .:? "pageInfo") <*>
                     (o .:? "kind")
                     <*> (o .:? "inappproduct" .!= mempty))

instance ToJSON InAppProductsListResponse where
        toJSON InAppProductsListResponse'{..}
          = object
              (catMaybes
                 [("tokenPagination" .=) <$> _iaplrTokenPagination,
                  ("pageInfo" .=) <$> _iaplrPageInfo,
                  ("kind" .=) <$> _iaplrKind,
                  ("inappproduct" .=) <$> _iaplrInAppProduct])

-- | Release notes specification, i.e. language and text.
--
-- /See:/ 'localizedText' smart constructor.
data LocalizedText =
  LocalizedText'
    { _ltText :: !(Maybe Text)
    , _ltLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalizedText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltText'
--
-- * 'ltLanguage'
localizedText
    :: LocalizedText
localizedText = LocalizedText' {_ltText = Nothing, _ltLanguage = Nothing}


-- | The text in the given language.
ltText :: Lens' LocalizedText (Maybe Text)
ltText = lens _ltText (\ s a -> s{_ltText = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German).
ltLanguage :: Lens' LocalizedText (Maybe Text)
ltLanguage
  = lens _ltLanguage (\ s a -> s{_ltLanguage = a})

instance FromJSON LocalizedText where
        parseJSON
          = withObject "LocalizedText"
              (\ o ->
                 LocalizedText' <$>
                   (o .:? "text") <*> (o .:? "language"))

instance ToJSON LocalizedText where
        toJSON LocalizedText'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ltText,
                  ("language" .=) <$> _ltLanguage])

-- | An Android app review.
--
-- /See:/ 'review' smart constructor.
data Review =
  Review'
    { _rReviewId :: !(Maybe Text)
    , _rAuthorName :: !(Maybe Text)
    , _rComments :: !(Maybe [Comment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Review' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReviewId'
--
-- * 'rAuthorName'
--
-- * 'rComments'
review
    :: Review
review =
  Review' {_rReviewId = Nothing, _rAuthorName = Nothing, _rComments = Nothing}


-- | Unique identifier for this review.
rReviewId :: Lens' Review (Maybe Text)
rReviewId
  = lens _rReviewId (\ s a -> s{_rReviewId = a})

-- | The name of the user who wrote the review.
rAuthorName :: Lens' Review (Maybe Text)
rAuthorName
  = lens _rAuthorName (\ s a -> s{_rAuthorName = a})

-- | A repeated field containing comments for the review.
rComments :: Lens' Review [Comment]
rComments
  = lens _rComments (\ s a -> s{_rComments = a}) .
      _Default
      . _Coerce

instance FromJSON Review where
        parseJSON
          = withObject "Review"
              (\ o ->
                 Review' <$>
                   (o .:? "reviewId") <*> (o .:? "authorName") <*>
                     (o .:? "comments" .!= mempty))

instance ToJSON Review where
        toJSON Review'{..}
          = object
              (catMaybes
                 [("reviewId" .=) <$> _rReviewId,
                  ("authorName" .=) <$> _rAuthorName,
                  ("comments" .=) <$> _rComments])

-- | Response for creating a new externally hosted APK.
--
-- /See:/ 'aPKsAddExternallyHostedResponse' smart constructor.
newtype APKsAddExternallyHostedResponse =
  APKsAddExternallyHostedResponse'
    { _apkaehrExternallyHostedAPK :: Maybe ExternallyHostedAPK
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APKsAddExternallyHostedResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkaehrExternallyHostedAPK'
aPKsAddExternallyHostedResponse
    :: APKsAddExternallyHostedResponse
aPKsAddExternallyHostedResponse =
  APKsAddExternallyHostedResponse' {_apkaehrExternallyHostedAPK = Nothing}


-- | The definition of the externally-hosted APK and where it is located.
apkaehrExternallyHostedAPK :: Lens' APKsAddExternallyHostedResponse (Maybe ExternallyHostedAPK)
apkaehrExternallyHostedAPK
  = lens _apkaehrExternallyHostedAPK
      (\ s a -> s{_apkaehrExternallyHostedAPK = a})

instance FromJSON APKsAddExternallyHostedResponse
         where
        parseJSON
          = withObject "APKsAddExternallyHostedResponse"
              (\ o ->
                 APKsAddExternallyHostedResponse' <$>
                   (o .:? "externallyHostedApk"))

instance ToJSON APKsAddExternallyHostedResponse where
        toJSON APKsAddExternallyHostedResponse'{..}
          = object
              (catMaybes
                 [("externallyHostedApk" .=) <$>
                    _apkaehrExternallyHostedAPK])

-- | A SubscriptionDeferralInfo contains the data needed to defer a
-- subscription purchase to a future expiry time.
--
-- /See:/ 'subscriptionDeferralInfo' smart constructor.
data SubscriptionDeferralInfo =
  SubscriptionDeferralInfo'
    { _sdiDesiredExpiryTimeMillis :: !(Maybe (Textual Int64))
    , _sdiExpectedExpiryTimeMillis :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionDeferralInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiDesiredExpiryTimeMillis'
--
-- * 'sdiExpectedExpiryTimeMillis'
subscriptionDeferralInfo
    :: SubscriptionDeferralInfo
subscriptionDeferralInfo =
  SubscriptionDeferralInfo'
    { _sdiDesiredExpiryTimeMillis = Nothing
    , _sdiExpectedExpiryTimeMillis = Nothing
    }


-- | The desired next expiry time to assign to the subscription, in
-- milliseconds since the Epoch. The given time must be later\/greater than
-- the current expiry time for the subscription.
sdiDesiredExpiryTimeMillis :: Lens' SubscriptionDeferralInfo (Maybe Int64)
sdiDesiredExpiryTimeMillis
  = lens _sdiDesiredExpiryTimeMillis
      (\ s a -> s{_sdiDesiredExpiryTimeMillis = a})
      . mapping _Coerce

-- | The expected expiry time for the subscription. If the current expiry
-- time for the subscription is not the value specified here, the deferral
-- will not occur.
sdiExpectedExpiryTimeMillis :: Lens' SubscriptionDeferralInfo (Maybe Int64)
sdiExpectedExpiryTimeMillis
  = lens _sdiExpectedExpiryTimeMillis
      (\ s a -> s{_sdiExpectedExpiryTimeMillis = a})
      . mapping _Coerce

instance FromJSON SubscriptionDeferralInfo where
        parseJSON
          = withObject "SubscriptionDeferralInfo"
              (\ o ->
                 SubscriptionDeferralInfo' <$>
                   (o .:? "desiredExpiryTimeMillis") <*>
                     (o .:? "expectedExpiryTimeMillis"))

instance ToJSON SubscriptionDeferralInfo where
        toJSON SubscriptionDeferralInfo'{..}
          = object
              (catMaybes
                 [("desiredExpiryTimeMillis" .=) <$>
                    _sdiDesiredExpiryTimeMillis,
                  ("expectedExpiryTimeMillis" .=) <$>
                    _sdiExpectedExpiryTimeMillis])

-- | Request to reply to review or update existing reply.
--
-- /See:/ 'reviewsReplyRequest' smart constructor.
newtype ReviewsReplyRequest =
  ReviewsReplyRequest'
    { _rrrReplyText :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReviewsReplyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrReplyText'
reviewsReplyRequest
    :: ReviewsReplyRequest
reviewsReplyRequest = ReviewsReplyRequest' {_rrrReplyText = Nothing}


-- | The text to set as the reply. Replies of more than approximately 350
-- characters will be rejected. HTML tags will be stripped.
rrrReplyText :: Lens' ReviewsReplyRequest (Maybe Text)
rrrReplyText
  = lens _rrrReplyText (\ s a -> s{_rrrReplyText = a})

instance FromJSON ReviewsReplyRequest where
        parseJSON
          = withObject "ReviewsReplyRequest"
              (\ o -> ReviewsReplyRequest' <$> (o .:? "replyText"))

instance ToJSON ReviewsReplyRequest where
        toJSON ReviewsReplyRequest'{..}
          = object
              (catMaybes [("replyText" .=) <$> _rrrReplyText])

-- | The device spec used to generate a system APK.
--
-- /See:/ 'deviceSpec' smart constructor.
data DeviceSpec =
  DeviceSpec'
    { _dsSupportedAbis :: !(Maybe [Text])
    , _dsSupportedLocales :: !(Maybe [Text])
    , _dsScreenDensity :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsSupportedAbis'
--
-- * 'dsSupportedLocales'
--
-- * 'dsScreenDensity'
deviceSpec
    :: DeviceSpec
deviceSpec =
  DeviceSpec'
    { _dsSupportedAbis = Nothing
    , _dsSupportedLocales = Nothing
    , _dsScreenDensity = Nothing
    }


-- | Supported ABI architectures in the order of preference. The values
-- should be the string as reported by the platform, e.g. \"armeabi-v7a\",
-- \"x86_64\".
dsSupportedAbis :: Lens' DeviceSpec [Text]
dsSupportedAbis
  = lens _dsSupportedAbis
      (\ s a -> s{_dsSupportedAbis = a})
      . _Default
      . _Coerce

-- | All installed locales represented as BCP-47 strings, e.g. \"en-US\".
dsSupportedLocales :: Lens' DeviceSpec [Text]
dsSupportedLocales
  = lens _dsSupportedLocales
      (\ s a -> s{_dsSupportedLocales = a})
      . _Default
      . _Coerce

-- | Screen dpi.
dsScreenDensity :: Lens' DeviceSpec (Maybe Word32)
dsScreenDensity
  = lens _dsScreenDensity
      (\ s a -> s{_dsScreenDensity = a})
      . mapping _Coerce

instance FromJSON DeviceSpec where
        parseJSON
          = withObject "DeviceSpec"
              (\ o ->
                 DeviceSpec' <$>
                   (o .:? "supportedAbis" .!= mempty) <*>
                     (o .:? "supportedLocales" .!= mempty)
                     <*> (o .:? "screenDensity"))

instance ToJSON DeviceSpec where
        toJSON DeviceSpec'{..}
          = object
              (catMaybes
                 [("supportedAbis" .=) <$> _dsSupportedAbis,
                  ("supportedLocales" .=) <$> _dsSupportedLocales,
                  ("screenDensity" .=) <$> _dsScreenDensity])

-- | Characteristics of the user\'s device.
--
-- /See:/ 'deviceMetadata' smart constructor.
data DeviceMetadata =
  DeviceMetadata'
    { _dmProductName :: !(Maybe Text)
    , _dmGlEsVersion :: !(Maybe (Textual Int32))
    , _dmManufacturer :: !(Maybe Text)
    , _dmScreenWidthPx :: !(Maybe (Textual Int32))
    , _dmRamMb :: !(Maybe (Textual Int32))
    , _dmCPUMake :: !(Maybe Text)
    , _dmScreenHeightPx :: !(Maybe (Textual Int32))
    , _dmNATivePlatform :: !(Maybe Text)
    , _dmDeviceClass :: !(Maybe Text)
    , _dmCPUModel :: !(Maybe Text)
    , _dmScreenDensityDpi :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmProductName'
--
-- * 'dmGlEsVersion'
--
-- * 'dmManufacturer'
--
-- * 'dmScreenWidthPx'
--
-- * 'dmRamMb'
--
-- * 'dmCPUMake'
--
-- * 'dmScreenHeightPx'
--
-- * 'dmNATivePlatform'
--
-- * 'dmDeviceClass'
--
-- * 'dmCPUModel'
--
-- * 'dmScreenDensityDpi'
deviceMetadata
    :: DeviceMetadata
deviceMetadata =
  DeviceMetadata'
    { _dmProductName = Nothing
    , _dmGlEsVersion = Nothing
    , _dmManufacturer = Nothing
    , _dmScreenWidthPx = Nothing
    , _dmRamMb = Nothing
    , _dmCPUMake = Nothing
    , _dmScreenHeightPx = Nothing
    , _dmNATivePlatform = Nothing
    , _dmDeviceClass = Nothing
    , _dmCPUModel = Nothing
    , _dmScreenDensityDpi = Nothing
    }


-- | Device model name (e.g. Droid)
dmProductName :: Lens' DeviceMetadata (Maybe Text)
dmProductName
  = lens _dmProductName
      (\ s a -> s{_dmProductName = a})

-- | OpenGL version
dmGlEsVersion :: Lens' DeviceMetadata (Maybe Int32)
dmGlEsVersion
  = lens _dmGlEsVersion
      (\ s a -> s{_dmGlEsVersion = a})
      . mapping _Coerce

-- | Device manufacturer (e.g. Motorola)
dmManufacturer :: Lens' DeviceMetadata (Maybe Text)
dmManufacturer
  = lens _dmManufacturer
      (\ s a -> s{_dmManufacturer = a})

-- | Screen width in pixels
dmScreenWidthPx :: Lens' DeviceMetadata (Maybe Int32)
dmScreenWidthPx
  = lens _dmScreenWidthPx
      (\ s a -> s{_dmScreenWidthPx = a})
      . mapping _Coerce

-- | Device RAM in Megabytes, e.g. \"2048\"
dmRamMb :: Lens' DeviceMetadata (Maybe Int32)
dmRamMb
  = lens _dmRamMb (\ s a -> s{_dmRamMb = a}) .
      mapping _Coerce

-- | Device CPU make, e.g. \"Qualcomm\"
dmCPUMake :: Lens' DeviceMetadata (Maybe Text)
dmCPUMake
  = lens _dmCPUMake (\ s a -> s{_dmCPUMake = a})

-- | Screen height in pixels
dmScreenHeightPx :: Lens' DeviceMetadata (Maybe Int32)
dmScreenHeightPx
  = lens _dmScreenHeightPx
      (\ s a -> s{_dmScreenHeightPx = a})
      . mapping _Coerce

-- | Comma separated list of native platforms (e.g. \"arm\", \"arm7\")
dmNATivePlatform :: Lens' DeviceMetadata (Maybe Text)
dmNATivePlatform
  = lens _dmNATivePlatform
      (\ s a -> s{_dmNATivePlatform = a})

-- | Device class (e.g. tablet)
dmDeviceClass :: Lens' DeviceMetadata (Maybe Text)
dmDeviceClass
  = lens _dmDeviceClass
      (\ s a -> s{_dmDeviceClass = a})

-- | Device CPU model, e.g. \"MSM8974\"
dmCPUModel :: Lens' DeviceMetadata (Maybe Text)
dmCPUModel
  = lens _dmCPUModel (\ s a -> s{_dmCPUModel = a})

-- | Screen density in DPI
dmScreenDensityDpi :: Lens' DeviceMetadata (Maybe Int32)
dmScreenDensityDpi
  = lens _dmScreenDensityDpi
      (\ s a -> s{_dmScreenDensityDpi = a})
      . mapping _Coerce

instance FromJSON DeviceMetadata where
        parseJSON
          = withObject "DeviceMetadata"
              (\ o ->
                 DeviceMetadata' <$>
                   (o .:? "productName") <*> (o .:? "glEsVersion") <*>
                     (o .:? "manufacturer")
                     <*> (o .:? "screenWidthPx")
                     <*> (o .:? "ramMb")
                     <*> (o .:? "cpuMake")
                     <*> (o .:? "screenHeightPx")
                     <*> (o .:? "nativePlatform")
                     <*> (o .:? "deviceClass")
                     <*> (o .:? "cpuModel")
                     <*> (o .:? "screenDensityDpi"))

instance ToJSON DeviceMetadata where
        toJSON DeviceMetadata'{..}
          = object
              (catMaybes
                 [("productName" .=) <$> _dmProductName,
                  ("glEsVersion" .=) <$> _dmGlEsVersion,
                  ("manufacturer" .=) <$> _dmManufacturer,
                  ("screenWidthPx" .=) <$> _dmScreenWidthPx,
                  ("ramMb" .=) <$> _dmRamMb,
                  ("cpuMake" .=) <$> _dmCPUMake,
                  ("screenHeightPx" .=) <$> _dmScreenHeightPx,
                  ("nativePlatform" .=) <$> _dmNATivePlatform,
                  ("deviceClass" .=) <$> _dmDeviceClass,
                  ("cpuModel" .=) <$> _dmCPUModel,
                  ("screenDensityDpi" .=) <$> _dmScreenDensityDpi])

-- | Developer entry from conversation between user and developer.
--
-- /See:/ 'developerComment' smart constructor.
data DeveloperComment =
  DeveloperComment'
    { _dcText :: !(Maybe Text)
    , _dcLastModified :: !(Maybe Timestamp)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeveloperComment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcText'
--
-- * 'dcLastModified'
developerComment
    :: DeveloperComment
developerComment =
  DeveloperComment' {_dcText = Nothing, _dcLastModified = Nothing}


-- | The content of the comment, i.e. reply body.
dcText :: Lens' DeveloperComment (Maybe Text)
dcText = lens _dcText (\ s a -> s{_dcText = a})

-- | The last time at which this comment was updated.
dcLastModified :: Lens' DeveloperComment (Maybe Timestamp)
dcLastModified
  = lens _dcLastModified
      (\ s a -> s{_dcLastModified = a})

instance FromJSON DeveloperComment where
        parseJSON
          = withObject "DeveloperComment"
              (\ o ->
                 DeveloperComment' <$>
                   (o .:? "text") <*> (o .:? "lastModified"))

instance ToJSON DeveloperComment where
        toJSON DeveloperComment'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _dcText,
                  ("lastModified" .=) <$> _dcLastModified])

-- | An in-app product. The resource for InappproductsService.
--
-- /See:/ 'inAppProduct' smart constructor.
data InAppProduct =
  InAppProduct'
    { _iapStatus :: !(Maybe InAppProductStatus)
    , _iapGracePeriod :: !(Maybe Text)
    , _iapTrialPeriod :: !(Maybe Text)
    , _iapPackageName :: !(Maybe Text)
    , _iapPurchaseType :: !(Maybe InAppProductPurchaseType)
    , _iapSubscriptionPeriod :: !(Maybe Text)
    , _iapPrices :: !(Maybe InAppProductPrices)
    , _iapSKU :: !(Maybe Text)
    , _iapDefaultPrice :: !(Maybe Price)
    , _iapListings :: !(Maybe InAppProductListings)
    , _iapDefaultLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapStatus'
--
-- * 'iapGracePeriod'
--
-- * 'iapTrialPeriod'
--
-- * 'iapPackageName'
--
-- * 'iapPurchaseType'
--
-- * 'iapSubscriptionPeriod'
--
-- * 'iapPrices'
--
-- * 'iapSKU'
--
-- * 'iapDefaultPrice'
--
-- * 'iapListings'
--
-- * 'iapDefaultLanguage'
inAppProduct
    :: InAppProduct
inAppProduct =
  InAppProduct'
    { _iapStatus = Nothing
    , _iapGracePeriod = Nothing
    , _iapTrialPeriod = Nothing
    , _iapPackageName = Nothing
    , _iapPurchaseType = Nothing
    , _iapSubscriptionPeriod = Nothing
    , _iapPrices = Nothing
    , _iapSKU = Nothing
    , _iapDefaultPrice = Nothing
    , _iapListings = Nothing
    , _iapDefaultLanguage = Nothing
    }


-- | The status of the product, e.g. whether it\'s active.
iapStatus :: Lens' InAppProduct (Maybe InAppProductStatus)
iapStatus
  = lens _iapStatus (\ s a -> s{_iapStatus = a})

-- | Grace period of the subscription, specified in ISO 8601 format. Allows
-- developers to give their subscribers a grace period when the payment for
-- the new recurrence period is declined. Acceptable values are P0D (zero
-- days), P3D (three days), P7D (seven days), P14D (14 days), and P30D (30
-- days).
iapGracePeriod :: Lens' InAppProduct (Maybe Text)
iapGracePeriod
  = lens _iapGracePeriod
      (\ s a -> s{_iapGracePeriod = a})

-- | Trial period, specified in ISO 8601 format. Acceptable values are
-- anything between P7D (seven days) and P999D (999 days).
iapTrialPeriod :: Lens' InAppProduct (Maybe Text)
iapTrialPeriod
  = lens _iapTrialPeriod
      (\ s a -> s{_iapTrialPeriod = a})

-- | Package name of the parent app.
iapPackageName :: Lens' InAppProduct (Maybe Text)
iapPackageName
  = lens _iapPackageName
      (\ s a -> s{_iapPackageName = a})

-- | The type of the product, e.g. a recurring subscription.
iapPurchaseType :: Lens' InAppProduct (Maybe InAppProductPurchaseType)
iapPurchaseType
  = lens _iapPurchaseType
      (\ s a -> s{_iapPurchaseType = a})

-- | Subscription period, specified in ISO 8601 format. Acceptable values are
-- P1W (one week), P1M (one month), P3M (three months), P6M (six months),
-- and P1Y (one year).
iapSubscriptionPeriod :: Lens' InAppProduct (Maybe Text)
iapSubscriptionPeriod
  = lens _iapSubscriptionPeriod
      (\ s a -> s{_iapSubscriptionPeriod = a})

-- | Prices per buyer region. None of these can be zero, as in-app products
-- are never free. Map key is region code, as defined by ISO 3166-2.
iapPrices :: Lens' InAppProduct (Maybe InAppProductPrices)
iapPrices
  = lens _iapPrices (\ s a -> s{_iapPrices = a})

-- | Stock-keeping-unit (SKU) of the product, unique within an app.
iapSKU :: Lens' InAppProduct (Maybe Text)
iapSKU = lens _iapSKU (\ s a -> s{_iapSKU = a})

-- | Default price. Cannot be zero, as in-app products are never free. Always
-- in the developer\'s Checkout merchant currency.
iapDefaultPrice :: Lens' InAppProduct (Maybe Price)
iapDefaultPrice
  = lens _iapDefaultPrice
      (\ s a -> s{_iapDefaultPrice = a})

-- | List of localized title and description data. Map key is the language of
-- the localized data, as defined by BCP-47, e.g. \"en-US\".
iapListings :: Lens' InAppProduct (Maybe InAppProductListings)
iapListings
  = lens _iapListings (\ s a -> s{_iapListings = a})

-- | Default language of the localized data, as defined by BCP-47. e.g.
-- \"en-US\".
iapDefaultLanguage :: Lens' InAppProduct (Maybe Text)
iapDefaultLanguage
  = lens _iapDefaultLanguage
      (\ s a -> s{_iapDefaultLanguage = a})

instance FromJSON InAppProduct where
        parseJSON
          = withObject "InAppProduct"
              (\ o ->
                 InAppProduct' <$>
                   (o .:? "status") <*> (o .:? "gracePeriod") <*>
                     (o .:? "trialPeriod")
                     <*> (o .:? "packageName")
                     <*> (o .:? "purchaseType")
                     <*> (o .:? "subscriptionPeriod")
                     <*> (o .:? "prices")
                     <*> (o .:? "sku")
                     <*> (o .:? "defaultPrice")
                     <*> (o .:? "listings")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON InAppProduct where
        toJSON InAppProduct'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _iapStatus,
                  ("gracePeriod" .=) <$> _iapGracePeriod,
                  ("trialPeriod" .=) <$> _iapTrialPeriod,
                  ("packageName" .=) <$> _iapPackageName,
                  ("purchaseType" .=) <$> _iapPurchaseType,
                  ("subscriptionPeriod" .=) <$> _iapSubscriptionPeriod,
                  ("prices" .=) <$> _iapPrices, ("sku" .=) <$> _iapSKU,
                  ("defaultPrice" .=) <$> _iapDefaultPrice,
                  ("listings" .=) <$> _iapListings,
                  ("defaultLanguage" .=) <$> _iapDefaultLanguage])

-- | Definition of a price, i.e. currency and units.
--
-- /See:/ 'price' smart constructor.
data Price =
  Price'
    { _pPriceMicros :: !(Maybe Text)
    , _pCurrency :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPriceMicros'
--
-- * 'pCurrency'
price
    :: Price
price = Price' {_pPriceMicros = Nothing, _pCurrency = Nothing}


-- | Price in 1\/million of the currency base unit, represented as a string.
pPriceMicros :: Lens' Price (Maybe Text)
pPriceMicros
  = lens _pPriceMicros (\ s a -> s{_pPriceMicros = a})

-- | 3 letter Currency code, as defined by ISO 4217. See
-- java\/com\/google\/common\/money\/CurrencyCode.java
pCurrency :: Lens' Price (Maybe Text)
pCurrency
  = lens _pCurrency (\ s a -> s{_pCurrency = a})

instance FromJSON Price where
        parseJSON
          = withObject "Price"
              (\ o ->
                 Price' <$>
                   (o .:? "priceMicros") <*> (o .:? "currency"))

instance ToJSON Price where
        toJSON Price'{..}
          = object
              (catMaybes
                 [("priceMicros" .=) <$> _pPriceMicros,
                  ("currency" .=) <$> _pCurrency])

-- | Response to list previously created system APK variants.
--
-- /See:/ 'systemAPKsListResponse' smart constructor.
newtype SystemAPKsListResponse =
  SystemAPKsListResponse'
    { _sapklrVariants :: Maybe [Variant]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystemAPKsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sapklrVariants'
systemAPKsListResponse
    :: SystemAPKsListResponse
systemAPKsListResponse = SystemAPKsListResponse' {_sapklrVariants = Nothing}


-- | All system APK variants created.
sapklrVariants :: Lens' SystemAPKsListResponse [Variant]
sapklrVariants
  = lens _sapklrVariants
      (\ s a -> s{_sapklrVariants = a})
      . _Default
      . _Coerce

instance FromJSON SystemAPKsListResponse where
        parseJSON
          = withObject "SystemAPKsListResponse"
              (\ o ->
                 SystemAPKsListResponse' <$>
                   (o .:? "variants" .!= mempty))

instance ToJSON SystemAPKsListResponse where
        toJSON SystemAPKsListResponse'{..}
          = object
              (catMaybes [("variants" .=) <$> _sapklrVariants])

-- | Represents the binary payload of an APK.
--
-- /See:/ 'aPKBinary' smart constructor.
data APKBinary =
  APKBinary'
    { _apkbSha1 :: !(Maybe Text)
    , _apkbSha256 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APKBinary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkbSha1'
--
-- * 'apkbSha256'
aPKBinary
    :: APKBinary
aPKBinary = APKBinary' {_apkbSha1 = Nothing, _apkbSha256 = Nothing}


-- | A sha1 hash of the APK payload, encoded as a hex string and matching the
-- output of the sha1sum command.
apkbSha1 :: Lens' APKBinary (Maybe Text)
apkbSha1 = lens _apkbSha1 (\ s a -> s{_apkbSha1 = a})

-- | A sha256 hash of the APK payload, encoded as a hex string and matching
-- the output of the sha256sum command.
apkbSha256 :: Lens' APKBinary (Maybe Text)
apkbSha256
  = lens _apkbSha256 (\ s a -> s{_apkbSha256 = a})

instance FromJSON APKBinary where
        parseJSON
          = withObject "APKBinary"
              (\ o ->
                 APKBinary' <$> (o .:? "sha1") <*> (o .:? "sha256"))

instance ToJSON APKBinary where
        toJSON APKBinary'{..}
          = object
              (catMaybes
                 [("sha1" .=) <$> _apkbSha1,
                  ("sha256" .=) <$> _apkbSha256])

-- | Response listing all APKs.
--
-- /See:/ 'aPKsListResponse' smart constructor.
data APKsListResponse =
  APKsListResponse'
    { _apklrKind :: !(Maybe Text)
    , _apklrAPKs :: !(Maybe [APK])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APKsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apklrKind'
--
-- * 'apklrAPKs'
aPKsListResponse
    :: APKsListResponse
aPKsListResponse =
  APKsListResponse' {_apklrKind = Nothing, _apklrAPKs = Nothing}


-- | The kind of this response (\"androidpublisher#apksListResponse\").
apklrKind :: Lens' APKsListResponse (Maybe Text)
apklrKind
  = lens _apklrKind (\ s a -> s{_apklrKind = a})

-- | All APKs.
apklrAPKs :: Lens' APKsListResponse [APK]
apklrAPKs
  = lens _apklrAPKs (\ s a -> s{_apklrAPKs = a}) .
      _Default
      . _Coerce

instance FromJSON APKsListResponse where
        parseJSON
          = withObject "APKsListResponse"
              (\ o ->
                 APKsListResponse' <$>
                   (o .:? "kind") <*> (o .:? "apks" .!= mempty))

instance ToJSON APKsListResponse where
        toJSON APKsListResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _apklrKind,
                  ("apks" .=) <$> _apklrAPKs])

-- | Response on status of replying to a review.
--
-- /See:/ 'reviewsReplyResponse' smart constructor.
newtype ReviewsReplyResponse =
  ReviewsReplyResponse'
    { _rrrResult :: Maybe ReviewReplyResult
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReviewsReplyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrResult'
reviewsReplyResponse
    :: ReviewsReplyResponse
reviewsReplyResponse = ReviewsReplyResponse' {_rrrResult = Nothing}


-- | The result of replying\/updating a reply to review.
rrrResult :: Lens' ReviewsReplyResponse (Maybe ReviewReplyResult)
rrrResult
  = lens _rrrResult (\ s a -> s{_rrrResult = a})

instance FromJSON ReviewsReplyResponse where
        parseJSON
          = withObject "ReviewsReplyResponse"
              (\ o -> ReviewsReplyResponse' <$> (o .:? "result"))

instance ToJSON ReviewsReplyResponse where
        toJSON ReviewsReplyResponse'{..}
          = object (catMaybes [("result" .=) <$> _rrrResult])

-- | Response listing all localized listings.
--
-- /See:/ 'listingsListResponse' smart constructor.
data ListingsListResponse =
  ListingsListResponse'
    { _llrKind :: !(Maybe Text)
    , _llrListings :: !(Maybe [Listing])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrKind'
--
-- * 'llrListings'
listingsListResponse
    :: ListingsListResponse
listingsListResponse =
  ListingsListResponse' {_llrKind = Nothing, _llrListings = Nothing}


-- | The kind of this response (\"androidpublisher#listingsListResponse\").
llrKind :: Lens' ListingsListResponse (Maybe Text)
llrKind = lens _llrKind (\ s a -> s{_llrKind = a})

-- | All localized listings.
llrListings :: Lens' ListingsListResponse [Listing]
llrListings
  = lens _llrListings (\ s a -> s{_llrListings = a}) .
      _Default
      . _Coerce

instance FromJSON ListingsListResponse where
        parseJSON
          = withObject "ListingsListResponse"
              (\ o ->
                 ListingsListResponse' <$>
                   (o .:? "kind") <*> (o .:? "listings" .!= mempty))

instance ToJSON ListingsListResponse where
        toJSON ListingsListResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _llrKind,
                  ("listings" .=) <$> _llrListings])

-- | Request to create a new externally hosted APK.
--
-- /See:/ 'aPKsAddExternallyHostedRequest' smart constructor.
newtype APKsAddExternallyHostedRequest =
  APKsAddExternallyHostedRequest'
    { _aExternallyHostedAPK :: Maybe ExternallyHostedAPK
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APKsAddExternallyHostedRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aExternallyHostedAPK'
aPKsAddExternallyHostedRequest
    :: APKsAddExternallyHostedRequest
aPKsAddExternallyHostedRequest =
  APKsAddExternallyHostedRequest' {_aExternallyHostedAPK = Nothing}


-- | The definition of the externally-hosted APK and where it is located.
aExternallyHostedAPK :: Lens' APKsAddExternallyHostedRequest (Maybe ExternallyHostedAPK)
aExternallyHostedAPK
  = lens _aExternallyHostedAPK
      (\ s a -> s{_aExternallyHostedAPK = a})

instance FromJSON APKsAddExternallyHostedRequest
         where
        parseJSON
          = withObject "APKsAddExternallyHostedRequest"
              (\ o ->
                 APKsAddExternallyHostedRequest' <$>
                   (o .:? "externallyHostedApk"))

instance ToJSON APKsAddExternallyHostedRequest where
        toJSON APKsAddExternallyHostedRequest'{..}
          = object
              (catMaybes
                 [("externallyHostedApk" .=) <$>
                    _aExternallyHostedAPK])

-- | An artifact resource which gets created when uploading an APK or Android
-- App Bundle through internal app sharing.
--
-- /See:/ 'internalAppSharingArtifact' smart constructor.
data InternalAppSharingArtifact =
  InternalAppSharingArtifact'
    { _iasaCertificateFingerprint :: !(Maybe Text)
    , _iasaDownloadURL :: !(Maybe Text)
    , _iasaSha256 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InternalAppSharingArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iasaCertificateFingerprint'
--
-- * 'iasaDownloadURL'
--
-- * 'iasaSha256'
internalAppSharingArtifact
    :: InternalAppSharingArtifact
internalAppSharingArtifact =
  InternalAppSharingArtifact'
    { _iasaCertificateFingerprint = Nothing
    , _iasaDownloadURL = Nothing
    , _iasaSha256 = Nothing
    }


-- | The sha256 fingerprint of the certificate used to sign the generated
-- artifact.
iasaCertificateFingerprint :: Lens' InternalAppSharingArtifact (Maybe Text)
iasaCertificateFingerprint
  = lens _iasaCertificateFingerprint
      (\ s a -> s{_iasaCertificateFingerprint = a})

-- | The download URL generated for the uploaded artifact. Users that are
-- authorized to download can follow the link to the Play Store app to
-- install it.
iasaDownloadURL :: Lens' InternalAppSharingArtifact (Maybe Text)
iasaDownloadURL
  = lens _iasaDownloadURL
      (\ s a -> s{_iasaDownloadURL = a})

-- | The sha256 hash of the artifact represented as a lowercase hexadecimal
-- number, matching the output of the sha256sum command.
iasaSha256 :: Lens' InternalAppSharingArtifact (Maybe Text)
iasaSha256
  = lens _iasaSha256 (\ s a -> s{_iasaSha256 = a})

instance FromJSON InternalAppSharingArtifact where
        parseJSON
          = withObject "InternalAppSharingArtifact"
              (\ o ->
                 InternalAppSharingArtifact' <$>
                   (o .:? "certificateFingerprint") <*>
                     (o .:? "downloadUrl")
                     <*> (o .:? "sha256"))

instance ToJSON InternalAppSharingArtifact where
        toJSON InternalAppSharingArtifact'{..}
          = object
              (catMaybes
                 [("certificateFingerprint" .=) <$>
                    _iasaCertificateFingerprint,
                  ("downloadUrl" .=) <$> _iasaDownloadURL,
                  ("sha256" .=) <$> _iasaSha256])

-- | A permission used by this APK.
--
-- /See:/ 'usesPermission' smart constructor.
data UsesPermission =
  UsesPermission'
    { _upName :: !(Maybe Text)
    , _upMaxSdkVersion :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsesPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upName'
--
-- * 'upMaxSdkVersion'
usesPermission
    :: UsesPermission
usesPermission = UsesPermission' {_upName = Nothing, _upMaxSdkVersion = Nothing}


-- | The name of the permission requested.
upName :: Lens' UsesPermission (Maybe Text)
upName = lens _upName (\ s a -> s{_upName = a})

-- | Optionally, the maximum SDK version for which the permission is
-- required.
upMaxSdkVersion :: Lens' UsesPermission (Maybe Int32)
upMaxSdkVersion
  = lens _upMaxSdkVersion
      (\ s a -> s{_upMaxSdkVersion = a})
      . mapping _Coerce

instance FromJSON UsesPermission where
        parseJSON
          = withObject "UsesPermission"
              (\ o ->
                 UsesPermission' <$>
                   (o .:? "name") <*> (o .:? "maxSdkVersion"))

instance ToJSON UsesPermission where
        toJSON UsesPermission'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _upName,
                  ("maxSdkVersion" .=) <$> _upMaxSdkVersion])

-- | An entry of conversation between user and developer.
--
-- /See:/ 'comment' smart constructor.
data Comment =
  Comment'
    { _cUserComment :: !(Maybe UserComment)
    , _cDeveloperComment :: !(Maybe DeveloperComment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cUserComment'
--
-- * 'cDeveloperComment'
comment
    :: Comment
comment = Comment' {_cUserComment = Nothing, _cDeveloperComment = Nothing}


-- | A comment from a user.
cUserComment :: Lens' Comment (Maybe UserComment)
cUserComment
  = lens _cUserComment (\ s a -> s{_cUserComment = a})

-- | A comment from a developer.
cDeveloperComment :: Lens' Comment (Maybe DeveloperComment)
cDeveloperComment
  = lens _cDeveloperComment
      (\ s a -> s{_cDeveloperComment = a})

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment' <$>
                   (o .:? "userComment") <*> (o .:? "developerComment"))

instance ToJSON Comment where
        toJSON Comment'{..}
          = object
              (catMaybes
                 [("userComment" .=) <$> _cUserComment,
                  ("developerComment" .=) <$> _cDeveloperComment])

-- | A Timestamp represents a point in time independent of any time zone or
-- local calendar, encoded as a count of seconds and fractions of seconds
-- at nanosecond resolution. The count is relative to an epoch at UTC
-- midnight on January 1, 1970.
--
-- /See:/ 'timestamp' smart constructor.
data Timestamp =
  Timestamp'
    { _tNanos :: !(Maybe (Textual Int32))
    , _tSeconds :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Timestamp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tNanos'
--
-- * 'tSeconds'
timestamp
    :: Timestamp
timestamp = Timestamp' {_tNanos = Nothing, _tSeconds = Nothing}


-- | Non-negative fractions of a second at nanosecond resolution. Must be
-- from 0 to 999,999,999 inclusive.
tNanos :: Lens' Timestamp (Maybe Int32)
tNanos
  = lens _tNanos (\ s a -> s{_tNanos = a}) .
      mapping _Coerce

-- | Represents seconds of UTC time since Unix epoch.
tSeconds :: Lens' Timestamp (Maybe Int64)
tSeconds
  = lens _tSeconds (\ s a -> s{_tSeconds = a}) .
      mapping _Coerce

instance FromJSON Timestamp where
        parseJSON
          = withObject "Timestamp"
              (\ o ->
                 Timestamp' <$> (o .:? "nanos") <*> (o .:? "seconds"))

instance ToJSON Timestamp where
        toJSON Timestamp'{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _tNanos,
                  ("seconds" .=) <$> _tSeconds])

-- | A VoidedPurchase resource indicates a purchase that was either
-- canceled\/refunded\/charged-back.
--
-- /See:/ 'voidedPurchase' smart constructor.
data VoidedPurchase =
  VoidedPurchase'
    { _vpKind :: !(Maybe Text)
    , _vpPurchaseTimeMillis :: !(Maybe (Textual Int64))
    , _vpPurchaseToken :: !(Maybe Text)
    , _vpVoidedSource :: !(Maybe (Textual Int32))
    , _vpVoidedReason :: !(Maybe (Textual Int32))
    , _vpOrderId :: !(Maybe Text)
    , _vpVoidedTimeMillis :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VoidedPurchase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpKind'
--
-- * 'vpPurchaseTimeMillis'
--
-- * 'vpPurchaseToken'
--
-- * 'vpVoidedSource'
--
-- * 'vpVoidedReason'
--
-- * 'vpOrderId'
--
-- * 'vpVoidedTimeMillis'
voidedPurchase
    :: VoidedPurchase
voidedPurchase =
  VoidedPurchase'
    { _vpKind = Nothing
    , _vpPurchaseTimeMillis = Nothing
    , _vpPurchaseToken = Nothing
    , _vpVoidedSource = Nothing
    , _vpVoidedReason = Nothing
    , _vpOrderId = Nothing
    , _vpVoidedTimeMillis = Nothing
    }


-- | This kind represents a voided purchase object in the androidpublisher
-- service.
vpKind :: Lens' VoidedPurchase (Maybe Text)
vpKind = lens _vpKind (\ s a -> s{_vpKind = a})

-- | The time at which the purchase was made, in milliseconds since the epoch
-- (Jan 1, 1970).
vpPurchaseTimeMillis :: Lens' VoidedPurchase (Maybe Int64)
vpPurchaseTimeMillis
  = lens _vpPurchaseTimeMillis
      (\ s a -> s{_vpPurchaseTimeMillis = a})
      . mapping _Coerce

-- | The token which uniquely identifies a one-time purchase or subscription.
-- To uniquely identify subscription renewals use order_id (available
-- starting from version 3 of the API).
vpPurchaseToken :: Lens' VoidedPurchase (Maybe Text)
vpPurchaseToken
  = lens _vpPurchaseToken
      (\ s a -> s{_vpPurchaseToken = a})

-- | The initiator of voided purchase, possible values are: 0. User 1.
-- Developer 2. Google
vpVoidedSource :: Lens' VoidedPurchase (Maybe Int32)
vpVoidedSource
  = lens _vpVoidedSource
      (\ s a -> s{_vpVoidedSource = a})
      . mapping _Coerce

-- | The reason why the purchase was voided, possible values are: 0. Other 1.
-- Remorse 2. Not_received 3. Defective 4. Accidental_purchase 5. Fraud 6.
-- Friendly_fraud 7. Chargeback
vpVoidedReason :: Lens' VoidedPurchase (Maybe Int32)
vpVoidedReason
  = lens _vpVoidedReason
      (\ s a -> s{_vpVoidedReason = a})
      . mapping _Coerce

-- | The order id which uniquely identifies a one-time purchase, subscription
-- purchase, or subscription renewal.
vpOrderId :: Lens' VoidedPurchase (Maybe Text)
vpOrderId
  = lens _vpOrderId (\ s a -> s{_vpOrderId = a})

-- | The time at which the purchase was canceled\/refunded\/charged-back, in
-- milliseconds since the epoch (Jan 1, 1970).
vpVoidedTimeMillis :: Lens' VoidedPurchase (Maybe Int64)
vpVoidedTimeMillis
  = lens _vpVoidedTimeMillis
      (\ s a -> s{_vpVoidedTimeMillis = a})
      . mapping _Coerce

instance FromJSON VoidedPurchase where
        parseJSON
          = withObject "VoidedPurchase"
              (\ o ->
                 VoidedPurchase' <$>
                   (o .:? "kind") <*> (o .:? "purchaseTimeMillis") <*>
                     (o .:? "purchaseToken")
                     <*> (o .:? "voidedSource")
                     <*> (o .:? "voidedReason")
                     <*> (o .:? "orderId")
                     <*> (o .:? "voidedTimeMillis"))

instance ToJSON VoidedPurchase where
        toJSON VoidedPurchase'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _vpKind,
                  ("purchaseTimeMillis" .=) <$> _vpPurchaseTimeMillis,
                  ("purchaseToken" .=) <$> _vpPurchaseToken,
                  ("voidedSource" .=) <$> _vpVoidedSource,
                  ("voidedReason" .=) <$> _vpVoidedReason,
                  ("orderId" .=) <$> _vpOrderId,
                  ("voidedTimeMillis" .=) <$> _vpVoidedTimeMillis])

-- | Response listing all app bundles.
--
-- /See:/ 'bundlesListResponse' smart constructor.
data BundlesListResponse =
  BundlesListResponse'
    { _blrBundles :: !(Maybe [Bundle])
    , _blrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BundlesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blrBundles'
--
-- * 'blrKind'
bundlesListResponse
    :: BundlesListResponse
bundlesListResponse =
  BundlesListResponse' {_blrBundles = Nothing, _blrKind = Nothing}


-- | All app bundles.
blrBundles :: Lens' BundlesListResponse [Bundle]
blrBundles
  = lens _blrBundles (\ s a -> s{_blrBundles = a}) .
      _Default
      . _Coerce

-- | The kind of this response (\"androidpublisher#bundlesListResponse\").
blrKind :: Lens' BundlesListResponse (Maybe Text)
blrKind = lens _blrKind (\ s a -> s{_blrKind = a})

instance FromJSON BundlesListResponse where
        parseJSON
          = withObject "BundlesListResponse"
              (\ o ->
                 BundlesListResponse' <$>
                   (o .:? "bundles" .!= mempty) <*> (o .:? "kind"))

instance ToJSON BundlesListResponse where
        toJSON BundlesListResponse'{..}
          = object
              (catMaybes
                 [("bundles" .=) <$> _blrBundles,
                  ("kind" .=) <$> _blrKind])

-- | The result of replying\/updating a reply to review.
--
-- /See:/ 'reviewReplyResult' smart constructor.
data ReviewReplyResult =
  ReviewReplyResult'
    { _rReplyText :: !(Maybe Text)
    , _rLastEdited :: !(Maybe Timestamp)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReviewReplyResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReplyText'
--
-- * 'rLastEdited'
reviewReplyResult
    :: ReviewReplyResult
reviewReplyResult =
  ReviewReplyResult' {_rReplyText = Nothing, _rLastEdited = Nothing}


-- | The reply text that was applied.
rReplyText :: Lens' ReviewReplyResult (Maybe Text)
rReplyText
  = lens _rReplyText (\ s a -> s{_rReplyText = a})

-- | The time at which the reply took effect.
rLastEdited :: Lens' ReviewReplyResult (Maybe Timestamp)
rLastEdited
  = lens _rLastEdited (\ s a -> s{_rLastEdited = a})

instance FromJSON ReviewReplyResult where
        parseJSON
          = withObject "ReviewReplyResult"
              (\ o ->
                 ReviewReplyResult' <$>
                   (o .:? "replyText") <*> (o .:? "lastEdited"))

instance ToJSON ReviewReplyResult where
        toJSON ReviewReplyResult'{..}
          = object
              (catMaybes
                 [("replyText" .=) <$> _rReplyText,
                  ("lastEdited" .=) <$> _rLastEdited])
