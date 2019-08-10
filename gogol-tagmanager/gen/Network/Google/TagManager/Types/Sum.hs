{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TagManager.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TagManager.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Type of built-in variable.
data BuiltInVariableType
    = BIVTAdvertiserId
      -- ^ @advertiserId@
    | BIVTAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | BIVTAmpBrowserLanguage
      -- ^ @ampBrowserLanguage@
    | BIVTAmpCanonicalHost
      -- ^ @ampCanonicalHost@
    | BIVTAmpCanonicalPath
      -- ^ @ampCanonicalPath@
    | BIVTAmpCanonicalURL
      -- ^ @ampCanonicalUrl@
    | BIVTAmpClientId
      -- ^ @ampClientId@
    | BIVTAmpClientMaxScrollX
      -- ^ @ampClientMaxScrollX@
    | BIVTAmpClientMaxScrollY
      -- ^ @ampClientMaxScrollY@
    | BIVTAmpClientScreenHeight
      -- ^ @ampClientScreenHeight@
    | BIVTAmpClientScreenWidth
      -- ^ @ampClientScreenWidth@
    | BIVTAmpClientScrollX
      -- ^ @ampClientScrollX@
    | BIVTAmpClientScrollY
      -- ^ @ampClientScrollY@
    | BIVTAmpClientTimestamp
      -- ^ @ampClientTimestamp@
    | BIVTAmpClientTimezone
      -- ^ @ampClientTimezone@
    | BIVTAmpGtmEvent
      -- ^ @ampGtmEvent@
    | BIVTAmpPageDownloadTime
      -- ^ @ampPageDownloadTime@
    | BIVTAmpPageLoadTime
      -- ^ @ampPageLoadTime@
    | BIVTAmpPageViewId
      -- ^ @ampPageViewId@
    | BIVTAmpReferrer
      -- ^ @ampReferrer@
    | BIVTAmpTitle
      -- ^ @ampTitle@
    | BIVTAmpTotalEngagedTime
      -- ^ @ampTotalEngagedTime@
    | BIVTAppId
      -- ^ @appId@
    | BIVTAppName
      -- ^ @appName@
    | BIVTAppVersionCode
      -- ^ @appVersionCode@
    | BIVTAppVersionName
      -- ^ @appVersionName@
    | BIVTBuiltInVariableTypeUnspecified
      -- ^ @builtInVariableTypeUnspecified@
    | BIVTClickClasses
      -- ^ @clickClasses@
    | BIVTClickElement
      -- ^ @clickElement@
    | BIVTClickId
      -- ^ @clickId@
    | BIVTClickTarget
      -- ^ @clickTarget@
    | BIVTClickText
      -- ^ @clickText@
    | BIVTClickURL
      -- ^ @clickUrl@
    | BIVTContainerId
      -- ^ @containerId@
    | BIVTContainerVersion
      -- ^ @containerVersion@
    | BIVTDebugMode
      -- ^ @debugMode@
    | BIVTDeviceName
      -- ^ @deviceName@
    | BIVTElementVisibilityFirstTime
      -- ^ @elementVisibilityFirstTime@
    | BIVTElementVisibilityRatio
      -- ^ @elementVisibilityRatio@
    | BIVTElementVisibilityRecentTime
      -- ^ @elementVisibilityRecentTime@
    | BIVTElementVisibilityTime
      -- ^ @elementVisibilityTime@
    | BIVTEnvironmentName
      -- ^ @environmentName@
    | BIVTErrorLine
      -- ^ @errorLine@
    | BIVTErrorMessage
      -- ^ @errorMessage@
    | BIVTErrorURL
      -- ^ @errorUrl@
    | BIVTEvent
      -- ^ @event@
    | BIVTEventName
      -- ^ @eventName@
    | BIVTFirebaseEventParameterCampaign
      -- ^ @firebaseEventParameterCampaign@
    | BIVTFirebaseEventParameterCampaignACLid
      -- ^ @firebaseEventParameterCampaignAclid@
    | BIVTFirebaseEventParameterCampaignAnid
      -- ^ @firebaseEventParameterCampaignAnid@
    | BIVTFirebaseEventParameterCampaignClickTimestamp
      -- ^ @firebaseEventParameterCampaignClickTimestamp@
    | BIVTFirebaseEventParameterCampaignContent
      -- ^ @firebaseEventParameterCampaignContent@
    | BIVTFIREBASEEVENTPARAMETERCAMPAIGNCP1
      -- ^ @firebaseEventParameterCampaignCp1@
    | BIVTFirebaseEventParameterCampaignGclid
      -- ^ @firebaseEventParameterCampaignGclid@
    | BIVTFirebaseEventParameterCampaignSource
      -- ^ @firebaseEventParameterCampaignSource@
    | BIVTFirebaseEventParameterCampaignTerm
      -- ^ @firebaseEventParameterCampaignTerm@
    | BIVTFirebaseEventParameterCurrency
      -- ^ @firebaseEventParameterCurrency@
    | BIVTFirebaseEventParameterDynamicLinkAcceptTime
      -- ^ @firebaseEventParameterDynamicLinkAcceptTime@
    | BIVTFirebaseEventParameterDynamicLinkLinkid
      -- ^ @firebaseEventParameterDynamicLinkLinkid@
    | BIVTFirebaseEventParameterNotificationMessageDeviceTime
      -- ^ @firebaseEventParameterNotificationMessageDeviceTime@
    | BIVTFirebaseEventParameterNotificationMessageId
      -- ^ @firebaseEventParameterNotificationMessageId@
    | BIVTFirebaseEventParameterNotificationMessageName
      -- ^ @firebaseEventParameterNotificationMessageName@
    | BIVTFirebaseEventParameterNotificationMessageTime
      -- ^ @firebaseEventParameterNotificationMessageTime@
    | BIVTFirebaseEventParameterNotificationTopic
      -- ^ @firebaseEventParameterNotificationTopic@
    | BIVTFirebaseEventParameterPreviousAppVersion
      -- ^ @firebaseEventParameterPreviousAppVersion@
    | BIVTFirebaseEventParameterPreviousOSVersion
      -- ^ @firebaseEventParameterPreviousOsVersion@
    | BIVTFirebaseEventParameterPrice
      -- ^ @firebaseEventParameterPrice@
    | BIVTFirebaseEventParameterProductId
      -- ^ @firebaseEventParameterProductId@
    | BIVTFirebaseEventParameterQuantity
      -- ^ @firebaseEventParameterQuantity@
    | BIVTFirebaseEventParameterValue
      -- ^ @firebaseEventParameterValue@
    | BIVTFormClasses
      -- ^ @formClasses@
    | BIVTFormElement
      -- ^ @formElement@
    | BIVTFormId
      -- ^ @formId@
    | BIVTFormTarget
      -- ^ @formTarget@
    | BIVTFormText
      -- ^ @formText@
    | BIVTFormURL
      -- ^ @formUrl@
    | BIVTHistorySource
      -- ^ @historySource@
    | BIVTHTMLId
      -- ^ @htmlId@
    | BIVTLanguage
      -- ^ @language@
    | BIVTNewHistoryFragment
      -- ^ @newHistoryFragment@
    | BIVTNewHistoryState
      -- ^ @newHistoryState@
    | BIVTOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | BIVTOldHistoryState
      -- ^ @oldHistoryState@
    | BIVTOSVersion
      -- ^ @osVersion@
    | BIVTPageHostname
      -- ^ @pageHostname@
    | BIVTPagePath
      -- ^ @pagePath@
    | BIVTPageURL
      -- ^ @pageUrl@
    | BIVTPlatform
      -- ^ @platform@
    | BIVTRandomNumber
      -- ^ @randomNumber@
    | BIVTReferrer
      -- ^ @referrer@
    | BIVTResolution
      -- ^ @resolution@
    | BIVTScrollDepthDirection
      -- ^ @scrollDepthDirection@
    | BIVTScrollDepthThreshold
      -- ^ @scrollDepthThreshold@
    | BIVTScrollDepthUnits
      -- ^ @scrollDepthUnits@
    | BIVTSdkVersion
      -- ^ @sdkVersion@
    | BIVTVideoCurrentTime
      -- ^ @videoCurrentTime@
    | BIVTVideoDuration
      -- ^ @videoDuration@
    | BIVTVideoPercent
      -- ^ @videoPercent@
    | BIVTVideoProvider
      -- ^ @videoProvider@
    | BIVTVideoStatus
      -- ^ @videoStatus@
    | BIVTVideoTitle
      -- ^ @videoTitle@
    | BIVTVideoURL
      -- ^ @videoUrl@
    | BIVTVideoVisible
      -- ^ @videoVisible@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuiltInVariableType

instance FromHttpApiData BuiltInVariableType where
    parseQueryParam = \case
        "advertiserId" -> Right BIVTAdvertiserId
        "advertisingTrackingEnabled" -> Right BIVTAdvertisingTrackingEnabled
        "ampBrowserLanguage" -> Right BIVTAmpBrowserLanguage
        "ampCanonicalHost" -> Right BIVTAmpCanonicalHost
        "ampCanonicalPath" -> Right BIVTAmpCanonicalPath
        "ampCanonicalUrl" -> Right BIVTAmpCanonicalURL
        "ampClientId" -> Right BIVTAmpClientId
        "ampClientMaxScrollX" -> Right BIVTAmpClientMaxScrollX
        "ampClientMaxScrollY" -> Right BIVTAmpClientMaxScrollY
        "ampClientScreenHeight" -> Right BIVTAmpClientScreenHeight
        "ampClientScreenWidth" -> Right BIVTAmpClientScreenWidth
        "ampClientScrollX" -> Right BIVTAmpClientScrollX
        "ampClientScrollY" -> Right BIVTAmpClientScrollY
        "ampClientTimestamp" -> Right BIVTAmpClientTimestamp
        "ampClientTimezone" -> Right BIVTAmpClientTimezone
        "ampGtmEvent" -> Right BIVTAmpGtmEvent
        "ampPageDownloadTime" -> Right BIVTAmpPageDownloadTime
        "ampPageLoadTime" -> Right BIVTAmpPageLoadTime
        "ampPageViewId" -> Right BIVTAmpPageViewId
        "ampReferrer" -> Right BIVTAmpReferrer
        "ampTitle" -> Right BIVTAmpTitle
        "ampTotalEngagedTime" -> Right BIVTAmpTotalEngagedTime
        "appId" -> Right BIVTAppId
        "appName" -> Right BIVTAppName
        "appVersionCode" -> Right BIVTAppVersionCode
        "appVersionName" -> Right BIVTAppVersionName
        "builtInVariableTypeUnspecified" -> Right BIVTBuiltInVariableTypeUnspecified
        "clickClasses" -> Right BIVTClickClasses
        "clickElement" -> Right BIVTClickElement
        "clickId" -> Right BIVTClickId
        "clickTarget" -> Right BIVTClickTarget
        "clickText" -> Right BIVTClickText
        "clickUrl" -> Right BIVTClickURL
        "containerId" -> Right BIVTContainerId
        "containerVersion" -> Right BIVTContainerVersion
        "debugMode" -> Right BIVTDebugMode
        "deviceName" -> Right BIVTDeviceName
        "elementVisibilityFirstTime" -> Right BIVTElementVisibilityFirstTime
        "elementVisibilityRatio" -> Right BIVTElementVisibilityRatio
        "elementVisibilityRecentTime" -> Right BIVTElementVisibilityRecentTime
        "elementVisibilityTime" -> Right BIVTElementVisibilityTime
        "environmentName" -> Right BIVTEnvironmentName
        "errorLine" -> Right BIVTErrorLine
        "errorMessage" -> Right BIVTErrorMessage
        "errorUrl" -> Right BIVTErrorURL
        "event" -> Right BIVTEvent
        "eventName" -> Right BIVTEventName
        "firebaseEventParameterCampaign" -> Right BIVTFirebaseEventParameterCampaign
        "firebaseEventParameterCampaignAclid" -> Right BIVTFirebaseEventParameterCampaignACLid
        "firebaseEventParameterCampaignAnid" -> Right BIVTFirebaseEventParameterCampaignAnid
        "firebaseEventParameterCampaignClickTimestamp" -> Right BIVTFirebaseEventParameterCampaignClickTimestamp
        "firebaseEventParameterCampaignContent" -> Right BIVTFirebaseEventParameterCampaignContent
        "firebaseEventParameterCampaignCp1" -> Right BIVTFIREBASEEVENTPARAMETERCAMPAIGNCP1
        "firebaseEventParameterCampaignGclid" -> Right BIVTFirebaseEventParameterCampaignGclid
        "firebaseEventParameterCampaignSource" -> Right BIVTFirebaseEventParameterCampaignSource
        "firebaseEventParameterCampaignTerm" -> Right BIVTFirebaseEventParameterCampaignTerm
        "firebaseEventParameterCurrency" -> Right BIVTFirebaseEventParameterCurrency
        "firebaseEventParameterDynamicLinkAcceptTime" -> Right BIVTFirebaseEventParameterDynamicLinkAcceptTime
        "firebaseEventParameterDynamicLinkLinkid" -> Right BIVTFirebaseEventParameterDynamicLinkLinkid
        "firebaseEventParameterNotificationMessageDeviceTime" -> Right BIVTFirebaseEventParameterNotificationMessageDeviceTime
        "firebaseEventParameterNotificationMessageId" -> Right BIVTFirebaseEventParameterNotificationMessageId
        "firebaseEventParameterNotificationMessageName" -> Right BIVTFirebaseEventParameterNotificationMessageName
        "firebaseEventParameterNotificationMessageTime" -> Right BIVTFirebaseEventParameterNotificationMessageTime
        "firebaseEventParameterNotificationTopic" -> Right BIVTFirebaseEventParameterNotificationTopic
        "firebaseEventParameterPreviousAppVersion" -> Right BIVTFirebaseEventParameterPreviousAppVersion
        "firebaseEventParameterPreviousOsVersion" -> Right BIVTFirebaseEventParameterPreviousOSVersion
        "firebaseEventParameterPrice" -> Right BIVTFirebaseEventParameterPrice
        "firebaseEventParameterProductId" -> Right BIVTFirebaseEventParameterProductId
        "firebaseEventParameterQuantity" -> Right BIVTFirebaseEventParameterQuantity
        "firebaseEventParameterValue" -> Right BIVTFirebaseEventParameterValue
        "formClasses" -> Right BIVTFormClasses
        "formElement" -> Right BIVTFormElement
        "formId" -> Right BIVTFormId
        "formTarget" -> Right BIVTFormTarget
        "formText" -> Right BIVTFormText
        "formUrl" -> Right BIVTFormURL
        "historySource" -> Right BIVTHistorySource
        "htmlId" -> Right BIVTHTMLId
        "language" -> Right BIVTLanguage
        "newHistoryFragment" -> Right BIVTNewHistoryFragment
        "newHistoryState" -> Right BIVTNewHistoryState
        "oldHistoryFragment" -> Right BIVTOldHistoryFragment
        "oldHistoryState" -> Right BIVTOldHistoryState
        "osVersion" -> Right BIVTOSVersion
        "pageHostname" -> Right BIVTPageHostname
        "pagePath" -> Right BIVTPagePath
        "pageUrl" -> Right BIVTPageURL
        "platform" -> Right BIVTPlatform
        "randomNumber" -> Right BIVTRandomNumber
        "referrer" -> Right BIVTReferrer
        "resolution" -> Right BIVTResolution
        "scrollDepthDirection" -> Right BIVTScrollDepthDirection
        "scrollDepthThreshold" -> Right BIVTScrollDepthThreshold
        "scrollDepthUnits" -> Right BIVTScrollDepthUnits
        "sdkVersion" -> Right BIVTSdkVersion
        "videoCurrentTime" -> Right BIVTVideoCurrentTime
        "videoDuration" -> Right BIVTVideoDuration
        "videoPercent" -> Right BIVTVideoPercent
        "videoProvider" -> Right BIVTVideoProvider
        "videoStatus" -> Right BIVTVideoStatus
        "videoTitle" -> Right BIVTVideoTitle
        "videoUrl" -> Right BIVTVideoURL
        "videoVisible" -> Right BIVTVideoVisible
        x -> Left ("Unable to parse BuiltInVariableType from: " <> x)

instance ToHttpApiData BuiltInVariableType where
    toQueryParam = \case
        BIVTAdvertiserId -> "advertiserId"
        BIVTAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        BIVTAmpBrowserLanguage -> "ampBrowserLanguage"
        BIVTAmpCanonicalHost -> "ampCanonicalHost"
        BIVTAmpCanonicalPath -> "ampCanonicalPath"
        BIVTAmpCanonicalURL -> "ampCanonicalUrl"
        BIVTAmpClientId -> "ampClientId"
        BIVTAmpClientMaxScrollX -> "ampClientMaxScrollX"
        BIVTAmpClientMaxScrollY -> "ampClientMaxScrollY"
        BIVTAmpClientScreenHeight -> "ampClientScreenHeight"
        BIVTAmpClientScreenWidth -> "ampClientScreenWidth"
        BIVTAmpClientScrollX -> "ampClientScrollX"
        BIVTAmpClientScrollY -> "ampClientScrollY"
        BIVTAmpClientTimestamp -> "ampClientTimestamp"
        BIVTAmpClientTimezone -> "ampClientTimezone"
        BIVTAmpGtmEvent -> "ampGtmEvent"
        BIVTAmpPageDownloadTime -> "ampPageDownloadTime"
        BIVTAmpPageLoadTime -> "ampPageLoadTime"
        BIVTAmpPageViewId -> "ampPageViewId"
        BIVTAmpReferrer -> "ampReferrer"
        BIVTAmpTitle -> "ampTitle"
        BIVTAmpTotalEngagedTime -> "ampTotalEngagedTime"
        BIVTAppId -> "appId"
        BIVTAppName -> "appName"
        BIVTAppVersionCode -> "appVersionCode"
        BIVTAppVersionName -> "appVersionName"
        BIVTBuiltInVariableTypeUnspecified -> "builtInVariableTypeUnspecified"
        BIVTClickClasses -> "clickClasses"
        BIVTClickElement -> "clickElement"
        BIVTClickId -> "clickId"
        BIVTClickTarget -> "clickTarget"
        BIVTClickText -> "clickText"
        BIVTClickURL -> "clickUrl"
        BIVTContainerId -> "containerId"
        BIVTContainerVersion -> "containerVersion"
        BIVTDebugMode -> "debugMode"
        BIVTDeviceName -> "deviceName"
        BIVTElementVisibilityFirstTime -> "elementVisibilityFirstTime"
        BIVTElementVisibilityRatio -> "elementVisibilityRatio"
        BIVTElementVisibilityRecentTime -> "elementVisibilityRecentTime"
        BIVTElementVisibilityTime -> "elementVisibilityTime"
        BIVTEnvironmentName -> "environmentName"
        BIVTErrorLine -> "errorLine"
        BIVTErrorMessage -> "errorMessage"
        BIVTErrorURL -> "errorUrl"
        BIVTEvent -> "event"
        BIVTEventName -> "eventName"
        BIVTFirebaseEventParameterCampaign -> "firebaseEventParameterCampaign"
        BIVTFirebaseEventParameterCampaignACLid -> "firebaseEventParameterCampaignAclid"
        BIVTFirebaseEventParameterCampaignAnid -> "firebaseEventParameterCampaignAnid"
        BIVTFirebaseEventParameterCampaignClickTimestamp -> "firebaseEventParameterCampaignClickTimestamp"
        BIVTFirebaseEventParameterCampaignContent -> "firebaseEventParameterCampaignContent"
        BIVTFIREBASEEVENTPARAMETERCAMPAIGNCP1 -> "firebaseEventParameterCampaignCp1"
        BIVTFirebaseEventParameterCampaignGclid -> "firebaseEventParameterCampaignGclid"
        BIVTFirebaseEventParameterCampaignSource -> "firebaseEventParameterCampaignSource"
        BIVTFirebaseEventParameterCampaignTerm -> "firebaseEventParameterCampaignTerm"
        BIVTFirebaseEventParameterCurrency -> "firebaseEventParameterCurrency"
        BIVTFirebaseEventParameterDynamicLinkAcceptTime -> "firebaseEventParameterDynamicLinkAcceptTime"
        BIVTFirebaseEventParameterDynamicLinkLinkid -> "firebaseEventParameterDynamicLinkLinkid"
        BIVTFirebaseEventParameterNotificationMessageDeviceTime -> "firebaseEventParameterNotificationMessageDeviceTime"
        BIVTFirebaseEventParameterNotificationMessageId -> "firebaseEventParameterNotificationMessageId"
        BIVTFirebaseEventParameterNotificationMessageName -> "firebaseEventParameterNotificationMessageName"
        BIVTFirebaseEventParameterNotificationMessageTime -> "firebaseEventParameterNotificationMessageTime"
        BIVTFirebaseEventParameterNotificationTopic -> "firebaseEventParameterNotificationTopic"
        BIVTFirebaseEventParameterPreviousAppVersion -> "firebaseEventParameterPreviousAppVersion"
        BIVTFirebaseEventParameterPreviousOSVersion -> "firebaseEventParameterPreviousOsVersion"
        BIVTFirebaseEventParameterPrice -> "firebaseEventParameterPrice"
        BIVTFirebaseEventParameterProductId -> "firebaseEventParameterProductId"
        BIVTFirebaseEventParameterQuantity -> "firebaseEventParameterQuantity"
        BIVTFirebaseEventParameterValue -> "firebaseEventParameterValue"
        BIVTFormClasses -> "formClasses"
        BIVTFormElement -> "formElement"
        BIVTFormId -> "formId"
        BIVTFormTarget -> "formTarget"
        BIVTFormText -> "formText"
        BIVTFormURL -> "formUrl"
        BIVTHistorySource -> "historySource"
        BIVTHTMLId -> "htmlId"
        BIVTLanguage -> "language"
        BIVTNewHistoryFragment -> "newHistoryFragment"
        BIVTNewHistoryState -> "newHistoryState"
        BIVTOldHistoryFragment -> "oldHistoryFragment"
        BIVTOldHistoryState -> "oldHistoryState"
        BIVTOSVersion -> "osVersion"
        BIVTPageHostname -> "pageHostname"
        BIVTPagePath -> "pagePath"
        BIVTPageURL -> "pageUrl"
        BIVTPlatform -> "platform"
        BIVTRandomNumber -> "randomNumber"
        BIVTReferrer -> "referrer"
        BIVTResolution -> "resolution"
        BIVTScrollDepthDirection -> "scrollDepthDirection"
        BIVTScrollDepthThreshold -> "scrollDepthThreshold"
        BIVTScrollDepthUnits -> "scrollDepthUnits"
        BIVTSdkVersion -> "sdkVersion"
        BIVTVideoCurrentTime -> "videoCurrentTime"
        BIVTVideoDuration -> "videoDuration"
        BIVTVideoPercent -> "videoPercent"
        BIVTVideoProvider -> "videoProvider"
        BIVTVideoStatus -> "videoStatus"
        BIVTVideoTitle -> "videoTitle"
        BIVTVideoURL -> "videoUrl"
        BIVTVideoVisible -> "videoVisible"

instance FromJSON BuiltInVariableType where
    parseJSON = parseJSONText "BuiltInVariableType"

instance ToJSON BuiltInVariableType where
    toJSON = toJSONText

-- | The types of built-in variables to delete.
data AccountsContainersWorkspacesBuilt_in_variablesDeleteType
    = ACWBDTAdvertiserId
      -- ^ @advertiserId@
    | ACWBDTAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | ACWBDTAmpBrowserLanguage
      -- ^ @ampBrowserLanguage@
    | ACWBDTAmpCanonicalHost
      -- ^ @ampCanonicalHost@
    | ACWBDTAmpCanonicalPath
      -- ^ @ampCanonicalPath@
    | ACWBDTAmpCanonicalURL
      -- ^ @ampCanonicalUrl@
    | ACWBDTAmpClientId
      -- ^ @ampClientId@
    | ACWBDTAmpClientMaxScrollX
      -- ^ @ampClientMaxScrollX@
    | ACWBDTAmpClientMaxScrollY
      -- ^ @ampClientMaxScrollY@
    | ACWBDTAmpClientScreenHeight
      -- ^ @ampClientScreenHeight@
    | ACWBDTAmpClientScreenWidth
      -- ^ @ampClientScreenWidth@
    | ACWBDTAmpClientScrollX
      -- ^ @ampClientScrollX@
    | ACWBDTAmpClientScrollY
      -- ^ @ampClientScrollY@
    | ACWBDTAmpClientTimestamp
      -- ^ @ampClientTimestamp@
    | ACWBDTAmpClientTimezone
      -- ^ @ampClientTimezone@
    | ACWBDTAmpGtmEvent
      -- ^ @ampGtmEvent@
    | ACWBDTAmpPageDownloadTime
      -- ^ @ampPageDownloadTime@
    | ACWBDTAmpPageLoadTime
      -- ^ @ampPageLoadTime@
    | ACWBDTAmpPageViewId
      -- ^ @ampPageViewId@
    | ACWBDTAmpReferrer
      -- ^ @ampReferrer@
    | ACWBDTAmpTitle
      -- ^ @ampTitle@
    | ACWBDTAmpTotalEngagedTime
      -- ^ @ampTotalEngagedTime@
    | ACWBDTAppId
      -- ^ @appId@
    | ACWBDTAppName
      -- ^ @appName@
    | ACWBDTAppVersionCode
      -- ^ @appVersionCode@
    | ACWBDTAppVersionName
      -- ^ @appVersionName@
    | ACWBDTBuiltInVariableTypeUnspecified
      -- ^ @builtInVariableTypeUnspecified@
    | ACWBDTClickClasses
      -- ^ @clickClasses@
    | ACWBDTClickElement
      -- ^ @clickElement@
    | ACWBDTClickId
      -- ^ @clickId@
    | ACWBDTClickTarget
      -- ^ @clickTarget@
    | ACWBDTClickText
      -- ^ @clickText@
    | ACWBDTClickURL
      -- ^ @clickUrl@
    | ACWBDTContainerId
      -- ^ @containerId@
    | ACWBDTContainerVersion
      -- ^ @containerVersion@
    | ACWBDTDebugMode
      -- ^ @debugMode@
    | ACWBDTDeviceName
      -- ^ @deviceName@
    | ACWBDTElementVisibilityFirstTime
      -- ^ @elementVisibilityFirstTime@
    | ACWBDTElementVisibilityRatio
      -- ^ @elementVisibilityRatio@
    | ACWBDTElementVisibilityRecentTime
      -- ^ @elementVisibilityRecentTime@
    | ACWBDTElementVisibilityTime
      -- ^ @elementVisibilityTime@
    | ACWBDTEnvironmentName
      -- ^ @environmentName@
    | ACWBDTErrorLine
      -- ^ @errorLine@
    | ACWBDTErrorMessage
      -- ^ @errorMessage@
    | ACWBDTErrorURL
      -- ^ @errorUrl@
    | ACWBDTEvent
      -- ^ @event@
    | ACWBDTEventName
      -- ^ @eventName@
    | ACWBDTFirebaseEventParameterCampaign
      -- ^ @firebaseEventParameterCampaign@
    | ACWBDTFirebaseEventParameterCampaignACLid
      -- ^ @firebaseEventParameterCampaignAclid@
    | ACWBDTFirebaseEventParameterCampaignAnid
      -- ^ @firebaseEventParameterCampaignAnid@
    | ACWBDTFirebaseEventParameterCampaignClickTimestamp
      -- ^ @firebaseEventParameterCampaignClickTimestamp@
    | ACWBDTFirebaseEventParameterCampaignContent
      -- ^ @firebaseEventParameterCampaignContent@
    | ACWBDTFIREBASEEVENTPARAMETERCAMPAIGNCP1
      -- ^ @firebaseEventParameterCampaignCp1@
    | ACWBDTFirebaseEventParameterCampaignGclid
      -- ^ @firebaseEventParameterCampaignGclid@
    | ACWBDTFirebaseEventParameterCampaignSource
      -- ^ @firebaseEventParameterCampaignSource@
    | ACWBDTFirebaseEventParameterCampaignTerm
      -- ^ @firebaseEventParameterCampaignTerm@
    | ACWBDTFirebaseEventParameterCurrency
      -- ^ @firebaseEventParameterCurrency@
    | ACWBDTFirebaseEventParameterDynamicLinkAcceptTime
      -- ^ @firebaseEventParameterDynamicLinkAcceptTime@
    | ACWBDTFirebaseEventParameterDynamicLinkLinkid
      -- ^ @firebaseEventParameterDynamicLinkLinkid@
    | ACWBDTFirebaseEventParameterNotificationMessageDeviceTime
      -- ^ @firebaseEventParameterNotificationMessageDeviceTime@
    | ACWBDTFirebaseEventParameterNotificationMessageId
      -- ^ @firebaseEventParameterNotificationMessageId@
    | ACWBDTFirebaseEventParameterNotificationMessageName
      -- ^ @firebaseEventParameterNotificationMessageName@
    | ACWBDTFirebaseEventParameterNotificationMessageTime
      -- ^ @firebaseEventParameterNotificationMessageTime@
    | ACWBDTFirebaseEventParameterNotificationTopic
      -- ^ @firebaseEventParameterNotificationTopic@
    | ACWBDTFirebaseEventParameterPreviousAppVersion
      -- ^ @firebaseEventParameterPreviousAppVersion@
    | ACWBDTFirebaseEventParameterPreviousOSVersion
      -- ^ @firebaseEventParameterPreviousOsVersion@
    | ACWBDTFirebaseEventParameterPrice
      -- ^ @firebaseEventParameterPrice@
    | ACWBDTFirebaseEventParameterProductId
      -- ^ @firebaseEventParameterProductId@
    | ACWBDTFirebaseEventParameterQuantity
      -- ^ @firebaseEventParameterQuantity@
    | ACWBDTFirebaseEventParameterValue
      -- ^ @firebaseEventParameterValue@
    | ACWBDTFormClasses
      -- ^ @formClasses@
    | ACWBDTFormElement
      -- ^ @formElement@
    | ACWBDTFormId
      -- ^ @formId@
    | ACWBDTFormTarget
      -- ^ @formTarget@
    | ACWBDTFormText
      -- ^ @formText@
    | ACWBDTFormURL
      -- ^ @formUrl@
    | ACWBDTHistorySource
      -- ^ @historySource@
    | ACWBDTHTMLId
      -- ^ @htmlId@
    | ACWBDTLanguage
      -- ^ @language@
    | ACWBDTNewHistoryFragment
      -- ^ @newHistoryFragment@
    | ACWBDTNewHistoryState
      -- ^ @newHistoryState@
    | ACWBDTOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | ACWBDTOldHistoryState
      -- ^ @oldHistoryState@
    | ACWBDTOSVersion
      -- ^ @osVersion@
    | ACWBDTPageHostname
      -- ^ @pageHostname@
    | ACWBDTPagePath
      -- ^ @pagePath@
    | ACWBDTPageURL
      -- ^ @pageUrl@
    | ACWBDTPlatform
      -- ^ @platform@
    | ACWBDTRandomNumber
      -- ^ @randomNumber@
    | ACWBDTReferrer
      -- ^ @referrer@
    | ACWBDTResolution
      -- ^ @resolution@
    | ACWBDTScrollDepthDirection
      -- ^ @scrollDepthDirection@
    | ACWBDTScrollDepthThreshold
      -- ^ @scrollDepthThreshold@
    | ACWBDTScrollDepthUnits
      -- ^ @scrollDepthUnits@
    | ACWBDTSdkVersion
      -- ^ @sdkVersion@
    | ACWBDTVideoCurrentTime
      -- ^ @videoCurrentTime@
    | ACWBDTVideoDuration
      -- ^ @videoDuration@
    | ACWBDTVideoPercent
      -- ^ @videoPercent@
    | ACWBDTVideoProvider
      -- ^ @videoProvider@
    | ACWBDTVideoStatus
      -- ^ @videoStatus@
    | ACWBDTVideoTitle
      -- ^ @videoTitle@
    | ACWBDTVideoURL
      -- ^ @videoUrl@
    | ACWBDTVideoVisible
      -- ^ @videoVisible@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsContainersWorkspacesBuilt_in_variablesDeleteType

instance FromHttpApiData AccountsContainersWorkspacesBuilt_in_variablesDeleteType where
    parseQueryParam = \case
        "advertiserId" -> Right ACWBDTAdvertiserId
        "advertisingTrackingEnabled" -> Right ACWBDTAdvertisingTrackingEnabled
        "ampBrowserLanguage" -> Right ACWBDTAmpBrowserLanguage
        "ampCanonicalHost" -> Right ACWBDTAmpCanonicalHost
        "ampCanonicalPath" -> Right ACWBDTAmpCanonicalPath
        "ampCanonicalUrl" -> Right ACWBDTAmpCanonicalURL
        "ampClientId" -> Right ACWBDTAmpClientId
        "ampClientMaxScrollX" -> Right ACWBDTAmpClientMaxScrollX
        "ampClientMaxScrollY" -> Right ACWBDTAmpClientMaxScrollY
        "ampClientScreenHeight" -> Right ACWBDTAmpClientScreenHeight
        "ampClientScreenWidth" -> Right ACWBDTAmpClientScreenWidth
        "ampClientScrollX" -> Right ACWBDTAmpClientScrollX
        "ampClientScrollY" -> Right ACWBDTAmpClientScrollY
        "ampClientTimestamp" -> Right ACWBDTAmpClientTimestamp
        "ampClientTimezone" -> Right ACWBDTAmpClientTimezone
        "ampGtmEvent" -> Right ACWBDTAmpGtmEvent
        "ampPageDownloadTime" -> Right ACWBDTAmpPageDownloadTime
        "ampPageLoadTime" -> Right ACWBDTAmpPageLoadTime
        "ampPageViewId" -> Right ACWBDTAmpPageViewId
        "ampReferrer" -> Right ACWBDTAmpReferrer
        "ampTitle" -> Right ACWBDTAmpTitle
        "ampTotalEngagedTime" -> Right ACWBDTAmpTotalEngagedTime
        "appId" -> Right ACWBDTAppId
        "appName" -> Right ACWBDTAppName
        "appVersionCode" -> Right ACWBDTAppVersionCode
        "appVersionName" -> Right ACWBDTAppVersionName
        "builtInVariableTypeUnspecified" -> Right ACWBDTBuiltInVariableTypeUnspecified
        "clickClasses" -> Right ACWBDTClickClasses
        "clickElement" -> Right ACWBDTClickElement
        "clickId" -> Right ACWBDTClickId
        "clickTarget" -> Right ACWBDTClickTarget
        "clickText" -> Right ACWBDTClickText
        "clickUrl" -> Right ACWBDTClickURL
        "containerId" -> Right ACWBDTContainerId
        "containerVersion" -> Right ACWBDTContainerVersion
        "debugMode" -> Right ACWBDTDebugMode
        "deviceName" -> Right ACWBDTDeviceName
        "elementVisibilityFirstTime" -> Right ACWBDTElementVisibilityFirstTime
        "elementVisibilityRatio" -> Right ACWBDTElementVisibilityRatio
        "elementVisibilityRecentTime" -> Right ACWBDTElementVisibilityRecentTime
        "elementVisibilityTime" -> Right ACWBDTElementVisibilityTime
        "environmentName" -> Right ACWBDTEnvironmentName
        "errorLine" -> Right ACWBDTErrorLine
        "errorMessage" -> Right ACWBDTErrorMessage
        "errorUrl" -> Right ACWBDTErrorURL
        "event" -> Right ACWBDTEvent
        "eventName" -> Right ACWBDTEventName
        "firebaseEventParameterCampaign" -> Right ACWBDTFirebaseEventParameterCampaign
        "firebaseEventParameterCampaignAclid" -> Right ACWBDTFirebaseEventParameterCampaignACLid
        "firebaseEventParameterCampaignAnid" -> Right ACWBDTFirebaseEventParameterCampaignAnid
        "firebaseEventParameterCampaignClickTimestamp" -> Right ACWBDTFirebaseEventParameterCampaignClickTimestamp
        "firebaseEventParameterCampaignContent" -> Right ACWBDTFirebaseEventParameterCampaignContent
        "firebaseEventParameterCampaignCp1" -> Right ACWBDTFIREBASEEVENTPARAMETERCAMPAIGNCP1
        "firebaseEventParameterCampaignGclid" -> Right ACWBDTFirebaseEventParameterCampaignGclid
        "firebaseEventParameterCampaignSource" -> Right ACWBDTFirebaseEventParameterCampaignSource
        "firebaseEventParameterCampaignTerm" -> Right ACWBDTFirebaseEventParameterCampaignTerm
        "firebaseEventParameterCurrency" -> Right ACWBDTFirebaseEventParameterCurrency
        "firebaseEventParameterDynamicLinkAcceptTime" -> Right ACWBDTFirebaseEventParameterDynamicLinkAcceptTime
        "firebaseEventParameterDynamicLinkLinkid" -> Right ACWBDTFirebaseEventParameterDynamicLinkLinkid
        "firebaseEventParameterNotificationMessageDeviceTime" -> Right ACWBDTFirebaseEventParameterNotificationMessageDeviceTime
        "firebaseEventParameterNotificationMessageId" -> Right ACWBDTFirebaseEventParameterNotificationMessageId
        "firebaseEventParameterNotificationMessageName" -> Right ACWBDTFirebaseEventParameterNotificationMessageName
        "firebaseEventParameterNotificationMessageTime" -> Right ACWBDTFirebaseEventParameterNotificationMessageTime
        "firebaseEventParameterNotificationTopic" -> Right ACWBDTFirebaseEventParameterNotificationTopic
        "firebaseEventParameterPreviousAppVersion" -> Right ACWBDTFirebaseEventParameterPreviousAppVersion
        "firebaseEventParameterPreviousOsVersion" -> Right ACWBDTFirebaseEventParameterPreviousOSVersion
        "firebaseEventParameterPrice" -> Right ACWBDTFirebaseEventParameterPrice
        "firebaseEventParameterProductId" -> Right ACWBDTFirebaseEventParameterProductId
        "firebaseEventParameterQuantity" -> Right ACWBDTFirebaseEventParameterQuantity
        "firebaseEventParameterValue" -> Right ACWBDTFirebaseEventParameterValue
        "formClasses" -> Right ACWBDTFormClasses
        "formElement" -> Right ACWBDTFormElement
        "formId" -> Right ACWBDTFormId
        "formTarget" -> Right ACWBDTFormTarget
        "formText" -> Right ACWBDTFormText
        "formUrl" -> Right ACWBDTFormURL
        "historySource" -> Right ACWBDTHistorySource
        "htmlId" -> Right ACWBDTHTMLId
        "language" -> Right ACWBDTLanguage
        "newHistoryFragment" -> Right ACWBDTNewHistoryFragment
        "newHistoryState" -> Right ACWBDTNewHistoryState
        "oldHistoryFragment" -> Right ACWBDTOldHistoryFragment
        "oldHistoryState" -> Right ACWBDTOldHistoryState
        "osVersion" -> Right ACWBDTOSVersion
        "pageHostname" -> Right ACWBDTPageHostname
        "pagePath" -> Right ACWBDTPagePath
        "pageUrl" -> Right ACWBDTPageURL
        "platform" -> Right ACWBDTPlatform
        "randomNumber" -> Right ACWBDTRandomNumber
        "referrer" -> Right ACWBDTReferrer
        "resolution" -> Right ACWBDTResolution
        "scrollDepthDirection" -> Right ACWBDTScrollDepthDirection
        "scrollDepthThreshold" -> Right ACWBDTScrollDepthThreshold
        "scrollDepthUnits" -> Right ACWBDTScrollDepthUnits
        "sdkVersion" -> Right ACWBDTSdkVersion
        "videoCurrentTime" -> Right ACWBDTVideoCurrentTime
        "videoDuration" -> Right ACWBDTVideoDuration
        "videoPercent" -> Right ACWBDTVideoPercent
        "videoProvider" -> Right ACWBDTVideoProvider
        "videoStatus" -> Right ACWBDTVideoStatus
        "videoTitle" -> Right ACWBDTVideoTitle
        "videoUrl" -> Right ACWBDTVideoURL
        "videoVisible" -> Right ACWBDTVideoVisible
        x -> Left ("Unable to parse AccountsContainersWorkspacesBuilt_in_variablesDeleteType from: " <> x)

instance ToHttpApiData AccountsContainersWorkspacesBuilt_in_variablesDeleteType where
    toQueryParam = \case
        ACWBDTAdvertiserId -> "advertiserId"
        ACWBDTAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        ACWBDTAmpBrowserLanguage -> "ampBrowserLanguage"
        ACWBDTAmpCanonicalHost -> "ampCanonicalHost"
        ACWBDTAmpCanonicalPath -> "ampCanonicalPath"
        ACWBDTAmpCanonicalURL -> "ampCanonicalUrl"
        ACWBDTAmpClientId -> "ampClientId"
        ACWBDTAmpClientMaxScrollX -> "ampClientMaxScrollX"
        ACWBDTAmpClientMaxScrollY -> "ampClientMaxScrollY"
        ACWBDTAmpClientScreenHeight -> "ampClientScreenHeight"
        ACWBDTAmpClientScreenWidth -> "ampClientScreenWidth"
        ACWBDTAmpClientScrollX -> "ampClientScrollX"
        ACWBDTAmpClientScrollY -> "ampClientScrollY"
        ACWBDTAmpClientTimestamp -> "ampClientTimestamp"
        ACWBDTAmpClientTimezone -> "ampClientTimezone"
        ACWBDTAmpGtmEvent -> "ampGtmEvent"
        ACWBDTAmpPageDownloadTime -> "ampPageDownloadTime"
        ACWBDTAmpPageLoadTime -> "ampPageLoadTime"
        ACWBDTAmpPageViewId -> "ampPageViewId"
        ACWBDTAmpReferrer -> "ampReferrer"
        ACWBDTAmpTitle -> "ampTitle"
        ACWBDTAmpTotalEngagedTime -> "ampTotalEngagedTime"
        ACWBDTAppId -> "appId"
        ACWBDTAppName -> "appName"
        ACWBDTAppVersionCode -> "appVersionCode"
        ACWBDTAppVersionName -> "appVersionName"
        ACWBDTBuiltInVariableTypeUnspecified -> "builtInVariableTypeUnspecified"
        ACWBDTClickClasses -> "clickClasses"
        ACWBDTClickElement -> "clickElement"
        ACWBDTClickId -> "clickId"
        ACWBDTClickTarget -> "clickTarget"
        ACWBDTClickText -> "clickText"
        ACWBDTClickURL -> "clickUrl"
        ACWBDTContainerId -> "containerId"
        ACWBDTContainerVersion -> "containerVersion"
        ACWBDTDebugMode -> "debugMode"
        ACWBDTDeviceName -> "deviceName"
        ACWBDTElementVisibilityFirstTime -> "elementVisibilityFirstTime"
        ACWBDTElementVisibilityRatio -> "elementVisibilityRatio"
        ACWBDTElementVisibilityRecentTime -> "elementVisibilityRecentTime"
        ACWBDTElementVisibilityTime -> "elementVisibilityTime"
        ACWBDTEnvironmentName -> "environmentName"
        ACWBDTErrorLine -> "errorLine"
        ACWBDTErrorMessage -> "errorMessage"
        ACWBDTErrorURL -> "errorUrl"
        ACWBDTEvent -> "event"
        ACWBDTEventName -> "eventName"
        ACWBDTFirebaseEventParameterCampaign -> "firebaseEventParameterCampaign"
        ACWBDTFirebaseEventParameterCampaignACLid -> "firebaseEventParameterCampaignAclid"
        ACWBDTFirebaseEventParameterCampaignAnid -> "firebaseEventParameterCampaignAnid"
        ACWBDTFirebaseEventParameterCampaignClickTimestamp -> "firebaseEventParameterCampaignClickTimestamp"
        ACWBDTFirebaseEventParameterCampaignContent -> "firebaseEventParameterCampaignContent"
        ACWBDTFIREBASEEVENTPARAMETERCAMPAIGNCP1 -> "firebaseEventParameterCampaignCp1"
        ACWBDTFirebaseEventParameterCampaignGclid -> "firebaseEventParameterCampaignGclid"
        ACWBDTFirebaseEventParameterCampaignSource -> "firebaseEventParameterCampaignSource"
        ACWBDTFirebaseEventParameterCampaignTerm -> "firebaseEventParameterCampaignTerm"
        ACWBDTFirebaseEventParameterCurrency -> "firebaseEventParameterCurrency"
        ACWBDTFirebaseEventParameterDynamicLinkAcceptTime -> "firebaseEventParameterDynamicLinkAcceptTime"
        ACWBDTFirebaseEventParameterDynamicLinkLinkid -> "firebaseEventParameterDynamicLinkLinkid"
        ACWBDTFirebaseEventParameterNotificationMessageDeviceTime -> "firebaseEventParameterNotificationMessageDeviceTime"
        ACWBDTFirebaseEventParameterNotificationMessageId -> "firebaseEventParameterNotificationMessageId"
        ACWBDTFirebaseEventParameterNotificationMessageName -> "firebaseEventParameterNotificationMessageName"
        ACWBDTFirebaseEventParameterNotificationMessageTime -> "firebaseEventParameterNotificationMessageTime"
        ACWBDTFirebaseEventParameterNotificationTopic -> "firebaseEventParameterNotificationTopic"
        ACWBDTFirebaseEventParameterPreviousAppVersion -> "firebaseEventParameterPreviousAppVersion"
        ACWBDTFirebaseEventParameterPreviousOSVersion -> "firebaseEventParameterPreviousOsVersion"
        ACWBDTFirebaseEventParameterPrice -> "firebaseEventParameterPrice"
        ACWBDTFirebaseEventParameterProductId -> "firebaseEventParameterProductId"
        ACWBDTFirebaseEventParameterQuantity -> "firebaseEventParameterQuantity"
        ACWBDTFirebaseEventParameterValue -> "firebaseEventParameterValue"
        ACWBDTFormClasses -> "formClasses"
        ACWBDTFormElement -> "formElement"
        ACWBDTFormId -> "formId"
        ACWBDTFormTarget -> "formTarget"
        ACWBDTFormText -> "formText"
        ACWBDTFormURL -> "formUrl"
        ACWBDTHistorySource -> "historySource"
        ACWBDTHTMLId -> "htmlId"
        ACWBDTLanguage -> "language"
        ACWBDTNewHistoryFragment -> "newHistoryFragment"
        ACWBDTNewHistoryState -> "newHistoryState"
        ACWBDTOldHistoryFragment -> "oldHistoryFragment"
        ACWBDTOldHistoryState -> "oldHistoryState"
        ACWBDTOSVersion -> "osVersion"
        ACWBDTPageHostname -> "pageHostname"
        ACWBDTPagePath -> "pagePath"
        ACWBDTPageURL -> "pageUrl"
        ACWBDTPlatform -> "platform"
        ACWBDTRandomNumber -> "randomNumber"
        ACWBDTReferrer -> "referrer"
        ACWBDTResolution -> "resolution"
        ACWBDTScrollDepthDirection -> "scrollDepthDirection"
        ACWBDTScrollDepthThreshold -> "scrollDepthThreshold"
        ACWBDTScrollDepthUnits -> "scrollDepthUnits"
        ACWBDTSdkVersion -> "sdkVersion"
        ACWBDTVideoCurrentTime -> "videoCurrentTime"
        ACWBDTVideoDuration -> "videoDuration"
        ACWBDTVideoPercent -> "videoPercent"
        ACWBDTVideoProvider -> "videoProvider"
        ACWBDTVideoStatus -> "videoStatus"
        ACWBDTVideoTitle -> "videoTitle"
        ACWBDTVideoURL -> "videoUrl"
        ACWBDTVideoVisible -> "videoVisible"

instance FromJSON AccountsContainersWorkspacesBuilt_in_variablesDeleteType where
    parseJSON = parseJSONText "AccountsContainersWorkspacesBuilt_in_variablesDeleteType"

instance ToJSON AccountsContainersWorkspacesBuilt_in_variablesDeleteType where
    toJSON = toJSONText

-- | Defines the data layer event that causes this trigger.
data TriggerType
    = Always
      -- ^ @always@
    | AmpClick
      -- ^ @ampClick@
    | AmpScroll
      -- ^ @ampScroll@
    | AmpTimer
      -- ^ @ampTimer@
    | AmpVisibility
      -- ^ @ampVisibility@
    | Click
      -- ^ @click@
    | CustomEvent
      -- ^ @customEvent@
    | DomReady
      -- ^ @domReady@
    | ElementVisibility
      -- ^ @elementVisibility@
    | EventTypeUnspecified
      -- ^ @eventTypeUnspecified@
    | FirebaseAppException
      -- ^ @firebaseAppException@
    | FirebaseAppUpdate
      -- ^ @firebaseAppUpdate@
    | FirebaseCampaign
      -- ^ @firebaseCampaign@
    | FirebaseFirstOpen
      -- ^ @firebaseFirstOpen@
    | FirebaseInAppPurchase
      -- ^ @firebaseInAppPurchase@
    | FirebaseNotificationDismiss
      -- ^ @firebaseNotificationDismiss@
    | FirebaseNotificationForegRound
      -- ^ @firebaseNotificationForeground@
    | FirebaseNotificationOpen
      -- ^ @firebaseNotificationOpen@
    | FirebaseNotificationReceive
      -- ^ @firebaseNotificationReceive@
    | FirebaseOSUpdate
      -- ^ @firebaseOsUpdate@
    | FirebaseSessionStart
      -- ^ @firebaseSessionStart@
    | FirebaseUserEngagement
      -- ^ @firebaseUserEngagement@
    | FormSubmission
      -- ^ @formSubmission@
    | HistoryChange
      -- ^ @historyChange@
    | JsError
      -- ^ @jsError@
    | LinkClick
      -- ^ @linkClick@
    | Pageview
      -- ^ @pageview@
    | ScrollDepth
      -- ^ @scrollDepth@
    | Timer
      -- ^ @timer@
    | WindowLoaded
      -- ^ @windowLoaded@
    | YouTubeVideo
      -- ^ @youTubeVideo@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TriggerType

instance FromHttpApiData TriggerType where
    parseQueryParam = \case
        "always" -> Right Always
        "ampClick" -> Right AmpClick
        "ampScroll" -> Right AmpScroll
        "ampTimer" -> Right AmpTimer
        "ampVisibility" -> Right AmpVisibility
        "click" -> Right Click
        "customEvent" -> Right CustomEvent
        "domReady" -> Right DomReady
        "elementVisibility" -> Right ElementVisibility
        "eventTypeUnspecified" -> Right EventTypeUnspecified
        "firebaseAppException" -> Right FirebaseAppException
        "firebaseAppUpdate" -> Right FirebaseAppUpdate
        "firebaseCampaign" -> Right FirebaseCampaign
        "firebaseFirstOpen" -> Right FirebaseFirstOpen
        "firebaseInAppPurchase" -> Right FirebaseInAppPurchase
        "firebaseNotificationDismiss" -> Right FirebaseNotificationDismiss
        "firebaseNotificationForeground" -> Right FirebaseNotificationForegRound
        "firebaseNotificationOpen" -> Right FirebaseNotificationOpen
        "firebaseNotificationReceive" -> Right FirebaseNotificationReceive
        "firebaseOsUpdate" -> Right FirebaseOSUpdate
        "firebaseSessionStart" -> Right FirebaseSessionStart
        "firebaseUserEngagement" -> Right FirebaseUserEngagement
        "formSubmission" -> Right FormSubmission
        "historyChange" -> Right HistoryChange
        "jsError" -> Right JsError
        "linkClick" -> Right LinkClick
        "pageview" -> Right Pageview
        "scrollDepth" -> Right ScrollDepth
        "timer" -> Right Timer
        "windowLoaded" -> Right WindowLoaded
        "youTubeVideo" -> Right YouTubeVideo
        x -> Left ("Unable to parse TriggerType from: " <> x)

instance ToHttpApiData TriggerType where
    toQueryParam = \case
        Always -> "always"
        AmpClick -> "ampClick"
        AmpScroll -> "ampScroll"
        AmpTimer -> "ampTimer"
        AmpVisibility -> "ampVisibility"
        Click -> "click"
        CustomEvent -> "customEvent"
        DomReady -> "domReady"
        ElementVisibility -> "elementVisibility"
        EventTypeUnspecified -> "eventTypeUnspecified"
        FirebaseAppException -> "firebaseAppException"
        FirebaseAppUpdate -> "firebaseAppUpdate"
        FirebaseCampaign -> "firebaseCampaign"
        FirebaseFirstOpen -> "firebaseFirstOpen"
        FirebaseInAppPurchase -> "firebaseInAppPurchase"
        FirebaseNotificationDismiss -> "firebaseNotificationDismiss"
        FirebaseNotificationForegRound -> "firebaseNotificationForeground"
        FirebaseNotificationOpen -> "firebaseNotificationOpen"
        FirebaseNotificationReceive -> "firebaseNotificationReceive"
        FirebaseOSUpdate -> "firebaseOsUpdate"
        FirebaseSessionStart -> "firebaseSessionStart"
        FirebaseUserEngagement -> "firebaseUserEngagement"
        FormSubmission -> "formSubmission"
        HistoryChange -> "historyChange"
        JsError -> "jsError"
        LinkClick -> "linkClick"
        Pageview -> "pageview"
        ScrollDepth -> "scrollDepth"
        Timer -> "timer"
        WindowLoaded -> "windowLoaded"
        YouTubeVideo -> "youTubeVideo"

instance FromJSON TriggerType where
    parseJSON = parseJSONText "TriggerType"

instance ToJSON TriggerType where
    toJSON = toJSONText

-- | List of Container permissions.
data ContainerAccessPermission
    = Approve
      -- ^ @approve@
    | ContainerPermissionUnspecified
      -- ^ @containerPermissionUnspecified@
    | Edit
      -- ^ @edit@
    | NoAccess
      -- ^ @noAccess@
    | Publish
      -- ^ @publish@
    | Read'
      -- ^ @read@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContainerAccessPermission

instance FromHttpApiData ContainerAccessPermission where
    parseQueryParam = \case
        "approve" -> Right Approve
        "containerPermissionUnspecified" -> Right ContainerPermissionUnspecified
        "edit" -> Right Edit
        "noAccess" -> Right NoAccess
        "publish" -> Right Publish
        "read" -> Right Read'
        x -> Left ("Unable to parse ContainerAccessPermission from: " <> x)

instance ToHttpApiData ContainerAccessPermission where
    toQueryParam = \case
        Approve -> "approve"
        ContainerPermissionUnspecified -> "containerPermissionUnspecified"
        Edit -> "edit"
        NoAccess -> "noAccess"
        Publish -> "publish"
        Read' -> "read"

instance FromJSON ContainerAccessPermission where
    parseJSON = parseJSONText "ContainerAccessPermission"

instance ToJSON ContainerAccessPermission where
    toJSON = toJSONText

data ContainerUsageContextItem
    = Amp
      -- ^ @amp@
    | Android
      -- ^ @android@
    | ANDROIdSDK5
      -- ^ @androidSdk5@
    | Ios
      -- ^ @ios@
    | IOSSDK5
      -- ^ @iosSdk5@
    | UsageContextUnspecified
      -- ^ @usageContextUnspecified@
    | Web
      -- ^ @web@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContainerUsageContextItem

instance FromHttpApiData ContainerUsageContextItem where
    parseQueryParam = \case
        "amp" -> Right Amp
        "android" -> Right Android
        "androidSdk5" -> Right ANDROIdSDK5
        "ios" -> Right Ios
        "iosSdk5" -> Right IOSSDK5
        "usageContextUnspecified" -> Right UsageContextUnspecified
        "web" -> Right Web
        x -> Left ("Unable to parse ContainerUsageContextItem from: " <> x)

instance ToHttpApiData ContainerUsageContextItem where
    toQueryParam = \case
        Amp -> "amp"
        Android -> "android"
        ANDROIdSDK5 -> "androidSdk5"
        Ios -> "ios"
        IOSSDK5 -> "iosSdk5"
        UsageContextUnspecified -> "usageContextUnspecified"
        Web -> "web"

instance FromJSON ContainerUsageContextItem where
    parseJSON = parseJSONText "ContainerUsageContextItem"

instance ToJSON ContainerUsageContextItem where
    toJSON = toJSONText

-- | The types of built-in variables to enable.
data AccountsContainersWorkspacesBuilt_in_variablesCreateType
    = ACWBCTAdvertiserId
      -- ^ @advertiserId@
    | ACWBCTAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | ACWBCTAmpBrowserLanguage
      -- ^ @ampBrowserLanguage@
    | ACWBCTAmpCanonicalHost
      -- ^ @ampCanonicalHost@
    | ACWBCTAmpCanonicalPath
      -- ^ @ampCanonicalPath@
    | ACWBCTAmpCanonicalURL
      -- ^ @ampCanonicalUrl@
    | ACWBCTAmpClientId
      -- ^ @ampClientId@
    | ACWBCTAmpClientMaxScrollX
      -- ^ @ampClientMaxScrollX@
    | ACWBCTAmpClientMaxScrollY
      -- ^ @ampClientMaxScrollY@
    | ACWBCTAmpClientScreenHeight
      -- ^ @ampClientScreenHeight@
    | ACWBCTAmpClientScreenWidth
      -- ^ @ampClientScreenWidth@
    | ACWBCTAmpClientScrollX
      -- ^ @ampClientScrollX@
    | ACWBCTAmpClientScrollY
      -- ^ @ampClientScrollY@
    | ACWBCTAmpClientTimestamp
      -- ^ @ampClientTimestamp@
    | ACWBCTAmpClientTimezone
      -- ^ @ampClientTimezone@
    | ACWBCTAmpGtmEvent
      -- ^ @ampGtmEvent@
    | ACWBCTAmpPageDownloadTime
      -- ^ @ampPageDownloadTime@
    | ACWBCTAmpPageLoadTime
      -- ^ @ampPageLoadTime@
    | ACWBCTAmpPageViewId
      -- ^ @ampPageViewId@
    | ACWBCTAmpReferrer
      -- ^ @ampReferrer@
    | ACWBCTAmpTitle
      -- ^ @ampTitle@
    | ACWBCTAmpTotalEngagedTime
      -- ^ @ampTotalEngagedTime@
    | ACWBCTAppId
      -- ^ @appId@
    | ACWBCTAppName
      -- ^ @appName@
    | ACWBCTAppVersionCode
      -- ^ @appVersionCode@
    | ACWBCTAppVersionName
      -- ^ @appVersionName@
    | ACWBCTBuiltInVariableTypeUnspecified
      -- ^ @builtInVariableTypeUnspecified@
    | ACWBCTClickClasses
      -- ^ @clickClasses@
    | ACWBCTClickElement
      -- ^ @clickElement@
    | ACWBCTClickId
      -- ^ @clickId@
    | ACWBCTClickTarget
      -- ^ @clickTarget@
    | ACWBCTClickText
      -- ^ @clickText@
    | ACWBCTClickURL
      -- ^ @clickUrl@
    | ACWBCTContainerId
      -- ^ @containerId@
    | ACWBCTContainerVersion
      -- ^ @containerVersion@
    | ACWBCTDebugMode
      -- ^ @debugMode@
    | ACWBCTDeviceName
      -- ^ @deviceName@
    | ACWBCTElementVisibilityFirstTime
      -- ^ @elementVisibilityFirstTime@
    | ACWBCTElementVisibilityRatio
      -- ^ @elementVisibilityRatio@
    | ACWBCTElementVisibilityRecentTime
      -- ^ @elementVisibilityRecentTime@
    | ACWBCTElementVisibilityTime
      -- ^ @elementVisibilityTime@
    | ACWBCTEnvironmentName
      -- ^ @environmentName@
    | ACWBCTErrorLine
      -- ^ @errorLine@
    | ACWBCTErrorMessage
      -- ^ @errorMessage@
    | ACWBCTErrorURL
      -- ^ @errorUrl@
    | ACWBCTEvent
      -- ^ @event@
    | ACWBCTEventName
      -- ^ @eventName@
    | ACWBCTFirebaseEventParameterCampaign
      -- ^ @firebaseEventParameterCampaign@
    | ACWBCTFirebaseEventParameterCampaignACLid
      -- ^ @firebaseEventParameterCampaignAclid@
    | ACWBCTFirebaseEventParameterCampaignAnid
      -- ^ @firebaseEventParameterCampaignAnid@
    | ACWBCTFirebaseEventParameterCampaignClickTimestamp
      -- ^ @firebaseEventParameterCampaignClickTimestamp@
    | ACWBCTFirebaseEventParameterCampaignContent
      -- ^ @firebaseEventParameterCampaignContent@
    | ACWBCTFIREBASEEVENTPARAMETERCAMPAIGNCP1
      -- ^ @firebaseEventParameterCampaignCp1@
    | ACWBCTFirebaseEventParameterCampaignGclid
      -- ^ @firebaseEventParameterCampaignGclid@
    | ACWBCTFirebaseEventParameterCampaignSource
      -- ^ @firebaseEventParameterCampaignSource@
    | ACWBCTFirebaseEventParameterCampaignTerm
      -- ^ @firebaseEventParameterCampaignTerm@
    | ACWBCTFirebaseEventParameterCurrency
      -- ^ @firebaseEventParameterCurrency@
    | ACWBCTFirebaseEventParameterDynamicLinkAcceptTime
      -- ^ @firebaseEventParameterDynamicLinkAcceptTime@
    | ACWBCTFirebaseEventParameterDynamicLinkLinkid
      -- ^ @firebaseEventParameterDynamicLinkLinkid@
    | ACWBCTFirebaseEventParameterNotificationMessageDeviceTime
      -- ^ @firebaseEventParameterNotificationMessageDeviceTime@
    | ACWBCTFirebaseEventParameterNotificationMessageId
      -- ^ @firebaseEventParameterNotificationMessageId@
    | ACWBCTFirebaseEventParameterNotificationMessageName
      -- ^ @firebaseEventParameterNotificationMessageName@
    | ACWBCTFirebaseEventParameterNotificationMessageTime
      -- ^ @firebaseEventParameterNotificationMessageTime@
    | ACWBCTFirebaseEventParameterNotificationTopic
      -- ^ @firebaseEventParameterNotificationTopic@
    | ACWBCTFirebaseEventParameterPreviousAppVersion
      -- ^ @firebaseEventParameterPreviousAppVersion@
    | ACWBCTFirebaseEventParameterPreviousOSVersion
      -- ^ @firebaseEventParameterPreviousOsVersion@
    | ACWBCTFirebaseEventParameterPrice
      -- ^ @firebaseEventParameterPrice@
    | ACWBCTFirebaseEventParameterProductId
      -- ^ @firebaseEventParameterProductId@
    | ACWBCTFirebaseEventParameterQuantity
      -- ^ @firebaseEventParameterQuantity@
    | ACWBCTFirebaseEventParameterValue
      -- ^ @firebaseEventParameterValue@
    | ACWBCTFormClasses
      -- ^ @formClasses@
    | ACWBCTFormElement
      -- ^ @formElement@
    | ACWBCTFormId
      -- ^ @formId@
    | ACWBCTFormTarget
      -- ^ @formTarget@
    | ACWBCTFormText
      -- ^ @formText@
    | ACWBCTFormURL
      -- ^ @formUrl@
    | ACWBCTHistorySource
      -- ^ @historySource@
    | ACWBCTHTMLId
      -- ^ @htmlId@
    | ACWBCTLanguage
      -- ^ @language@
    | ACWBCTNewHistoryFragment
      -- ^ @newHistoryFragment@
    | ACWBCTNewHistoryState
      -- ^ @newHistoryState@
    | ACWBCTOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | ACWBCTOldHistoryState
      -- ^ @oldHistoryState@
    | ACWBCTOSVersion
      -- ^ @osVersion@
    | ACWBCTPageHostname
      -- ^ @pageHostname@
    | ACWBCTPagePath
      -- ^ @pagePath@
    | ACWBCTPageURL
      -- ^ @pageUrl@
    | ACWBCTPlatform
      -- ^ @platform@
    | ACWBCTRandomNumber
      -- ^ @randomNumber@
    | ACWBCTReferrer
      -- ^ @referrer@
    | ACWBCTResolution
      -- ^ @resolution@
    | ACWBCTScrollDepthDirection
      -- ^ @scrollDepthDirection@
    | ACWBCTScrollDepthThreshold
      -- ^ @scrollDepthThreshold@
    | ACWBCTScrollDepthUnits
      -- ^ @scrollDepthUnits@
    | ACWBCTSdkVersion
      -- ^ @sdkVersion@
    | ACWBCTVideoCurrentTime
      -- ^ @videoCurrentTime@
    | ACWBCTVideoDuration
      -- ^ @videoDuration@
    | ACWBCTVideoPercent
      -- ^ @videoPercent@
    | ACWBCTVideoProvider
      -- ^ @videoProvider@
    | ACWBCTVideoStatus
      -- ^ @videoStatus@
    | ACWBCTVideoTitle
      -- ^ @videoTitle@
    | ACWBCTVideoURL
      -- ^ @videoUrl@
    | ACWBCTVideoVisible
      -- ^ @videoVisible@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsContainersWorkspacesBuilt_in_variablesCreateType

instance FromHttpApiData AccountsContainersWorkspacesBuilt_in_variablesCreateType where
    parseQueryParam = \case
        "advertiserId" -> Right ACWBCTAdvertiserId
        "advertisingTrackingEnabled" -> Right ACWBCTAdvertisingTrackingEnabled
        "ampBrowserLanguage" -> Right ACWBCTAmpBrowserLanguage
        "ampCanonicalHost" -> Right ACWBCTAmpCanonicalHost
        "ampCanonicalPath" -> Right ACWBCTAmpCanonicalPath
        "ampCanonicalUrl" -> Right ACWBCTAmpCanonicalURL
        "ampClientId" -> Right ACWBCTAmpClientId
        "ampClientMaxScrollX" -> Right ACWBCTAmpClientMaxScrollX
        "ampClientMaxScrollY" -> Right ACWBCTAmpClientMaxScrollY
        "ampClientScreenHeight" -> Right ACWBCTAmpClientScreenHeight
        "ampClientScreenWidth" -> Right ACWBCTAmpClientScreenWidth
        "ampClientScrollX" -> Right ACWBCTAmpClientScrollX
        "ampClientScrollY" -> Right ACWBCTAmpClientScrollY
        "ampClientTimestamp" -> Right ACWBCTAmpClientTimestamp
        "ampClientTimezone" -> Right ACWBCTAmpClientTimezone
        "ampGtmEvent" -> Right ACWBCTAmpGtmEvent
        "ampPageDownloadTime" -> Right ACWBCTAmpPageDownloadTime
        "ampPageLoadTime" -> Right ACWBCTAmpPageLoadTime
        "ampPageViewId" -> Right ACWBCTAmpPageViewId
        "ampReferrer" -> Right ACWBCTAmpReferrer
        "ampTitle" -> Right ACWBCTAmpTitle
        "ampTotalEngagedTime" -> Right ACWBCTAmpTotalEngagedTime
        "appId" -> Right ACWBCTAppId
        "appName" -> Right ACWBCTAppName
        "appVersionCode" -> Right ACWBCTAppVersionCode
        "appVersionName" -> Right ACWBCTAppVersionName
        "builtInVariableTypeUnspecified" -> Right ACWBCTBuiltInVariableTypeUnspecified
        "clickClasses" -> Right ACWBCTClickClasses
        "clickElement" -> Right ACWBCTClickElement
        "clickId" -> Right ACWBCTClickId
        "clickTarget" -> Right ACWBCTClickTarget
        "clickText" -> Right ACWBCTClickText
        "clickUrl" -> Right ACWBCTClickURL
        "containerId" -> Right ACWBCTContainerId
        "containerVersion" -> Right ACWBCTContainerVersion
        "debugMode" -> Right ACWBCTDebugMode
        "deviceName" -> Right ACWBCTDeviceName
        "elementVisibilityFirstTime" -> Right ACWBCTElementVisibilityFirstTime
        "elementVisibilityRatio" -> Right ACWBCTElementVisibilityRatio
        "elementVisibilityRecentTime" -> Right ACWBCTElementVisibilityRecentTime
        "elementVisibilityTime" -> Right ACWBCTElementVisibilityTime
        "environmentName" -> Right ACWBCTEnvironmentName
        "errorLine" -> Right ACWBCTErrorLine
        "errorMessage" -> Right ACWBCTErrorMessage
        "errorUrl" -> Right ACWBCTErrorURL
        "event" -> Right ACWBCTEvent
        "eventName" -> Right ACWBCTEventName
        "firebaseEventParameterCampaign" -> Right ACWBCTFirebaseEventParameterCampaign
        "firebaseEventParameterCampaignAclid" -> Right ACWBCTFirebaseEventParameterCampaignACLid
        "firebaseEventParameterCampaignAnid" -> Right ACWBCTFirebaseEventParameterCampaignAnid
        "firebaseEventParameterCampaignClickTimestamp" -> Right ACWBCTFirebaseEventParameterCampaignClickTimestamp
        "firebaseEventParameterCampaignContent" -> Right ACWBCTFirebaseEventParameterCampaignContent
        "firebaseEventParameterCampaignCp1" -> Right ACWBCTFIREBASEEVENTPARAMETERCAMPAIGNCP1
        "firebaseEventParameterCampaignGclid" -> Right ACWBCTFirebaseEventParameterCampaignGclid
        "firebaseEventParameterCampaignSource" -> Right ACWBCTFirebaseEventParameterCampaignSource
        "firebaseEventParameterCampaignTerm" -> Right ACWBCTFirebaseEventParameterCampaignTerm
        "firebaseEventParameterCurrency" -> Right ACWBCTFirebaseEventParameterCurrency
        "firebaseEventParameterDynamicLinkAcceptTime" -> Right ACWBCTFirebaseEventParameterDynamicLinkAcceptTime
        "firebaseEventParameterDynamicLinkLinkid" -> Right ACWBCTFirebaseEventParameterDynamicLinkLinkid
        "firebaseEventParameterNotificationMessageDeviceTime" -> Right ACWBCTFirebaseEventParameterNotificationMessageDeviceTime
        "firebaseEventParameterNotificationMessageId" -> Right ACWBCTFirebaseEventParameterNotificationMessageId
        "firebaseEventParameterNotificationMessageName" -> Right ACWBCTFirebaseEventParameterNotificationMessageName
        "firebaseEventParameterNotificationMessageTime" -> Right ACWBCTFirebaseEventParameterNotificationMessageTime
        "firebaseEventParameterNotificationTopic" -> Right ACWBCTFirebaseEventParameterNotificationTopic
        "firebaseEventParameterPreviousAppVersion" -> Right ACWBCTFirebaseEventParameterPreviousAppVersion
        "firebaseEventParameterPreviousOsVersion" -> Right ACWBCTFirebaseEventParameterPreviousOSVersion
        "firebaseEventParameterPrice" -> Right ACWBCTFirebaseEventParameterPrice
        "firebaseEventParameterProductId" -> Right ACWBCTFirebaseEventParameterProductId
        "firebaseEventParameterQuantity" -> Right ACWBCTFirebaseEventParameterQuantity
        "firebaseEventParameterValue" -> Right ACWBCTFirebaseEventParameterValue
        "formClasses" -> Right ACWBCTFormClasses
        "formElement" -> Right ACWBCTFormElement
        "formId" -> Right ACWBCTFormId
        "formTarget" -> Right ACWBCTFormTarget
        "formText" -> Right ACWBCTFormText
        "formUrl" -> Right ACWBCTFormURL
        "historySource" -> Right ACWBCTHistorySource
        "htmlId" -> Right ACWBCTHTMLId
        "language" -> Right ACWBCTLanguage
        "newHistoryFragment" -> Right ACWBCTNewHistoryFragment
        "newHistoryState" -> Right ACWBCTNewHistoryState
        "oldHistoryFragment" -> Right ACWBCTOldHistoryFragment
        "oldHistoryState" -> Right ACWBCTOldHistoryState
        "osVersion" -> Right ACWBCTOSVersion
        "pageHostname" -> Right ACWBCTPageHostname
        "pagePath" -> Right ACWBCTPagePath
        "pageUrl" -> Right ACWBCTPageURL
        "platform" -> Right ACWBCTPlatform
        "randomNumber" -> Right ACWBCTRandomNumber
        "referrer" -> Right ACWBCTReferrer
        "resolution" -> Right ACWBCTResolution
        "scrollDepthDirection" -> Right ACWBCTScrollDepthDirection
        "scrollDepthThreshold" -> Right ACWBCTScrollDepthThreshold
        "scrollDepthUnits" -> Right ACWBCTScrollDepthUnits
        "sdkVersion" -> Right ACWBCTSdkVersion
        "videoCurrentTime" -> Right ACWBCTVideoCurrentTime
        "videoDuration" -> Right ACWBCTVideoDuration
        "videoPercent" -> Right ACWBCTVideoPercent
        "videoProvider" -> Right ACWBCTVideoProvider
        "videoStatus" -> Right ACWBCTVideoStatus
        "videoTitle" -> Right ACWBCTVideoTitle
        "videoUrl" -> Right ACWBCTVideoURL
        "videoVisible" -> Right ACWBCTVideoVisible
        x -> Left ("Unable to parse AccountsContainersWorkspacesBuilt_in_variablesCreateType from: " <> x)

instance ToHttpApiData AccountsContainersWorkspacesBuilt_in_variablesCreateType where
    toQueryParam = \case
        ACWBCTAdvertiserId -> "advertiserId"
        ACWBCTAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        ACWBCTAmpBrowserLanguage -> "ampBrowserLanguage"
        ACWBCTAmpCanonicalHost -> "ampCanonicalHost"
        ACWBCTAmpCanonicalPath -> "ampCanonicalPath"
        ACWBCTAmpCanonicalURL -> "ampCanonicalUrl"
        ACWBCTAmpClientId -> "ampClientId"
        ACWBCTAmpClientMaxScrollX -> "ampClientMaxScrollX"
        ACWBCTAmpClientMaxScrollY -> "ampClientMaxScrollY"
        ACWBCTAmpClientScreenHeight -> "ampClientScreenHeight"
        ACWBCTAmpClientScreenWidth -> "ampClientScreenWidth"
        ACWBCTAmpClientScrollX -> "ampClientScrollX"
        ACWBCTAmpClientScrollY -> "ampClientScrollY"
        ACWBCTAmpClientTimestamp -> "ampClientTimestamp"
        ACWBCTAmpClientTimezone -> "ampClientTimezone"
        ACWBCTAmpGtmEvent -> "ampGtmEvent"
        ACWBCTAmpPageDownloadTime -> "ampPageDownloadTime"
        ACWBCTAmpPageLoadTime -> "ampPageLoadTime"
        ACWBCTAmpPageViewId -> "ampPageViewId"
        ACWBCTAmpReferrer -> "ampReferrer"
        ACWBCTAmpTitle -> "ampTitle"
        ACWBCTAmpTotalEngagedTime -> "ampTotalEngagedTime"
        ACWBCTAppId -> "appId"
        ACWBCTAppName -> "appName"
        ACWBCTAppVersionCode -> "appVersionCode"
        ACWBCTAppVersionName -> "appVersionName"
        ACWBCTBuiltInVariableTypeUnspecified -> "builtInVariableTypeUnspecified"
        ACWBCTClickClasses -> "clickClasses"
        ACWBCTClickElement -> "clickElement"
        ACWBCTClickId -> "clickId"
        ACWBCTClickTarget -> "clickTarget"
        ACWBCTClickText -> "clickText"
        ACWBCTClickURL -> "clickUrl"
        ACWBCTContainerId -> "containerId"
        ACWBCTContainerVersion -> "containerVersion"
        ACWBCTDebugMode -> "debugMode"
        ACWBCTDeviceName -> "deviceName"
        ACWBCTElementVisibilityFirstTime -> "elementVisibilityFirstTime"
        ACWBCTElementVisibilityRatio -> "elementVisibilityRatio"
        ACWBCTElementVisibilityRecentTime -> "elementVisibilityRecentTime"
        ACWBCTElementVisibilityTime -> "elementVisibilityTime"
        ACWBCTEnvironmentName -> "environmentName"
        ACWBCTErrorLine -> "errorLine"
        ACWBCTErrorMessage -> "errorMessage"
        ACWBCTErrorURL -> "errorUrl"
        ACWBCTEvent -> "event"
        ACWBCTEventName -> "eventName"
        ACWBCTFirebaseEventParameterCampaign -> "firebaseEventParameterCampaign"
        ACWBCTFirebaseEventParameterCampaignACLid -> "firebaseEventParameterCampaignAclid"
        ACWBCTFirebaseEventParameterCampaignAnid -> "firebaseEventParameterCampaignAnid"
        ACWBCTFirebaseEventParameterCampaignClickTimestamp -> "firebaseEventParameterCampaignClickTimestamp"
        ACWBCTFirebaseEventParameterCampaignContent -> "firebaseEventParameterCampaignContent"
        ACWBCTFIREBASEEVENTPARAMETERCAMPAIGNCP1 -> "firebaseEventParameterCampaignCp1"
        ACWBCTFirebaseEventParameterCampaignGclid -> "firebaseEventParameterCampaignGclid"
        ACWBCTFirebaseEventParameterCampaignSource -> "firebaseEventParameterCampaignSource"
        ACWBCTFirebaseEventParameterCampaignTerm -> "firebaseEventParameterCampaignTerm"
        ACWBCTFirebaseEventParameterCurrency -> "firebaseEventParameterCurrency"
        ACWBCTFirebaseEventParameterDynamicLinkAcceptTime -> "firebaseEventParameterDynamicLinkAcceptTime"
        ACWBCTFirebaseEventParameterDynamicLinkLinkid -> "firebaseEventParameterDynamicLinkLinkid"
        ACWBCTFirebaseEventParameterNotificationMessageDeviceTime -> "firebaseEventParameterNotificationMessageDeviceTime"
        ACWBCTFirebaseEventParameterNotificationMessageId -> "firebaseEventParameterNotificationMessageId"
        ACWBCTFirebaseEventParameterNotificationMessageName -> "firebaseEventParameterNotificationMessageName"
        ACWBCTFirebaseEventParameterNotificationMessageTime -> "firebaseEventParameterNotificationMessageTime"
        ACWBCTFirebaseEventParameterNotificationTopic -> "firebaseEventParameterNotificationTopic"
        ACWBCTFirebaseEventParameterPreviousAppVersion -> "firebaseEventParameterPreviousAppVersion"
        ACWBCTFirebaseEventParameterPreviousOSVersion -> "firebaseEventParameterPreviousOsVersion"
        ACWBCTFirebaseEventParameterPrice -> "firebaseEventParameterPrice"
        ACWBCTFirebaseEventParameterProductId -> "firebaseEventParameterProductId"
        ACWBCTFirebaseEventParameterQuantity -> "firebaseEventParameterQuantity"
        ACWBCTFirebaseEventParameterValue -> "firebaseEventParameterValue"
        ACWBCTFormClasses -> "formClasses"
        ACWBCTFormElement -> "formElement"
        ACWBCTFormId -> "formId"
        ACWBCTFormTarget -> "formTarget"
        ACWBCTFormText -> "formText"
        ACWBCTFormURL -> "formUrl"
        ACWBCTHistorySource -> "historySource"
        ACWBCTHTMLId -> "htmlId"
        ACWBCTLanguage -> "language"
        ACWBCTNewHistoryFragment -> "newHistoryFragment"
        ACWBCTNewHistoryState -> "newHistoryState"
        ACWBCTOldHistoryFragment -> "oldHistoryFragment"
        ACWBCTOldHistoryState -> "oldHistoryState"
        ACWBCTOSVersion -> "osVersion"
        ACWBCTPageHostname -> "pageHostname"
        ACWBCTPagePath -> "pagePath"
        ACWBCTPageURL -> "pageUrl"
        ACWBCTPlatform -> "platform"
        ACWBCTRandomNumber -> "randomNumber"
        ACWBCTReferrer -> "referrer"
        ACWBCTResolution -> "resolution"
        ACWBCTScrollDepthDirection -> "scrollDepthDirection"
        ACWBCTScrollDepthThreshold -> "scrollDepthThreshold"
        ACWBCTScrollDepthUnits -> "scrollDepthUnits"
        ACWBCTSdkVersion -> "sdkVersion"
        ACWBCTVideoCurrentTime -> "videoCurrentTime"
        ACWBCTVideoDuration -> "videoDuration"
        ACWBCTVideoPercent -> "videoPercent"
        ACWBCTVideoProvider -> "videoProvider"
        ACWBCTVideoStatus -> "videoStatus"
        ACWBCTVideoTitle -> "videoTitle"
        ACWBCTVideoURL -> "videoUrl"
        ACWBCTVideoVisible -> "videoVisible"

instance FromJSON AccountsContainersWorkspacesBuilt_in_variablesCreateType where
    parseJSON = parseJSONText "AccountsContainersWorkspacesBuilt_in_variablesCreateType"

instance ToJSON AccountsContainersWorkspacesBuilt_in_variablesCreateType where
    toJSON = toJSONText

-- | The type of operator for this condition.
data ConditionType
    = ConditionTypeUnspecified
      -- ^ @conditionTypeUnspecified@
    | Contains
      -- ^ @contains@
    | CssSelector
      -- ^ @cssSelector@
    | EndsWith
      -- ^ @endsWith@
    | Equals
      -- ^ @equals@
    | Greater
      -- ^ @greater@
    | GreaterOrEquals
      -- ^ @greaterOrEquals@
    | Less
      -- ^ @less@
    | LessOrEquals
      -- ^ @lessOrEquals@
    | MatchRegex
      -- ^ @matchRegex@
    | StartsWith
      -- ^ @startsWith@
    | URLMatches
      -- ^ @urlMatches@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionType

instance FromHttpApiData ConditionType where
    parseQueryParam = \case
        "conditionTypeUnspecified" -> Right ConditionTypeUnspecified
        "contains" -> Right Contains
        "cssSelector" -> Right CssSelector
        "endsWith" -> Right EndsWith
        "equals" -> Right Equals
        "greater" -> Right Greater
        "greaterOrEquals" -> Right GreaterOrEquals
        "less" -> Right Less
        "lessOrEquals" -> Right LessOrEquals
        "matchRegex" -> Right MatchRegex
        "startsWith" -> Right StartsWith
        "urlMatches" -> Right URLMatches
        x -> Left ("Unable to parse ConditionType from: " <> x)

instance ToHttpApiData ConditionType where
    toQueryParam = \case
        ConditionTypeUnspecified -> "conditionTypeUnspecified"
        Contains -> "contains"
        CssSelector -> "cssSelector"
        EndsWith -> "endsWith"
        Equals -> "equals"
        Greater -> "greater"
        GreaterOrEquals -> "greaterOrEquals"
        Less -> "less"
        LessOrEquals -> "lessOrEquals"
        MatchRegex -> "matchRegex"
        StartsWith -> "startsWith"
        URLMatches -> "urlMatches"

instance FromJSON ConditionType where
    parseJSON = parseJSONText "ConditionType"

instance ToJSON ConditionType where
    toJSON = toJSONText

-- | Option to fire this tag.
data TagTagFiringOption
    = OncePerEvent
      -- ^ @oncePerEvent@
    | OncePerLoad
      -- ^ @oncePerLoad@
    | TagFiringOptionUnspecified
      -- ^ @tagFiringOptionUnspecified@
    | Unlimited
      -- ^ @unlimited@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TagTagFiringOption

instance FromHttpApiData TagTagFiringOption where
    parseQueryParam = \case
        "oncePerEvent" -> Right OncePerEvent
        "oncePerLoad" -> Right OncePerLoad
        "tagFiringOptionUnspecified" -> Right TagFiringOptionUnspecified
        "unlimited" -> Right Unlimited
        x -> Left ("Unable to parse TagTagFiringOption from: " <> x)

instance ToHttpApiData TagTagFiringOption where
    toQueryParam = \case
        OncePerEvent -> "oncePerEvent"
        OncePerLoad -> "oncePerLoad"
        TagFiringOptionUnspecified -> "tagFiringOptionUnspecified"
        Unlimited -> "unlimited"

instance FromJSON TagTagFiringOption where
    parseJSON = parseJSONText "TagTagFiringOption"

instance ToJSON TagTagFiringOption where
    toJSON = toJSONText

-- | Whether the user has no access, user access, or admin access to an
-- account.
data AccountAccessPermission
    = AAPAccountPermissionUnspecified
      -- ^ @accountPermissionUnspecified@
    | AAPAdmin
      -- ^ @admin@
    | AAPNoAccess
      -- ^ @noAccess@
    | AAPUser
      -- ^ @user@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountAccessPermission

instance FromHttpApiData AccountAccessPermission where
    parseQueryParam = \case
        "accountPermissionUnspecified" -> Right AAPAccountPermissionUnspecified
        "admin" -> Right AAPAdmin
        "noAccess" -> Right AAPNoAccess
        "user" -> Right AAPUser
        x -> Left ("Unable to parse AccountAccessPermission from: " <> x)

instance ToHttpApiData AccountAccessPermission where
    toQueryParam = \case
        AAPAccountPermissionUnspecified -> "accountPermissionUnspecified"
        AAPAdmin -> "admin"
        AAPNoAccess -> "noAccess"
        AAPUser -> "user"

instance FromJSON AccountAccessPermission where
    parseJSON = parseJSONText "AccountAccessPermission"

instance ToJSON AccountAccessPermission where
    toJSON = toJSONText

-- | The parameter type. Valid values are: - boolean: The value represents a
-- boolean, represented as \'true\' or \'false\' - integer: The value
-- represents a 64-bit signed integer value, in base 10 - list: A list of
-- parameters should be specified - map: A map of parameters should be
-- specified - template: The value represents any text; this can include
-- variable references (even variable references that might return
-- non-string types)
data ParameterType
    = Boolean
      -- ^ @boolean@
    | Integer
      -- ^ @integer@
    | List
      -- ^ @list@
    | Map
      -- ^ @map@
    | Template
      -- ^ @template@
    | TypeUnspecified
      -- ^ @typeUnspecified@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParameterType

instance FromHttpApiData ParameterType where
    parseQueryParam = \case
        "boolean" -> Right Boolean
        "integer" -> Right Integer
        "list" -> Right List
        "map" -> Right Map
        "template" -> Right Template
        "typeUnspecified" -> Right TypeUnspecified
        x -> Left ("Unable to parse ParameterType from: " <> x)

instance ToHttpApiData ParameterType where
    toQueryParam = \case
        Boolean -> "boolean"
        Integer -> "integer"
        List -> "list"
        Map -> "map"
        Template -> "template"
        TypeUnspecified -> "typeUnspecified"

instance FromJSON ParameterType where
    parseJSON = parseJSONText "ParameterType"

instance ToJSON ParameterType where
    toJSON = toJSONText

-- | Represents how the entity has been changed in the workspace.
data EntityChangeStatus
    = Added
      -- ^ @added@
    | ChangeStatusUnspecified
      -- ^ @changeStatusUnspecified@
    | Deleted
      -- ^ @deleted@
    | None
      -- ^ @none@
    | Updated
      -- ^ @updated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EntityChangeStatus

instance FromHttpApiData EntityChangeStatus where
    parseQueryParam = \case
        "added" -> Right Added
        "changeStatusUnspecified" -> Right ChangeStatusUnspecified
        "deleted" -> Right Deleted
        "none" -> Right None
        "updated" -> Right Updated
        x -> Left ("Unable to parse EntityChangeStatus from: " <> x)

instance ToHttpApiData EntityChangeStatus where
    toQueryParam = \case
        Added -> "added"
        ChangeStatusUnspecified -> "changeStatusUnspecified"
        Deleted -> "deleted"
        None -> "none"
        Updated -> "updated"

instance FromJSON EntityChangeStatus where
    parseJSON = parseJSONText "EntityChangeStatus"

instance ToJSON EntityChangeStatus where
    toJSON = toJSONText

-- | The option to convert a string-type variable value to either lowercase
-- or uppercase.
data VariableFormatValueCaseConversionType
    = VFVCCTLowercase
      -- ^ @lowercase@
    | VFVCCTNone
      -- ^ @none@
    | VFVCCTUppercase
      -- ^ @uppercase@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VariableFormatValueCaseConversionType

instance FromHttpApiData VariableFormatValueCaseConversionType where
    parseQueryParam = \case
        "lowercase" -> Right VFVCCTLowercase
        "none" -> Right VFVCCTNone
        "uppercase" -> Right VFVCCTUppercase
        x -> Left ("Unable to parse VariableFormatValueCaseConversionType from: " <> x)

instance ToHttpApiData VariableFormatValueCaseConversionType where
    toQueryParam = \case
        VFVCCTLowercase -> "lowercase"
        VFVCCTNone -> "none"
        VFVCCTUppercase -> "uppercase"

instance FromJSON VariableFormatValueCaseConversionType where
    parseJSON = parseJSONText "VariableFormatValueCaseConversionType"

instance ToJSON VariableFormatValueCaseConversionType where
    toJSON = toJSONText

-- | The type of this environment.
data EnvironmentType
    = ETLatest
      -- ^ @latest@
    | ETLive
      -- ^ @live@
    | ETUser
      -- ^ @user@
    | ETWorkspace
      -- ^ @workspace@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnvironmentType

instance FromHttpApiData EnvironmentType where
    parseQueryParam = \case
        "latest" -> Right ETLatest
        "live" -> Right ETLive
        "user" -> Right ETUser
        "workspace" -> Right ETWorkspace
        x -> Left ("Unable to parse EnvironmentType from: " <> x)

instance ToHttpApiData EnvironmentType where
    toQueryParam = \case
        ETLatest -> "latest"
        ETLive -> "live"
        ETUser -> "user"
        ETWorkspace -> "workspace"

instance FromJSON EnvironmentType where
    parseJSON = parseJSONText "EnvironmentType"

instance ToJSON EnvironmentType where
    toJSON = toJSONText

-- | The type of built-in variable to revert.
data AccountsContainersWorkspacesBuilt_in_variablesRevertType
    = ACWBRTAdvertiserId
      -- ^ @advertiserId@
    | ACWBRTAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | ACWBRTAmpBrowserLanguage
      -- ^ @ampBrowserLanguage@
    | ACWBRTAmpCanonicalHost
      -- ^ @ampCanonicalHost@
    | ACWBRTAmpCanonicalPath
      -- ^ @ampCanonicalPath@
    | ACWBRTAmpCanonicalURL
      -- ^ @ampCanonicalUrl@
    | ACWBRTAmpClientId
      -- ^ @ampClientId@
    | ACWBRTAmpClientMaxScrollX
      -- ^ @ampClientMaxScrollX@
    | ACWBRTAmpClientMaxScrollY
      -- ^ @ampClientMaxScrollY@
    | ACWBRTAmpClientScreenHeight
      -- ^ @ampClientScreenHeight@
    | ACWBRTAmpClientScreenWidth
      -- ^ @ampClientScreenWidth@
    | ACWBRTAmpClientScrollX
      -- ^ @ampClientScrollX@
    | ACWBRTAmpClientScrollY
      -- ^ @ampClientScrollY@
    | ACWBRTAmpClientTimestamp
      -- ^ @ampClientTimestamp@
    | ACWBRTAmpClientTimezone
      -- ^ @ampClientTimezone@
    | ACWBRTAmpGtmEvent
      -- ^ @ampGtmEvent@
    | ACWBRTAmpPageDownloadTime
      -- ^ @ampPageDownloadTime@
    | ACWBRTAmpPageLoadTime
      -- ^ @ampPageLoadTime@
    | ACWBRTAmpPageViewId
      -- ^ @ampPageViewId@
    | ACWBRTAmpReferrer
      -- ^ @ampReferrer@
    | ACWBRTAmpTitle
      -- ^ @ampTitle@
    | ACWBRTAmpTotalEngagedTime
      -- ^ @ampTotalEngagedTime@
    | ACWBRTAppId
      -- ^ @appId@
    | ACWBRTAppName
      -- ^ @appName@
    | ACWBRTAppVersionCode
      -- ^ @appVersionCode@
    | ACWBRTAppVersionName
      -- ^ @appVersionName@
    | ACWBRTBuiltInVariableTypeUnspecified
      -- ^ @builtInVariableTypeUnspecified@
    | ACWBRTClickClasses
      -- ^ @clickClasses@
    | ACWBRTClickElement
      -- ^ @clickElement@
    | ACWBRTClickId
      -- ^ @clickId@
    | ACWBRTClickTarget
      -- ^ @clickTarget@
    | ACWBRTClickText
      -- ^ @clickText@
    | ACWBRTClickURL
      -- ^ @clickUrl@
    | ACWBRTContainerId
      -- ^ @containerId@
    | ACWBRTContainerVersion
      -- ^ @containerVersion@
    | ACWBRTDebugMode
      -- ^ @debugMode@
    | ACWBRTDeviceName
      -- ^ @deviceName@
    | ACWBRTElementVisibilityFirstTime
      -- ^ @elementVisibilityFirstTime@
    | ACWBRTElementVisibilityRatio
      -- ^ @elementVisibilityRatio@
    | ACWBRTElementVisibilityRecentTime
      -- ^ @elementVisibilityRecentTime@
    | ACWBRTElementVisibilityTime
      -- ^ @elementVisibilityTime@
    | ACWBRTEnvironmentName
      -- ^ @environmentName@
    | ACWBRTErrorLine
      -- ^ @errorLine@
    | ACWBRTErrorMessage
      -- ^ @errorMessage@
    | ACWBRTErrorURL
      -- ^ @errorUrl@
    | ACWBRTEvent
      -- ^ @event@
    | ACWBRTEventName
      -- ^ @eventName@
    | ACWBRTFirebaseEventParameterCampaign
      -- ^ @firebaseEventParameterCampaign@
    | ACWBRTFirebaseEventParameterCampaignACLid
      -- ^ @firebaseEventParameterCampaignAclid@
    | ACWBRTFirebaseEventParameterCampaignAnid
      -- ^ @firebaseEventParameterCampaignAnid@
    | ACWBRTFirebaseEventParameterCampaignClickTimestamp
      -- ^ @firebaseEventParameterCampaignClickTimestamp@
    | ACWBRTFirebaseEventParameterCampaignContent
      -- ^ @firebaseEventParameterCampaignContent@
    | ACWBRTFIREBASEEVENTPARAMETERCAMPAIGNCP1
      -- ^ @firebaseEventParameterCampaignCp1@
    | ACWBRTFirebaseEventParameterCampaignGclid
      -- ^ @firebaseEventParameterCampaignGclid@
    | ACWBRTFirebaseEventParameterCampaignSource
      -- ^ @firebaseEventParameterCampaignSource@
    | ACWBRTFirebaseEventParameterCampaignTerm
      -- ^ @firebaseEventParameterCampaignTerm@
    | ACWBRTFirebaseEventParameterCurrency
      -- ^ @firebaseEventParameterCurrency@
    | ACWBRTFirebaseEventParameterDynamicLinkAcceptTime
      -- ^ @firebaseEventParameterDynamicLinkAcceptTime@
    | ACWBRTFirebaseEventParameterDynamicLinkLinkid
      -- ^ @firebaseEventParameterDynamicLinkLinkid@
    | ACWBRTFirebaseEventParameterNotificationMessageDeviceTime
      -- ^ @firebaseEventParameterNotificationMessageDeviceTime@
    | ACWBRTFirebaseEventParameterNotificationMessageId
      -- ^ @firebaseEventParameterNotificationMessageId@
    | ACWBRTFirebaseEventParameterNotificationMessageName
      -- ^ @firebaseEventParameterNotificationMessageName@
    | ACWBRTFirebaseEventParameterNotificationMessageTime
      -- ^ @firebaseEventParameterNotificationMessageTime@
    | ACWBRTFirebaseEventParameterNotificationTopic
      -- ^ @firebaseEventParameterNotificationTopic@
    | ACWBRTFirebaseEventParameterPreviousAppVersion
      -- ^ @firebaseEventParameterPreviousAppVersion@
    | ACWBRTFirebaseEventParameterPreviousOSVersion
      -- ^ @firebaseEventParameterPreviousOsVersion@
    | ACWBRTFirebaseEventParameterPrice
      -- ^ @firebaseEventParameterPrice@
    | ACWBRTFirebaseEventParameterProductId
      -- ^ @firebaseEventParameterProductId@
    | ACWBRTFirebaseEventParameterQuantity
      -- ^ @firebaseEventParameterQuantity@
    | ACWBRTFirebaseEventParameterValue
      -- ^ @firebaseEventParameterValue@
    | ACWBRTFormClasses
      -- ^ @formClasses@
    | ACWBRTFormElement
      -- ^ @formElement@
    | ACWBRTFormId
      -- ^ @formId@
    | ACWBRTFormTarget
      -- ^ @formTarget@
    | ACWBRTFormText
      -- ^ @formText@
    | ACWBRTFormURL
      -- ^ @formUrl@
    | ACWBRTHistorySource
      -- ^ @historySource@
    | ACWBRTHTMLId
      -- ^ @htmlId@
    | ACWBRTLanguage
      -- ^ @language@
    | ACWBRTNewHistoryFragment
      -- ^ @newHistoryFragment@
    | ACWBRTNewHistoryState
      -- ^ @newHistoryState@
    | ACWBRTOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | ACWBRTOldHistoryState
      -- ^ @oldHistoryState@
    | ACWBRTOSVersion
      -- ^ @osVersion@
    | ACWBRTPageHostname
      -- ^ @pageHostname@
    | ACWBRTPagePath
      -- ^ @pagePath@
    | ACWBRTPageURL
      -- ^ @pageUrl@
    | ACWBRTPlatform
      -- ^ @platform@
    | ACWBRTRandomNumber
      -- ^ @randomNumber@
    | ACWBRTReferrer
      -- ^ @referrer@
    | ACWBRTResolution
      -- ^ @resolution@
    | ACWBRTScrollDepthDirection
      -- ^ @scrollDepthDirection@
    | ACWBRTScrollDepthThreshold
      -- ^ @scrollDepthThreshold@
    | ACWBRTScrollDepthUnits
      -- ^ @scrollDepthUnits@
    | ACWBRTSdkVersion
      -- ^ @sdkVersion@
    | ACWBRTVideoCurrentTime
      -- ^ @videoCurrentTime@
    | ACWBRTVideoDuration
      -- ^ @videoDuration@
    | ACWBRTVideoPercent
      -- ^ @videoPercent@
    | ACWBRTVideoProvider
      -- ^ @videoProvider@
    | ACWBRTVideoStatus
      -- ^ @videoStatus@
    | ACWBRTVideoTitle
      -- ^ @videoTitle@
    | ACWBRTVideoURL
      -- ^ @videoUrl@
    | ACWBRTVideoVisible
      -- ^ @videoVisible@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsContainersWorkspacesBuilt_in_variablesRevertType

instance FromHttpApiData AccountsContainersWorkspacesBuilt_in_variablesRevertType where
    parseQueryParam = \case
        "advertiserId" -> Right ACWBRTAdvertiserId
        "advertisingTrackingEnabled" -> Right ACWBRTAdvertisingTrackingEnabled
        "ampBrowserLanguage" -> Right ACWBRTAmpBrowserLanguage
        "ampCanonicalHost" -> Right ACWBRTAmpCanonicalHost
        "ampCanonicalPath" -> Right ACWBRTAmpCanonicalPath
        "ampCanonicalUrl" -> Right ACWBRTAmpCanonicalURL
        "ampClientId" -> Right ACWBRTAmpClientId
        "ampClientMaxScrollX" -> Right ACWBRTAmpClientMaxScrollX
        "ampClientMaxScrollY" -> Right ACWBRTAmpClientMaxScrollY
        "ampClientScreenHeight" -> Right ACWBRTAmpClientScreenHeight
        "ampClientScreenWidth" -> Right ACWBRTAmpClientScreenWidth
        "ampClientScrollX" -> Right ACWBRTAmpClientScrollX
        "ampClientScrollY" -> Right ACWBRTAmpClientScrollY
        "ampClientTimestamp" -> Right ACWBRTAmpClientTimestamp
        "ampClientTimezone" -> Right ACWBRTAmpClientTimezone
        "ampGtmEvent" -> Right ACWBRTAmpGtmEvent
        "ampPageDownloadTime" -> Right ACWBRTAmpPageDownloadTime
        "ampPageLoadTime" -> Right ACWBRTAmpPageLoadTime
        "ampPageViewId" -> Right ACWBRTAmpPageViewId
        "ampReferrer" -> Right ACWBRTAmpReferrer
        "ampTitle" -> Right ACWBRTAmpTitle
        "ampTotalEngagedTime" -> Right ACWBRTAmpTotalEngagedTime
        "appId" -> Right ACWBRTAppId
        "appName" -> Right ACWBRTAppName
        "appVersionCode" -> Right ACWBRTAppVersionCode
        "appVersionName" -> Right ACWBRTAppVersionName
        "builtInVariableTypeUnspecified" -> Right ACWBRTBuiltInVariableTypeUnspecified
        "clickClasses" -> Right ACWBRTClickClasses
        "clickElement" -> Right ACWBRTClickElement
        "clickId" -> Right ACWBRTClickId
        "clickTarget" -> Right ACWBRTClickTarget
        "clickText" -> Right ACWBRTClickText
        "clickUrl" -> Right ACWBRTClickURL
        "containerId" -> Right ACWBRTContainerId
        "containerVersion" -> Right ACWBRTContainerVersion
        "debugMode" -> Right ACWBRTDebugMode
        "deviceName" -> Right ACWBRTDeviceName
        "elementVisibilityFirstTime" -> Right ACWBRTElementVisibilityFirstTime
        "elementVisibilityRatio" -> Right ACWBRTElementVisibilityRatio
        "elementVisibilityRecentTime" -> Right ACWBRTElementVisibilityRecentTime
        "elementVisibilityTime" -> Right ACWBRTElementVisibilityTime
        "environmentName" -> Right ACWBRTEnvironmentName
        "errorLine" -> Right ACWBRTErrorLine
        "errorMessage" -> Right ACWBRTErrorMessage
        "errorUrl" -> Right ACWBRTErrorURL
        "event" -> Right ACWBRTEvent
        "eventName" -> Right ACWBRTEventName
        "firebaseEventParameterCampaign" -> Right ACWBRTFirebaseEventParameterCampaign
        "firebaseEventParameterCampaignAclid" -> Right ACWBRTFirebaseEventParameterCampaignACLid
        "firebaseEventParameterCampaignAnid" -> Right ACWBRTFirebaseEventParameterCampaignAnid
        "firebaseEventParameterCampaignClickTimestamp" -> Right ACWBRTFirebaseEventParameterCampaignClickTimestamp
        "firebaseEventParameterCampaignContent" -> Right ACWBRTFirebaseEventParameterCampaignContent
        "firebaseEventParameterCampaignCp1" -> Right ACWBRTFIREBASEEVENTPARAMETERCAMPAIGNCP1
        "firebaseEventParameterCampaignGclid" -> Right ACWBRTFirebaseEventParameterCampaignGclid
        "firebaseEventParameterCampaignSource" -> Right ACWBRTFirebaseEventParameterCampaignSource
        "firebaseEventParameterCampaignTerm" -> Right ACWBRTFirebaseEventParameterCampaignTerm
        "firebaseEventParameterCurrency" -> Right ACWBRTFirebaseEventParameterCurrency
        "firebaseEventParameterDynamicLinkAcceptTime" -> Right ACWBRTFirebaseEventParameterDynamicLinkAcceptTime
        "firebaseEventParameterDynamicLinkLinkid" -> Right ACWBRTFirebaseEventParameterDynamicLinkLinkid
        "firebaseEventParameterNotificationMessageDeviceTime" -> Right ACWBRTFirebaseEventParameterNotificationMessageDeviceTime
        "firebaseEventParameterNotificationMessageId" -> Right ACWBRTFirebaseEventParameterNotificationMessageId
        "firebaseEventParameterNotificationMessageName" -> Right ACWBRTFirebaseEventParameterNotificationMessageName
        "firebaseEventParameterNotificationMessageTime" -> Right ACWBRTFirebaseEventParameterNotificationMessageTime
        "firebaseEventParameterNotificationTopic" -> Right ACWBRTFirebaseEventParameterNotificationTopic
        "firebaseEventParameterPreviousAppVersion" -> Right ACWBRTFirebaseEventParameterPreviousAppVersion
        "firebaseEventParameterPreviousOsVersion" -> Right ACWBRTFirebaseEventParameterPreviousOSVersion
        "firebaseEventParameterPrice" -> Right ACWBRTFirebaseEventParameterPrice
        "firebaseEventParameterProductId" -> Right ACWBRTFirebaseEventParameterProductId
        "firebaseEventParameterQuantity" -> Right ACWBRTFirebaseEventParameterQuantity
        "firebaseEventParameterValue" -> Right ACWBRTFirebaseEventParameterValue
        "formClasses" -> Right ACWBRTFormClasses
        "formElement" -> Right ACWBRTFormElement
        "formId" -> Right ACWBRTFormId
        "formTarget" -> Right ACWBRTFormTarget
        "formText" -> Right ACWBRTFormText
        "formUrl" -> Right ACWBRTFormURL
        "historySource" -> Right ACWBRTHistorySource
        "htmlId" -> Right ACWBRTHTMLId
        "language" -> Right ACWBRTLanguage
        "newHistoryFragment" -> Right ACWBRTNewHistoryFragment
        "newHistoryState" -> Right ACWBRTNewHistoryState
        "oldHistoryFragment" -> Right ACWBRTOldHistoryFragment
        "oldHistoryState" -> Right ACWBRTOldHistoryState
        "osVersion" -> Right ACWBRTOSVersion
        "pageHostname" -> Right ACWBRTPageHostname
        "pagePath" -> Right ACWBRTPagePath
        "pageUrl" -> Right ACWBRTPageURL
        "platform" -> Right ACWBRTPlatform
        "randomNumber" -> Right ACWBRTRandomNumber
        "referrer" -> Right ACWBRTReferrer
        "resolution" -> Right ACWBRTResolution
        "scrollDepthDirection" -> Right ACWBRTScrollDepthDirection
        "scrollDepthThreshold" -> Right ACWBRTScrollDepthThreshold
        "scrollDepthUnits" -> Right ACWBRTScrollDepthUnits
        "sdkVersion" -> Right ACWBRTSdkVersion
        "videoCurrentTime" -> Right ACWBRTVideoCurrentTime
        "videoDuration" -> Right ACWBRTVideoDuration
        "videoPercent" -> Right ACWBRTVideoPercent
        "videoProvider" -> Right ACWBRTVideoProvider
        "videoStatus" -> Right ACWBRTVideoStatus
        "videoTitle" -> Right ACWBRTVideoTitle
        "videoUrl" -> Right ACWBRTVideoURL
        "videoVisible" -> Right ACWBRTVideoVisible
        x -> Left ("Unable to parse AccountsContainersWorkspacesBuilt_in_variablesRevertType from: " <> x)

instance ToHttpApiData AccountsContainersWorkspacesBuilt_in_variablesRevertType where
    toQueryParam = \case
        ACWBRTAdvertiserId -> "advertiserId"
        ACWBRTAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        ACWBRTAmpBrowserLanguage -> "ampBrowserLanguage"
        ACWBRTAmpCanonicalHost -> "ampCanonicalHost"
        ACWBRTAmpCanonicalPath -> "ampCanonicalPath"
        ACWBRTAmpCanonicalURL -> "ampCanonicalUrl"
        ACWBRTAmpClientId -> "ampClientId"
        ACWBRTAmpClientMaxScrollX -> "ampClientMaxScrollX"
        ACWBRTAmpClientMaxScrollY -> "ampClientMaxScrollY"
        ACWBRTAmpClientScreenHeight -> "ampClientScreenHeight"
        ACWBRTAmpClientScreenWidth -> "ampClientScreenWidth"
        ACWBRTAmpClientScrollX -> "ampClientScrollX"
        ACWBRTAmpClientScrollY -> "ampClientScrollY"
        ACWBRTAmpClientTimestamp -> "ampClientTimestamp"
        ACWBRTAmpClientTimezone -> "ampClientTimezone"
        ACWBRTAmpGtmEvent -> "ampGtmEvent"
        ACWBRTAmpPageDownloadTime -> "ampPageDownloadTime"
        ACWBRTAmpPageLoadTime -> "ampPageLoadTime"
        ACWBRTAmpPageViewId -> "ampPageViewId"
        ACWBRTAmpReferrer -> "ampReferrer"
        ACWBRTAmpTitle -> "ampTitle"
        ACWBRTAmpTotalEngagedTime -> "ampTotalEngagedTime"
        ACWBRTAppId -> "appId"
        ACWBRTAppName -> "appName"
        ACWBRTAppVersionCode -> "appVersionCode"
        ACWBRTAppVersionName -> "appVersionName"
        ACWBRTBuiltInVariableTypeUnspecified -> "builtInVariableTypeUnspecified"
        ACWBRTClickClasses -> "clickClasses"
        ACWBRTClickElement -> "clickElement"
        ACWBRTClickId -> "clickId"
        ACWBRTClickTarget -> "clickTarget"
        ACWBRTClickText -> "clickText"
        ACWBRTClickURL -> "clickUrl"
        ACWBRTContainerId -> "containerId"
        ACWBRTContainerVersion -> "containerVersion"
        ACWBRTDebugMode -> "debugMode"
        ACWBRTDeviceName -> "deviceName"
        ACWBRTElementVisibilityFirstTime -> "elementVisibilityFirstTime"
        ACWBRTElementVisibilityRatio -> "elementVisibilityRatio"
        ACWBRTElementVisibilityRecentTime -> "elementVisibilityRecentTime"
        ACWBRTElementVisibilityTime -> "elementVisibilityTime"
        ACWBRTEnvironmentName -> "environmentName"
        ACWBRTErrorLine -> "errorLine"
        ACWBRTErrorMessage -> "errorMessage"
        ACWBRTErrorURL -> "errorUrl"
        ACWBRTEvent -> "event"
        ACWBRTEventName -> "eventName"
        ACWBRTFirebaseEventParameterCampaign -> "firebaseEventParameterCampaign"
        ACWBRTFirebaseEventParameterCampaignACLid -> "firebaseEventParameterCampaignAclid"
        ACWBRTFirebaseEventParameterCampaignAnid -> "firebaseEventParameterCampaignAnid"
        ACWBRTFirebaseEventParameterCampaignClickTimestamp -> "firebaseEventParameterCampaignClickTimestamp"
        ACWBRTFirebaseEventParameterCampaignContent -> "firebaseEventParameterCampaignContent"
        ACWBRTFIREBASEEVENTPARAMETERCAMPAIGNCP1 -> "firebaseEventParameterCampaignCp1"
        ACWBRTFirebaseEventParameterCampaignGclid -> "firebaseEventParameterCampaignGclid"
        ACWBRTFirebaseEventParameterCampaignSource -> "firebaseEventParameterCampaignSource"
        ACWBRTFirebaseEventParameterCampaignTerm -> "firebaseEventParameterCampaignTerm"
        ACWBRTFirebaseEventParameterCurrency -> "firebaseEventParameterCurrency"
        ACWBRTFirebaseEventParameterDynamicLinkAcceptTime -> "firebaseEventParameterDynamicLinkAcceptTime"
        ACWBRTFirebaseEventParameterDynamicLinkLinkid -> "firebaseEventParameterDynamicLinkLinkid"
        ACWBRTFirebaseEventParameterNotificationMessageDeviceTime -> "firebaseEventParameterNotificationMessageDeviceTime"
        ACWBRTFirebaseEventParameterNotificationMessageId -> "firebaseEventParameterNotificationMessageId"
        ACWBRTFirebaseEventParameterNotificationMessageName -> "firebaseEventParameterNotificationMessageName"
        ACWBRTFirebaseEventParameterNotificationMessageTime -> "firebaseEventParameterNotificationMessageTime"
        ACWBRTFirebaseEventParameterNotificationTopic -> "firebaseEventParameterNotificationTopic"
        ACWBRTFirebaseEventParameterPreviousAppVersion -> "firebaseEventParameterPreviousAppVersion"
        ACWBRTFirebaseEventParameterPreviousOSVersion -> "firebaseEventParameterPreviousOsVersion"
        ACWBRTFirebaseEventParameterPrice -> "firebaseEventParameterPrice"
        ACWBRTFirebaseEventParameterProductId -> "firebaseEventParameterProductId"
        ACWBRTFirebaseEventParameterQuantity -> "firebaseEventParameterQuantity"
        ACWBRTFirebaseEventParameterValue -> "firebaseEventParameterValue"
        ACWBRTFormClasses -> "formClasses"
        ACWBRTFormElement -> "formElement"
        ACWBRTFormId -> "formId"
        ACWBRTFormTarget -> "formTarget"
        ACWBRTFormText -> "formText"
        ACWBRTFormURL -> "formUrl"
        ACWBRTHistorySource -> "historySource"
        ACWBRTHTMLId -> "htmlId"
        ACWBRTLanguage -> "language"
        ACWBRTNewHistoryFragment -> "newHistoryFragment"
        ACWBRTNewHistoryState -> "newHistoryState"
        ACWBRTOldHistoryFragment -> "oldHistoryFragment"
        ACWBRTOldHistoryState -> "oldHistoryState"
        ACWBRTOSVersion -> "osVersion"
        ACWBRTPageHostname -> "pageHostname"
        ACWBRTPagePath -> "pagePath"
        ACWBRTPageURL -> "pageUrl"
        ACWBRTPlatform -> "platform"
        ACWBRTRandomNumber -> "randomNumber"
        ACWBRTReferrer -> "referrer"
        ACWBRTResolution -> "resolution"
        ACWBRTScrollDepthDirection -> "scrollDepthDirection"
        ACWBRTScrollDepthThreshold -> "scrollDepthThreshold"
        ACWBRTScrollDepthUnits -> "scrollDepthUnits"
        ACWBRTSdkVersion -> "sdkVersion"
        ACWBRTVideoCurrentTime -> "videoCurrentTime"
        ACWBRTVideoDuration -> "videoDuration"
        ACWBRTVideoPercent -> "videoPercent"
        ACWBRTVideoProvider -> "videoProvider"
        ACWBRTVideoStatus -> "videoStatus"
        ACWBRTVideoTitle -> "videoTitle"
        ACWBRTVideoURL -> "videoUrl"
        ACWBRTVideoVisible -> "videoVisible"

instance FromJSON AccountsContainersWorkspacesBuilt_in_variablesRevertType where
    parseJSON = parseJSONText "AccountsContainersWorkspacesBuilt_in_variablesRevertType"

instance ToJSON AccountsContainersWorkspacesBuilt_in_variablesRevertType where
    toJSON = toJSONText
