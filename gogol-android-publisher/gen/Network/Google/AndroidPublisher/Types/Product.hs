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

import           Network.Google.AndroidPublisher.Types.Sum
import           Network.Google.Prelude

-- | List of localized title and description data.
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

-- | The language of the localized data, as defined by BCP 47. i.e.:
-- \"en-US\", \"en-GB\".
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

--
-- /See:/ 'monthDay' smart constructor.
data MonthDay =
  MonthDay'
    { _mdDay   :: !(Maybe (Textual Word32))
    , _mdMonth :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MonthDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdDay'
--
-- * 'mdMonth'
monthDay
    :: MonthDay
monthDay = MonthDay' {_mdDay = Nothing, _mdMonth = Nothing}

-- | Day of a month, value in [1, 31] range. Valid range depends on the
-- specified month.
mdDay :: Lens' MonthDay (Maybe Word32)
mdDay
  = lens _mdDay (\ s a -> s{_mdDay = a}) .
      mapping _Coerce

-- | Month of a year. e.g. 1 = JAN, 2 = FEB etc.
mdMonth :: Lens' MonthDay (Maybe Word32)
mdMonth
  = lens _mdMonth (\ s a -> s{_mdMonth = a}) .
      mapping _Coerce

instance FromJSON MonthDay where
        parseJSON
          = withObject "MonthDay"
              (\ o ->
                 MonthDay' <$> (o .:? "day") <*> (o .:? "month"))

instance ToJSON MonthDay where
        toJSON MonthDay'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _mdDay, ("month" .=) <$> _mdMonth])

--
-- /See:/ 'track' smart constructor.
data Track =
  Track'
    { _tTrack    :: !(Maybe Text)
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

-- | Identifier for this track.
tTrack :: Lens' Track (Maybe Text)
tTrack = lens _tTrack (\ s a -> s{_tTrack = a})

-- | A list of all active releases in this track during a read request. On an
-- update request, it represents desired changes.
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

--
-- /See:/ 'image' smart constructor.
data Image =
  Image'
    { _iURL  :: !(Maybe Text)
    , _iSha1 :: !(Maybe Text)
    , _iId   :: !(Maybe Text)
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
image
    :: Image
image = Image' {_iURL = Nothing, _iSha1 = Nothing, _iId = Nothing}

-- | A URL that will serve a preview of the image.
iURL :: Lens' Image (Maybe Text)
iURL = lens _iURL (\ s a -> s{_iURL = a})

-- | A sha1 hash of the image that was uploaded.
iSha1 :: Lens' Image (Maybe Text)
iSha1 = lens _iSha1 (\ s a -> s{_iSha1 = a})

-- | A unique id representing this image.
iId :: Lens' Image (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$>
                   (o .:? "url") <*> (o .:? "sha1") <*> (o .:? "id"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _iURL, ("sha1" .=) <$> _iSha1,
                  ("id" .=) <$> _iId])

--
-- /See:/ 'inAppProductListing' smart constructor.
data InAppProductListing =
  InAppProductListing'
    { _iaplTitle       :: !(Maybe Text)
    , _iaplDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InAppProductListing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaplTitle'
--
-- * 'iaplDescription'
inAppProductListing
    :: InAppProductListing
inAppProductListing =
  InAppProductListing' {_iaplTitle = Nothing, _iaplDescription = Nothing}

iaplTitle :: Lens' InAppProductListing (Maybe Text)
iaplTitle
  = lens _iaplTitle (\ s a -> s{_iaplTitle = a})

iaplDescription :: Lens' InAppProductListing (Maybe Text)
iaplDescription
  = lens _iaplDescription
      (\ s a -> s{_iaplDescription = a})

instance FromJSON InAppProductListing where
        parseJSON
          = withObject "InAppProductListing"
              (\ o ->
                 InAppProductListing' <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON InAppProductListing where
        toJSON InAppProductListing'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _iaplTitle,
                  ("description" .=) <$> _iaplDescription])

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

--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination =
  TokenPagination'
    { _tpNextPageToken     :: !(Maybe Text)
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

--
-- /See:/ 'expansionFile' smart constructor.
data ExpansionFile =
  ExpansionFile'
    { _efFileSize          :: !(Maybe (Textual Int64))
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

-- | If set this field indicates that this APK has an Expansion File uploaded
-- to it: this APK does not reference another APK\'s Expansion File. The
-- field\'s value is the size of the uploaded Expansion File in bytes.
efFileSize :: Lens' ExpansionFile (Maybe Int64)
efFileSize
  = lens _efFileSize (\ s a -> s{_efFileSize = a}) .
      mapping _Coerce

-- | If set this APK\'s Expansion File references another APK\'s Expansion
-- File. The file_size field will not be set.
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

--
-- /See:/ 'userComment' smart constructor.
data UserComment =
  UserComment'
    { _ucAndroidOSVersion :: !(Maybe (Textual Int32))
    , _ucText             :: !(Maybe Text)
    , _ucDevice           :: !(Maybe Text)
    , _ucThumbsUpCount    :: !(Maybe (Textual Int32))
    , _ucAppVersionCode   :: !(Maybe (Textual Int32))
    , _ucThumbsDownCount  :: !(Maybe (Textual Int32))
    , _ucOriginalText     :: !(Maybe Text)
    , _ucAppVersionName   :: !(Maybe Text)
    , _ucReviewerLanguage :: !(Maybe Text)
    , _ucDeviceMetadata   :: !(Maybe DeviceMetadata)
    , _ucStarRating       :: !(Maybe (Textual Int32))
    , _ucLastModified     :: !(Maybe Timestamp)
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

-- | Number of users who have given this review a thumbs up
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

-- | Number of users who have given this review a thumbs down
ucThumbsDownCount :: Lens' UserComment (Maybe Int32)
ucThumbsDownCount
  = lens _ucThumbsDownCount
      (\ s a -> s{_ucThumbsDownCount = a})
      . mapping _Coerce

-- | Untranslated text of the review, in the case where the review has been
-- translated. If the review has not been translated this is left blank.
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

-- | Some information about the characteristics of the user\'s device
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

--
-- /See:/ 'testers' smart constructor.
data Testers =
  Testers'
    { _tGooglePlusCommUnities :: !(Maybe [Text])
    , _tGoogleGroups          :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Testers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tGooglePlusCommUnities'
--
-- * 'tGoogleGroups'
testers
    :: Testers
testers = Testers' {_tGooglePlusCommUnities = Nothing, _tGoogleGroups = Nothing}

tGooglePlusCommUnities :: Lens' Testers [Text]
tGooglePlusCommUnities
  = lens _tGooglePlusCommUnities
      (\ s a -> s{_tGooglePlusCommUnities = a})
      . _Default
      . _Coerce

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
                 Testers' <$>
                   (o .:? "googlePlusCommunities" .!= mempty) <*>
                     (o .:? "googleGroups" .!= mempty))

instance ToJSON Testers where
        toJSON Testers'{..}
          = object
              (catMaybes
                 [("googlePlusCommunities" .=) <$>
                    _tGooglePlusCommUnities,
                  ("googleGroups" .=) <$> _tGoogleGroups])

-- | Information provided by the user when they complete the subscription
-- cancellation flow (cancellation reason survey).
--
-- /See:/ 'subscriptionCancelSurveyResult' smart constructor.
data SubscriptionCancelSurveyResult =
  SubscriptionCancelSurveyResult'
    { _scsrCancelSurveyReason    :: !(Maybe (Textual Int32))
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
-- are: - Other - I don\'t use this service enough - Technical issues -
-- Cost-related reasons - I found a better app
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

--
-- /See:/ 'listing' smart constructor.
data Listing =
  Listing'
    { _lFullDescription  :: !(Maybe Text)
    , _lVideo            :: !(Maybe Text)
    , _lShortDescription :: !(Maybe Text)
    , _lLanguage         :: !(Maybe Text)
    , _lTitle            :: !(Maybe Text)
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

-- | Full description of the app; this may be up to 4000 characters in
-- length.
lFullDescription :: Lens' Listing (Maybe Text)
lFullDescription
  = lens _lFullDescription
      (\ s a -> s{_lFullDescription = a})

-- | URL of a promotional YouTube video for the app.
lVideo :: Lens' Listing (Maybe Text)
lVideo = lens _lVideo (\ s a -> s{_lVideo = a})

-- | Short description of the app (previously known as promo text); this may
-- be up to 80 characters in length.
lShortDescription :: Lens' Listing (Maybe Text)
lShortDescription
  = lens _lShortDescription
      (\ s a -> s{_lShortDescription = a})

-- | Language localization code (for example, \"de-AT\" for Austrian German).
lLanguage :: Lens' Listing (Maybe Text)
lLanguage
  = lens _lLanguage (\ s a -> s{_lLanguage = a})

-- | App\'s localized title.
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

--
-- /See:/ 'aPK' smart constructor.
data APK =
  APK'
    { _aVersionCode :: !(Maybe (Textual Int32))
    , _aBinary      :: !(Maybe APKBinary)
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

-- | The version code of the APK, as specified in the APK\'s manifest file.
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

--
-- /See:/ 'tracksListResponse' smart constructor.
data TracksListResponse =
  TracksListResponse'
    { _tlrTracks :: !(Maybe [Track])
    , _tlrKind   :: !Text
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
  TracksListResponse'
    {_tlrTracks = Nothing, _tlrKind = "androidpublisher#tracksListResponse"}

tlrTracks :: Lens' TracksListResponse [Track]
tlrTracks
  = lens _tlrTracks (\ s a -> s{_tlrTracks = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#tracksListResponse\".
tlrKind :: Lens' TracksListResponse Text
tlrKind = lens _tlrKind (\ s a -> s{_tlrKind = a})

instance FromJSON TracksListResponse where
        parseJSON
          = withObject "TracksListResponse"
              (\ o ->
                 TracksListResponse' <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidpublisher#tracksListResponse"))

instance ToJSON TracksListResponse where
        toJSON TracksListResponse'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _tlrTracks,
                  Just ("kind" .= _tlrKind)])

--
-- /See:/ 'season' smart constructor.
data Season =
  Season'
    { _sStart      :: !(Maybe MonthDay)
    , _sEnd        :: !(Maybe MonthDay)
    , _sProrations :: !(Maybe [Prorate])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Season' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStart'
--
-- * 'sEnd'
--
-- * 'sProrations'
season
    :: Season
season = Season' {_sStart = Nothing, _sEnd = Nothing, _sProrations = Nothing}

-- | Inclusive start date of the recurrence period.
sStart :: Lens' Season (Maybe MonthDay)
sStart = lens _sStart (\ s a -> s{_sStart = a})

-- | Inclusive end date of the recurrence period.
sEnd :: Lens' Season (Maybe MonthDay)
sEnd = lens _sEnd (\ s a -> s{_sEnd = a})

-- | Optionally present list of prorations for the season. Each proration is
-- a one-off discounted entry into a subscription. Each proration contains
-- the first date on which the discount is available and the new pricing
-- information.
sProrations :: Lens' Season [Prorate]
sProrations
  = lens _sProrations (\ s a -> s{_sProrations = a}) .
      _Default
      . _Coerce

instance FromJSON Season where
        parseJSON
          = withObject "Season"
              (\ o ->
                 Season' <$>
                   (o .:? "start") <*> (o .:? "end") <*>
                     (o .:? "prorations" .!= mempty))

instance ToJSON Season where
        toJSON Season'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _sStart, ("end" .=) <$> _sEnd,
                  ("prorations" .=) <$> _sProrations])

--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo =
  PageInfo'
    { _piResultPerPage :: !(Maybe (Textual Int32))
    , _piTotalResults  :: !(Maybe (Textual Int32))
    , _piStartIndex    :: !(Maybe (Textual Int32))
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

piResultPerPage :: Lens' PageInfo (Maybe Int32)
piResultPerPage
  = lens _piResultPerPage
      (\ s a -> s{_piResultPerPage = a})
      . mapping _Coerce

piTotalResults :: Lens' PageInfo (Maybe Int32)
piTotalResults
  = lens _piTotalResults
      (\ s a -> s{_piTotalResults = a})
      . mapping _Coerce

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

-- | Represents an edit of an app. An edit allows clients to make multiple
-- changes before committing them in one operation.
--
-- /See:/ 'appEdit' smart constructor.
data AppEdit =
  AppEdit'
    { _aeId                :: !(Maybe Text)
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

-- | The ID of the edit that can be used in subsequent API calls.
aeId :: Lens' AppEdit (Maybe Text)
aeId = lens _aeId (\ s a -> s{_aeId = a})

-- | The time at which the edit will expire and will be no longer valid for
-- use in any subsequent API calls (encoded as seconds since the Epoch).
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
    { _ppPurchaseState      :: !(Maybe (Textual Int32))
    , _ppConsumptionState   :: !(Maybe (Textual Int32))
    , _ppKind               :: !Text
    , _ppPurchaseTimeMillis :: !(Maybe (Textual Int64))
    , _ppPurchaseType       :: !(Maybe (Textual Int32))
    , _ppDeveloperPayload   :: !(Maybe Text)
    , _ppOrderId            :: !(Maybe Text)
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
-- * 'ppKind'
--
-- * 'ppPurchaseTimeMillis'
--
-- * 'ppPurchaseType'
--
-- * 'ppDeveloperPayload'
--
-- * 'ppOrderId'
productPurchase
    :: ProductPurchase
productPurchase =
  ProductPurchase'
    { _ppPurchaseState = Nothing
    , _ppConsumptionState = Nothing
    , _ppKind = "androidpublisher#productPurchase"
    , _ppPurchaseTimeMillis = Nothing
    , _ppPurchaseType = Nothing
    , _ppDeveloperPayload = Nothing
    , _ppOrderId = Nothing
    }

-- | The purchase state of the order. Possible values are: - Purchased -
-- Canceled
ppPurchaseState :: Lens' ProductPurchase (Maybe Int32)
ppPurchaseState
  = lens _ppPurchaseState
      (\ s a -> s{_ppPurchaseState = a})
      . mapping _Coerce

-- | The consumption state of the inapp product. Possible values are: - Yet
-- to be consumed - Consumed
ppConsumptionState :: Lens' ProductPurchase (Maybe Int32)
ppConsumptionState
  = lens _ppConsumptionState
      (\ s a -> s{_ppConsumptionState = a})
      . mapping _Coerce

-- | This kind represents an inappPurchase object in the androidpublisher
-- service.
ppKind :: Lens' ProductPurchase Text
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | The time the product was purchased, in milliseconds since the epoch (Jan
-- 1, 1970).
ppPurchaseTimeMillis :: Lens' ProductPurchase (Maybe Int64)
ppPurchaseTimeMillis
  = lens _ppPurchaseTimeMillis
      (\ s a -> s{_ppPurchaseTimeMillis = a})
      . mapping _Coerce

-- | The type of purchase of the inapp product. This field is only set if
-- this purchase was not made using the standard in-app billing flow.
-- Possible values are: - Test (i.e. purchased from a license testing
-- account) - Promo (i.e. purchased using a promo code) - Rewarded (i.e.
-- from watching a video ad instead of paying)
ppPurchaseType :: Lens' ProductPurchase (Maybe Int32)
ppPurchaseType
  = lens _ppPurchaseType
      (\ s a -> s{_ppPurchaseType = a})
      . mapping _Coerce

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

instance FromJSON ProductPurchase where
        parseJSON
          = withObject "ProductPurchase"
              (\ o ->
                 ProductPurchase' <$>
                   (o .:? "purchaseState") <*>
                     (o .:? "consumptionState")
                     <*>
                     (o .:? "kind" .!= "androidpublisher#productPurchase")
                     <*> (o .:? "purchaseTimeMillis")
                     <*> (o .:? "purchaseType")
                     <*> (o .:? "developerPayload")
                     <*> (o .:? "orderId"))

instance ToJSON ProductPurchase where
        toJSON ProductPurchase'{..}
          = object
              (catMaybes
                 [("purchaseState" .=) <$> _ppPurchaseState,
                  ("consumptionState" .=) <$> _ppConsumptionState,
                  Just ("kind" .= _ppKind),
                  ("purchaseTimeMillis" .=) <$> _ppPurchaseTimeMillis,
                  ("purchaseType" .=) <$> _ppPurchaseType,
                  ("developerPayload" .=) <$> _ppDeveloperPayload,
                  ("orderId" .=) <$> _ppOrderId])

--
-- /See:/ 'reviewsListResponse' smart constructor.
data ReviewsListResponse =
  ReviewsListResponse'
    { _rlrTokenPagination :: !(Maybe TokenPagination)
    , _rlrPageInfo        :: !(Maybe PageInfo)
    , _rlrReviews         :: !(Maybe [Review])
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

rlrTokenPagination :: Lens' ReviewsListResponse (Maybe TokenPagination)
rlrTokenPagination
  = lens _rlrTokenPagination
      (\ s a -> s{_rlrTokenPagination = a})

rlrPageInfo :: Lens' ReviewsListResponse (Maybe PageInfo)
rlrPageInfo
  = lens _rlrPageInfo (\ s a -> s{_rlrPageInfo = a})

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
    { _spGivenName                  :: !(Maybe Text)
    , _spAutoResumeTimeMillis       :: !(Maybe (Textual Int64))
    , _spUserCancellationTimeMillis :: !(Maybe (Textual Int64))
    , _spPaymentState               :: !(Maybe (Textual Int32))
    , _spKind                       :: !Text
    , _spPurchaseType               :: !(Maybe (Textual Int32))
    , _spPriceChange                :: !(Maybe SubscriptionPriceChange)
    , _spProFileId                  :: !(Maybe Text)
    , _spLinkedPurchaseToken        :: !(Maybe Text)
    , _spFamilyName                 :: !(Maybe Text)
    , _spProFileName                :: !(Maybe Text)
    , _spExpiryTimeMillis           :: !(Maybe (Textual Int64))
    , _spAutoRenewing               :: !(Maybe Bool)
    , _spPriceCurrencyCode          :: !(Maybe Text)
    , _spEmailAddress               :: !(Maybe Text)
    , _spCancelReason               :: !(Maybe (Textual Int32))
    , _spCountryCode                :: !(Maybe Text)
    , _spDeveloperPayload           :: !(Maybe Text)
    , _spPriceAmountMicros          :: !(Maybe (Textual Int64))
    , _spStartTimeMillis            :: !(Maybe (Textual Int64))
    , _spOrderId                    :: !(Maybe Text)
    , _spCancelSurveyResult         :: !(Maybe SubscriptionCancelSurveyResult)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SubscriptionPurchase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spGivenName'
--
-- * 'spAutoResumeTimeMillis'
--
-- * 'spUserCancellationTimeMillis'
--
-- * 'spPaymentState'
--
-- * 'spKind'
--
-- * 'spPurchaseType'
--
-- * 'spPriceChange'
--
-- * 'spProFileId'
--
-- * 'spLinkedPurchaseToken'
--
-- * 'spFamilyName'
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
-- * 'spCancelSurveyResult'
subscriptionPurchase
    :: SubscriptionPurchase
subscriptionPurchase =
  SubscriptionPurchase'
    { _spGivenName = Nothing
    , _spAutoResumeTimeMillis = Nothing
    , _spUserCancellationTimeMillis = Nothing
    , _spPaymentState = Nothing
    , _spKind = "androidpublisher#subscriptionPurchase"
    , _spPurchaseType = Nothing
    , _spPriceChange = Nothing
    , _spProFileId = Nothing
    , _spLinkedPurchaseToken = Nothing
    , _spFamilyName = Nothing
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
    , _spCancelSurveyResult = Nothing
    }

-- | The given name of the user when the subscription was purchased. Only
-- present for purchases made with \'Subscribe with Google\'.
spGivenName :: Lens' SubscriptionPurchase (Maybe Text)
spGivenName
  = lens _spGivenName (\ s a -> s{_spGivenName = a})

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

-- | The payment state of the subscription. Possible values are: - Payment
-- pending - Payment received - Free trial - Pending deferred
-- upgrade\/downgrade
spPaymentState :: Lens' SubscriptionPurchase (Maybe Int32)
spPaymentState
  = lens _spPaymentState
      (\ s a -> s{_spPaymentState = a})
      . mapping _Coerce

-- | This kind represents a subscriptionPurchase object in the
-- androidpublisher service.
spKind :: Lens' SubscriptionPurchase Text
spKind = lens _spKind (\ s a -> s{_spKind = a})

-- | The type of purchase of the subscription. This field is only set if this
-- purchase was not made using the standard in-app billing flow. Possible
-- values are: - Test (i.e. purchased from a license testing account)
spPurchaseType :: Lens' SubscriptionPurchase (Maybe Int32)
spPurchaseType
  = lens _spPurchaseType
      (\ s a -> s{_spPurchaseType = a})
      . mapping _Coerce

-- | The latest price change information available. This is present only when
-- there is an upcoming price change for the subscription yet to be
-- applied. Once the subscription renews with the new price or the
-- subscription is canceled, no price change information will be returned.
spPriceChange :: Lens' SubscriptionPurchase (Maybe SubscriptionPriceChange)
spPriceChange
  = lens _spPriceChange
      (\ s a -> s{_spPriceChange = a})

-- | The profile id of the user when the subscription was purchased. Only
-- present for purchases made with \'Subscribe with Google\'.
spProFileId :: Lens' SubscriptionPurchase (Maybe Text)
spProFileId
  = lens _spProFileId (\ s a -> s{_spProFileId = a})

-- | The purchase token of the originating purchase if this subscription is
-- one of the following: - Re-signup of a canceled but non-lapsed
-- subscription - Upgrade\/downgrade from a previous subscription For
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

-- | The family name of the user when the subscription was purchased. Only
-- present for purchases made with \'Subscribe with Google\'.
spFamilyName :: Lens' SubscriptionPurchase (Maybe Text)
spFamilyName
  = lens _spFamilyName (\ s a -> s{_spFamilyName = a})

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
-- Possible values are: - User canceled the subscription - Subscription was
-- canceled by the system, for example because of a billing problem -
-- Subscription was replaced with a new subscription - Subscription was
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

-- | Price of the subscription, not including tax. Price is expressed in
-- micro-units, where 1,000,000 micro-units represents one unit of the
-- currency. For example, if the subscription price is €1.99,
-- price_amount_micros is 1990000.
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
-- of the subscription.
spOrderId :: Lens' SubscriptionPurchase (Maybe Text)
spOrderId
  = lens _spOrderId (\ s a -> s{_spOrderId = a})

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
                     (o .:? "autoResumeTimeMillis")
                     <*> (o .:? "userCancellationTimeMillis")
                     <*> (o .:? "paymentState")
                     <*>
                     (o .:? "kind" .!=
                        "androidpublisher#subscriptionPurchase")
                     <*> (o .:? "purchaseType")
                     <*> (o .:? "priceChange")
                     <*> (o .:? "profileId")
                     <*> (o .:? "linkedPurchaseToken")
                     <*> (o .:? "familyName")
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
                     <*> (o .:? "cancelSurveyResult"))

instance ToJSON SubscriptionPurchase where
        toJSON SubscriptionPurchase'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _spGivenName,
                  ("autoResumeTimeMillis" .=) <$>
                    _spAutoResumeTimeMillis,
                  ("userCancellationTimeMillis" .=) <$>
                    _spUserCancellationTimeMillis,
                  ("paymentState" .=) <$> _spPaymentState,
                  Just ("kind" .= _spKind),
                  ("purchaseType" .=) <$> _spPurchaseType,
                  ("priceChange" .=) <$> _spPriceChange,
                  ("profileId" .=) <$> _spProFileId,
                  ("linkedPurchaseToken" .=) <$>
                    _spLinkedPurchaseToken,
                  ("familyName" .=) <$> _spFamilyName,
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
                  ("cancelSurveyResult" .=) <$> _spCancelSurveyResult])

-- | Contains the price change information for a subscription that can be
-- used to control the user journey for the price change in the app. This
-- can be in the form of seeking confirmation from the user or tailoring
-- the experience for a successful conversion.
--
-- /See:/ 'subscriptionPriceChange' smart constructor.
data SubscriptionPriceChange =
  SubscriptionPriceChange'
    { _spcState    :: !(Maybe (Textual Int32))
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

-- | The current state of the price change. Possible values are: -
-- Outstanding: State for a pending price change waiting for the user to
-- agree. In this state, you can optionally seek confirmation from the user
-- using the In-App API. - Accepted: State for an accepted price change
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

--
-- /See:/ 'appDetails' smart constructor.
data AppDetails =
  AppDetails'
    { _adContactPhone    :: !(Maybe Text)
    , _adContactEmail    :: !(Maybe Text)
    , _adContactWebsite  :: !(Maybe Text)
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

-- | Prices per buyer region. None of these prices should be zero. In-app
-- products can never be free.
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

-- | Region code, as defined by ISO 3166-2.
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
-- enterprises who are using Google Play for Work, and whos application is
-- restricted to the enterprise private channel
--
-- /See:/ 'externallyHostedAPK' smart constructor.
data ExternallyHostedAPK =
  ExternallyHostedAPK'
    { _ehapkApplicationLabel    :: !(Maybe Text)
    , _ehapkMaximumSdk          :: !(Maybe (Textual Int32))
    , _ehapkNATiveCodes         :: !(Maybe [Text])
    , _ehapkVersionCode         :: !(Maybe (Textual Int32))
    , _ehapkFileSha256Base64    :: !(Maybe Text)
    , _ehapkExternallyHostedURL :: !(Maybe Text)
    , _ehapkVersionName         :: !(Maybe Text)
    , _ehapkPackageName         :: !(Maybe Text)
    , _ehapkFileSize            :: !(Maybe (Textual Int64))
    , _ehapkIconBase64          :: !(Maybe Text)
    , _ehapkUsesFeatures        :: !(Maybe [Text])
    , _ehapkMinimumSdk          :: !(Maybe (Textual Int32))
    , _ehapkFileSha1Base64      :: !(Maybe Text)
    , _ehapkUsesPermissions     :: !(Maybe [ExternallyHostedAPKUsesPermission])
    , _ehapkCertificateBase64s  :: !(Maybe [Text])
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

-- | The SHA256 checksum of this APK, represented as a base64 encoded byte
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

-- | The SHA1 checksum of this APK, represented as a base64 encoded byte
-- array.
ehapkFileSha1Base64 :: Lens' ExternallyHostedAPK (Maybe Text)
ehapkFileSha1Base64
  = lens _ehapkFileSha1Base64
      (\ s a -> s{_ehapkFileSha1Base64 = a})

-- | The permissions requested by this APK.
ehapkUsesPermissions :: Lens' ExternallyHostedAPK [ExternallyHostedAPKUsesPermission]
ehapkUsesPermissions
  = lens _ehapkUsesPermissions
      (\ s a -> s{_ehapkUsesPermissions = a})
      . _Default
      . _Coerce

-- | A certificate (or array of certificates if a certificate-chain is used)
-- used to signed this APK, represented as a base64 encoded byte array.
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

--
-- /See:/ 'trackRelease' smart constructor.
data TrackRelease =
  TrackRelease'
    { _trVersionCodes :: !(Maybe [Textual Int64])
    , _trStatus       :: !(Maybe Text)
    , _trReleaseNotes :: !(Maybe [LocalizedText])
    , _trUserFraction :: !(Maybe (Textual Double))
    , _trName         :: !(Maybe Text)
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
-- * 'trName'
trackRelease
    :: TrackRelease
trackRelease =
  TrackRelease'
    { _trVersionCodes = Nothing
    , _trStatus = Nothing
    , _trReleaseNotes = Nothing
    , _trUserFraction = Nothing
    , _trName = Nothing
    }

-- | A list of all version codes of APKs that will be exposed to the users of
-- this track when this release is rolled out. Note that this list should
-- contain all versions you wish to be active, including those you wish to
-- retain from previous releases.
trVersionCodes :: Lens' TrackRelease [Int64]
trVersionCodes
  = lens _trVersionCodes
      (\ s a -> s{_trVersionCodes = a})
      . _Default
      . _Coerce

-- | The desired status of this release.
trStatus :: Lens' TrackRelease (Maybe Text)
trStatus = lens _trStatus (\ s a -> s{_trStatus = a})

-- | The description of what is new in the app in this release.
trReleaseNotes :: Lens' TrackRelease [LocalizedText]
trReleaseNotes
  = lens _trReleaseNotes
      (\ s a -> s{_trReleaseNotes = a})
      . _Default
      . _Coerce

-- | Fraction of users who are eligible to receive the release. 0 \< fraction
-- \< 1. To be set, release status must be \"inProgress\" or \"halted\".
trUserFraction :: Lens' TrackRelease (Maybe Double)
trUserFraction
  = lens _trUserFraction
      (\ s a -> s{_trUserFraction = a})
      . mapping _Coerce

-- | The release name, used to identify this release in the Play Console UI.
-- Not required to be unique. This is optional, if not set it will be
-- generated from the version_name in the APKs.
trName :: Lens' TrackRelease (Maybe Text)
trName = lens _trName (\ s a -> s{_trName = a})

instance FromJSON TrackRelease where
        parseJSON
          = withObject "TrackRelease"
              (\ o ->
                 TrackRelease' <$>
                   (o .:? "versionCodes" .!= mempty) <*>
                     (o .:? "status")
                     <*> (o .:? "releaseNotes" .!= mempty)
                     <*> (o .:? "userFraction")
                     <*> (o .:? "name"))

instance ToJSON TrackRelease where
        toJSON TrackRelease'{..}
          = object
              (catMaybes
                 [("versionCodes" .=) <$> _trVersionCodes,
                  ("status" .=) <$> _trStatus,
                  ("releaseNotes" .=) <$> _trReleaseNotes,
                  ("userFraction" .=) <$> _trUserFraction,
                  ("name" .=) <$> _trName])

--
-- /See:/ 'bundle' smart constructor.
data Bundle =
  Bundle'
    { _bVersionCode :: !(Maybe (Textual Int32))
    , _bSha1        :: !(Maybe Text)
    , _bSha256      :: !(Maybe Text)
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

-- | The version code of the Android App Bundle. As specified in the Android
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
    { _dfSymbolType :: Maybe Text
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
dfSymbolType :: Lens' DeobfuscationFile (Maybe Text)
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

--
-- /See:/ 'voidedPurchasesListResponse' smart constructor.
data VoidedPurchasesListResponse =
  VoidedPurchasesListResponse'
    { _vplrTokenPagination :: !(Maybe TokenPagination)
    , _vplrPageInfo        :: !(Maybe PageInfo)
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

vplrTokenPagination :: Lens' VoidedPurchasesListResponse (Maybe TokenPagination)
vplrTokenPagination
  = lens _vplrTokenPagination
      (\ s a -> s{_vplrTokenPagination = a})

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

iurImage :: Lens' ImagesUploadResponse (Maybe Image)
iurImage = lens _iurImage (\ s a -> s{_iurImage = a})

instance FromJSON ImagesUploadResponse where
        parseJSON
          = withObject "ImagesUploadResponse"
              (\ o -> ImagesUploadResponse' <$> (o .:? "image"))

instance ToJSON ImagesUploadResponse where
        toJSON ImagesUploadResponse'{..}
          = object (catMaybes [("image" .=) <$> _iurImage])

--
-- /See:/ 'prorate' smart constructor.
data Prorate =
  Prorate'
    { _pStart        :: !(Maybe MonthDay)
    , _pDefaultPrice :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Prorate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pStart'
--
-- * 'pDefaultPrice'
prorate
    :: Prorate
prorate = Prorate' {_pStart = Nothing, _pDefaultPrice = Nothing}

-- | Defines the first day on which the price takes effect.
pStart :: Lens' Prorate (Maybe MonthDay)
pStart = lens _pStart (\ s a -> s{_pStart = a})

-- | Default price cannot be zero and must be less than the full subscription
-- price. Default price is always in the developer\'s Checkout merchant
-- currency. Targeted countries have their prices set automatically based
-- on the default_price.
pDefaultPrice :: Lens' Prorate (Maybe Price)
pDefaultPrice
  = lens _pDefaultPrice
      (\ s a -> s{_pDefaultPrice = a})

instance FromJSON Prorate where
        parseJSON
          = withObject "Prorate"
              (\ o ->
                 Prorate' <$>
                   (o .:? "start") <*> (o .:? "defaultPrice"))

instance ToJSON Prorate where
        toJSON Prorate'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _pStart,
                  ("defaultPrice" .=) <$> _pDefaultPrice])

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

--
-- /See:/ 'inAppProductsListResponse' smart constructor.
data InAppProductsListResponse =
  InAppProductsListResponse'
    { _iaplrTokenPagination :: !(Maybe TokenPagination)
    , _iaplrPageInfo        :: !(Maybe PageInfo)
    , _iaplrKind            :: !Text
    , _iaplrInAppProduct    :: !(Maybe [InAppProduct])
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
    , _iaplrKind = "androidpublisher#inappproductsListResponse"
    , _iaplrInAppProduct = Nothing
    }

iaplrTokenPagination :: Lens' InAppProductsListResponse (Maybe TokenPagination)
iaplrTokenPagination
  = lens _iaplrTokenPagination
      (\ s a -> s{_iaplrTokenPagination = a})

iaplrPageInfo :: Lens' InAppProductsListResponse (Maybe PageInfo)
iaplrPageInfo
  = lens _iaplrPageInfo
      (\ s a -> s{_iaplrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#inappproductsListResponse\".
iaplrKind :: Lens' InAppProductsListResponse Text
iaplrKind
  = lens _iaplrKind (\ s a -> s{_iaplrKind = a})

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
                     (o .:? "kind" .!=
                        "androidpublisher#inappproductsListResponse")
                     <*> (o .:? "inappproduct" .!= mempty))

instance ToJSON InAppProductsListResponse where
        toJSON InAppProductsListResponse'{..}
          = object
              (catMaybes
                 [("tokenPagination" .=) <$> _iaplrTokenPagination,
                  ("pageInfo" .=) <$> _iaplrPageInfo,
                  Just ("kind" .= _iaplrKind),
                  ("inappproduct" .=) <$> _iaplrInAppProduct])

--
-- /See:/ 'localizedText' smart constructor.
data LocalizedText =
  LocalizedText'
    { _ltText     :: !(Maybe Text)
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

-- | The text in the given \`language\`.
ltText :: Lens' LocalizedText (Maybe Text)
ltText = lens _ltText (\ s a -> s{_ltText = a})

-- | The language code, in BCP 47 format (eg \"en-US\").
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

--
-- /See:/ 'review' smart constructor.
data Review =
  Review'
    { _rReviewId   :: !(Maybe Text)
    , _rAuthorName :: !(Maybe Text)
    , _rComments   :: !(Maybe [Comment])
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
    { _sdiDesiredExpiryTimeMillis  :: !(Maybe (Textual Int64))
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

--
-- /See:/ 'deviceMetadata' smart constructor.
data DeviceMetadata =
  DeviceMetadata'
    { _dmProductName      :: !(Maybe Text)
    , _dmGlEsVersion      :: !(Maybe (Textual Int32))
    , _dmManufacturer     :: !(Maybe Text)
    , _dmScreenWidthPx    :: !(Maybe (Textual Int32))
    , _dmRamMb            :: !(Maybe (Textual Int32))
    , _dmCPUMake          :: !(Maybe Text)
    , _dmScreenHeightPx   :: !(Maybe (Textual Int32))
    , _dmNATivePlatform   :: !(Maybe Text)
    , _dmDeviceClass      :: !(Maybe Text)
    , _dmCPUModel         :: !(Maybe Text)
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

-- | Device RAM in Megabytes e.g. \"2048\"
dmRamMb :: Lens' DeviceMetadata (Maybe Int32)
dmRamMb
  = lens _dmRamMb (\ s a -> s{_dmRamMb = a}) .
      mapping _Coerce

-- | Device CPU make e.g. \"Qualcomm\"
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

-- | Device CPU model e.g. \"MSM8974\"
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

--
-- /See:/ 'developerComment' smart constructor.
data DeveloperComment =
  DeveloperComment'
    { _dcText         :: !(Maybe Text)
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

--
-- /See:/ 'inAppProduct' smart constructor.
data InAppProduct =
  InAppProduct'
    { _iapStatus             :: !(Maybe Text)
    , _iapGracePeriod        :: !(Maybe Text)
    , _iapTrialPeriod        :: !(Maybe Text)
    , _iapPackageName        :: !(Maybe Text)
    , _iapSeason             :: !(Maybe Season)
    , _iapPurchaseType       :: !(Maybe Text)
    , _iapSubscriptionPeriod :: !(Maybe Text)
    , _iapPrices             :: !(Maybe InAppProductPrices)
    , _iapSKU                :: !(Maybe Text)
    , _iapDefaultPrice       :: !(Maybe Price)
    , _iapListings           :: !(Maybe InAppProductListings)
    , _iapDefaultLanguage    :: !(Maybe Text)
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
-- * 'iapSeason'
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
    , _iapSeason = Nothing
    , _iapPurchaseType = Nothing
    , _iapSubscriptionPeriod = Nothing
    , _iapPrices = Nothing
    , _iapSKU = Nothing
    , _iapDefaultPrice = Nothing
    , _iapListings = Nothing
    , _iapDefaultLanguage = Nothing
    }

iapStatus :: Lens' InAppProduct (Maybe Text)
iapStatus
  = lens _iapStatus (\ s a -> s{_iapStatus = a})

-- | Grace period of the subscription, specified in ISO 8601 format. It will
-- allow developers to give their subscribers a grace period when the
-- payment for the new recurrence period is declined. Acceptable values =
-- \"P3D\" (three days) and \"P7D\" (seven days)
iapGracePeriod :: Lens' InAppProduct (Maybe Text)
iapGracePeriod
  = lens _iapGracePeriod
      (\ s a -> s{_iapGracePeriod = a})

-- | Trial period, specified in ISO 8601 format. Acceptable values are
-- anything between \"P7D\" (seven days) and \"P999D\" (999 days). Seasonal
-- subscriptions cannot have a trial period.
iapTrialPeriod :: Lens' InAppProduct (Maybe Text)
iapTrialPeriod
  = lens _iapTrialPeriod
      (\ s a -> s{_iapTrialPeriod = a})

-- | The package name of the parent app.
iapPackageName :: Lens' InAppProduct (Maybe Text)
iapPackageName
  = lens _iapPackageName
      (\ s a -> s{_iapPackageName = a})

-- | Definition of a season for a seasonal subscription. Can be defined only
-- for yearly subscriptions.
iapSeason :: Lens' InAppProduct (Maybe Season)
iapSeason
  = lens _iapSeason (\ s a -> s{_iapSeason = a})

-- | Purchase type enum value. Unmodifiable after creation.
iapPurchaseType :: Lens' InAppProduct (Maybe Text)
iapPurchaseType
  = lens _iapPurchaseType
      (\ s a -> s{_iapPurchaseType = a})

-- | Subscription period, specified in ISO 8601 format. Acceptable values are
-- \"P1W\" (one week), \"P1M\" (one month), \"P3M\" (three months), \"P6M\"
-- (six months), and \"P1Y\" (one year).
iapSubscriptionPeriod :: Lens' InAppProduct (Maybe Text)
iapSubscriptionPeriod
  = lens _iapSubscriptionPeriod
      (\ s a -> s{_iapSubscriptionPeriod = a})

-- | Prices per buyer region. None of these prices should be zero. In-app
-- products can never be free.
iapPrices :: Lens' InAppProduct (Maybe InAppProductPrices)
iapPrices
  = lens _iapPrices (\ s a -> s{_iapPrices = a})

-- | The stock-keeping-unit (SKU) of the product, unique within an app.
iapSKU :: Lens' InAppProduct (Maybe Text)
iapSKU = lens _iapSKU (\ s a -> s{_iapSKU = a})

-- | Default price cannot be zero. In-app products can never be free. Default
-- price is always in the developer\'s Checkout merchant currency.
iapDefaultPrice :: Lens' InAppProduct (Maybe Price)
iapDefaultPrice
  = lens _iapDefaultPrice
      (\ s a -> s{_iapDefaultPrice = a})

-- | List of localized title and description data.
iapListings :: Lens' InAppProduct (Maybe InAppProductListings)
iapListings
  = lens _iapListings (\ s a -> s{_iapListings = a})

-- | The default language of the localized data, as defined by BCP 47. e.g.
-- \"en-US\", \"en-GB\".
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
                     <*> (o .:? "season")
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
                  ("season" .=) <$> _iapSeason,
                  ("purchaseType" .=) <$> _iapPurchaseType,
                  ("subscriptionPeriod" .=) <$> _iapSubscriptionPeriod,
                  ("prices" .=) <$> _iapPrices, ("sku" .=) <$> _iapSKU,
                  ("defaultPrice" .=) <$> _iapDefaultPrice,
                  ("listings" .=) <$> _iapListings,
                  ("defaultLanguage" .=) <$> _iapDefaultLanguage])

--
-- /See:/ 'price' smart constructor.
data Price =
  Price'
    { _pPriceMicros :: !(Maybe Text)
    , _pCurrency    :: !(Maybe Text)
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

-- | The price in millionths of the currency base unit represented as a
-- string.
pPriceMicros :: Lens' Price (Maybe Text)
pPriceMicros
  = lens _pPriceMicros (\ s a -> s{_pPriceMicros = a})

-- | 3 letter Currency code, as defined by ISO 4217.
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

-- | Represents the binary payload of an APK.
--
-- /See:/ 'aPKBinary' smart constructor.
data APKBinary =
  APKBinary'
    { _apkbSha1   :: !(Maybe Text)
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

--
-- /See:/ 'aPKsListResponse' smart constructor.
data APKsListResponse =
  APKsListResponse'
    { _apklrKind :: !Text
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
  APKsListResponse'
    {_apklrKind = "androidpublisher#apksListResponse", _apklrAPKs = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#apksListResponse\".
apklrKind :: Lens' APKsListResponse Text
apklrKind
  = lens _apklrKind (\ s a -> s{_apklrKind = a})

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
                   (o .:? "kind" .!=
                      "androidpublisher#apksListResponse")
                     <*> (o .:? "apks" .!= mempty))

instance ToJSON APKsListResponse where
        toJSON APKsListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _apklrKind),
                  ("apks" .=) <$> _apklrAPKs])

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

-- | A permission used by this APK.
--
-- /See:/ 'externallyHostedAPKUsesPermission' smart constructor.
data ExternallyHostedAPKUsesPermission =
  ExternallyHostedAPKUsesPermission'
    { _ehapkupName          :: !(Maybe Text)
    , _ehapkupMaxSdkVersion :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExternallyHostedAPKUsesPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehapkupName'
--
-- * 'ehapkupMaxSdkVersion'
externallyHostedAPKUsesPermission
    :: ExternallyHostedAPKUsesPermission
externallyHostedAPKUsesPermission =
  ExternallyHostedAPKUsesPermission'
    {_ehapkupName = Nothing, _ehapkupMaxSdkVersion = Nothing}

-- | The name of the permission requested.
ehapkupName :: Lens' ExternallyHostedAPKUsesPermission (Maybe Text)
ehapkupName
  = lens _ehapkupName (\ s a -> s{_ehapkupName = a})

-- | Optionally, the maximum SDK version for which the permission is
-- required.
ehapkupMaxSdkVersion :: Lens' ExternallyHostedAPKUsesPermission (Maybe Int32)
ehapkupMaxSdkVersion
  = lens _ehapkupMaxSdkVersion
      (\ s a -> s{_ehapkupMaxSdkVersion = a})
      . mapping _Coerce

instance FromJSON ExternallyHostedAPKUsesPermission
         where
        parseJSON
          = withObject "ExternallyHostedAPKUsesPermission"
              (\ o ->
                 ExternallyHostedAPKUsesPermission' <$>
                   (o .:? "name") <*> (o .:? "maxSdkVersion"))

instance ToJSON ExternallyHostedAPKUsesPermission
         where
        toJSON ExternallyHostedAPKUsesPermission'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ehapkupName,
                  ("maxSdkVersion" .=) <$> _ehapkupMaxSdkVersion])

--
-- /See:/ 'listingsListResponse' smart constructor.
data ListingsListResponse =
  ListingsListResponse'
    { _llrKind     :: !Text
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
  ListingsListResponse'
    {_llrKind = "androidpublisher#listingsListResponse", _llrListings = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#listingsListResponse\".
llrKind :: Lens' ListingsListResponse Text
llrKind = lens _llrKind (\ s a -> s{_llrKind = a})

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
                   (o .:? "kind" .!=
                      "androidpublisher#listingsListResponse")
                     <*> (o .:? "listings" .!= mempty))

instance ToJSON ListingsListResponse where
        toJSON ListingsListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _llrKind),
                  ("listings" .=) <$> _llrListings])

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

--
-- /See:/ 'comment' smart constructor.
data Comment =
  Comment'
    { _cUserComment      :: !(Maybe UserComment)
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

--
-- /See:/ 'timestamp' smart constructor.
data Timestamp =
  Timestamp'
    { _tNanos   :: !(Maybe (Textual Int32))
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

tNanos :: Lens' Timestamp (Maybe Int32)
tNanos
  = lens _tNanos (\ s a -> s{_tNanos = a}) .
      mapping _Coerce

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
    { _vpKind               :: !Text
    , _vpPurchaseTimeMillis :: !(Maybe (Textual Int64))
    , _vpPurchaseToken      :: !(Maybe Text)
    , _vpVoidedTimeMillis   :: !(Maybe (Textual Int64))
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
-- * 'vpVoidedTimeMillis'
voidedPurchase
    :: VoidedPurchase
voidedPurchase =
  VoidedPurchase'
    { _vpKind = "androidpublisher#voidedPurchase"
    , _vpPurchaseTimeMillis = Nothing
    , _vpPurchaseToken = Nothing
    , _vpVoidedTimeMillis = Nothing
    }

-- | This kind represents a voided purchase object in the androidpublisher
-- service.
vpKind :: Lens' VoidedPurchase Text
vpKind = lens _vpKind (\ s a -> s{_vpKind = a})

-- | The time at which the purchase was made, in milliseconds since the epoch
-- (Jan 1, 1970).
vpPurchaseTimeMillis :: Lens' VoidedPurchase (Maybe Int64)
vpPurchaseTimeMillis
  = lens _vpPurchaseTimeMillis
      (\ s a -> s{_vpPurchaseTimeMillis = a})
      . mapping _Coerce

-- | The token that was generated when a purchase was made. This uniquely
-- identifies a purchase.
vpPurchaseToken :: Lens' VoidedPurchase (Maybe Text)
vpPurchaseToken
  = lens _vpPurchaseToken
      (\ s a -> s{_vpPurchaseToken = a})

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
                   (o .:? "kind" .!= "androidpublisher#voidedPurchase")
                     <*> (o .:? "purchaseTimeMillis")
                     <*> (o .:? "purchaseToken")
                     <*> (o .:? "voidedTimeMillis"))

instance ToJSON VoidedPurchase where
        toJSON VoidedPurchase'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _vpKind),
                  ("purchaseTimeMillis" .=) <$> _vpPurchaseTimeMillis,
                  ("purchaseToken" .=) <$> _vpPurchaseToken,
                  ("voidedTimeMillis" .=) <$> _vpVoidedTimeMillis])

--
-- /See:/ 'bundlesListResponse' smart constructor.
data BundlesListResponse =
  BundlesListResponse'
    { _blrBundles :: !(Maybe [Bundle])
    , _blrKind    :: !Text
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
  BundlesListResponse'
    {_blrBundles = Nothing, _blrKind = "androidpublisher#bundlesListResponse"}

blrBundles :: Lens' BundlesListResponse [Bundle]
blrBundles
  = lens _blrBundles (\ s a -> s{_blrBundles = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#bundlesListResponse\".
blrKind :: Lens' BundlesListResponse Text
blrKind = lens _blrKind (\ s a -> s{_blrKind = a})

instance FromJSON BundlesListResponse where
        parseJSON
          = withObject "BundlesListResponse"
              (\ o ->
                 BundlesListResponse' <$>
                   (o .:? "bundles" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidpublisher#bundlesListResponse"))

instance ToJSON BundlesListResponse where
        toJSON BundlesListResponse'{..}
          = object
              (catMaybes
                 [("bundles" .=) <$> _blrBundles,
                  Just ("kind" .= _blrKind)])

--
-- /See:/ 'reviewReplyResult' smart constructor.
data ReviewReplyResult =
  ReviewReplyResult'
    { _rReplyText  :: !(Maybe Text)
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
