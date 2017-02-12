{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseDynamicLinks.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseDynamicLinks.Types.Product where

import           Network.Google.FirebaseDynamicLinks.Types.Sum
import           Network.Google.Prelude

-- | Short Dynamic Link suffix.
--
-- /See:/ 'suffix' smart constructor.
newtype Suffix = Suffix'
    { _sOption :: Maybe SuffixOption
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Suffix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sOption'
suffix
    :: Suffix
suffix =
    Suffix'
    { _sOption = Nothing
    }

-- | Suffix option.
sOption :: Lens' Suffix (Maybe SuffixOption)
sOption = lens _sOption (\ s a -> s{_sOption = a})

instance FromJSON Suffix where
        parseJSON
          = withObject "Suffix"
              (\ o -> Suffix' <$> (o .:? "option"))

instance ToJSON Suffix where
        toJSON Suffix'{..}
          = object (catMaybes [("option" .=) <$> _sOption])

-- | Dynamic Links warning messages.
--
-- /See:/ 'dynamicLinkWarning' smart constructor.
data DynamicLinkWarning = DynamicLinkWarning'
    { _dlwWarningCode    :: !(Maybe DynamicLinkWarningWarningCode)
    , _dlwWarningMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DynamicLinkWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlwWarningCode'
--
-- * 'dlwWarningMessage'
dynamicLinkWarning
    :: DynamicLinkWarning
dynamicLinkWarning =
    DynamicLinkWarning'
    { _dlwWarningCode = Nothing
    , _dlwWarningMessage = Nothing
    }

-- | The warning code.
dlwWarningCode :: Lens' DynamicLinkWarning (Maybe DynamicLinkWarningWarningCode)
dlwWarningCode
  = lens _dlwWarningCode
      (\ s a -> s{_dlwWarningCode = a})

-- | The warning message to help developers improve their requests.
dlwWarningMessage :: Lens' DynamicLinkWarning (Maybe Text)
dlwWarningMessage
  = lens _dlwWarningMessage
      (\ s a -> s{_dlwWarningMessage = a})

instance FromJSON DynamicLinkWarning where
        parseJSON
          = withObject "DynamicLinkWarning"
              (\ o ->
                 DynamicLinkWarning' <$>
                   (o .:? "warningCode") <*> (o .:? "warningMessage"))

instance ToJSON DynamicLinkWarning where
        toJSON DynamicLinkWarning'{..}
          = object
              (catMaybes
                 [("warningCode" .=) <$> _dlwWarningCode,
                  ("warningMessage" .=) <$> _dlwWarningMessage])

-- | Request to create a short Dynamic Link.
--
-- /See:/ 'createShortDynamicLinkRequest' smart constructor.
data CreateShortDynamicLinkRequest = CreateShortDynamicLinkRequest'
    { _csdlrLongDynamicLink :: !(Maybe Text)
    , _csdlrSuffix          :: !(Maybe Suffix)
    , _csdlrDynamicLinkInfo :: !(Maybe DynamicLinkInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateShortDynamicLinkRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdlrLongDynamicLink'
--
-- * 'csdlrSuffix'
--
-- * 'csdlrDynamicLinkInfo'
createShortDynamicLinkRequest
    :: CreateShortDynamicLinkRequest
createShortDynamicLinkRequest =
    CreateShortDynamicLinkRequest'
    { _csdlrLongDynamicLink = Nothing
    , _csdlrSuffix = Nothing
    , _csdlrDynamicLinkInfo = Nothing
    }

-- | Full long Dynamic Link URL with desired query parameters specified. For
-- example,
-- \"https:\/\/sample.app.goo.gl\/?link=http:\/\/www.google.com&apn=com.sample\",
-- [Learn
-- more](https:\/\/firebase.google.com\/docs\/dynamic-links\/android#create-a-dynamic-link-programmatically).
csdlrLongDynamicLink :: Lens' CreateShortDynamicLinkRequest (Maybe Text)
csdlrLongDynamicLink
  = lens _csdlrLongDynamicLink
      (\ s a -> s{_csdlrLongDynamicLink = a})

-- | Short Dynamic Link suffix. Optional.
csdlrSuffix :: Lens' CreateShortDynamicLinkRequest (Maybe Suffix)
csdlrSuffix
  = lens _csdlrSuffix (\ s a -> s{_csdlrSuffix = a})

-- | Information about the Dynamic Link to be shortened. [Learn
-- more](https:\/\/firebase.google.com\/docs\/dynamic-links\/android#create-a-dynamic-link-programmatically).
csdlrDynamicLinkInfo :: Lens' CreateShortDynamicLinkRequest (Maybe DynamicLinkInfo)
csdlrDynamicLinkInfo
  = lens _csdlrDynamicLinkInfo
      (\ s a -> s{_csdlrDynamicLinkInfo = a})

instance FromJSON CreateShortDynamicLinkRequest where
        parseJSON
          = withObject "CreateShortDynamicLinkRequest"
              (\ o ->
                 CreateShortDynamicLinkRequest' <$>
                   (o .:? "longDynamicLink") <*> (o .:? "suffix") <*>
                     (o .:? "dynamicLinkInfo"))

instance ToJSON CreateShortDynamicLinkRequest where
        toJSON CreateShortDynamicLinkRequest'{..}
          = object
              (catMaybes
                 [("longDynamicLink" .=) <$> _csdlrLongDynamicLink,
                  ("suffix" .=) <$> _csdlrSuffix,
                  ("dynamicLinkInfo" .=) <$> _csdlrDynamicLinkInfo])

-- | Parameters for social meta tag params. Used to set meta tag data for
-- link previews on social sites.
--
-- /See:/ 'socialMetaTagInfo' smart constructor.
data SocialMetaTagInfo = SocialMetaTagInfo'
    { _smtiSocialImageLink   :: !(Maybe Text)
    , _smtiSocialDescription :: !(Maybe Text)
    , _smtiSocialTitle       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SocialMetaTagInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smtiSocialImageLink'
--
-- * 'smtiSocialDescription'
--
-- * 'smtiSocialTitle'
socialMetaTagInfo
    :: SocialMetaTagInfo
socialMetaTagInfo =
    SocialMetaTagInfo'
    { _smtiSocialImageLink = Nothing
    , _smtiSocialDescription = Nothing
    , _smtiSocialTitle = Nothing
    }

-- | An image url string. Optional.
smtiSocialImageLink :: Lens' SocialMetaTagInfo (Maybe Text)
smtiSocialImageLink
  = lens _smtiSocialImageLink
      (\ s a -> s{_smtiSocialImageLink = a})

-- | A short description of the link. Optional.
smtiSocialDescription :: Lens' SocialMetaTagInfo (Maybe Text)
smtiSocialDescription
  = lens _smtiSocialDescription
      (\ s a -> s{_smtiSocialDescription = a})

-- | Title to be displayed. Optional.
smtiSocialTitle :: Lens' SocialMetaTagInfo (Maybe Text)
smtiSocialTitle
  = lens _smtiSocialTitle
      (\ s a -> s{_smtiSocialTitle = a})

instance FromJSON SocialMetaTagInfo where
        parseJSON
          = withObject "SocialMetaTagInfo"
              (\ o ->
                 SocialMetaTagInfo' <$>
                   (o .:? "socialImageLink") <*>
                     (o .:? "socialDescription")
                     <*> (o .:? "socialTitle"))

instance ToJSON SocialMetaTagInfo where
        toJSON SocialMetaTagInfo'{..}
          = object
              (catMaybes
                 [("socialImageLink" .=) <$> _smtiSocialImageLink,
                  ("socialDescription" .=) <$> _smtiSocialDescription,
                  ("socialTitle" .=) <$> _smtiSocialTitle])

-- | Response to create a short Dynamic Link.
--
-- /See:/ 'createShortDynamicLinkResponse' smart constructor.
data CreateShortDynamicLinkResponse = CreateShortDynamicLinkResponse'
    { _csdlrPreviewLink :: !(Maybe Text)
    , _csdlrWarning     :: !(Maybe [DynamicLinkWarning])
    , _csdlrShortLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateShortDynamicLinkResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdlrPreviewLink'
--
-- * 'csdlrWarning'
--
-- * 'csdlrShortLink'
createShortDynamicLinkResponse
    :: CreateShortDynamicLinkResponse
createShortDynamicLinkResponse =
    CreateShortDynamicLinkResponse'
    { _csdlrPreviewLink = Nothing
    , _csdlrWarning = Nothing
    , _csdlrShortLink = Nothing
    }

-- | Preivew link to show the link flow chart.
csdlrPreviewLink :: Lens' CreateShortDynamicLinkResponse (Maybe Text)
csdlrPreviewLink
  = lens _csdlrPreviewLink
      (\ s a -> s{_csdlrPreviewLink = a})

-- | Information about potential warnings on link creation.
csdlrWarning :: Lens' CreateShortDynamicLinkResponse [DynamicLinkWarning]
csdlrWarning
  = lens _csdlrWarning (\ s a -> s{_csdlrWarning = a})
      . _Default
      . _Coerce

-- | Short Dynamic Link value. e.g. https:\/\/abcd.app.goo.gl\/wxyz
csdlrShortLink :: Lens' CreateShortDynamicLinkResponse (Maybe Text)
csdlrShortLink
  = lens _csdlrShortLink
      (\ s a -> s{_csdlrShortLink = a})

instance FromJSON CreateShortDynamicLinkResponse
         where
        parseJSON
          = withObject "CreateShortDynamicLinkResponse"
              (\ o ->
                 CreateShortDynamicLinkResponse' <$>
                   (o .:? "previewLink") <*>
                     (o .:? "warning" .!= mempty)
                     <*> (o .:? "shortLink"))

instance ToJSON CreateShortDynamicLinkResponse where
        toJSON CreateShortDynamicLinkResponse'{..}
          = object
              (catMaybes
                 [("previewLink" .=) <$> _csdlrPreviewLink,
                  ("warning" .=) <$> _csdlrWarning,
                  ("shortLink" .=) <$> _csdlrShortLink])

-- | iOS related attributes to the Dynamic Link..
--
-- /See:/ 'iosInfo' smart constructor.
data IosInfo = IosInfo'
    { _iiIosBundleId         :: !(Maybe Text)
    , _iiIosIPadBundleId     :: !(Maybe Text)
    , _iiIosAppStoreId       :: !(Maybe Text)
    , _iiIosIPadFallbackLink :: !(Maybe Text)
    , _iiIosCustomScheme     :: !(Maybe Text)
    , _iiIosFallbackLink     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IosInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiIosBundleId'
--
-- * 'iiIosIPadBundleId'
--
-- * 'iiIosAppStoreId'
--
-- * 'iiIosIPadFallbackLink'
--
-- * 'iiIosCustomScheme'
--
-- * 'iiIosFallbackLink'
iosInfo
    :: IosInfo
iosInfo =
    IosInfo'
    { _iiIosBundleId = Nothing
    , _iiIosIPadBundleId = Nothing
    , _iiIosAppStoreId = Nothing
    , _iiIosIPadFallbackLink = Nothing
    , _iiIosCustomScheme = Nothing
    , _iiIosFallbackLink = Nothing
    }

-- | iOS bundle ID of the app.
iiIosBundleId :: Lens' IosInfo (Maybe Text)
iiIosBundleId
  = lens _iiIosBundleId
      (\ s a -> s{_iiIosBundleId = a})

-- | iPad bundle ID of the app.
iiIosIPadBundleId :: Lens' IosInfo (Maybe Text)
iiIosIPadBundleId
  = lens _iiIosIPadBundleId
      (\ s a -> s{_iiIosIPadBundleId = a})

-- | iOS App Store ID.
iiIosAppStoreId :: Lens' IosInfo (Maybe Text)
iiIosAppStoreId
  = lens _iiIosAppStoreId
      (\ s a -> s{_iiIosAppStoreId = a})

-- | If specified, this overrides the ios_fallback_link value on iPads.
iiIosIPadFallbackLink :: Lens' IosInfo (Maybe Text)
iiIosIPadFallbackLink
  = lens _iiIosIPadFallbackLink
      (\ s a -> s{_iiIosIPadFallbackLink = a})

-- | Custom (destination) scheme to use for iOS. By default, we’ll use the
-- bundle ID as the custom scheme. Developer can override this behavior
-- using this param.
iiIosCustomScheme :: Lens' IosInfo (Maybe Text)
iiIosCustomScheme
  = lens _iiIosCustomScheme
      (\ s a -> s{_iiIosCustomScheme = a})

-- | Link to open on iOS if the app is not installed.
iiIosFallbackLink :: Lens' IosInfo (Maybe Text)
iiIosFallbackLink
  = lens _iiIosFallbackLink
      (\ s a -> s{_iiIosFallbackLink = a})

instance FromJSON IosInfo where
        parseJSON
          = withObject "IosInfo"
              (\ o ->
                 IosInfo' <$>
                   (o .:? "iosBundleId") <*> (o .:? "iosIpadBundleId")
                     <*> (o .:? "iosAppStoreId")
                     <*> (o .:? "iosIpadFallbackLink")
                     <*> (o .:? "iosCustomScheme")
                     <*> (o .:? "iosFallbackLink"))

instance ToJSON IosInfo where
        toJSON IosInfo'{..}
          = object
              (catMaybes
                 [("iosBundleId" .=) <$> _iiIosBundleId,
                  ("iosIpadBundleId" .=) <$> _iiIosIPadBundleId,
                  ("iosAppStoreId" .=) <$> _iiIosAppStoreId,
                  ("iosIpadFallbackLink" .=) <$>
                    _iiIosIPadFallbackLink,
                  ("iosCustomScheme" .=) <$> _iiIosCustomScheme,
                  ("iosFallbackLink" .=) <$> _iiIosFallbackLink])

-- | Information about a Dynamic Link.
--
-- /See:/ 'dynamicLinkInfo' smart constructor.
data DynamicLinkInfo = DynamicLinkInfo'
    { _dliSocialMetaTagInfo :: !(Maybe SocialMetaTagInfo)
    , _dliDynamicLinkDomain :: !(Maybe Text)
    , _dliLink              :: !(Maybe Text)
    , _dliIosInfo           :: !(Maybe IosInfo)
    , _dliAndroidInfo       :: !(Maybe AndroidInfo)
    , _dliAnalyticsInfo     :: !(Maybe AnalyticsInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DynamicLinkInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dliSocialMetaTagInfo'
--
-- * 'dliDynamicLinkDomain'
--
-- * 'dliLink'
--
-- * 'dliIosInfo'
--
-- * 'dliAndroidInfo'
--
-- * 'dliAnalyticsInfo'
dynamicLinkInfo
    :: DynamicLinkInfo
dynamicLinkInfo =
    DynamicLinkInfo'
    { _dliSocialMetaTagInfo = Nothing
    , _dliDynamicLinkDomain = Nothing
    , _dliLink = Nothing
    , _dliIosInfo = Nothing
    , _dliAndroidInfo = Nothing
    , _dliAnalyticsInfo = Nothing
    }

-- | Parameters for social meta tag params. Used to set meta tag data for
-- link previews on social sites.
dliSocialMetaTagInfo :: Lens' DynamicLinkInfo (Maybe SocialMetaTagInfo)
dliSocialMetaTagInfo
  = lens _dliSocialMetaTagInfo
      (\ s a -> s{_dliSocialMetaTagInfo = a})

-- | Dynamic Links domain that the project owns, e.g. abcd.app.goo.gl [Learn
-- more](https:\/\/firebase.google.com\/docs\/dynamic-links\/android#set-up-firebase-and-the-dynamic-links-sdk)
-- on how to set up Dynamic Link domain associated with your Firebase
-- project. Required.
dliDynamicLinkDomain :: Lens' DynamicLinkInfo (Maybe Text)
dliDynamicLinkDomain
  = lens _dliDynamicLinkDomain
      (\ s a -> s{_dliDynamicLinkDomain = a})

-- | The link your app will open, You can specify any URL your app can
-- handle. This link must be a well-formatted URL, be properly URL-encoded,
-- and use the HTTP or HTTPS scheme. See \'link\' parameters in the
-- [documentation](https:\/\/firebase.google.com\/docs\/dynamic-links\/android#create-a-dynamic-link-programmatically).
-- Required.
dliLink :: Lens' DynamicLinkInfo (Maybe Text)
dliLink = lens _dliLink (\ s a -> s{_dliLink = a})

-- | iOS related information. See iOS related parameters in the
-- [documentation](https:\/\/firebase.google.com\/docs\/dynamic-links\/ios#create-a-dynamic-link-programmatically).
dliIosInfo :: Lens' DynamicLinkInfo (Maybe IosInfo)
dliIosInfo
  = lens _dliIosInfo (\ s a -> s{_dliIosInfo = a})

-- | Android related information. See Android related parameters in the
-- [documentation](https:\/\/firebase.google.com\/docs\/dynamic-links\/android#create-a-dynamic-link-programmatically).
dliAndroidInfo :: Lens' DynamicLinkInfo (Maybe AndroidInfo)
dliAndroidInfo
  = lens _dliAndroidInfo
      (\ s a -> s{_dliAndroidInfo = a})

-- | Parameters used for tracking. See all tracking parameters in the
-- [documentation](https:\/\/firebase.google.com\/docs\/dynamic-links\/android#create-a-dynamic-link-programmatically).
dliAnalyticsInfo :: Lens' DynamicLinkInfo (Maybe AnalyticsInfo)
dliAnalyticsInfo
  = lens _dliAnalyticsInfo
      (\ s a -> s{_dliAnalyticsInfo = a})

instance FromJSON DynamicLinkInfo where
        parseJSON
          = withObject "DynamicLinkInfo"
              (\ o ->
                 DynamicLinkInfo' <$>
                   (o .:? "socialMetaTagInfo") <*>
                     (o .:? "dynamicLinkDomain")
                     <*> (o .:? "link")
                     <*> (o .:? "iosInfo")
                     <*> (o .:? "androidInfo")
                     <*> (o .:? "analyticsInfo"))

instance ToJSON DynamicLinkInfo where
        toJSON DynamicLinkInfo'{..}
          = object
              (catMaybes
                 [("socialMetaTagInfo" .=) <$> _dliSocialMetaTagInfo,
                  ("dynamicLinkDomain" .=) <$> _dliDynamicLinkDomain,
                  ("link" .=) <$> _dliLink,
                  ("iosInfo" .=) <$> _dliIosInfo,
                  ("androidInfo" .=) <$> _dliAndroidInfo,
                  ("analyticsInfo" .=) <$> _dliAnalyticsInfo])

-- | Android related attributes to the Dynamic Link.
--
-- /See:/ 'androidInfo' smart constructor.
data AndroidInfo = AndroidInfo'
    { _aiAndroidMinPackageVersionCode :: !(Maybe Text)
    , _aiAndroidFallbackLink          :: !(Maybe Text)
    , _aiAndroidLink                  :: !(Maybe Text)
    , _aiAndroidPackageName           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AndroidInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiAndroidMinPackageVersionCode'
--
-- * 'aiAndroidFallbackLink'
--
-- * 'aiAndroidLink'
--
-- * 'aiAndroidPackageName'
androidInfo
    :: AndroidInfo
androidInfo =
    AndroidInfo'
    { _aiAndroidMinPackageVersionCode = Nothing
    , _aiAndroidFallbackLink = Nothing
    , _aiAndroidLink = Nothing
    , _aiAndroidPackageName = Nothing
    }

-- | Minimum version code for the Android app. If the installed app’s version
-- code is lower, then the user is taken to the Play Store.
aiAndroidMinPackageVersionCode :: Lens' AndroidInfo (Maybe Text)
aiAndroidMinPackageVersionCode
  = lens _aiAndroidMinPackageVersionCode
      (\ s a -> s{_aiAndroidMinPackageVersionCode = a})

-- | Link to open on Android if the app is not installed.
aiAndroidFallbackLink :: Lens' AndroidInfo (Maybe Text)
aiAndroidFallbackLink
  = lens _aiAndroidFallbackLink
      (\ s a -> s{_aiAndroidFallbackLink = a})

-- | If specified, this overrides the ‘link’ parameter on Android.
aiAndroidLink :: Lens' AndroidInfo (Maybe Text)
aiAndroidLink
  = lens _aiAndroidLink
      (\ s a -> s{_aiAndroidLink = a})

-- | Android package name of the app.
aiAndroidPackageName :: Lens' AndroidInfo (Maybe Text)
aiAndroidPackageName
  = lens _aiAndroidPackageName
      (\ s a -> s{_aiAndroidPackageName = a})

instance FromJSON AndroidInfo where
        parseJSON
          = withObject "AndroidInfo"
              (\ o ->
                 AndroidInfo' <$>
                   (o .:? "androidMinPackageVersionCode") <*>
                     (o .:? "androidFallbackLink")
                     <*> (o .:? "androidLink")
                     <*> (o .:? "androidPackageName"))

instance ToJSON AndroidInfo where
        toJSON AndroidInfo'{..}
          = object
              (catMaybes
                 [("androidMinPackageVersionCode" .=) <$>
                    _aiAndroidMinPackageVersionCode,
                  ("androidFallbackLink" .=) <$>
                    _aiAndroidFallbackLink,
                  ("androidLink" .=) <$> _aiAndroidLink,
                  ("androidPackageName" .=) <$> _aiAndroidPackageName])

-- | Tracking parameters supported by Dynamic Link.
--
-- /See:/ 'analyticsInfo' smart constructor.
data AnalyticsInfo = AnalyticsInfo'
    { _aiItunesConnectAnalytics :: !(Maybe ITunesConnectAnalytics)
    , _aiGooglePlayAnalytics    :: !(Maybe GooglePlayAnalytics)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyticsInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiItunesConnectAnalytics'
--
-- * 'aiGooglePlayAnalytics'
analyticsInfo
    :: AnalyticsInfo
analyticsInfo =
    AnalyticsInfo'
    { _aiItunesConnectAnalytics = Nothing
    , _aiGooglePlayAnalytics = Nothing
    }

-- | iTunes Connect App Analytics.
aiItunesConnectAnalytics :: Lens' AnalyticsInfo (Maybe ITunesConnectAnalytics)
aiItunesConnectAnalytics
  = lens _aiItunesConnectAnalytics
      (\ s a -> s{_aiItunesConnectAnalytics = a})

-- | Google Play Campaign Measurements.
aiGooglePlayAnalytics :: Lens' AnalyticsInfo (Maybe GooglePlayAnalytics)
aiGooglePlayAnalytics
  = lens _aiGooglePlayAnalytics
      (\ s a -> s{_aiGooglePlayAnalytics = a})

instance FromJSON AnalyticsInfo where
        parseJSON
          = withObject "AnalyticsInfo"
              (\ o ->
                 AnalyticsInfo' <$>
                   (o .:? "itunesConnectAnalytics") <*>
                     (o .:? "googlePlayAnalytics"))

instance ToJSON AnalyticsInfo where
        toJSON AnalyticsInfo'{..}
          = object
              (catMaybes
                 [("itunesConnectAnalytics" .=) <$>
                    _aiItunesConnectAnalytics,
                  ("googlePlayAnalytics" .=) <$>
                    _aiGooglePlayAnalytics])

-- | Parameters for iTunes Connect App Analytics.
--
-- /See:/ 'iTunesConnectAnalytics' smart constructor.
data ITunesConnectAnalytics = ITunesConnectAnalytics'
    { _itcaAt :: !(Maybe Text)
    , _itcaMt :: !(Maybe Text)
    , _itcaPt :: !(Maybe Text)
    , _itcaCt :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ITunesConnectAnalytics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itcaAt'
--
-- * 'itcaMt'
--
-- * 'itcaPt'
--
-- * 'itcaCt'
iTunesConnectAnalytics
    :: ITunesConnectAnalytics
iTunesConnectAnalytics =
    ITunesConnectAnalytics'
    { _itcaAt = Nothing
    , _itcaMt = Nothing
    , _itcaPt = Nothing
    , _itcaCt = Nothing
    }

-- | Affiliate token used to create affiliate-coded links.
itcaAt :: Lens' ITunesConnectAnalytics (Maybe Text)
itcaAt = lens _itcaAt (\ s a -> s{_itcaAt = a})

-- | iTune media types, including music, podcasts, audiobooks and so on.
itcaMt :: Lens' ITunesConnectAnalytics (Maybe Text)
itcaMt = lens _itcaMt (\ s a -> s{_itcaMt = a})

-- | Provider token that enables analytics for Dynamic Links from within
-- iTunes Connect.
itcaPt :: Lens' ITunesConnectAnalytics (Maybe Text)
itcaPt = lens _itcaPt (\ s a -> s{_itcaPt = a})

-- | Campaign text that developers can optionally add to any link in order to
-- track sales from a specific marketing campaign.
itcaCt :: Lens' ITunesConnectAnalytics (Maybe Text)
itcaCt = lens _itcaCt (\ s a -> s{_itcaCt = a})

instance FromJSON ITunesConnectAnalytics where
        parseJSON
          = withObject "ITunesConnectAnalytics"
              (\ o ->
                 ITunesConnectAnalytics' <$>
                   (o .:? "at") <*> (o .:? "mt") <*> (o .:? "pt") <*>
                     (o .:? "ct"))

instance ToJSON ITunesConnectAnalytics where
        toJSON ITunesConnectAnalytics'{..}
          = object
              (catMaybes
                 [("at" .=) <$> _itcaAt, ("mt" .=) <$> _itcaMt,
                  ("pt" .=) <$> _itcaPt, ("ct" .=) <$> _itcaCt])

-- | Parameters for Google Play Campaign Measurements. [Learn
-- more](https:\/\/developers.google.com\/analytics\/devguides\/collection\/android\/v4\/campaigns#campaign-params)
--
-- /See:/ 'googlePlayAnalytics' smart constructor.
data GooglePlayAnalytics = GooglePlayAnalytics'
    { _gpaUtmContent  :: !(Maybe Text)
    , _gpaUtmMedium   :: !(Maybe Text)
    , _gpaUtmTerm     :: !(Maybe Text)
    , _gpaUtmCampaign :: !(Maybe Text)
    , _gpaGclid       :: !(Maybe Text)
    , _gpaUtmSource   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GooglePlayAnalytics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpaUtmContent'
--
-- * 'gpaUtmMedium'
--
-- * 'gpaUtmTerm'
--
-- * 'gpaUtmCampaign'
--
-- * 'gpaGclid'
--
-- * 'gpaUtmSource'
googlePlayAnalytics
    :: GooglePlayAnalytics
googlePlayAnalytics =
    GooglePlayAnalytics'
    { _gpaUtmContent = Nothing
    , _gpaUtmMedium = Nothing
    , _gpaUtmTerm = Nothing
    , _gpaUtmCampaign = Nothing
    , _gpaGclid = Nothing
    , _gpaUtmSource = Nothing
    }

-- | Campaign content; used for A\/B testing and content-targeted ads to
-- differentiate ads or links that point to the same URL.
gpaUtmContent :: Lens' GooglePlayAnalytics (Maybe Text)
gpaUtmContent
  = lens _gpaUtmContent
      (\ s a -> s{_gpaUtmContent = a})

-- | Campaign medium; used to identify a medium such as email or
-- cost-per-click.
gpaUtmMedium :: Lens' GooglePlayAnalytics (Maybe Text)
gpaUtmMedium
  = lens _gpaUtmMedium (\ s a -> s{_gpaUtmMedium = a})

-- | Campaign term; used with paid search to supply the keywords for ads.
gpaUtmTerm :: Lens' GooglePlayAnalytics (Maybe Text)
gpaUtmTerm
  = lens _gpaUtmTerm (\ s a -> s{_gpaUtmTerm = a})

-- | Campaign name; used for keyword analysis to identify a specific product
-- promotion or strategic campaign.
gpaUtmCampaign :: Lens' GooglePlayAnalytics (Maybe Text)
gpaUtmCampaign
  = lens _gpaUtmCampaign
      (\ s a -> s{_gpaUtmCampaign = a})

-- | [AdWords autotagging
-- parameter](https:\/\/support.google.com\/analytics\/answer\/1033981?hl=en);
-- used to measure Google AdWords ads. This value is generated dynamically
-- and should never be modified.
gpaGclid :: Lens' GooglePlayAnalytics (Maybe Text)
gpaGclid = lens _gpaGclid (\ s a -> s{_gpaGclid = a})

-- | Campaign source; used to identify a search engine, newsletter, or other
-- source.
gpaUtmSource :: Lens' GooglePlayAnalytics (Maybe Text)
gpaUtmSource
  = lens _gpaUtmSource (\ s a -> s{_gpaUtmSource = a})

instance FromJSON GooglePlayAnalytics where
        parseJSON
          = withObject "GooglePlayAnalytics"
              (\ o ->
                 GooglePlayAnalytics' <$>
                   (o .:? "utmContent") <*> (o .:? "utmMedium") <*>
                     (o .:? "utmTerm")
                     <*> (o .:? "utmCampaign")
                     <*> (o .:? "gclid")
                     <*> (o .:? "utmSource"))

instance ToJSON GooglePlayAnalytics where
        toJSON GooglePlayAnalytics'{..}
          = object
              (catMaybes
                 [("utmContent" .=) <$> _gpaUtmContent,
                  ("utmMedium" .=) <$> _gpaUtmMedium,
                  ("utmTerm" .=) <$> _gpaUtmTerm,
                  ("utmCampaign" .=) <$> _gpaUtmCampaign,
                  ("gclid" .=) <$> _gpaGclid,
                  ("utmSource" .=) <$> _gpaUtmSource])
