{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidPublisher.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidPublisher.Types.Product where

import           Network.Google.AndroidPublisher.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'inappproductsUpdateResponse' smart constructor.
newtype InappproductsUpdateResponse = InappproductsUpdateResponse
    { _iurInappproduct :: Maybe InAppProduct
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iurInappproduct'
inappproductsUpdateResponse
    :: InappproductsUpdateResponse
inappproductsUpdateResponse =
    InappproductsUpdateResponse
    { _iurInappproduct = Nothing
    }

iurInappproduct :: Lens' InappproductsUpdateResponse (Maybe InAppProduct)
iurInappproduct
  = lens _iurInappproduct
      (\ s a -> s{_iurInappproduct = a})

instance FromJSON InappproductsUpdateResponse where
        parseJSON
          = withObject "InappproductsUpdateResponse"
              (\ o ->
                 InappproductsUpdateResponse <$>
                   (o .:? "inappproduct"))

instance ToJSON InappproductsUpdateResponse where
        toJSON InappproductsUpdateResponse{..}
          = object
              (catMaybes
                 [("inappproduct" .=) <$> _iurInappproduct])

-- | List of localized title and description data.
--
-- /See:/ 'inAppProductListings' smart constructor.
data InAppProductListings =
    InAppProductListings
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductListings' with the minimum fields required to make a request.
--
inAppProductListings
    :: InAppProductListings
inAppProductListings = InAppProductListings

instance FromJSON InAppProductListings where
        parseJSON
          = withObject "InAppProductListings"
              (\ o -> pure InAppProductListings)

instance ToJSON InAppProductListings where
        toJSON = const (Object mempty)

--
-- /See:/ 'monthDay' smart constructor.
data MonthDay = MonthDay
    { _mdDay   :: !(Maybe Word32)
    , _mdMonth :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonthDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdDay'
--
-- * 'mdMonth'
monthDay
    :: MonthDay
monthDay =
    MonthDay
    { _mdDay = Nothing
    , _mdMonth = Nothing
    }

-- | Day of a month, value in [1, 31] range. Valid range depends on the
-- specified month.
mdDay :: Lens' MonthDay (Maybe Word32)
mdDay = lens _mdDay (\ s a -> s{_mdDay = a})

-- | Month of a year. e.g. 1 = JAN, 2 = FEB etc.
mdMonth :: Lens' MonthDay (Maybe Word32)
mdMonth = lens _mdMonth (\ s a -> s{_mdMonth = a})

instance FromJSON MonthDay where
        parseJSON
          = withObject "MonthDay"
              (\ o ->
                 MonthDay <$> (o .:? "day") <*> (o .:? "month"))

instance ToJSON MonthDay where
        toJSON MonthDay{..}
          = object
              (catMaybes
                 [("day" .=) <$> _mdDay, ("month" .=) <$> _mdMonth])

--
-- /See:/ 'inappproductsBatchRequestEntry' smart constructor.
data InappproductsBatchRequestEntry = InappproductsBatchRequestEntry
    { _ibreMethodName                 :: !(Maybe Text)
    , _ibreInappproductsinsertrequest :: !(Maybe InappproductsInsertRequest)
    , _ibreInappproductsupdaterequest :: !(Maybe InappproductsUpdateRequest)
    , _ibreBatchId                    :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibreMethodName'
--
-- * 'ibreInappproductsinsertrequest'
--
-- * 'ibreInappproductsupdaterequest'
--
-- * 'ibreBatchId'
inappproductsBatchRequestEntry
    :: InappproductsBatchRequestEntry
inappproductsBatchRequestEntry =
    InappproductsBatchRequestEntry
    { _ibreMethodName = Nothing
    , _ibreInappproductsinsertrequest = Nothing
    , _ibreInappproductsupdaterequest = Nothing
    , _ibreBatchId = Nothing
    }

ibreMethodName :: Lens' InappproductsBatchRequestEntry (Maybe Text)
ibreMethodName
  = lens _ibreMethodName
      (\ s a -> s{_ibreMethodName = a})

ibreInappproductsinsertrequest :: Lens' InappproductsBatchRequestEntry (Maybe InappproductsInsertRequest)
ibreInappproductsinsertrequest
  = lens _ibreInappproductsinsertrequest
      (\ s a -> s{_ibreInappproductsinsertrequest = a})

ibreInappproductsupdaterequest :: Lens' InappproductsBatchRequestEntry (Maybe InappproductsUpdateRequest)
ibreInappproductsupdaterequest
  = lens _ibreInappproductsupdaterequest
      (\ s a -> s{_ibreInappproductsupdaterequest = a})

ibreBatchId :: Lens' InappproductsBatchRequestEntry (Maybe Word32)
ibreBatchId
  = lens _ibreBatchId (\ s a -> s{_ibreBatchId = a})

instance FromJSON InappproductsBatchRequestEntry
         where
        parseJSON
          = withObject "InappproductsBatchRequestEntry"
              (\ o ->
                 InappproductsBatchRequestEntry <$>
                   (o .:? "methodName") <*>
                     (o .:? "inappproductsinsertrequest")
                     <*> (o .:? "inappproductsupdaterequest")
                     <*> (o .:? "batchId"))

instance ToJSON InappproductsBatchRequestEntry where
        toJSON InappproductsBatchRequestEntry{..}
          = object
              (catMaybes
                 [("methodName" .=) <$> _ibreMethodName,
                  ("inappproductsinsertrequest" .=) <$>
                    _ibreInappproductsinsertrequest,
                  ("inappproductsupdaterequest" .=) <$>
                    _ibreInappproductsupdaterequest,
                  ("batchId" .=) <$> _ibreBatchId])

--
-- /See:/ 'inAppProductListing' smart constructor.
data InAppProductListing = InAppProductListing
    { _iaplTitle       :: !(Maybe Text)
    , _iaplDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    InAppProductListing
    { _iaplTitle = Nothing
    , _iaplDescription = Nothing
    }

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
                 InAppProductListing <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON InAppProductListing where
        toJSON InAppProductListing{..}
          = object
              (catMaybes
                 [("title" .=) <$> _iaplTitle,
                  ("description" .=) <$> _iaplDescription])

--
-- /See:/ 'track' smart constructor.
data Track = Track
    { _tVersionCodes :: !(Maybe [Int32])
    , _tTrack        :: !(Maybe Text)
    , _tUserFraction :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Track' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tVersionCodes'
--
-- * 'tTrack'
--
-- * 'tUserFraction'
track
    :: Track
track =
    Track
    { _tVersionCodes = Nothing
    , _tTrack = Nothing
    , _tUserFraction = Nothing
    }

tVersionCodes :: Lens' Track [Int32]
tVersionCodes
  = lens _tVersionCodes
      (\ s a -> s{_tVersionCodes = a})
      . _Default
      . _Coerce

tTrack :: Lens' Track (Maybe Text)
tTrack = lens _tTrack (\ s a -> s{_tTrack = a})

tUserFraction :: Lens' Track (Maybe Double)
tUserFraction
  = lens _tUserFraction
      (\ s a -> s{_tUserFraction = a})

instance FromJSON Track where
        parseJSON
          = withObject "Track"
              (\ o ->
                 Track <$>
                   (o .:? "versionCodes" .!= mempty) <*> (o .:? "track")
                     <*> (o .:? "userFraction"))

instance ToJSON Track where
        toJSON Track{..}
          = object
              (catMaybes
                 [("versionCodes" .=) <$> _tVersionCodes,
                  ("track" .=) <$> _tTrack,
                  ("userFraction" .=) <$> _tUserFraction])

--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination = TokenPagination
    { _tpNextPageToken     :: !(Maybe Text)
    , _tpPreviousPageToken :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TokenPagination
    { _tpNextPageToken = Nothing
    , _tpPreviousPageToken = Nothing
    }

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
                 TokenPagination <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "previousPageToken"))

instance ToJSON TokenPagination where
        toJSON TokenPagination{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tpNextPageToken,
                  ("previousPageToken" .=) <$> _tpPreviousPageToken])

--
-- /See:/ 'expansionFile' smart constructor.
data ExpansionFile = ExpansionFile
    { _efFileSize          :: !(Maybe Int64)
    , _efReferencesVersion :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ExpansionFile
    { _efFileSize = Nothing
    , _efReferencesVersion = Nothing
    }

-- | If set this field indicates that this APK has an Expansion File uploaded
-- to it: this APK does not reference another APK\'s Expansion File. The
-- field\'s value is the size of the uploaded Expansion File in bytes.
efFileSize :: Lens' ExpansionFile (Maybe Int64)
efFileSize
  = lens _efFileSize (\ s a -> s{_efFileSize = a})

-- | If set this APK\'s Expansion File references another APK\'s Expansion
-- File. The file_size field will not be set.
efReferencesVersion :: Lens' ExpansionFile (Maybe Int32)
efReferencesVersion
  = lens _efReferencesVersion
      (\ s a -> s{_efReferencesVersion = a})

instance FromJSON ExpansionFile where
        parseJSON
          = withObject "ExpansionFile"
              (\ o ->
                 ExpansionFile <$>
                   (o .:? "fileSize") <*> (o .:? "referencesVersion"))

instance ToJSON ExpansionFile where
        toJSON ExpansionFile{..}
          = object
              (catMaybes
                 [("fileSize" .=) <$> _efFileSize,
                  ("referencesVersion" .=) <$> _efReferencesVersion])

--
-- /See:/ 'image' smart constructor.
data Image = Image
    { _iURL  :: !(Maybe Text)
    , _iSha1 :: !(Maybe Text)
    , _iId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
image =
    Image
    { _iURL = Nothing
    , _iSha1 = Nothing
    , _iId = Nothing
    }

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
                 Image <$>
                   (o .:? "url") <*> (o .:? "sha1") <*> (o .:? "id"))

instance ToJSON Image where
        toJSON Image{..}
          = object
              (catMaybes
                 [("url" .=) <$> _iURL, ("sha1" .=) <$> _iSha1,
                  ("id" .=) <$> _iId])

--
-- /See:/ 'imagesDeleteAllResponse' smart constructor.
newtype ImagesDeleteAllResponse = ImagesDeleteAllResponse
    { _idarDeleted :: Maybe [Image]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDeleteAllResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idarDeleted'
imagesDeleteAllResponse
    :: ImagesDeleteAllResponse
imagesDeleteAllResponse =
    ImagesDeleteAllResponse
    { _idarDeleted = Nothing
    }

idarDeleted :: Lens' ImagesDeleteAllResponse [Image]
idarDeleted
  = lens _idarDeleted (\ s a -> s{_idarDeleted = a}) .
      _Default
      . _Coerce

instance FromJSON ImagesDeleteAllResponse where
        parseJSON
          = withObject "ImagesDeleteAllResponse"
              (\ o ->
                 ImagesDeleteAllResponse <$>
                   (o .:? "deleted" .!= mempty))

instance ToJSON ImagesDeleteAllResponse where
        toJSON ImagesDeleteAllResponse{..}
          = object
              (catMaybes [("deleted" .=) <$> _idarDeleted])

--
-- /See:/ 'subscriptionPurchasesDeferRequest' smart constructor.
newtype SubscriptionPurchasesDeferRequest = SubscriptionPurchasesDeferRequest
    { _spdrDeferralInfo :: Maybe SubscriptionDeferralInfo
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionPurchasesDeferRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdrDeferralInfo'
subscriptionPurchasesDeferRequest
    :: SubscriptionPurchasesDeferRequest
subscriptionPurchasesDeferRequest =
    SubscriptionPurchasesDeferRequest
    { _spdrDeferralInfo = Nothing
    }

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
                 SubscriptionPurchasesDeferRequest <$>
                   (o .:? "deferralInfo"))

instance ToJSON SubscriptionPurchasesDeferRequest
         where
        toJSON SubscriptionPurchasesDeferRequest{..}
          = object
              (catMaybes
                 [("deferralInfo" .=) <$> _spdrDeferralInfo])

--
-- /See:/ 'aPK' smart constructor.
data APK = APK
    { _apkVersionCode :: !(Maybe Int32)
    , _apkBinary      :: !(Maybe APKBinary)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APK' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkVersionCode'
--
-- * 'apkBinary'
aPK
    :: APK
aPK =
    APK
    { _apkVersionCode = Nothing
    , _apkBinary = Nothing
    }

-- | The version code of the APK, as specified in the APK\'s manifest file.
apkVersionCode :: Lens' APK (Maybe Int32)
apkVersionCode
  = lens _apkVersionCode
      (\ s a -> s{_apkVersionCode = a})

-- | Information about the binary payload of this APK.
apkBinary :: Lens' APK (Maybe APKBinary)
apkBinary
  = lens _apkBinary (\ s a -> s{_apkBinary = a})

instance FromJSON APK where
        parseJSON
          = withObject "APK"
              (\ o ->
                 APK <$> (o .:? "versionCode") <*> (o .:? "binary"))

instance ToJSON APK where
        toJSON APK{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _apkVersionCode,
                  ("binary" .=) <$> _apkBinary])

--
-- /See:/ 'testers' smart constructor.
data Testers = Testers
    { _tGooglePlusCommUnities :: !(Maybe [Text])
    , _tGoogleGroups          :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Testers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tGooglePlusCommUnities'
--
-- * 'tGoogleGroups'
testers
    :: Testers
testers =
    Testers
    { _tGooglePlusCommUnities = Nothing
    , _tGoogleGroups = Nothing
    }

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
                 Testers <$>
                   (o .:? "googlePlusCommunities" .!= mempty) <*>
                     (o .:? "googleGroups" .!= mempty))

instance ToJSON Testers where
        toJSON Testers{..}
          = object
              (catMaybes
                 [("googlePlusCommunities" .=) <$>
                    _tGooglePlusCommUnities,
                  ("googleGroups" .=) <$> _tGoogleGroups])

--
-- /See:/ 'listing' smart constructor.
data Listing = Listing
    { _lFullDescription  :: !(Maybe Text)
    , _lVideo            :: !(Maybe Text)
    , _lShortDescription :: !(Maybe Text)
    , _lLanguage         :: !(Maybe Text)
    , _lTitle            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Listing
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
                 Listing <$>
                   (o .:? "fullDescription") <*> (o .:? "video") <*>
                     (o .:? "shortDescription")
                     <*> (o .:? "language")
                     <*> (o .:? "title"))

instance ToJSON Listing where
        toJSON Listing{..}
          = object
              (catMaybes
                 [("fullDescription" .=) <$> _lFullDescription,
                  ("video" .=) <$> _lVideo,
                  ("shortDescription" .=) <$> _lShortDescription,
                  ("language" .=) <$> _lLanguage,
                  ("title" .=) <$> _lTitle])

--
-- /See:/ 'season' smart constructor.
data Season = Season
    { _sStart :: !(Maybe MonthDay)
    , _sEnd   :: !(Maybe MonthDay)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Season' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStart'
--
-- * 'sEnd'
season
    :: Season
season =
    Season
    { _sStart = Nothing
    , _sEnd = Nothing
    }

-- | Inclusive start date of the recurrence period.
sStart :: Lens' Season (Maybe MonthDay)
sStart = lens _sStart (\ s a -> s{_sStart = a})

-- | Inclusive end date of the recurrence period.
sEnd :: Lens' Season (Maybe MonthDay)
sEnd = lens _sEnd (\ s a -> s{_sEnd = a})

instance FromJSON Season where
        parseJSON
          = withObject "Season"
              (\ o -> Season <$> (o .:? "start") <*> (o .:? "end"))

instance ToJSON Season where
        toJSON Season{..}
          = object
              (catMaybes
                 [("start" .=) <$> _sStart, ("end" .=) <$> _sEnd])

--
-- /See:/ 'imagesListResponse' smart constructor.
newtype ImagesListResponse = ImagesListResponse
    { _ilrImages :: Maybe [Image]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrImages'
imagesListResponse
    :: ImagesListResponse
imagesListResponse =
    ImagesListResponse
    { _ilrImages = Nothing
    }

ilrImages :: Lens' ImagesListResponse [Image]
ilrImages
  = lens _ilrImages (\ s a -> s{_ilrImages = a}) .
      _Default
      . _Coerce

instance FromJSON ImagesListResponse where
        parseJSON
          = withObject "ImagesListResponse"
              (\ o ->
                 ImagesListResponse <$> (o .:? "images" .!= mempty))

instance ToJSON ImagesListResponse where
        toJSON ImagesListResponse{..}
          = object (catMaybes [("images" .=) <$> _ilrImages])

-- | Represents an edit of an app. An edit allows clients to make multiple
-- changes before committing them in one operation.
--
-- /See:/ 'appEdit' smart constructor.
data AppEdit = AppEdit
    { _aeId                :: !(Maybe Text)
    , _aeExpiryTimeSeconds :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppEdit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeId'
--
-- * 'aeExpiryTimeSeconds'
appEdit
    :: AppEdit
appEdit =
    AppEdit
    { _aeId = Nothing
    , _aeExpiryTimeSeconds = Nothing
    }

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
                 AppEdit <$>
                   (o .:? "id") <*> (o .:? "expiryTimeSeconds"))

instance ToJSON AppEdit where
        toJSON AppEdit{..}
          = object
              (catMaybes
                 [("id" .=) <$> _aeId,
                  ("expiryTimeSeconds" .=) <$> _aeExpiryTimeSeconds])

--
-- /See:/ 'tracksListResponse' smart constructor.
data TracksListResponse = TracksListResponse
    { _tlrTracks :: !(Maybe [Track])
    , _tlrKind   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TracksListResponse
    { _tlrTracks = Nothing
    , _tlrKind = "androidpublisher#tracksListResponse"
    }

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
                 TracksListResponse <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidpublisher#tracksListResponse"))

instance ToJSON TracksListResponse where
        toJSON TracksListResponse{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _tlrTracks,
                  Just ("kind" .= _tlrKind)])

--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo = PageInfo
    { _piResultPerPage :: !(Maybe Int32)
    , _piTotalResults  :: !(Maybe Int32)
    , _piStartIndex    :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    PageInfo
    { _piResultPerPage = Nothing
    , _piTotalResults = Nothing
    , _piStartIndex = Nothing
    }

piResultPerPage :: Lens' PageInfo (Maybe Int32)
piResultPerPage
  = lens _piResultPerPage
      (\ s a -> s{_piResultPerPage = a})

piTotalResults :: Lens' PageInfo (Maybe Int32)
piTotalResults
  = lens _piTotalResults
      (\ s a -> s{_piTotalResults = a})

piStartIndex :: Lens' PageInfo (Maybe Int32)
piStartIndex
  = lens _piStartIndex (\ s a -> s{_piStartIndex = a})

instance FromJSON PageInfo where
        parseJSON
          = withObject "PageInfo"
              (\ o ->
                 PageInfo <$>
                   (o .:? "resultPerPage") <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex"))

instance ToJSON PageInfo where
        toJSON PageInfo{..}
          = object
              (catMaybes
                 [("resultPerPage" .=) <$> _piResultPerPage,
                  ("totalResults" .=) <$> _piTotalResults,
                  ("startIndex" .=) <$> _piStartIndex])

--
-- /See:/ 'aPKListing' smart constructor.
data APKListing = APKListing
    { _apklLanguage      :: !(Maybe Text)
    , _apklRecentChanges :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APKListing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apklLanguage'
--
-- * 'apklRecentChanges'
aPKListing
    :: APKListing
aPKListing =
    APKListing
    { _apklLanguage = Nothing
    , _apklRecentChanges = Nothing
    }

-- | The language code, in BCP 47 format (eg \"en-US\").
apklLanguage :: Lens' APKListing (Maybe Text)
apklLanguage
  = lens _apklLanguage (\ s a -> s{_apklLanguage = a})

-- | Describe what\'s new in your APK.
apklRecentChanges :: Lens' APKListing (Maybe Text)
apklRecentChanges
  = lens _apklRecentChanges
      (\ s a -> s{_apklRecentChanges = a})

instance FromJSON APKListing where
        parseJSON
          = withObject "APKListing"
              (\ o ->
                 APKListing <$>
                   (o .:? "language") <*> (o .:? "recentChanges"))

instance ToJSON APKListing where
        toJSON APKListing{..}
          = object
              (catMaybes
                 [("language" .=) <$> _apklLanguage,
                  ("recentChanges" .=) <$> _apklRecentChanges])

--
-- /See:/ 'subscriptionPurchasesDeferResponse' smart constructor.
newtype SubscriptionPurchasesDeferResponse = SubscriptionPurchasesDeferResponse
    { _spdrNewExpiryTimeMillis :: Maybe Int64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionPurchasesDeferResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdrNewExpiryTimeMillis'
subscriptionPurchasesDeferResponse
    :: SubscriptionPurchasesDeferResponse
subscriptionPurchasesDeferResponse =
    SubscriptionPurchasesDeferResponse
    { _spdrNewExpiryTimeMillis = Nothing
    }

-- | The new expiry time for the subscription in milliseconds since the
-- Epoch.
spdrNewExpiryTimeMillis :: Lens' SubscriptionPurchasesDeferResponse (Maybe Int64)
spdrNewExpiryTimeMillis
  = lens _spdrNewExpiryTimeMillis
      (\ s a -> s{_spdrNewExpiryTimeMillis = a})

instance FromJSON SubscriptionPurchasesDeferResponse
         where
        parseJSON
          = withObject "SubscriptionPurchasesDeferResponse"
              (\ o ->
                 SubscriptionPurchasesDeferResponse <$>
                   (o .:? "newExpiryTimeMillis"))

instance ToJSON SubscriptionPurchasesDeferResponse
         where
        toJSON SubscriptionPurchasesDeferResponse{..}
          = object
              (catMaybes
                 [("newExpiryTimeMillis" .=) <$>
                    _spdrNewExpiryTimeMillis])

-- | A ProductPurchase resource indicates the status of a user\'s inapp
-- product purchase.
--
-- /See:/ 'productPurchase' smart constructor.
data ProductPurchase = ProductPurchase
    { _ppPurchaseState      :: !(Maybe Int32)
    , _ppConsumptionState   :: !(Maybe Int32)
    , _ppKind               :: !Text
    , _ppPurchaseTimeMillis :: !(Maybe Int64)
    , _ppDeveloperPayLoad   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ppDeveloperPayLoad'
productPurchase
    :: ProductPurchase
productPurchase =
    ProductPurchase
    { _ppPurchaseState = Nothing
    , _ppConsumptionState = Nothing
    , _ppKind = "androidpublisher#productPurchase"
    , _ppPurchaseTimeMillis = Nothing
    , _ppDeveloperPayLoad = Nothing
    }

-- | The purchase state of the order. Possible values are: - Purchased -
-- Cancelled
ppPurchaseState :: Lens' ProductPurchase (Maybe Int32)
ppPurchaseState
  = lens _ppPurchaseState
      (\ s a -> s{_ppPurchaseState = a})

-- | The consumption state of the inapp product. Possible values are: - Yet
-- to be consumed - Consumed
ppConsumptionState :: Lens' ProductPurchase (Maybe Int32)
ppConsumptionState
  = lens _ppConsumptionState
      (\ s a -> s{_ppConsumptionState = a})

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

-- | A developer-specified string that contains supplemental information
-- about an order.
ppDeveloperPayLoad :: Lens' ProductPurchase (Maybe Text)
ppDeveloperPayLoad
  = lens _ppDeveloperPayLoad
      (\ s a -> s{_ppDeveloperPayLoad = a})

instance FromJSON ProductPurchase where
        parseJSON
          = withObject "ProductPurchase"
              (\ o ->
                 ProductPurchase <$>
                   (o .:? "purchaseState") <*>
                     (o .:? "consumptionState")
                     <*>
                     (o .:? "kind" .!= "androidpublisher#productPurchase")
                     <*> (o .:? "purchaseTimeMillis")
                     <*> (o .:? "developerPayload"))

instance ToJSON ProductPurchase where
        toJSON ProductPurchase{..}
          = object
              (catMaybes
                 [("purchaseState" .=) <$> _ppPurchaseState,
                  ("consumptionState" .=) <$> _ppConsumptionState,
                  Just ("kind" .= _ppKind),
                  ("purchaseTimeMillis" .=) <$> _ppPurchaseTimeMillis,
                  ("developerPayload" .=) <$> _ppDeveloperPayLoad])

-- | A SubscriptionPurchase resource indicates the status of a user\'s
-- subscription purchase.
--
-- /See:/ 'subscriptionPurchase' smart constructor.
data SubscriptionPurchase = SubscriptionPurchase
    { _spKind             :: !Text
    , _spExpiryTimeMillis :: !(Maybe Int64)
    , _spAutoRenewing     :: !(Maybe Bool)
    , _spStartTimeMillis  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionPurchase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spKind'
--
-- * 'spExpiryTimeMillis'
--
-- * 'spAutoRenewing'
--
-- * 'spStartTimeMillis'
subscriptionPurchase
    :: SubscriptionPurchase
subscriptionPurchase =
    SubscriptionPurchase
    { _spKind = "androidpublisher#subscriptionPurchase"
    , _spExpiryTimeMillis = Nothing
    , _spAutoRenewing = Nothing
    , _spStartTimeMillis = Nothing
    }

-- | This kind represents a subscriptionPurchase object in the
-- androidpublisher service.
spKind :: Lens' SubscriptionPurchase Text
spKind = lens _spKind (\ s a -> s{_spKind = a})

-- | Time at which the subscription will expire, in milliseconds since Epoch.
spExpiryTimeMillis :: Lens' SubscriptionPurchase (Maybe Int64)
spExpiryTimeMillis
  = lens _spExpiryTimeMillis
      (\ s a -> s{_spExpiryTimeMillis = a})

-- | Whether the subscription will automatically be renewed when it reaches
-- its current expiry time.
spAutoRenewing :: Lens' SubscriptionPurchase (Maybe Bool)
spAutoRenewing
  = lens _spAutoRenewing
      (\ s a -> s{_spAutoRenewing = a})

-- | Time at which the subscription was granted, in milliseconds since Epoch.
spStartTimeMillis :: Lens' SubscriptionPurchase (Maybe Int64)
spStartTimeMillis
  = lens _spStartTimeMillis
      (\ s a -> s{_spStartTimeMillis = a})

instance FromJSON SubscriptionPurchase where
        parseJSON
          = withObject "SubscriptionPurchase"
              (\ o ->
                 SubscriptionPurchase <$>
                   (o .:? "kind" .!=
                      "androidpublisher#subscriptionPurchase")
                     <*> (o .:? "expiryTimeMillis")
                     <*> (o .:? "autoRenewing")
                     <*> (o .:? "startTimeMillis"))

instance ToJSON SubscriptionPurchase where
        toJSON SubscriptionPurchase{..}
          = object
              (catMaybes
                 [Just ("kind" .= _spKind),
                  ("expiryTimeMillis" .=) <$> _spExpiryTimeMillis,
                  ("autoRenewing" .=) <$> _spAutoRenewing,
                  ("startTimeMillis" .=) <$> _spStartTimeMillis])

--
-- /See:/ 'inappproductsBatchRequest' smart constructor.
newtype InappproductsBatchRequest = InappproductsBatchRequest
    { _ibrEntrys :: Maybe [InappproductsBatchRequestEntry]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibrEntrys'
inappproductsBatchRequest
    :: InappproductsBatchRequest
inappproductsBatchRequest =
    InappproductsBatchRequest
    { _ibrEntrys = Nothing
    }

ibrEntrys :: Lens' InappproductsBatchRequest [InappproductsBatchRequestEntry]
ibrEntrys
  = lens _ibrEntrys (\ s a -> s{_ibrEntrys = a}) .
      _Default
      . _Coerce

instance FromJSON InappproductsBatchRequest where
        parseJSON
          = withObject "InappproductsBatchRequest"
              (\ o ->
                 InappproductsBatchRequest <$>
                   (o .:? "entrys" .!= mempty))

instance ToJSON InappproductsBatchRequest where
        toJSON InappproductsBatchRequest{..}
          = object (catMaybes [("entrys" .=) <$> _ibrEntrys])

--
-- /See:/ 'appDetails' smart constructor.
data AppDetails = AppDetails
    { _adContactPhone    :: !(Maybe Text)
    , _adContactEmail    :: !(Maybe Text)
    , _adContactWebsite  :: !(Maybe Text)
    , _adDefaultLanguage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    AppDetails
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
                 AppDetails <$>
                   (o .:? "contactPhone") <*> (o .:? "contactEmail") <*>
                     (o .:? "contactWebsite")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON AppDetails where
        toJSON AppDetails{..}
          = object
              (catMaybes
                 [("contactPhone" .=) <$> _adContactPhone,
                  ("contactEmail" .=) <$> _adContactEmail,
                  ("contactWebsite" .=) <$> _adContactWebsite,
                  ("defaultLanguage" .=) <$> _adDefaultLanguage])

-- | Defines an APK available for this application that is hosted externally
-- and not uploaded to Google Play. This function is only available to
-- enterprises who are using Google Play for Work, and whos application is
-- restricted to the enterprise private channel
--
-- /See:/ 'externallyHostedAPK' smart constructor.
data ExternallyHostedAPK = ExternallyHostedAPK
    { _ehapkApplicationLabel    :: !(Maybe Text)
    , _ehapkMaximumSdk          :: !(Maybe Int32)
    , _ehapkNATiveCodes         :: !(Maybe [Text])
    , _ehapkVersionCode         :: !(Maybe Int32)
    , _ehapkFileSha256Base64    :: !(Maybe Text)
    , _ehapkExternallyHostedURL :: !(Maybe Text)
    , _ehapkVersionName         :: !(Maybe Text)
    , _ehapkPackageName         :: !(Maybe Text)
    , _ehapkFileSize            :: !(Maybe Int64)
    , _ehapkIconBase64          :: !(Maybe Text)
    , _ehapkUsesFeatures        :: !(Maybe [Text])
    , _ehapkMinimumSdk          :: !(Maybe Int32)
    , _ehapkFileSha1Base64      :: !(Maybe Text)
    , _ehapkUsesPermissions     :: !(Maybe [ExternallyHostedAPKUsesPermission])
    , _ehapkCertificateBase64s  :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ExternallyHostedAPK
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
                 ExternallyHostedAPK <$>
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
        toJSON ExternallyHostedAPK{..}
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

-- | Prices per buyer region. None of these prices should be zero. In-app
-- products can never be free.
--
-- /See:/ 'inAppProductPrices' smart constructor.
data InAppProductPrices =
    InAppProductPrices
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductPrices' with the minimum fields required to make a request.
--
inAppProductPrices
    :: InAppProductPrices
inAppProductPrices = InAppProductPrices

instance FromJSON InAppProductPrices where
        parseJSON
          = withObject "InAppProductPrices"
              (\ o -> pure InAppProductPrices)

instance ToJSON InAppProductPrices where
        toJSON = const (Object mempty)

--
-- /See:/ 'imagesUploadResponse' smart constructor.
newtype ImagesUploadResponse = ImagesUploadResponse
    { _iurImage :: Maybe Image
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iurImage'
imagesUploadResponse
    :: ImagesUploadResponse
imagesUploadResponse =
    ImagesUploadResponse
    { _iurImage = Nothing
    }

iurImage :: Lens' ImagesUploadResponse (Maybe Image)
iurImage = lens _iurImage (\ s a -> s{_iurImage = a})

instance FromJSON ImagesUploadResponse where
        parseJSON
          = withObject "ImagesUploadResponse"
              (\ o -> ImagesUploadResponse <$> (o .:? "image"))

instance ToJSON ImagesUploadResponse where
        toJSON ImagesUploadResponse{..}
          = object (catMaybes [("image" .=) <$> _iurImage])

--
-- /See:/ 'expansionFilesUploadResponse' smart constructor.
newtype ExpansionFilesUploadResponse = ExpansionFilesUploadResponse
    { _efurExpansionFile :: Maybe ExpansionFile
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExpansionFilesUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efurExpansionFile'
expansionFilesUploadResponse
    :: ExpansionFilesUploadResponse
expansionFilesUploadResponse =
    ExpansionFilesUploadResponse
    { _efurExpansionFile = Nothing
    }

efurExpansionFile :: Lens' ExpansionFilesUploadResponse (Maybe ExpansionFile)
efurExpansionFile
  = lens _efurExpansionFile
      (\ s a -> s{_efurExpansionFile = a})

instance FromJSON ExpansionFilesUploadResponse where
        parseJSON
          = withObject "ExpansionFilesUploadResponse"
              (\ o ->
                 ExpansionFilesUploadResponse <$>
                   (o .:? "expansionFile"))

instance ToJSON ExpansionFilesUploadResponse where
        toJSON ExpansionFilesUploadResponse{..}
          = object
              (catMaybes
                 [("expansionFile" .=) <$> _efurExpansionFile])

--
-- /See:/ 'inappproductsListResponse' smart constructor.
data InappproductsListResponse = InappproductsListResponse
    { _ilrTokenPagination :: !(Maybe TokenPagination)
    , _ilrPageInfo        :: !(Maybe PageInfo)
    , _ilrKind            :: !Text
    , _ilrInappproduct    :: !(Maybe [InAppProduct])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrTokenPagination'
--
-- * 'ilrPageInfo'
--
-- * 'ilrKind'
--
-- * 'ilrInappproduct'
inappproductsListResponse
    :: InappproductsListResponse
inappproductsListResponse =
    InappproductsListResponse
    { _ilrTokenPagination = Nothing
    , _ilrPageInfo = Nothing
    , _ilrKind = "androidpublisher#inappproductsListResponse"
    , _ilrInappproduct = Nothing
    }

ilrTokenPagination :: Lens' InappproductsListResponse (Maybe TokenPagination)
ilrTokenPagination
  = lens _ilrTokenPagination
      (\ s a -> s{_ilrTokenPagination = a})

ilrPageInfo :: Lens' InappproductsListResponse (Maybe PageInfo)
ilrPageInfo
  = lens _ilrPageInfo (\ s a -> s{_ilrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#inappproductsListResponse\".
ilrKind :: Lens' InappproductsListResponse Text
ilrKind = lens _ilrKind (\ s a -> s{_ilrKind = a})

ilrInappproduct :: Lens' InappproductsListResponse [InAppProduct]
ilrInappproduct
  = lens _ilrInappproduct
      (\ s a -> s{_ilrInappproduct = a})
      . _Default
      . _Coerce

instance FromJSON InappproductsListResponse where
        parseJSON
          = withObject "InappproductsListResponse"
              (\ o ->
                 InappproductsListResponse <$>
                   (o .:? "tokenPagination") <*> (o .:? "pageInfo") <*>
                     (o .:? "kind" .!=
                        "androidpublisher#inappproductsListResponse")
                     <*> (o .:? "inappproduct" .!= mempty))

instance ToJSON InappproductsListResponse where
        toJSON InappproductsListResponse{..}
          = object
              (catMaybes
                 [("tokenPagination" .=) <$> _ilrTokenPagination,
                  ("pageInfo" .=) <$> _ilrPageInfo,
                  Just ("kind" .= _ilrKind),
                  ("inappproduct" .=) <$> _ilrInappproduct])

-- | A SubscriptionDeferralInfo contains the data needed to defer a
-- subscription purchase to a future expiry time.
--
-- /See:/ 'subscriptionDeferralInfo' smart constructor.
data SubscriptionDeferralInfo = SubscriptionDeferralInfo
    { _sdiDesiredExpiryTimeMillis  :: !(Maybe Int64)
    , _sdiExpectedExpiryTimeMillis :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    SubscriptionDeferralInfo
    { _sdiDesiredExpiryTimeMillis = Nothing
    , _sdiExpectedExpiryTimeMillis = Nothing
    }

-- | The desired next expiry time for the subscription in milliseconds since
-- Epoch. The given time must be after the current expiry time for the
-- subscription.
sdiDesiredExpiryTimeMillis :: Lens' SubscriptionDeferralInfo (Maybe Int64)
sdiDesiredExpiryTimeMillis
  = lens _sdiDesiredExpiryTimeMillis
      (\ s a -> s{_sdiDesiredExpiryTimeMillis = a})

-- | The expected expiry time for the subscription. If the current expiry
-- time for the subscription is not the value specified here, the deferral
-- will not occur.
sdiExpectedExpiryTimeMillis :: Lens' SubscriptionDeferralInfo (Maybe Int64)
sdiExpectedExpiryTimeMillis
  = lens _sdiExpectedExpiryTimeMillis
      (\ s a -> s{_sdiExpectedExpiryTimeMillis = a})

instance FromJSON SubscriptionDeferralInfo where
        parseJSON
          = withObject "SubscriptionDeferralInfo"
              (\ o ->
                 SubscriptionDeferralInfo <$>
                   (o .:? "desiredExpiryTimeMillis") <*>
                     (o .:? "expectedExpiryTimeMillis"))

instance ToJSON SubscriptionDeferralInfo where
        toJSON SubscriptionDeferralInfo{..}
          = object
              (catMaybes
                 [("desiredExpiryTimeMillis" .=) <$>
                    _sdiDesiredExpiryTimeMillis,
                  ("expectedExpiryTimeMillis" .=) <$>
                    _sdiExpectedExpiryTimeMillis])

--
-- /See:/ 'aPKsAddExternallyHostedResponse' smart constructor.
newtype APKsAddExternallyHostedResponse = APKsAddExternallyHostedResponse
    { _apkaehrExternallyHostedAPK :: Maybe ExternallyHostedAPK
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APKsAddExternallyHostedResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkaehrExternallyHostedAPK'
aPKsAddExternallyHostedResponse
    :: APKsAddExternallyHostedResponse
aPKsAddExternallyHostedResponse =
    APKsAddExternallyHostedResponse
    { _apkaehrExternallyHostedAPK = Nothing
    }

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
                 APKsAddExternallyHostedResponse <$>
                   (o .:? "externallyHostedApk"))

instance ToJSON APKsAddExternallyHostedResponse where
        toJSON APKsAddExternallyHostedResponse{..}
          = object
              (catMaybes
                 [("externallyHostedApk" .=) <$>
                    _apkaehrExternallyHostedAPK])

--
-- /See:/ 'aPKListingsListResponse' smart constructor.
data APKListingsListResponse = APKListingsListResponse
    { _apkllrKind     :: !Text
    , _apkllrListings :: !(Maybe [APKListing])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APKListingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkllrKind'
--
-- * 'apkllrListings'
aPKListingsListResponse
    :: APKListingsListResponse
aPKListingsListResponse =
    APKListingsListResponse
    { _apkllrKind = "androidpublisher#apkListingsListResponse"
    , _apkllrListings = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#apkListingsListResponse\".
apkllrKind :: Lens' APKListingsListResponse Text
apkllrKind
  = lens _apkllrKind (\ s a -> s{_apkllrKind = a})

apkllrListings :: Lens' APKListingsListResponse [APKListing]
apkllrListings
  = lens _apkllrListings
      (\ s a -> s{_apkllrListings = a})
      . _Default
      . _Coerce

instance FromJSON APKListingsListResponse where
        parseJSON
          = withObject "APKListingsListResponse"
              (\ o ->
                 APKListingsListResponse <$>
                   (o .:? "kind" .!=
                      "androidpublisher#apkListingsListResponse")
                     <*> (o .:? "listings" .!= mempty))

instance ToJSON APKListingsListResponse where
        toJSON APKListingsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _apkllrKind),
                  ("listings" .=) <$> _apkllrListings])

--
-- /See:/ 'inappproductsInsertResponse' smart constructor.
newtype InappproductsInsertResponse = InappproductsInsertResponse
    { _iirInappproduct :: Maybe InAppProduct
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsInsertResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iirInappproduct'
inappproductsInsertResponse
    :: InappproductsInsertResponse
inappproductsInsertResponse =
    InappproductsInsertResponse
    { _iirInappproduct = Nothing
    }

iirInappproduct :: Lens' InappproductsInsertResponse (Maybe InAppProduct)
iirInappproduct
  = lens _iirInappproduct
      (\ s a -> s{_iirInappproduct = a})

instance FromJSON InappproductsInsertResponse where
        parseJSON
          = withObject "InappproductsInsertResponse"
              (\ o ->
                 InappproductsInsertResponse <$>
                   (o .:? "inappproduct"))

instance ToJSON InappproductsInsertResponse where
        toJSON InappproductsInsertResponse{..}
          = object
              (catMaybes
                 [("inappproduct" .=) <$> _iirInappproduct])

--
-- /See:/ 'price' smart constructor.
data Price = Price
    { _pPriceMicros :: !(Maybe Text)
    , _pCurrency    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPriceMicros'
--
-- * 'pCurrency'
price
    :: Price
price =
    Price
    { _pPriceMicros = Nothing
    , _pCurrency = Nothing
    }

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
                 Price <$>
                   (o .:? "priceMicros") <*> (o .:? "currency"))

instance ToJSON Price where
        toJSON Price{..}
          = object
              (catMaybes
                 [("priceMicros" .=) <$> _pPriceMicros,
                  ("currency" .=) <$> _pCurrency])

--
-- /See:/ 'inappproductsBatchResponseEntry' smart constructor.
data InappproductsBatchResponseEntry = InappproductsBatchResponseEntry
    { _iInappproductsupdateresponse :: !(Maybe InappproductsUpdateResponse)
    , _iInappproductsinsertresponse :: !(Maybe InappproductsInsertResponse)
    , _iBatchId                     :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInappproductsupdateresponse'
--
-- * 'iInappproductsinsertresponse'
--
-- * 'iBatchId'
inappproductsBatchResponseEntry
    :: InappproductsBatchResponseEntry
inappproductsBatchResponseEntry =
    InappproductsBatchResponseEntry
    { _iInappproductsupdateresponse = Nothing
    , _iInappproductsinsertresponse = Nothing
    , _iBatchId = Nothing
    }

iInappproductsupdateresponse :: Lens' InappproductsBatchResponseEntry (Maybe InappproductsUpdateResponse)
iInappproductsupdateresponse
  = lens _iInappproductsupdateresponse
      (\ s a -> s{_iInappproductsupdateresponse = a})

iInappproductsinsertresponse :: Lens' InappproductsBatchResponseEntry (Maybe InappproductsInsertResponse)
iInappproductsinsertresponse
  = lens _iInappproductsinsertresponse
      (\ s a -> s{_iInappproductsinsertresponse = a})

iBatchId :: Lens' InappproductsBatchResponseEntry (Maybe Word32)
iBatchId = lens _iBatchId (\ s a -> s{_iBatchId = a})

instance FromJSON InappproductsBatchResponseEntry
         where
        parseJSON
          = withObject "InappproductsBatchResponseEntry"
              (\ o ->
                 InappproductsBatchResponseEntry <$>
                   (o .:? "inappproductsupdateresponse") <*>
                     (o .:? "inappproductsinsertresponse")
                     <*> (o .:? "batchId"))

instance ToJSON InappproductsBatchResponseEntry where
        toJSON InappproductsBatchResponseEntry{..}
          = object
              (catMaybes
                 [("inappproductsupdateresponse" .=) <$>
                    _iInappproductsupdateresponse,
                  ("inappproductsinsertresponse" .=) <$>
                    _iInappproductsinsertresponse,
                  ("batchId" .=) <$> _iBatchId])

--
-- /See:/ 'inAppProduct' smart constructor.
data InAppProduct = InAppProduct
    { _iapStatus             :: !(Maybe Text)
    , _iapTrialPeriod        :: !(Maybe Text)
    , _iapPackageName        :: !(Maybe Text)
    , _iapSeason             :: !(Maybe Season)
    , _iapPurchaseType       :: !(Maybe Text)
    , _iapSubscriptionPeriod :: !(Maybe Text)
    , _iapPrices             :: !(Maybe InAppProductPrices)
    , _iapSku                :: !(Maybe Text)
    , _iapDefaultPrice       :: !(Maybe Price)
    , _iapListings           :: !(Maybe InAppProductListings)
    , _iapDefaultLanguage    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapStatus'
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
-- * 'iapSku'
--
-- * 'iapDefaultPrice'
--
-- * 'iapListings'
--
-- * 'iapDefaultLanguage'
inAppProduct
    :: InAppProduct
inAppProduct =
    InAppProduct
    { _iapStatus = Nothing
    , _iapTrialPeriod = Nothing
    , _iapPackageName = Nothing
    , _iapSeason = Nothing
    , _iapPurchaseType = Nothing
    , _iapSubscriptionPeriod = Nothing
    , _iapPrices = Nothing
    , _iapSku = Nothing
    , _iapDefaultPrice = Nothing
    , _iapListings = Nothing
    , _iapDefaultLanguage = Nothing
    }

iapStatus :: Lens' InAppProduct (Maybe Text)
iapStatus
  = lens _iapStatus (\ s a -> s{_iapStatus = a})

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
-- \"P1W\" (one week), \"P1M\" (one month) and \"P1Y\" (one year).
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
iapSku :: Lens' InAppProduct (Maybe Text)
iapSku = lens _iapSku (\ s a -> s{_iapSku = a})

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
                 InAppProduct <$>
                   (o .:? "status") <*> (o .:? "trialPeriod") <*>
                     (o .:? "packageName")
                     <*> (o .:? "season")
                     <*> (o .:? "purchaseType")
                     <*> (o .:? "subscriptionPeriod")
                     <*> (o .:? "prices")
                     <*> (o .:? "sku")
                     <*> (o .:? "defaultPrice")
                     <*> (o .:? "listings")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON InAppProduct where
        toJSON InAppProduct{..}
          = object
              (catMaybes
                 [("status" .=) <$> _iapStatus,
                  ("trialPeriod" .=) <$> _iapTrialPeriod,
                  ("packageName" .=) <$> _iapPackageName,
                  ("season" .=) <$> _iapSeason,
                  ("purchaseType" .=) <$> _iapPurchaseType,
                  ("subscriptionPeriod" .=) <$> _iapSubscriptionPeriod,
                  ("prices" .=) <$> _iapPrices, ("sku" .=) <$> _iapSku,
                  ("defaultPrice" .=) <$> _iapDefaultPrice,
                  ("listings" .=) <$> _iapListings,
                  ("defaultLanguage" .=) <$> _iapDefaultLanguage])

-- | Represents the binary payload of an APK.
--
-- /See:/ 'aPKBinary' smart constructor.
newtype APKBinary = APKBinary
    { _apkbSha1 :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APKBinary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkbSha1'
aPKBinary
    :: APKBinary
aPKBinary =
    APKBinary
    { _apkbSha1 = Nothing
    }

-- | A sha1 hash of the APK payload, encoded as a hex string and matching the
-- output of the sha1sum command.
apkbSha1 :: Lens' APKBinary (Maybe Text)
apkbSha1 = lens _apkbSha1 (\ s a -> s{_apkbSha1 = a})

instance FromJSON APKBinary where
        parseJSON
          = withObject "APKBinary"
              (\ o -> APKBinary <$> (o .:? "sha1"))

instance ToJSON APKBinary where
        toJSON APKBinary{..}
          = object (catMaybes [("sha1" .=) <$> _apkbSha1])

-- | A permission used by this APK.
--
-- /See:/ 'externallyHostedAPKUsesPermission' smart constructor.
data ExternallyHostedAPKUsesPermission = ExternallyHostedAPKUsesPermission
    { _ehapkupName          :: !(Maybe Text)
    , _ehapkupMaxSdkVersion :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ExternallyHostedAPKUsesPermission
    { _ehapkupName = Nothing
    , _ehapkupMaxSdkVersion = Nothing
    }

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

instance FromJSON ExternallyHostedAPKUsesPermission
         where
        parseJSON
          = withObject "ExternallyHostedAPKUsesPermission"
              (\ o ->
                 ExternallyHostedAPKUsesPermission <$>
                   (o .:? "name") <*> (o .:? "maxSdkVersion"))

instance ToJSON ExternallyHostedAPKUsesPermission
         where
        toJSON ExternallyHostedAPKUsesPermission{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ehapkupName,
                  ("maxSdkVersion" .=) <$> _ehapkupMaxSdkVersion])

--
-- /See:/ 'listingsListResponse' smart constructor.
data ListingsListResponse = ListingsListResponse
    { _llrKind     :: !Text
    , _llrListings :: !(Maybe [Listing])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ListingsListResponse
    { _llrKind = "androidpublisher#listingsListResponse"
    , _llrListings = Nothing
    }

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
                 ListingsListResponse <$>
                   (o .:? "kind" .!=
                      "androidpublisher#listingsListResponse")
                     <*> (o .:? "listings" .!= mempty))

instance ToJSON ListingsListResponse where
        toJSON ListingsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _llrKind),
                  ("listings" .=) <$> _llrListings])

--
-- /See:/ 'inappproductsInsertRequest' smart constructor.
newtype InappproductsInsertRequest = InappproductsInsertRequest
    { _iInappproduct :: Maybe InAppProduct
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsInsertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInappproduct'
inappproductsInsertRequest
    :: InappproductsInsertRequest
inappproductsInsertRequest =
    InappproductsInsertRequest
    { _iInappproduct = Nothing
    }

iInappproduct :: Lens' InappproductsInsertRequest (Maybe InAppProduct)
iInappproduct
  = lens _iInappproduct
      (\ s a -> s{_iInappproduct = a})

instance FromJSON InappproductsInsertRequest where
        parseJSON
          = withObject "InappproductsInsertRequest"
              (\ o ->
                 InappproductsInsertRequest <$>
                   (o .:? "inappproduct"))

instance ToJSON InappproductsInsertRequest where
        toJSON InappproductsInsertRequest{..}
          = object
              (catMaybes [("inappproduct" .=) <$> _iInappproduct])

--
-- /See:/ 'aPKsAddExternallyHostedRequest' smart constructor.
newtype APKsAddExternallyHostedRequest = APKsAddExternallyHostedRequest
    { _aExternallyHostedAPK :: Maybe ExternallyHostedAPK
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APKsAddExternallyHostedRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aExternallyHostedAPK'
aPKsAddExternallyHostedRequest
    :: APKsAddExternallyHostedRequest
aPKsAddExternallyHostedRequest =
    APKsAddExternallyHostedRequest
    { _aExternallyHostedAPK = Nothing
    }

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
                 APKsAddExternallyHostedRequest <$>
                   (o .:? "externallyHostedApk"))

instance ToJSON APKsAddExternallyHostedRequest where
        toJSON APKsAddExternallyHostedRequest{..}
          = object
              (catMaybes
                 [("externallyHostedApk" .=) <$>
                    _aExternallyHostedAPK])

--
-- /See:/ 'aPKsListResponse' smart constructor.
data APKsListResponse = APKsListResponse
    { _apklrKind :: !Text
    , _apklrAPKs :: !(Maybe [APK])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    APKsListResponse
    { _apklrKind = "androidpublisher#apksListResponse"
    , _apklrAPKs = Nothing
    }

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
                 APKsListResponse <$>
                   (o .:? "kind" .!=
                      "androidpublisher#apksListResponse")
                     <*> (o .:? "apks" .!= mempty))

instance ToJSON APKsListResponse where
        toJSON APKsListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _apklrKind),
                  ("apks" .=) <$> _apklrAPKs])

--
-- /See:/ 'entitlementsListResponse' smart constructor.
data EntitlementsListResponse = EntitlementsListResponse
    { _elrTokenPagination :: !(Maybe TokenPagination)
    , _elrPageInfo        :: !(Maybe PageInfo)
    , _elrResources       :: !(Maybe [Entitlement])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elrTokenPagination'
--
-- * 'elrPageInfo'
--
-- * 'elrResources'
entitlementsListResponse
    :: EntitlementsListResponse
entitlementsListResponse =
    EntitlementsListResponse
    { _elrTokenPagination = Nothing
    , _elrPageInfo = Nothing
    , _elrResources = Nothing
    }

elrTokenPagination :: Lens' EntitlementsListResponse (Maybe TokenPagination)
elrTokenPagination
  = lens _elrTokenPagination
      (\ s a -> s{_elrTokenPagination = a})

elrPageInfo :: Lens' EntitlementsListResponse (Maybe PageInfo)
elrPageInfo
  = lens _elrPageInfo (\ s a -> s{_elrPageInfo = a})

elrResources :: Lens' EntitlementsListResponse [Entitlement]
elrResources
  = lens _elrResources (\ s a -> s{_elrResources = a})
      . _Default
      . _Coerce

instance FromJSON EntitlementsListResponse where
        parseJSON
          = withObject "EntitlementsListResponse"
              (\ o ->
                 EntitlementsListResponse <$>
                   (o .:? "tokenPagination") <*> (o .:? "pageInfo") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON EntitlementsListResponse where
        toJSON EntitlementsListResponse{..}
          = object
              (catMaybes
                 [("tokenPagination" .=) <$> _elrTokenPagination,
                  ("pageInfo" .=) <$> _elrPageInfo,
                  ("resources" .=) <$> _elrResources])

--
-- /See:/ 'inappproductsUpdateRequest' smart constructor.
newtype InappproductsUpdateRequest = InappproductsUpdateRequest
    { _inaInappproduct :: Maybe InAppProduct
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsUpdateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'inaInappproduct'
inappproductsUpdateRequest
    :: InappproductsUpdateRequest
inappproductsUpdateRequest =
    InappproductsUpdateRequest
    { _inaInappproduct = Nothing
    }

inaInappproduct :: Lens' InappproductsUpdateRequest (Maybe InAppProduct)
inaInappproduct
  = lens _inaInappproduct
      (\ s a -> s{_inaInappproduct = a})

instance FromJSON InappproductsUpdateRequest where
        parseJSON
          = withObject "InappproductsUpdateRequest"
              (\ o ->
                 InappproductsUpdateRequest <$>
                   (o .:? "inappproduct"))

instance ToJSON InappproductsUpdateRequest where
        toJSON InappproductsUpdateRequest{..}
          = object
              (catMaybes
                 [("inappproduct" .=) <$> _inaInappproduct])

--
-- /See:/ 'inappproductsBatchResponse' smart constructor.
data InappproductsBatchResponse = InappproductsBatchResponse
    { _iEntrys :: !(Maybe [InappproductsBatchResponseEntry])
    , _iKind   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iEntrys'
--
-- * 'iKind'
inappproductsBatchResponse
    :: InappproductsBatchResponse
inappproductsBatchResponse =
    InappproductsBatchResponse
    { _iEntrys = Nothing
    , _iKind = "androidpublisher#inappproductsBatchResponse"
    }

iEntrys :: Lens' InappproductsBatchResponse [InappproductsBatchResponseEntry]
iEntrys
  = lens _iEntrys (\ s a -> s{_iEntrys = a}) . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#inappproductsBatchResponse\".
iKind :: Lens' InappproductsBatchResponse Text
iKind = lens _iKind (\ s a -> s{_iKind = a})

instance FromJSON InappproductsBatchResponse where
        parseJSON
          = withObject "InappproductsBatchResponse"
              (\ o ->
                 InappproductsBatchResponse <$>
                   (o .:? "entrys" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidpublisher#inappproductsBatchResponse"))

instance ToJSON InappproductsBatchResponse where
        toJSON InappproductsBatchResponse{..}
          = object
              (catMaybes
                 [("entrys" .=) <$> _iEntrys,
                  Just ("kind" .= _iKind)])

-- | An Entitlement resource indicates a user\'s current entitlement to an
-- inapp item or subscription.
--
-- /See:/ 'entitlement' smart constructor.
data Entitlement = Entitlement
    { _eKind        :: !Text
    , _eProductType :: !(Maybe Text)
    , _eToken       :: !(Maybe Text)
    , _eProductId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Entitlement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eKind'
--
-- * 'eProductType'
--
-- * 'eToken'
--
-- * 'eProductId'
entitlement
    :: Entitlement
entitlement =
    Entitlement
    { _eKind = "androidpublisher#entitlement"
    , _eProductType = Nothing
    , _eToken = Nothing
    , _eProductId = Nothing
    }

-- | This kind represents an entitlement object in the androidpublisher
-- service.
eKind :: Lens' Entitlement Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | The type of the inapp product. Possible values are: - In-app item:
-- \"inapp\" - Subscription: \"subs\"
eProductType :: Lens' Entitlement (Maybe Text)
eProductType
  = lens _eProductType (\ s a -> s{_eProductType = a})

-- | The token which can be verified using the subscriptions or products API.
eToken :: Lens' Entitlement (Maybe Text)
eToken = lens _eToken (\ s a -> s{_eToken = a})

-- | The SKU of the product.
eProductId :: Lens' Entitlement (Maybe Text)
eProductId
  = lens _eProductId (\ s a -> s{_eProductId = a})

instance FromJSON Entitlement where
        parseJSON
          = withObject "Entitlement"
              (\ o ->
                 Entitlement <$>
                   (o .:? "kind" .!= "androidpublisher#entitlement") <*>
                     (o .:? "productType")
                     <*> (o .:? "token")
                     <*> (o .:? "productId"))

instance ToJSON Entitlement where
        toJSON Entitlement{..}
          = object
              (catMaybes
                 [Just ("kind" .= _eKind),
                  ("productType" .=) <$> _eProductType,
                  ("token" .=) <$> _eToken,
                  ("productId" .=) <$> _eProductId])
