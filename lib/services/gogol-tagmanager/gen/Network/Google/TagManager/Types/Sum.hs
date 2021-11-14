{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TagManager.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TagManager.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Type of built-in variable.
-- \'required.tagmanager.accounts.containers.workspaces.built_in_variable.update
-- \'mutable
-- tagmanager.accounts.containers.workspaces.built_in_variable.update
data BuiltInVariableType
    = BIVTBuiltInVariableTypeUnspecified
      -- ^ @builtInVariableTypeUnspecified@
    | BIVTPageURL
      -- ^ @pageUrl@
    | BIVTPageHostname
      -- ^ @pageHostname@
    | BIVTPagePath
      -- ^ @pagePath@
    | BIVTReferrer
      -- ^ @referrer@
    | BIVTEvent
      -- ^ @event@
      -- For web or mobile.
    | BIVTClickElement
      -- ^ @clickElement@
    | BIVTClickClasses
      -- ^ @clickClasses@
    | BIVTClickId
      -- ^ @clickId@
    | BIVTClickTarget
      -- ^ @clickTarget@
    | BIVTClickURL
      -- ^ @clickUrl@
    | BIVTClickText
      -- ^ @clickText@
    | BIVTFirstPartyServingURL
      -- ^ @firstPartyServingUrl@
    | BIVTFormElement
      -- ^ @formElement@
    | BIVTFormClasses
      -- ^ @formClasses@
    | BIVTFormId
      -- ^ @formId@
    | BIVTFormTarget
      -- ^ @formTarget@
    | BIVTFormURL
      -- ^ @formUrl@
    | BIVTFormText
      -- ^ @formText@
    | BIVTErrorMessage
      -- ^ @errorMessage@
    | BIVTErrorURL
      -- ^ @errorUrl@
    | BIVTErrorLine
      -- ^ @errorLine@
    | BIVTNewHistoryURL
      -- ^ @newHistoryUrl@
    | BIVTOldHistoryURL
      -- ^ @oldHistoryUrl@
    | BIVTNewHistoryFragment
      -- ^ @newHistoryFragment@
    | BIVTOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | BIVTNewHistoryState
      -- ^ @newHistoryState@
    | BIVTOldHistoryState
      -- ^ @oldHistoryState@
    | BIVTHistorySource
      -- ^ @historySource@
    | BIVTContainerVersion
      -- ^ @containerVersion@
      -- For web or mobile.
    | BIVTDebugMode
      -- ^ @debugMode@
    | BIVTRandomNumber
      -- ^ @randomNumber@
      -- For web or mobile.
    | BIVTContainerId
      -- ^ @containerId@
      -- For web or mobile.
    | BIVTAppId
      -- ^ @appId@
    | BIVTAppName
      -- ^ @appName@
    | BIVTAppVersionCode
      -- ^ @appVersionCode@
    | BIVTAppVersionName
      -- ^ @appVersionName@
    | BIVTLanguage
      -- ^ @language@
    | BIVTOSVersion
      -- ^ @osVersion@
    | BIVTPlatform
      -- ^ @platform@
    | BIVTSdkVersion
      -- ^ @sdkVersion@
    | BIVTDeviceName
      -- ^ @deviceName@
    | BIVTResolution
      -- ^ @resolution@
    | BIVTAdvertiserId
      -- ^ @advertiserId@
    | BIVTAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | BIVTHTMLId
      -- ^ @htmlId@
    | BIVTEnvironmentName
      -- ^ @environmentName@
    | BIVTAmpBrowserLanguage
      -- ^ @ampBrowserLanguage@
    | BIVTAmpCanonicalPath
      -- ^ @ampCanonicalPath@
    | BIVTAmpCanonicalURL
      -- ^ @ampCanonicalUrl@
    | BIVTAmpCanonicalHost
      -- ^ @ampCanonicalHost@
    | BIVTAmpReferrer
      -- ^ @ampReferrer@
    | BIVTAmpTitle
      -- ^ @ampTitle@
    | BIVTAmpClientId
      -- ^ @ampClientId@
    | BIVTAmpClientTimezone
      -- ^ @ampClientTimezone@
    | BIVTAmpClientTimestamp
      -- ^ @ampClientTimestamp@
    | BIVTAmpClientScreenWidth
      -- ^ @ampClientScreenWidth@
    | BIVTAmpClientScreenHeight
      -- ^ @ampClientScreenHeight@
    | BIVTAmpClientScrollX
      -- ^ @ampClientScrollX@
    | BIVTAmpClientScrollY
      -- ^ @ampClientScrollY@
    | BIVTAmpClientMaxScrollX
      -- ^ @ampClientMaxScrollX@
    | BIVTAmpClientMaxScrollY
      -- ^ @ampClientMaxScrollY@
    | BIVTAmpTotalEngagedTime
      -- ^ @ampTotalEngagedTime@
    | BIVTAmpPageViewId
      -- ^ @ampPageViewId@
    | BIVTAmpPageLoadTime
      -- ^ @ampPageLoadTime@
    | BIVTAmpPageDownloadTime
      -- ^ @ampPageDownloadTime@
    | BIVTAmpGtmEvent
      -- ^ @ampGtmEvent@
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
    | BIVTVideoProvider
      -- ^ @videoProvider@
    | BIVTVideoURL
      -- ^ @videoUrl@
    | BIVTVideoTitle
      -- ^ @videoTitle@
    | BIVTVideoDuration
      -- ^ @videoDuration@
    | BIVTVideoPercent
      -- ^ @videoPercent@
    | BIVTVideoVisible
      -- ^ @videoVisible@
    | BIVTVideoStatus
      -- ^ @videoStatus@
    | BIVTVideoCurrentTime
      -- ^ @videoCurrentTime@
    | BIVTScrollDepthThreshold
      -- ^ @scrollDepthThreshold@
    | BIVTScrollDepthUnits
      -- ^ @scrollDepthUnits@
    | BIVTScrollDepthDirection
      -- ^ @scrollDepthDirection@
    | BIVTElementVisibilityRatio
      -- ^ @elementVisibilityRatio@
    | BIVTElementVisibilityTime
      -- ^ @elementVisibilityTime@
    | BIVTElementVisibilityFirstTime
      -- ^ @elementVisibilityFirstTime@
    | BIVTElementVisibilityRecentTime
      -- ^ @elementVisibilityRecentTime@
    | BIVTRequestPath
      -- ^ @requestPath@
    | BIVTRequestMethod
      -- ^ @requestMethod@
    | BIVTClientName
      -- ^ @clientName@
    | BIVTQueryString
      -- ^ @queryString@
    | BIVTServerPageLocationURL
      -- ^ @serverPageLocationUrl@
    | BIVTServerPageLocationPath
      -- ^ @serverPageLocationPath@
    | BIVTServerPageLocationHostname
      -- ^ @serverPageLocationHostname@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuiltInVariableType

instance FromHttpApiData BuiltInVariableType where
    parseQueryParam = \case
        "builtInVariableTypeUnspecified" -> Right BIVTBuiltInVariableTypeUnspecified
        "pageUrl" -> Right BIVTPageURL
        "pageHostname" -> Right BIVTPageHostname
        "pagePath" -> Right BIVTPagePath
        "referrer" -> Right BIVTReferrer
        "event" -> Right BIVTEvent
        "clickElement" -> Right BIVTClickElement
        "clickClasses" -> Right BIVTClickClasses
        "clickId" -> Right BIVTClickId
        "clickTarget" -> Right BIVTClickTarget
        "clickUrl" -> Right BIVTClickURL
        "clickText" -> Right BIVTClickText
        "firstPartyServingUrl" -> Right BIVTFirstPartyServingURL
        "formElement" -> Right BIVTFormElement
        "formClasses" -> Right BIVTFormClasses
        "formId" -> Right BIVTFormId
        "formTarget" -> Right BIVTFormTarget
        "formUrl" -> Right BIVTFormURL
        "formText" -> Right BIVTFormText
        "errorMessage" -> Right BIVTErrorMessage
        "errorUrl" -> Right BIVTErrorURL
        "errorLine" -> Right BIVTErrorLine
        "newHistoryUrl" -> Right BIVTNewHistoryURL
        "oldHistoryUrl" -> Right BIVTOldHistoryURL
        "newHistoryFragment" -> Right BIVTNewHistoryFragment
        "oldHistoryFragment" -> Right BIVTOldHistoryFragment
        "newHistoryState" -> Right BIVTNewHistoryState
        "oldHistoryState" -> Right BIVTOldHistoryState
        "historySource" -> Right BIVTHistorySource
        "containerVersion" -> Right BIVTContainerVersion
        "debugMode" -> Right BIVTDebugMode
        "randomNumber" -> Right BIVTRandomNumber
        "containerId" -> Right BIVTContainerId
        "appId" -> Right BIVTAppId
        "appName" -> Right BIVTAppName
        "appVersionCode" -> Right BIVTAppVersionCode
        "appVersionName" -> Right BIVTAppVersionName
        "language" -> Right BIVTLanguage
        "osVersion" -> Right BIVTOSVersion
        "platform" -> Right BIVTPlatform
        "sdkVersion" -> Right BIVTSdkVersion
        "deviceName" -> Right BIVTDeviceName
        "resolution" -> Right BIVTResolution
        "advertiserId" -> Right BIVTAdvertiserId
        "advertisingTrackingEnabled" -> Right BIVTAdvertisingTrackingEnabled
        "htmlId" -> Right BIVTHTMLId
        "environmentName" -> Right BIVTEnvironmentName
        "ampBrowserLanguage" -> Right BIVTAmpBrowserLanguage
        "ampCanonicalPath" -> Right BIVTAmpCanonicalPath
        "ampCanonicalUrl" -> Right BIVTAmpCanonicalURL
        "ampCanonicalHost" -> Right BIVTAmpCanonicalHost
        "ampReferrer" -> Right BIVTAmpReferrer
        "ampTitle" -> Right BIVTAmpTitle
        "ampClientId" -> Right BIVTAmpClientId
        "ampClientTimezone" -> Right BIVTAmpClientTimezone
        "ampClientTimestamp" -> Right BIVTAmpClientTimestamp
        "ampClientScreenWidth" -> Right BIVTAmpClientScreenWidth
        "ampClientScreenHeight" -> Right BIVTAmpClientScreenHeight
        "ampClientScrollX" -> Right BIVTAmpClientScrollX
        "ampClientScrollY" -> Right BIVTAmpClientScrollY
        "ampClientMaxScrollX" -> Right BIVTAmpClientMaxScrollX
        "ampClientMaxScrollY" -> Right BIVTAmpClientMaxScrollY
        "ampTotalEngagedTime" -> Right BIVTAmpTotalEngagedTime
        "ampPageViewId" -> Right BIVTAmpPageViewId
        "ampPageLoadTime" -> Right BIVTAmpPageLoadTime
        "ampPageDownloadTime" -> Right BIVTAmpPageDownloadTime
        "ampGtmEvent" -> Right BIVTAmpGtmEvent
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
        "videoProvider" -> Right BIVTVideoProvider
        "videoUrl" -> Right BIVTVideoURL
        "videoTitle" -> Right BIVTVideoTitle
        "videoDuration" -> Right BIVTVideoDuration
        "videoPercent" -> Right BIVTVideoPercent
        "videoVisible" -> Right BIVTVideoVisible
        "videoStatus" -> Right BIVTVideoStatus
        "videoCurrentTime" -> Right BIVTVideoCurrentTime
        "scrollDepthThreshold" -> Right BIVTScrollDepthThreshold
        "scrollDepthUnits" -> Right BIVTScrollDepthUnits
        "scrollDepthDirection" -> Right BIVTScrollDepthDirection
        "elementVisibilityRatio" -> Right BIVTElementVisibilityRatio
        "elementVisibilityTime" -> Right BIVTElementVisibilityTime
        "elementVisibilityFirstTime" -> Right BIVTElementVisibilityFirstTime
        "elementVisibilityRecentTime" -> Right BIVTElementVisibilityRecentTime
        "requestPath" -> Right BIVTRequestPath
        "requestMethod" -> Right BIVTRequestMethod
        "clientName" -> Right BIVTClientName
        "queryString" -> Right BIVTQueryString
        "serverPageLocationUrl" -> Right BIVTServerPageLocationURL
        "serverPageLocationPath" -> Right BIVTServerPageLocationPath
        "serverPageLocationHostname" -> Right BIVTServerPageLocationHostname
        x -> Left ("Unable to parse BuiltInVariableType from: " <> x)

instance ToHttpApiData BuiltInVariableType where
    toQueryParam = \case
        BIVTBuiltInVariableTypeUnspecified -> "builtInVariableTypeUnspecified"
        BIVTPageURL -> "pageUrl"
        BIVTPageHostname -> "pageHostname"
        BIVTPagePath -> "pagePath"
        BIVTReferrer -> "referrer"
        BIVTEvent -> "event"
        BIVTClickElement -> "clickElement"
        BIVTClickClasses -> "clickClasses"
        BIVTClickId -> "clickId"
        BIVTClickTarget -> "clickTarget"
        BIVTClickURL -> "clickUrl"
        BIVTClickText -> "clickText"
        BIVTFirstPartyServingURL -> "firstPartyServingUrl"
        BIVTFormElement -> "formElement"
        BIVTFormClasses -> "formClasses"
        BIVTFormId -> "formId"
        BIVTFormTarget -> "formTarget"
        BIVTFormURL -> "formUrl"
        BIVTFormText -> "formText"
        BIVTErrorMessage -> "errorMessage"
        BIVTErrorURL -> "errorUrl"
        BIVTErrorLine -> "errorLine"
        BIVTNewHistoryURL -> "newHistoryUrl"
        BIVTOldHistoryURL -> "oldHistoryUrl"
        BIVTNewHistoryFragment -> "newHistoryFragment"
        BIVTOldHistoryFragment -> "oldHistoryFragment"
        BIVTNewHistoryState -> "newHistoryState"
        BIVTOldHistoryState -> "oldHistoryState"
        BIVTHistorySource -> "historySource"
        BIVTContainerVersion -> "containerVersion"
        BIVTDebugMode -> "debugMode"
        BIVTRandomNumber -> "randomNumber"
        BIVTContainerId -> "containerId"
        BIVTAppId -> "appId"
        BIVTAppName -> "appName"
        BIVTAppVersionCode -> "appVersionCode"
        BIVTAppVersionName -> "appVersionName"
        BIVTLanguage -> "language"
        BIVTOSVersion -> "osVersion"
        BIVTPlatform -> "platform"
        BIVTSdkVersion -> "sdkVersion"
        BIVTDeviceName -> "deviceName"
        BIVTResolution -> "resolution"
        BIVTAdvertiserId -> "advertiserId"
        BIVTAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        BIVTHTMLId -> "htmlId"
        BIVTEnvironmentName -> "environmentName"
        BIVTAmpBrowserLanguage -> "ampBrowserLanguage"
        BIVTAmpCanonicalPath -> "ampCanonicalPath"
        BIVTAmpCanonicalURL -> "ampCanonicalUrl"
        BIVTAmpCanonicalHost -> "ampCanonicalHost"
        BIVTAmpReferrer -> "ampReferrer"
        BIVTAmpTitle -> "ampTitle"
        BIVTAmpClientId -> "ampClientId"
        BIVTAmpClientTimezone -> "ampClientTimezone"
        BIVTAmpClientTimestamp -> "ampClientTimestamp"
        BIVTAmpClientScreenWidth -> "ampClientScreenWidth"
        BIVTAmpClientScreenHeight -> "ampClientScreenHeight"
        BIVTAmpClientScrollX -> "ampClientScrollX"
        BIVTAmpClientScrollY -> "ampClientScrollY"
        BIVTAmpClientMaxScrollX -> "ampClientMaxScrollX"
        BIVTAmpClientMaxScrollY -> "ampClientMaxScrollY"
        BIVTAmpTotalEngagedTime -> "ampTotalEngagedTime"
        BIVTAmpPageViewId -> "ampPageViewId"
        BIVTAmpPageLoadTime -> "ampPageLoadTime"
        BIVTAmpPageDownloadTime -> "ampPageDownloadTime"
        BIVTAmpGtmEvent -> "ampGtmEvent"
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
        BIVTVideoProvider -> "videoProvider"
        BIVTVideoURL -> "videoUrl"
        BIVTVideoTitle -> "videoTitle"
        BIVTVideoDuration -> "videoDuration"
        BIVTVideoPercent -> "videoPercent"
        BIVTVideoVisible -> "videoVisible"
        BIVTVideoStatus -> "videoStatus"
        BIVTVideoCurrentTime -> "videoCurrentTime"
        BIVTScrollDepthThreshold -> "scrollDepthThreshold"
        BIVTScrollDepthUnits -> "scrollDepthUnits"
        BIVTScrollDepthDirection -> "scrollDepthDirection"
        BIVTElementVisibilityRatio -> "elementVisibilityRatio"
        BIVTElementVisibilityTime -> "elementVisibilityTime"
        BIVTElementVisibilityFirstTime -> "elementVisibilityFirstTime"
        BIVTElementVisibilityRecentTime -> "elementVisibilityRecentTime"
        BIVTRequestPath -> "requestPath"
        BIVTRequestMethod -> "requestMethod"
        BIVTClientName -> "clientName"
        BIVTQueryString -> "queryString"
        BIVTServerPageLocationURL -> "serverPageLocationUrl"
        BIVTServerPageLocationPath -> "serverPageLocationPath"
        BIVTServerPageLocationHostname -> "serverPageLocationHostname"

instance FromJSON BuiltInVariableType where
    parseJSON = parseJSONText "BuiltInVariableType"

instance ToJSON BuiltInVariableType where
    toJSON = toJSONText

-- | The types of built-in variables to delete.
data AccountsContainersWorkspacesBuilt_in_variablesDeleteType
    = ACWBDTBuiltInVariableTypeUnspecified
      -- ^ @builtInVariableTypeUnspecified@
    | ACWBDTPageURL
      -- ^ @pageUrl@
    | ACWBDTPageHostname
      -- ^ @pageHostname@
    | ACWBDTPagePath
      -- ^ @pagePath@
    | ACWBDTReferrer
      -- ^ @referrer@
    | ACWBDTEvent
      -- ^ @event@
      -- For web or mobile.
    | ACWBDTClickElement
      -- ^ @clickElement@
    | ACWBDTClickClasses
      -- ^ @clickClasses@
    | ACWBDTClickId
      -- ^ @clickId@
    | ACWBDTClickTarget
      -- ^ @clickTarget@
    | ACWBDTClickURL
      -- ^ @clickUrl@
    | ACWBDTClickText
      -- ^ @clickText@
    | ACWBDTFirstPartyServingURL
      -- ^ @firstPartyServingUrl@
    | ACWBDTFormElement
      -- ^ @formElement@
    | ACWBDTFormClasses
      -- ^ @formClasses@
    | ACWBDTFormId
      -- ^ @formId@
    | ACWBDTFormTarget
      -- ^ @formTarget@
    | ACWBDTFormURL
      -- ^ @formUrl@
    | ACWBDTFormText
      -- ^ @formText@
    | ACWBDTErrorMessage
      -- ^ @errorMessage@
    | ACWBDTErrorURL
      -- ^ @errorUrl@
    | ACWBDTErrorLine
      -- ^ @errorLine@
    | ACWBDTNewHistoryURL
      -- ^ @newHistoryUrl@
    | ACWBDTOldHistoryURL
      -- ^ @oldHistoryUrl@
    | ACWBDTNewHistoryFragment
      -- ^ @newHistoryFragment@
    | ACWBDTOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | ACWBDTNewHistoryState
      -- ^ @newHistoryState@
    | ACWBDTOldHistoryState
      -- ^ @oldHistoryState@
    | ACWBDTHistorySource
      -- ^ @historySource@
    | ACWBDTContainerVersion
      -- ^ @containerVersion@
      -- For web or mobile.
    | ACWBDTDebugMode
      -- ^ @debugMode@
    | ACWBDTRandomNumber
      -- ^ @randomNumber@
      -- For web or mobile.
    | ACWBDTContainerId
      -- ^ @containerId@
      -- For web or mobile.
    | ACWBDTAppId
      -- ^ @appId@
    | ACWBDTAppName
      -- ^ @appName@
    | ACWBDTAppVersionCode
      -- ^ @appVersionCode@
    | ACWBDTAppVersionName
      -- ^ @appVersionName@
    | ACWBDTLanguage
      -- ^ @language@
    | ACWBDTOSVersion
      -- ^ @osVersion@
    | ACWBDTPlatform
      -- ^ @platform@
    | ACWBDTSdkVersion
      -- ^ @sdkVersion@
    | ACWBDTDeviceName
      -- ^ @deviceName@
    | ACWBDTResolution
      -- ^ @resolution@
    | ACWBDTAdvertiserId
      -- ^ @advertiserId@
    | ACWBDTAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | ACWBDTHTMLId
      -- ^ @htmlId@
    | ACWBDTEnvironmentName
      -- ^ @environmentName@
    | ACWBDTAmpBrowserLanguage
      -- ^ @ampBrowserLanguage@
    | ACWBDTAmpCanonicalPath
      -- ^ @ampCanonicalPath@
    | ACWBDTAmpCanonicalURL
      -- ^ @ampCanonicalUrl@
    | ACWBDTAmpCanonicalHost
      -- ^ @ampCanonicalHost@
    | ACWBDTAmpReferrer
      -- ^ @ampReferrer@
    | ACWBDTAmpTitle
      -- ^ @ampTitle@
    | ACWBDTAmpClientId
      -- ^ @ampClientId@
    | ACWBDTAmpClientTimezone
      -- ^ @ampClientTimezone@
    | ACWBDTAmpClientTimestamp
      -- ^ @ampClientTimestamp@
    | ACWBDTAmpClientScreenWidth
      -- ^ @ampClientScreenWidth@
    | ACWBDTAmpClientScreenHeight
      -- ^ @ampClientScreenHeight@
    | ACWBDTAmpClientScrollX
      -- ^ @ampClientScrollX@
    | ACWBDTAmpClientScrollY
      -- ^ @ampClientScrollY@
    | ACWBDTAmpClientMaxScrollX
      -- ^ @ampClientMaxScrollX@
    | ACWBDTAmpClientMaxScrollY
      -- ^ @ampClientMaxScrollY@
    | ACWBDTAmpTotalEngagedTime
      -- ^ @ampTotalEngagedTime@
    | ACWBDTAmpPageViewId
      -- ^ @ampPageViewId@
    | ACWBDTAmpPageLoadTime
      -- ^ @ampPageLoadTime@
    | ACWBDTAmpPageDownloadTime
      -- ^ @ampPageDownloadTime@
    | ACWBDTAmpGtmEvent
      -- ^ @ampGtmEvent@
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
    | ACWBDTVideoProvider
      -- ^ @videoProvider@
    | ACWBDTVideoURL
      -- ^ @videoUrl@
    | ACWBDTVideoTitle
      -- ^ @videoTitle@
    | ACWBDTVideoDuration
      -- ^ @videoDuration@
    | ACWBDTVideoPercent
      -- ^ @videoPercent@
    | ACWBDTVideoVisible
      -- ^ @videoVisible@
    | ACWBDTVideoStatus
      -- ^ @videoStatus@
    | ACWBDTVideoCurrentTime
      -- ^ @videoCurrentTime@
    | ACWBDTScrollDepthThreshold
      -- ^ @scrollDepthThreshold@
    | ACWBDTScrollDepthUnits
      -- ^ @scrollDepthUnits@
    | ACWBDTScrollDepthDirection
      -- ^ @scrollDepthDirection@
    | ACWBDTElementVisibilityRatio
      -- ^ @elementVisibilityRatio@
    | ACWBDTElementVisibilityTime
      -- ^ @elementVisibilityTime@
    | ACWBDTElementVisibilityFirstTime
      -- ^ @elementVisibilityFirstTime@
    | ACWBDTElementVisibilityRecentTime
      -- ^ @elementVisibilityRecentTime@
    | ACWBDTRequestPath
      -- ^ @requestPath@
    | ACWBDTRequestMethod
      -- ^ @requestMethod@
    | ACWBDTClientName
      -- ^ @clientName@
    | ACWBDTQueryString
      -- ^ @queryString@
    | ACWBDTServerPageLocationURL
      -- ^ @serverPageLocationUrl@
    | ACWBDTServerPageLocationPath
      -- ^ @serverPageLocationPath@
    | ACWBDTServerPageLocationHostname
      -- ^ @serverPageLocationHostname@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsContainersWorkspacesBuilt_in_variablesDeleteType

instance FromHttpApiData AccountsContainersWorkspacesBuilt_in_variablesDeleteType where
    parseQueryParam = \case
        "builtInVariableTypeUnspecified" -> Right ACWBDTBuiltInVariableTypeUnspecified
        "pageUrl" -> Right ACWBDTPageURL
        "pageHostname" -> Right ACWBDTPageHostname
        "pagePath" -> Right ACWBDTPagePath
        "referrer" -> Right ACWBDTReferrer
        "event" -> Right ACWBDTEvent
        "clickElement" -> Right ACWBDTClickElement
        "clickClasses" -> Right ACWBDTClickClasses
        "clickId" -> Right ACWBDTClickId
        "clickTarget" -> Right ACWBDTClickTarget
        "clickUrl" -> Right ACWBDTClickURL
        "clickText" -> Right ACWBDTClickText
        "firstPartyServingUrl" -> Right ACWBDTFirstPartyServingURL
        "formElement" -> Right ACWBDTFormElement
        "formClasses" -> Right ACWBDTFormClasses
        "formId" -> Right ACWBDTFormId
        "formTarget" -> Right ACWBDTFormTarget
        "formUrl" -> Right ACWBDTFormURL
        "formText" -> Right ACWBDTFormText
        "errorMessage" -> Right ACWBDTErrorMessage
        "errorUrl" -> Right ACWBDTErrorURL
        "errorLine" -> Right ACWBDTErrorLine
        "newHistoryUrl" -> Right ACWBDTNewHistoryURL
        "oldHistoryUrl" -> Right ACWBDTOldHistoryURL
        "newHistoryFragment" -> Right ACWBDTNewHistoryFragment
        "oldHistoryFragment" -> Right ACWBDTOldHistoryFragment
        "newHistoryState" -> Right ACWBDTNewHistoryState
        "oldHistoryState" -> Right ACWBDTOldHistoryState
        "historySource" -> Right ACWBDTHistorySource
        "containerVersion" -> Right ACWBDTContainerVersion
        "debugMode" -> Right ACWBDTDebugMode
        "randomNumber" -> Right ACWBDTRandomNumber
        "containerId" -> Right ACWBDTContainerId
        "appId" -> Right ACWBDTAppId
        "appName" -> Right ACWBDTAppName
        "appVersionCode" -> Right ACWBDTAppVersionCode
        "appVersionName" -> Right ACWBDTAppVersionName
        "language" -> Right ACWBDTLanguage
        "osVersion" -> Right ACWBDTOSVersion
        "platform" -> Right ACWBDTPlatform
        "sdkVersion" -> Right ACWBDTSdkVersion
        "deviceName" -> Right ACWBDTDeviceName
        "resolution" -> Right ACWBDTResolution
        "advertiserId" -> Right ACWBDTAdvertiserId
        "advertisingTrackingEnabled" -> Right ACWBDTAdvertisingTrackingEnabled
        "htmlId" -> Right ACWBDTHTMLId
        "environmentName" -> Right ACWBDTEnvironmentName
        "ampBrowserLanguage" -> Right ACWBDTAmpBrowserLanguage
        "ampCanonicalPath" -> Right ACWBDTAmpCanonicalPath
        "ampCanonicalUrl" -> Right ACWBDTAmpCanonicalURL
        "ampCanonicalHost" -> Right ACWBDTAmpCanonicalHost
        "ampReferrer" -> Right ACWBDTAmpReferrer
        "ampTitle" -> Right ACWBDTAmpTitle
        "ampClientId" -> Right ACWBDTAmpClientId
        "ampClientTimezone" -> Right ACWBDTAmpClientTimezone
        "ampClientTimestamp" -> Right ACWBDTAmpClientTimestamp
        "ampClientScreenWidth" -> Right ACWBDTAmpClientScreenWidth
        "ampClientScreenHeight" -> Right ACWBDTAmpClientScreenHeight
        "ampClientScrollX" -> Right ACWBDTAmpClientScrollX
        "ampClientScrollY" -> Right ACWBDTAmpClientScrollY
        "ampClientMaxScrollX" -> Right ACWBDTAmpClientMaxScrollX
        "ampClientMaxScrollY" -> Right ACWBDTAmpClientMaxScrollY
        "ampTotalEngagedTime" -> Right ACWBDTAmpTotalEngagedTime
        "ampPageViewId" -> Right ACWBDTAmpPageViewId
        "ampPageLoadTime" -> Right ACWBDTAmpPageLoadTime
        "ampPageDownloadTime" -> Right ACWBDTAmpPageDownloadTime
        "ampGtmEvent" -> Right ACWBDTAmpGtmEvent
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
        "videoProvider" -> Right ACWBDTVideoProvider
        "videoUrl" -> Right ACWBDTVideoURL
        "videoTitle" -> Right ACWBDTVideoTitle
        "videoDuration" -> Right ACWBDTVideoDuration
        "videoPercent" -> Right ACWBDTVideoPercent
        "videoVisible" -> Right ACWBDTVideoVisible
        "videoStatus" -> Right ACWBDTVideoStatus
        "videoCurrentTime" -> Right ACWBDTVideoCurrentTime
        "scrollDepthThreshold" -> Right ACWBDTScrollDepthThreshold
        "scrollDepthUnits" -> Right ACWBDTScrollDepthUnits
        "scrollDepthDirection" -> Right ACWBDTScrollDepthDirection
        "elementVisibilityRatio" -> Right ACWBDTElementVisibilityRatio
        "elementVisibilityTime" -> Right ACWBDTElementVisibilityTime
        "elementVisibilityFirstTime" -> Right ACWBDTElementVisibilityFirstTime
        "elementVisibilityRecentTime" -> Right ACWBDTElementVisibilityRecentTime
        "requestPath" -> Right ACWBDTRequestPath
        "requestMethod" -> Right ACWBDTRequestMethod
        "clientName" -> Right ACWBDTClientName
        "queryString" -> Right ACWBDTQueryString
        "serverPageLocationUrl" -> Right ACWBDTServerPageLocationURL
        "serverPageLocationPath" -> Right ACWBDTServerPageLocationPath
        "serverPageLocationHostname" -> Right ACWBDTServerPageLocationHostname
        x -> Left ("Unable to parse AccountsContainersWorkspacesBuilt_in_variablesDeleteType from: " <> x)

instance ToHttpApiData AccountsContainersWorkspacesBuilt_in_variablesDeleteType where
    toQueryParam = \case
        ACWBDTBuiltInVariableTypeUnspecified -> "builtInVariableTypeUnspecified"
        ACWBDTPageURL -> "pageUrl"
        ACWBDTPageHostname -> "pageHostname"
        ACWBDTPagePath -> "pagePath"
        ACWBDTReferrer -> "referrer"
        ACWBDTEvent -> "event"
        ACWBDTClickElement -> "clickElement"
        ACWBDTClickClasses -> "clickClasses"
        ACWBDTClickId -> "clickId"
        ACWBDTClickTarget -> "clickTarget"
        ACWBDTClickURL -> "clickUrl"
        ACWBDTClickText -> "clickText"
        ACWBDTFirstPartyServingURL -> "firstPartyServingUrl"
        ACWBDTFormElement -> "formElement"
        ACWBDTFormClasses -> "formClasses"
        ACWBDTFormId -> "formId"
        ACWBDTFormTarget -> "formTarget"
        ACWBDTFormURL -> "formUrl"
        ACWBDTFormText -> "formText"
        ACWBDTErrorMessage -> "errorMessage"
        ACWBDTErrorURL -> "errorUrl"
        ACWBDTErrorLine -> "errorLine"
        ACWBDTNewHistoryURL -> "newHistoryUrl"
        ACWBDTOldHistoryURL -> "oldHistoryUrl"
        ACWBDTNewHistoryFragment -> "newHistoryFragment"
        ACWBDTOldHistoryFragment -> "oldHistoryFragment"
        ACWBDTNewHistoryState -> "newHistoryState"
        ACWBDTOldHistoryState -> "oldHistoryState"
        ACWBDTHistorySource -> "historySource"
        ACWBDTContainerVersion -> "containerVersion"
        ACWBDTDebugMode -> "debugMode"
        ACWBDTRandomNumber -> "randomNumber"
        ACWBDTContainerId -> "containerId"
        ACWBDTAppId -> "appId"
        ACWBDTAppName -> "appName"
        ACWBDTAppVersionCode -> "appVersionCode"
        ACWBDTAppVersionName -> "appVersionName"
        ACWBDTLanguage -> "language"
        ACWBDTOSVersion -> "osVersion"
        ACWBDTPlatform -> "platform"
        ACWBDTSdkVersion -> "sdkVersion"
        ACWBDTDeviceName -> "deviceName"
        ACWBDTResolution -> "resolution"
        ACWBDTAdvertiserId -> "advertiserId"
        ACWBDTAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        ACWBDTHTMLId -> "htmlId"
        ACWBDTEnvironmentName -> "environmentName"
        ACWBDTAmpBrowserLanguage -> "ampBrowserLanguage"
        ACWBDTAmpCanonicalPath -> "ampCanonicalPath"
        ACWBDTAmpCanonicalURL -> "ampCanonicalUrl"
        ACWBDTAmpCanonicalHost -> "ampCanonicalHost"
        ACWBDTAmpReferrer -> "ampReferrer"
        ACWBDTAmpTitle -> "ampTitle"
        ACWBDTAmpClientId -> "ampClientId"
        ACWBDTAmpClientTimezone -> "ampClientTimezone"
        ACWBDTAmpClientTimestamp -> "ampClientTimestamp"
        ACWBDTAmpClientScreenWidth -> "ampClientScreenWidth"
        ACWBDTAmpClientScreenHeight -> "ampClientScreenHeight"
        ACWBDTAmpClientScrollX -> "ampClientScrollX"
        ACWBDTAmpClientScrollY -> "ampClientScrollY"
        ACWBDTAmpClientMaxScrollX -> "ampClientMaxScrollX"
        ACWBDTAmpClientMaxScrollY -> "ampClientMaxScrollY"
        ACWBDTAmpTotalEngagedTime -> "ampTotalEngagedTime"
        ACWBDTAmpPageViewId -> "ampPageViewId"
        ACWBDTAmpPageLoadTime -> "ampPageLoadTime"
        ACWBDTAmpPageDownloadTime -> "ampPageDownloadTime"
        ACWBDTAmpGtmEvent -> "ampGtmEvent"
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
        ACWBDTVideoProvider -> "videoProvider"
        ACWBDTVideoURL -> "videoUrl"
        ACWBDTVideoTitle -> "videoTitle"
        ACWBDTVideoDuration -> "videoDuration"
        ACWBDTVideoPercent -> "videoPercent"
        ACWBDTVideoVisible -> "videoVisible"
        ACWBDTVideoStatus -> "videoStatus"
        ACWBDTVideoCurrentTime -> "videoCurrentTime"
        ACWBDTScrollDepthThreshold -> "scrollDepthThreshold"
        ACWBDTScrollDepthUnits -> "scrollDepthUnits"
        ACWBDTScrollDepthDirection -> "scrollDepthDirection"
        ACWBDTElementVisibilityRatio -> "elementVisibilityRatio"
        ACWBDTElementVisibilityTime -> "elementVisibilityTime"
        ACWBDTElementVisibilityFirstTime -> "elementVisibilityFirstTime"
        ACWBDTElementVisibilityRecentTime -> "elementVisibilityRecentTime"
        ACWBDTRequestPath -> "requestPath"
        ACWBDTRequestMethod -> "requestMethod"
        ACWBDTClientName -> "clientName"
        ACWBDTQueryString -> "queryString"
        ACWBDTServerPageLocationURL -> "serverPageLocationUrl"
        ACWBDTServerPageLocationPath -> "serverPageLocationPath"
        ACWBDTServerPageLocationHostname -> "serverPageLocationHostname"

instance FromJSON AccountsContainersWorkspacesBuilt_in_variablesDeleteType where
    parseJSON = parseJSONText "AccountsContainersWorkspacesBuilt_in_variablesDeleteType"

instance ToJSON AccountsContainersWorkspacesBuilt_in_variablesDeleteType where
    toJSON = toJSONText

-- | Defines the data layer event that causes this trigger. \'mutable
-- tagmanager.accounts.containers.workspaces.triggers.create \'mutable
-- tagmanager.accounts.containers.workspaces.triggers.update
data TriggerType
    = EventTypeUnspecified
      -- ^ @eventTypeUnspecified@
    | Pageview
      -- ^ @pageview@
    | DomReady
      -- ^ @domReady@
    | WindowLoaded
      -- ^ @windowLoaded@
    | CustomEvent
      -- ^ @customEvent@
    | TriggerGroup
      -- ^ @triggerGroup@
    | Init
      -- ^ @init@
    | ConsentInit
      -- ^ @consentInit@
    | ServerPageview
      -- ^ @serverPageview@
    | Always
      -- ^ @always@
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
    | Click
      -- ^ @click@
    | LinkClick
      -- ^ @linkClick@
    | JsError
      -- ^ @jsError@
    | HistoryChange
      -- ^ @historyChange@
    | Timer
      -- ^ @timer@
    | AmpClick
      -- ^ @ampClick@
    | AmpTimer
      -- ^ @ampTimer@
    | AmpScroll
      -- ^ @ampScroll@
    | AmpVisibility
      -- ^ @ampVisibility@
    | YouTubeVideo
      -- ^ @youTubeVideo@
    | ScrollDepth
      -- ^ @scrollDepth@
    | ElementVisibility
      -- ^ @elementVisibility@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TriggerType

instance FromHttpApiData TriggerType where
    parseQueryParam = \case
        "eventTypeUnspecified" -> Right EventTypeUnspecified
        "pageview" -> Right Pageview
        "domReady" -> Right DomReady
        "windowLoaded" -> Right WindowLoaded
        "customEvent" -> Right CustomEvent
        "triggerGroup" -> Right TriggerGroup
        "init" -> Right Init
        "consentInit" -> Right ConsentInit
        "serverPageview" -> Right ServerPageview
        "always" -> Right Always
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
        "click" -> Right Click
        "linkClick" -> Right LinkClick
        "jsError" -> Right JsError
        "historyChange" -> Right HistoryChange
        "timer" -> Right Timer
        "ampClick" -> Right AmpClick
        "ampTimer" -> Right AmpTimer
        "ampScroll" -> Right AmpScroll
        "ampVisibility" -> Right AmpVisibility
        "youTubeVideo" -> Right YouTubeVideo
        "scrollDepth" -> Right ScrollDepth
        "elementVisibility" -> Right ElementVisibility
        x -> Left ("Unable to parse TriggerType from: " <> x)

instance ToHttpApiData TriggerType where
    toQueryParam = \case
        EventTypeUnspecified -> "eventTypeUnspecified"
        Pageview -> "pageview"
        DomReady -> "domReady"
        WindowLoaded -> "windowLoaded"
        CustomEvent -> "customEvent"
        TriggerGroup -> "triggerGroup"
        Init -> "init"
        ConsentInit -> "consentInit"
        ServerPageview -> "serverPageview"
        Always -> "always"
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
        Click -> "click"
        LinkClick -> "linkClick"
        JsError -> "jsError"
        HistoryChange -> "historyChange"
        Timer -> "timer"
        AmpClick -> "ampClick"
        AmpTimer -> "ampTimer"
        AmpScroll -> "ampScroll"
        AmpVisibility -> "ampVisibility"
        YouTubeVideo -> "youTubeVideo"
        ScrollDepth -> "scrollDepth"
        ElementVisibility -> "elementVisibility"

instance FromJSON TriggerType where
    parseJSON = parseJSONText "TriggerType"

instance ToJSON TriggerType where
    toJSON = toJSONText

-- | List of Container permissions. \'mutable
-- tagmanager.accounts.permissions.create \'mutable
-- tagmanager.accounts.permissions.update
data ContainerAccessPermission
    = ContainerPermissionUnspecified
      -- ^ @containerPermissionUnspecified@
    | NoAccess
      -- ^ @noAccess@
    | Read'
      -- ^ @read@
    | Edit
      -- ^ @edit@
    | Approve
      -- ^ @approve@
    | Publish
      -- ^ @publish@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContainerAccessPermission

instance FromHttpApiData ContainerAccessPermission where
    parseQueryParam = \case
        "containerPermissionUnspecified" -> Right ContainerPermissionUnspecified
        "noAccess" -> Right NoAccess
        "read" -> Right Read'
        "edit" -> Right Edit
        "approve" -> Right Approve
        "publish" -> Right Publish
        x -> Left ("Unable to parse ContainerAccessPermission from: " <> x)

instance ToHttpApiData ContainerAccessPermission where
    toQueryParam = \case
        ContainerPermissionUnspecified -> "containerPermissionUnspecified"
        NoAccess -> "noAccess"
        Read' -> "read"
        Edit -> "edit"
        Approve -> "approve"
        Publish -> "publish"

instance FromJSON ContainerAccessPermission where
    parseJSON = parseJSONText "ContainerAccessPermission"

instance ToJSON ContainerAccessPermission where
    toJSON = toJSONText

data ContainerUsageContextItem
    = UsageContextUnspecified
      -- ^ @usageContextUnspecified@
    | Web
      -- ^ @web@
    | Android
      -- ^ @android@
    | Ios
      -- ^ @ios@
    | ANDROIdSDK5
      -- ^ @androidSdk5@
    | IOSSDK5
      -- ^ @iosSdk5@
    | Amp
      -- ^ @amp@
    | Server
      -- ^ @server@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContainerUsageContextItem

instance FromHttpApiData ContainerUsageContextItem where
    parseQueryParam = \case
        "usageContextUnspecified" -> Right UsageContextUnspecified
        "web" -> Right Web
        "android" -> Right Android
        "ios" -> Right Ios
        "androidSdk5" -> Right ANDROIdSDK5
        "iosSdk5" -> Right IOSSDK5
        "amp" -> Right Amp
        "server" -> Right Server
        x -> Left ("Unable to parse ContainerUsageContextItem from: " <> x)

instance ToHttpApiData ContainerUsageContextItem where
    toQueryParam = \case
        UsageContextUnspecified -> "usageContextUnspecified"
        Web -> "web"
        Android -> "android"
        Ios -> "ios"
        ANDROIdSDK5 -> "androidSdk5"
        IOSSDK5 -> "iosSdk5"
        Amp -> "amp"
        Server -> "server"

instance FromJSON ContainerUsageContextItem where
    parseJSON = parseJSONText "ContainerUsageContextItem"

instance ToJSON ContainerUsageContextItem where
    toJSON = toJSONText

-- | The types of built-in variables to enable.
data AccountsContainersWorkspacesBuilt_in_variablesCreateType
    = ACWBCTBuiltInVariableTypeUnspecified
      -- ^ @builtInVariableTypeUnspecified@
    | ACWBCTPageURL
      -- ^ @pageUrl@
    | ACWBCTPageHostname
      -- ^ @pageHostname@
    | ACWBCTPagePath
      -- ^ @pagePath@
    | ACWBCTReferrer
      -- ^ @referrer@
    | ACWBCTEvent
      -- ^ @event@
      -- For web or mobile.
    | ACWBCTClickElement
      -- ^ @clickElement@
    | ACWBCTClickClasses
      -- ^ @clickClasses@
    | ACWBCTClickId
      -- ^ @clickId@
    | ACWBCTClickTarget
      -- ^ @clickTarget@
    | ACWBCTClickURL
      -- ^ @clickUrl@
    | ACWBCTClickText
      -- ^ @clickText@
    | ACWBCTFirstPartyServingURL
      -- ^ @firstPartyServingUrl@
    | ACWBCTFormElement
      -- ^ @formElement@
    | ACWBCTFormClasses
      -- ^ @formClasses@
    | ACWBCTFormId
      -- ^ @formId@
    | ACWBCTFormTarget
      -- ^ @formTarget@
    | ACWBCTFormURL
      -- ^ @formUrl@
    | ACWBCTFormText
      -- ^ @formText@
    | ACWBCTErrorMessage
      -- ^ @errorMessage@
    | ACWBCTErrorURL
      -- ^ @errorUrl@
    | ACWBCTErrorLine
      -- ^ @errorLine@
    | ACWBCTNewHistoryURL
      -- ^ @newHistoryUrl@
    | ACWBCTOldHistoryURL
      -- ^ @oldHistoryUrl@
    | ACWBCTNewHistoryFragment
      -- ^ @newHistoryFragment@
    | ACWBCTOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | ACWBCTNewHistoryState
      -- ^ @newHistoryState@
    | ACWBCTOldHistoryState
      -- ^ @oldHistoryState@
    | ACWBCTHistorySource
      -- ^ @historySource@
    | ACWBCTContainerVersion
      -- ^ @containerVersion@
      -- For web or mobile.
    | ACWBCTDebugMode
      -- ^ @debugMode@
    | ACWBCTRandomNumber
      -- ^ @randomNumber@
      -- For web or mobile.
    | ACWBCTContainerId
      -- ^ @containerId@
      -- For web or mobile.
    | ACWBCTAppId
      -- ^ @appId@
    | ACWBCTAppName
      -- ^ @appName@
    | ACWBCTAppVersionCode
      -- ^ @appVersionCode@
    | ACWBCTAppVersionName
      -- ^ @appVersionName@
    | ACWBCTLanguage
      -- ^ @language@
    | ACWBCTOSVersion
      -- ^ @osVersion@
    | ACWBCTPlatform
      -- ^ @platform@
    | ACWBCTSdkVersion
      -- ^ @sdkVersion@
    | ACWBCTDeviceName
      -- ^ @deviceName@
    | ACWBCTResolution
      -- ^ @resolution@
    | ACWBCTAdvertiserId
      -- ^ @advertiserId@
    | ACWBCTAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | ACWBCTHTMLId
      -- ^ @htmlId@
    | ACWBCTEnvironmentName
      -- ^ @environmentName@
    | ACWBCTAmpBrowserLanguage
      -- ^ @ampBrowserLanguage@
    | ACWBCTAmpCanonicalPath
      -- ^ @ampCanonicalPath@
    | ACWBCTAmpCanonicalURL
      -- ^ @ampCanonicalUrl@
    | ACWBCTAmpCanonicalHost
      -- ^ @ampCanonicalHost@
    | ACWBCTAmpReferrer
      -- ^ @ampReferrer@
    | ACWBCTAmpTitle
      -- ^ @ampTitle@
    | ACWBCTAmpClientId
      -- ^ @ampClientId@
    | ACWBCTAmpClientTimezone
      -- ^ @ampClientTimezone@
    | ACWBCTAmpClientTimestamp
      -- ^ @ampClientTimestamp@
    | ACWBCTAmpClientScreenWidth
      -- ^ @ampClientScreenWidth@
    | ACWBCTAmpClientScreenHeight
      -- ^ @ampClientScreenHeight@
    | ACWBCTAmpClientScrollX
      -- ^ @ampClientScrollX@
    | ACWBCTAmpClientScrollY
      -- ^ @ampClientScrollY@
    | ACWBCTAmpClientMaxScrollX
      -- ^ @ampClientMaxScrollX@
    | ACWBCTAmpClientMaxScrollY
      -- ^ @ampClientMaxScrollY@
    | ACWBCTAmpTotalEngagedTime
      -- ^ @ampTotalEngagedTime@
    | ACWBCTAmpPageViewId
      -- ^ @ampPageViewId@
    | ACWBCTAmpPageLoadTime
      -- ^ @ampPageLoadTime@
    | ACWBCTAmpPageDownloadTime
      -- ^ @ampPageDownloadTime@
    | ACWBCTAmpGtmEvent
      -- ^ @ampGtmEvent@
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
    | ACWBCTVideoProvider
      -- ^ @videoProvider@
    | ACWBCTVideoURL
      -- ^ @videoUrl@
    | ACWBCTVideoTitle
      -- ^ @videoTitle@
    | ACWBCTVideoDuration
      -- ^ @videoDuration@
    | ACWBCTVideoPercent
      -- ^ @videoPercent@
    | ACWBCTVideoVisible
      -- ^ @videoVisible@
    | ACWBCTVideoStatus
      -- ^ @videoStatus@
    | ACWBCTVideoCurrentTime
      -- ^ @videoCurrentTime@
    | ACWBCTScrollDepthThreshold
      -- ^ @scrollDepthThreshold@
    | ACWBCTScrollDepthUnits
      -- ^ @scrollDepthUnits@
    | ACWBCTScrollDepthDirection
      -- ^ @scrollDepthDirection@
    | ACWBCTElementVisibilityRatio
      -- ^ @elementVisibilityRatio@
    | ACWBCTElementVisibilityTime
      -- ^ @elementVisibilityTime@
    | ACWBCTElementVisibilityFirstTime
      -- ^ @elementVisibilityFirstTime@
    | ACWBCTElementVisibilityRecentTime
      -- ^ @elementVisibilityRecentTime@
    | ACWBCTRequestPath
      -- ^ @requestPath@
    | ACWBCTRequestMethod
      -- ^ @requestMethod@
    | ACWBCTClientName
      -- ^ @clientName@
    | ACWBCTQueryString
      -- ^ @queryString@
    | ACWBCTServerPageLocationURL
      -- ^ @serverPageLocationUrl@
    | ACWBCTServerPageLocationPath
      -- ^ @serverPageLocationPath@
    | ACWBCTServerPageLocationHostname
      -- ^ @serverPageLocationHostname@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsContainersWorkspacesBuilt_in_variablesCreateType

instance FromHttpApiData AccountsContainersWorkspacesBuilt_in_variablesCreateType where
    parseQueryParam = \case
        "builtInVariableTypeUnspecified" -> Right ACWBCTBuiltInVariableTypeUnspecified
        "pageUrl" -> Right ACWBCTPageURL
        "pageHostname" -> Right ACWBCTPageHostname
        "pagePath" -> Right ACWBCTPagePath
        "referrer" -> Right ACWBCTReferrer
        "event" -> Right ACWBCTEvent
        "clickElement" -> Right ACWBCTClickElement
        "clickClasses" -> Right ACWBCTClickClasses
        "clickId" -> Right ACWBCTClickId
        "clickTarget" -> Right ACWBCTClickTarget
        "clickUrl" -> Right ACWBCTClickURL
        "clickText" -> Right ACWBCTClickText
        "firstPartyServingUrl" -> Right ACWBCTFirstPartyServingURL
        "formElement" -> Right ACWBCTFormElement
        "formClasses" -> Right ACWBCTFormClasses
        "formId" -> Right ACWBCTFormId
        "formTarget" -> Right ACWBCTFormTarget
        "formUrl" -> Right ACWBCTFormURL
        "formText" -> Right ACWBCTFormText
        "errorMessage" -> Right ACWBCTErrorMessage
        "errorUrl" -> Right ACWBCTErrorURL
        "errorLine" -> Right ACWBCTErrorLine
        "newHistoryUrl" -> Right ACWBCTNewHistoryURL
        "oldHistoryUrl" -> Right ACWBCTOldHistoryURL
        "newHistoryFragment" -> Right ACWBCTNewHistoryFragment
        "oldHistoryFragment" -> Right ACWBCTOldHistoryFragment
        "newHistoryState" -> Right ACWBCTNewHistoryState
        "oldHistoryState" -> Right ACWBCTOldHistoryState
        "historySource" -> Right ACWBCTHistorySource
        "containerVersion" -> Right ACWBCTContainerVersion
        "debugMode" -> Right ACWBCTDebugMode
        "randomNumber" -> Right ACWBCTRandomNumber
        "containerId" -> Right ACWBCTContainerId
        "appId" -> Right ACWBCTAppId
        "appName" -> Right ACWBCTAppName
        "appVersionCode" -> Right ACWBCTAppVersionCode
        "appVersionName" -> Right ACWBCTAppVersionName
        "language" -> Right ACWBCTLanguage
        "osVersion" -> Right ACWBCTOSVersion
        "platform" -> Right ACWBCTPlatform
        "sdkVersion" -> Right ACWBCTSdkVersion
        "deviceName" -> Right ACWBCTDeviceName
        "resolution" -> Right ACWBCTResolution
        "advertiserId" -> Right ACWBCTAdvertiserId
        "advertisingTrackingEnabled" -> Right ACWBCTAdvertisingTrackingEnabled
        "htmlId" -> Right ACWBCTHTMLId
        "environmentName" -> Right ACWBCTEnvironmentName
        "ampBrowserLanguage" -> Right ACWBCTAmpBrowserLanguage
        "ampCanonicalPath" -> Right ACWBCTAmpCanonicalPath
        "ampCanonicalUrl" -> Right ACWBCTAmpCanonicalURL
        "ampCanonicalHost" -> Right ACWBCTAmpCanonicalHost
        "ampReferrer" -> Right ACWBCTAmpReferrer
        "ampTitle" -> Right ACWBCTAmpTitle
        "ampClientId" -> Right ACWBCTAmpClientId
        "ampClientTimezone" -> Right ACWBCTAmpClientTimezone
        "ampClientTimestamp" -> Right ACWBCTAmpClientTimestamp
        "ampClientScreenWidth" -> Right ACWBCTAmpClientScreenWidth
        "ampClientScreenHeight" -> Right ACWBCTAmpClientScreenHeight
        "ampClientScrollX" -> Right ACWBCTAmpClientScrollX
        "ampClientScrollY" -> Right ACWBCTAmpClientScrollY
        "ampClientMaxScrollX" -> Right ACWBCTAmpClientMaxScrollX
        "ampClientMaxScrollY" -> Right ACWBCTAmpClientMaxScrollY
        "ampTotalEngagedTime" -> Right ACWBCTAmpTotalEngagedTime
        "ampPageViewId" -> Right ACWBCTAmpPageViewId
        "ampPageLoadTime" -> Right ACWBCTAmpPageLoadTime
        "ampPageDownloadTime" -> Right ACWBCTAmpPageDownloadTime
        "ampGtmEvent" -> Right ACWBCTAmpGtmEvent
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
        "videoProvider" -> Right ACWBCTVideoProvider
        "videoUrl" -> Right ACWBCTVideoURL
        "videoTitle" -> Right ACWBCTVideoTitle
        "videoDuration" -> Right ACWBCTVideoDuration
        "videoPercent" -> Right ACWBCTVideoPercent
        "videoVisible" -> Right ACWBCTVideoVisible
        "videoStatus" -> Right ACWBCTVideoStatus
        "videoCurrentTime" -> Right ACWBCTVideoCurrentTime
        "scrollDepthThreshold" -> Right ACWBCTScrollDepthThreshold
        "scrollDepthUnits" -> Right ACWBCTScrollDepthUnits
        "scrollDepthDirection" -> Right ACWBCTScrollDepthDirection
        "elementVisibilityRatio" -> Right ACWBCTElementVisibilityRatio
        "elementVisibilityTime" -> Right ACWBCTElementVisibilityTime
        "elementVisibilityFirstTime" -> Right ACWBCTElementVisibilityFirstTime
        "elementVisibilityRecentTime" -> Right ACWBCTElementVisibilityRecentTime
        "requestPath" -> Right ACWBCTRequestPath
        "requestMethod" -> Right ACWBCTRequestMethod
        "clientName" -> Right ACWBCTClientName
        "queryString" -> Right ACWBCTQueryString
        "serverPageLocationUrl" -> Right ACWBCTServerPageLocationURL
        "serverPageLocationPath" -> Right ACWBCTServerPageLocationPath
        "serverPageLocationHostname" -> Right ACWBCTServerPageLocationHostname
        x -> Left ("Unable to parse AccountsContainersWorkspacesBuilt_in_variablesCreateType from: " <> x)

instance ToHttpApiData AccountsContainersWorkspacesBuilt_in_variablesCreateType where
    toQueryParam = \case
        ACWBCTBuiltInVariableTypeUnspecified -> "builtInVariableTypeUnspecified"
        ACWBCTPageURL -> "pageUrl"
        ACWBCTPageHostname -> "pageHostname"
        ACWBCTPagePath -> "pagePath"
        ACWBCTReferrer -> "referrer"
        ACWBCTEvent -> "event"
        ACWBCTClickElement -> "clickElement"
        ACWBCTClickClasses -> "clickClasses"
        ACWBCTClickId -> "clickId"
        ACWBCTClickTarget -> "clickTarget"
        ACWBCTClickURL -> "clickUrl"
        ACWBCTClickText -> "clickText"
        ACWBCTFirstPartyServingURL -> "firstPartyServingUrl"
        ACWBCTFormElement -> "formElement"
        ACWBCTFormClasses -> "formClasses"
        ACWBCTFormId -> "formId"
        ACWBCTFormTarget -> "formTarget"
        ACWBCTFormURL -> "formUrl"
        ACWBCTFormText -> "formText"
        ACWBCTErrorMessage -> "errorMessage"
        ACWBCTErrorURL -> "errorUrl"
        ACWBCTErrorLine -> "errorLine"
        ACWBCTNewHistoryURL -> "newHistoryUrl"
        ACWBCTOldHistoryURL -> "oldHistoryUrl"
        ACWBCTNewHistoryFragment -> "newHistoryFragment"
        ACWBCTOldHistoryFragment -> "oldHistoryFragment"
        ACWBCTNewHistoryState -> "newHistoryState"
        ACWBCTOldHistoryState -> "oldHistoryState"
        ACWBCTHistorySource -> "historySource"
        ACWBCTContainerVersion -> "containerVersion"
        ACWBCTDebugMode -> "debugMode"
        ACWBCTRandomNumber -> "randomNumber"
        ACWBCTContainerId -> "containerId"
        ACWBCTAppId -> "appId"
        ACWBCTAppName -> "appName"
        ACWBCTAppVersionCode -> "appVersionCode"
        ACWBCTAppVersionName -> "appVersionName"
        ACWBCTLanguage -> "language"
        ACWBCTOSVersion -> "osVersion"
        ACWBCTPlatform -> "platform"
        ACWBCTSdkVersion -> "sdkVersion"
        ACWBCTDeviceName -> "deviceName"
        ACWBCTResolution -> "resolution"
        ACWBCTAdvertiserId -> "advertiserId"
        ACWBCTAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        ACWBCTHTMLId -> "htmlId"
        ACWBCTEnvironmentName -> "environmentName"
        ACWBCTAmpBrowserLanguage -> "ampBrowserLanguage"
        ACWBCTAmpCanonicalPath -> "ampCanonicalPath"
        ACWBCTAmpCanonicalURL -> "ampCanonicalUrl"
        ACWBCTAmpCanonicalHost -> "ampCanonicalHost"
        ACWBCTAmpReferrer -> "ampReferrer"
        ACWBCTAmpTitle -> "ampTitle"
        ACWBCTAmpClientId -> "ampClientId"
        ACWBCTAmpClientTimezone -> "ampClientTimezone"
        ACWBCTAmpClientTimestamp -> "ampClientTimestamp"
        ACWBCTAmpClientScreenWidth -> "ampClientScreenWidth"
        ACWBCTAmpClientScreenHeight -> "ampClientScreenHeight"
        ACWBCTAmpClientScrollX -> "ampClientScrollX"
        ACWBCTAmpClientScrollY -> "ampClientScrollY"
        ACWBCTAmpClientMaxScrollX -> "ampClientMaxScrollX"
        ACWBCTAmpClientMaxScrollY -> "ampClientMaxScrollY"
        ACWBCTAmpTotalEngagedTime -> "ampTotalEngagedTime"
        ACWBCTAmpPageViewId -> "ampPageViewId"
        ACWBCTAmpPageLoadTime -> "ampPageLoadTime"
        ACWBCTAmpPageDownloadTime -> "ampPageDownloadTime"
        ACWBCTAmpGtmEvent -> "ampGtmEvent"
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
        ACWBCTVideoProvider -> "videoProvider"
        ACWBCTVideoURL -> "videoUrl"
        ACWBCTVideoTitle -> "videoTitle"
        ACWBCTVideoDuration -> "videoDuration"
        ACWBCTVideoPercent -> "videoPercent"
        ACWBCTVideoVisible -> "videoVisible"
        ACWBCTVideoStatus -> "videoStatus"
        ACWBCTVideoCurrentTime -> "videoCurrentTime"
        ACWBCTScrollDepthThreshold -> "scrollDepthThreshold"
        ACWBCTScrollDepthUnits -> "scrollDepthUnits"
        ACWBCTScrollDepthDirection -> "scrollDepthDirection"
        ACWBCTElementVisibilityRatio -> "elementVisibilityRatio"
        ACWBCTElementVisibilityTime -> "elementVisibilityTime"
        ACWBCTElementVisibilityFirstTime -> "elementVisibilityFirstTime"
        ACWBCTElementVisibilityRecentTime -> "elementVisibilityRecentTime"
        ACWBCTRequestPath -> "requestPath"
        ACWBCTRequestMethod -> "requestMethod"
        ACWBCTClientName -> "clientName"
        ACWBCTQueryString -> "queryString"
        ACWBCTServerPageLocationURL -> "serverPageLocationUrl"
        ACWBCTServerPageLocationPath -> "serverPageLocationPath"
        ACWBCTServerPageLocationHostname -> "serverPageLocationHostname"

instance FromJSON AccountsContainersWorkspacesBuilt_in_variablesCreateType where
    parseJSON = parseJSONText "AccountsContainersWorkspacesBuilt_in_variablesCreateType"

instance ToJSON AccountsContainersWorkspacesBuilt_in_variablesCreateType where
    toJSON = toJSONText

-- | The type of operator for this condition. \'mutable
-- tagmanager.accounts.containers.workspaces.triggers.create \'mutable
-- tagmanager.accounts.containers.workspaces.triggers.update
data ConditionType
    = ConditionTypeUnspecified
      -- ^ @conditionTypeUnspecified@
    | Equals
      -- ^ @equals@
    | Contains
      -- ^ @contains@
    | StartsWith
      -- ^ @startsWith@
    | EndsWith
      -- ^ @endsWith@
    | MatchRegex
      -- ^ @matchRegex@
    | Greater
      -- ^ @greater@
    | GreaterOrEquals
      -- ^ @greaterOrEquals@
    | Less
      -- ^ @less@
    | LessOrEquals
      -- ^ @lessOrEquals@
    | CssSelector
      -- ^ @cssSelector@
    | URLMatches
      -- ^ @urlMatches@
      -- NOTE(lanzone): When defining a ConditionType here, don\'t forget to also
      -- define a matching PredicateType (in condition.proto).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionType

instance FromHttpApiData ConditionType where
    parseQueryParam = \case
        "conditionTypeUnspecified" -> Right ConditionTypeUnspecified
        "equals" -> Right Equals
        "contains" -> Right Contains
        "startsWith" -> Right StartsWith
        "endsWith" -> Right EndsWith
        "matchRegex" -> Right MatchRegex
        "greater" -> Right Greater
        "greaterOrEquals" -> Right GreaterOrEquals
        "less" -> Right Less
        "lessOrEquals" -> Right LessOrEquals
        "cssSelector" -> Right CssSelector
        "urlMatches" -> Right URLMatches
        x -> Left ("Unable to parse ConditionType from: " <> x)

instance ToHttpApiData ConditionType where
    toQueryParam = \case
        ConditionTypeUnspecified -> "conditionTypeUnspecified"
        Equals -> "equals"
        Contains -> "contains"
        StartsWith -> "startsWith"
        EndsWith -> "endsWith"
        MatchRegex -> "matchRegex"
        Greater -> "greater"
        GreaterOrEquals -> "greaterOrEquals"
        Less -> "less"
        LessOrEquals -> "lessOrEquals"
        CssSelector -> "cssSelector"
        URLMatches -> "urlMatches"

instance FromJSON ConditionType where
    parseJSON = parseJSONText "ConditionType"

instance ToJSON ConditionType where
    toJSON = toJSONText

-- | Option to fire this tag.
data TagTagFiringOption
    = TagFiringOptionUnspecified
      -- ^ @tagFiringOptionUnspecified@
    | Unlimited
      -- ^ @unlimited@
      -- Tag can be fired multiple times per event.
    | OncePerEvent
      -- ^ @oncePerEvent@
      -- Tag can only be fired per event but can be fired multiple times per load
      -- (e.g., app load or page load).
    | OncePerLoad
      -- ^ @oncePerLoad@
      -- Tag can only be fired per load (e.g., app load or page load).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TagTagFiringOption

instance FromHttpApiData TagTagFiringOption where
    parseQueryParam = \case
        "tagFiringOptionUnspecified" -> Right TagFiringOptionUnspecified
        "unlimited" -> Right Unlimited
        "oncePerEvent" -> Right OncePerEvent
        "oncePerLoad" -> Right OncePerLoad
        x -> Left ("Unable to parse TagTagFiringOption from: " <> x)

instance ToHttpApiData TagTagFiringOption where
    toQueryParam = \case
        TagFiringOptionUnspecified -> "tagFiringOptionUnspecified"
        Unlimited -> "unlimited"
        OncePerEvent -> "oncePerEvent"
        OncePerLoad -> "oncePerLoad"

instance FromJSON TagTagFiringOption where
    parseJSON = parseJSONText "TagTagFiringOption"

instance ToJSON TagTagFiringOption where
    toJSON = toJSONText

-- | Whether the user has no access, user access, or admin access to an
-- account. \'mutable tagmanager.accounts.permissions.create \'mutable
-- tagmanager.accounts.permissions.update
data AccountAccessPermission
    = AAPAccountPermissionUnspecified
      -- ^ @accountPermissionUnspecified@
    | AAPNoAccess
      -- ^ @noAccess@
    | AAPUser
      -- ^ @user@
    | AAPAdmin
      -- ^ @admin@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountAccessPermission

instance FromHttpApiData AccountAccessPermission where
    parseQueryParam = \case
        "accountPermissionUnspecified" -> Right AAPAccountPermissionUnspecified
        "noAccess" -> Right AAPNoAccess
        "user" -> Right AAPUser
        "admin" -> Right AAPAdmin
        x -> Left ("Unable to parse AccountAccessPermission from: " <> x)

instance ToHttpApiData AccountAccessPermission where
    toQueryParam = \case
        AAPAccountPermissionUnspecified -> "accountPermissionUnspecified"
        AAPNoAccess -> "noAccess"
        AAPUser -> "user"
        AAPAdmin -> "admin"

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
-- non-string types) - trigger_reference: The value represents a trigger,
-- represented as the trigger id - tag_reference: The value represents a
-- tag, represented as the tag name \'mutable
-- tagmanager.accounts.containers.workspaces.variables.create \'mutable
-- tagmanager.accounts.containers.workspaces.variables.update \'mutable
-- tagmanager.accounts.containers.workspaces.triggers.create \'mutable
-- tagmanager.accounts.containers.workspaces.triggers.update \'mutable
-- tagmanager.accounts.containers.workspaces.tags.create \'mutable
-- tagmanager.accounts.containers.workspaces.tags.update
data ParameterType
    = TypeUnspecified
      -- ^ @typeUnspecified@
    | Template
      -- ^ @template@
      -- May include variable references (such as \"{{myVariable}}\").
    | Integer
      -- ^ @integer@
    | Boolean
      -- ^ @boolean@
    | List
      -- ^ @list@
    | Map
      -- ^ @map@
    | TriggerReference
      -- ^ @triggerReference@
    | TagReference
      -- ^ @tagReference@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParameterType

instance FromHttpApiData ParameterType where
    parseQueryParam = \case
        "typeUnspecified" -> Right TypeUnspecified
        "template" -> Right Template
        "integer" -> Right Integer
        "boolean" -> Right Boolean
        "list" -> Right List
        "map" -> Right Map
        "triggerReference" -> Right TriggerReference
        "tagReference" -> Right TagReference
        x -> Left ("Unable to parse ParameterType from: " <> x)

instance ToHttpApiData ParameterType where
    toQueryParam = \case
        TypeUnspecified -> "typeUnspecified"
        Template -> "template"
        Integer -> "integer"
        Boolean -> "boolean"
        List -> "list"
        Map -> "map"
        TriggerReference -> "triggerReference"
        TagReference -> "tagReference"

instance FromJSON ParameterType where
    parseJSON = parseJSONText "ParameterType"

instance ToJSON ParameterType where
    toJSON = toJSONText

-- | Represents how the entity has been changed in the workspace.
data EntityChangeStatus
    = ChangeStatusUnspecified
      -- ^ @changeStatusUnspecified@
    | None
      -- ^ @none@
      -- The entity has never been changed.
    | Added
      -- ^ @added@
      -- The entity is added to the workspace.
    | Deleted
      -- ^ @deleted@
      -- The entity is deleted from the workspace.
    | Updated
      -- ^ @updated@
      -- The entity has been updated in the workspace.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EntityChangeStatus

instance FromHttpApiData EntityChangeStatus where
    parseQueryParam = \case
        "changeStatusUnspecified" -> Right ChangeStatusUnspecified
        "none" -> Right None
        "added" -> Right Added
        "deleted" -> Right Deleted
        "updated" -> Right Updated
        x -> Left ("Unable to parse EntityChangeStatus from: " <> x)

instance ToHttpApiData EntityChangeStatus where
    toQueryParam = \case
        ChangeStatusUnspecified -> "changeStatusUnspecified"
        None -> "none"
        Added -> "added"
        Deleted -> "deleted"
        Updated -> "updated"

instance FromJSON EntityChangeStatus where
    parseJSON = parseJSONText "EntityChangeStatus"

instance ToJSON EntityChangeStatus where
    toJSON = toJSONText

-- | The option to convert a string-type variable value to either lowercase
-- or uppercase.
data VariableFormatValueCaseConversionType
    = VFVCCTNone
      -- ^ @none@
    | VFVCCTLowercase
      -- ^ @lowercase@
      -- The option to convert a variable value to lowercase.
    | VFVCCTUppercase
      -- ^ @uppercase@
      -- The option to convert a variable value to uppercase.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VariableFormatValueCaseConversionType

instance FromHttpApiData VariableFormatValueCaseConversionType where
    parseQueryParam = \case
        "none" -> Right VFVCCTNone
        "lowercase" -> Right VFVCCTLowercase
        "uppercase" -> Right VFVCCTUppercase
        x -> Left ("Unable to parse VariableFormatValueCaseConversionType from: " <> x)

instance ToHttpApiData VariableFormatValueCaseConversionType where
    toQueryParam = \case
        VFVCCTNone -> "none"
        VFVCCTLowercase -> "lowercase"
        VFVCCTUppercase -> "uppercase"

instance FromJSON VariableFormatValueCaseConversionType where
    parseJSON = parseJSONText "VariableFormatValueCaseConversionType"

instance ToJSON VariableFormatValueCaseConversionType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The type of this environment.
data EnvironmentType
    = ETUser
      -- ^ @user@
      -- Points to a user defined environment.
    | ETLive
      -- ^ @live@
      -- Points to the current live container version.
    | ETLatest
      -- ^ @latest@
      -- Points to the latest container version.
    | ETWorkspace
      -- ^ @workspace@
      -- Automatically managed environment that points to a workspace preview or
      -- version created by a workspace.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnvironmentType

instance FromHttpApiData EnvironmentType where
    parseQueryParam = \case
        "user" -> Right ETUser
        "live" -> Right ETLive
        "latest" -> Right ETLatest
        "workspace" -> Right ETWorkspace
        x -> Left ("Unable to parse EnvironmentType from: " <> x)

instance ToHttpApiData EnvironmentType where
    toQueryParam = \case
        ETUser -> "user"
        ETLive -> "live"
        ETLatest -> "latest"
        ETWorkspace -> "workspace"

instance FromJSON EnvironmentType where
    parseJSON = parseJSONText "EnvironmentType"

instance ToJSON EnvironmentType where
    toJSON = toJSONText

-- | The type of built-in variable to revert.
data AccountsContainersWorkspacesBuilt_in_variablesRevertType
    = ACWBRTBuiltInVariableTypeUnspecified
      -- ^ @builtInVariableTypeUnspecified@
    | ACWBRTPageURL
      -- ^ @pageUrl@
    | ACWBRTPageHostname
      -- ^ @pageHostname@
    | ACWBRTPagePath
      -- ^ @pagePath@
    | ACWBRTReferrer
      -- ^ @referrer@
    | ACWBRTEvent
      -- ^ @event@
      -- For web or mobile.
    | ACWBRTClickElement
      -- ^ @clickElement@
    | ACWBRTClickClasses
      -- ^ @clickClasses@
    | ACWBRTClickId
      -- ^ @clickId@
    | ACWBRTClickTarget
      -- ^ @clickTarget@
    | ACWBRTClickURL
      -- ^ @clickUrl@
    | ACWBRTClickText
      -- ^ @clickText@
    | ACWBRTFirstPartyServingURL
      -- ^ @firstPartyServingUrl@
    | ACWBRTFormElement
      -- ^ @formElement@
    | ACWBRTFormClasses
      -- ^ @formClasses@
    | ACWBRTFormId
      -- ^ @formId@
    | ACWBRTFormTarget
      -- ^ @formTarget@
    | ACWBRTFormURL
      -- ^ @formUrl@
    | ACWBRTFormText
      -- ^ @formText@
    | ACWBRTErrorMessage
      -- ^ @errorMessage@
    | ACWBRTErrorURL
      -- ^ @errorUrl@
    | ACWBRTErrorLine
      -- ^ @errorLine@
    | ACWBRTNewHistoryURL
      -- ^ @newHistoryUrl@
    | ACWBRTOldHistoryURL
      -- ^ @oldHistoryUrl@
    | ACWBRTNewHistoryFragment
      -- ^ @newHistoryFragment@
    | ACWBRTOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | ACWBRTNewHistoryState
      -- ^ @newHistoryState@
    | ACWBRTOldHistoryState
      -- ^ @oldHistoryState@
    | ACWBRTHistorySource
      -- ^ @historySource@
    | ACWBRTContainerVersion
      -- ^ @containerVersion@
      -- For web or mobile.
    | ACWBRTDebugMode
      -- ^ @debugMode@
    | ACWBRTRandomNumber
      -- ^ @randomNumber@
      -- For web or mobile.
    | ACWBRTContainerId
      -- ^ @containerId@
      -- For web or mobile.
    | ACWBRTAppId
      -- ^ @appId@
    | ACWBRTAppName
      -- ^ @appName@
    | ACWBRTAppVersionCode
      -- ^ @appVersionCode@
    | ACWBRTAppVersionName
      -- ^ @appVersionName@
    | ACWBRTLanguage
      -- ^ @language@
    | ACWBRTOSVersion
      -- ^ @osVersion@
    | ACWBRTPlatform
      -- ^ @platform@
    | ACWBRTSdkVersion
      -- ^ @sdkVersion@
    | ACWBRTDeviceName
      -- ^ @deviceName@
    | ACWBRTResolution
      -- ^ @resolution@
    | ACWBRTAdvertiserId
      -- ^ @advertiserId@
    | ACWBRTAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | ACWBRTHTMLId
      -- ^ @htmlId@
    | ACWBRTEnvironmentName
      -- ^ @environmentName@
    | ACWBRTAmpBrowserLanguage
      -- ^ @ampBrowserLanguage@
    | ACWBRTAmpCanonicalPath
      -- ^ @ampCanonicalPath@
    | ACWBRTAmpCanonicalURL
      -- ^ @ampCanonicalUrl@
    | ACWBRTAmpCanonicalHost
      -- ^ @ampCanonicalHost@
    | ACWBRTAmpReferrer
      -- ^ @ampReferrer@
    | ACWBRTAmpTitle
      -- ^ @ampTitle@
    | ACWBRTAmpClientId
      -- ^ @ampClientId@
    | ACWBRTAmpClientTimezone
      -- ^ @ampClientTimezone@
    | ACWBRTAmpClientTimestamp
      -- ^ @ampClientTimestamp@
    | ACWBRTAmpClientScreenWidth
      -- ^ @ampClientScreenWidth@
    | ACWBRTAmpClientScreenHeight
      -- ^ @ampClientScreenHeight@
    | ACWBRTAmpClientScrollX
      -- ^ @ampClientScrollX@
    | ACWBRTAmpClientScrollY
      -- ^ @ampClientScrollY@
    | ACWBRTAmpClientMaxScrollX
      -- ^ @ampClientMaxScrollX@
    | ACWBRTAmpClientMaxScrollY
      -- ^ @ampClientMaxScrollY@
    | ACWBRTAmpTotalEngagedTime
      -- ^ @ampTotalEngagedTime@
    | ACWBRTAmpPageViewId
      -- ^ @ampPageViewId@
    | ACWBRTAmpPageLoadTime
      -- ^ @ampPageLoadTime@
    | ACWBRTAmpPageDownloadTime
      -- ^ @ampPageDownloadTime@
    | ACWBRTAmpGtmEvent
      -- ^ @ampGtmEvent@
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
    | ACWBRTVideoProvider
      -- ^ @videoProvider@
    | ACWBRTVideoURL
      -- ^ @videoUrl@
    | ACWBRTVideoTitle
      -- ^ @videoTitle@
    | ACWBRTVideoDuration
      -- ^ @videoDuration@
    | ACWBRTVideoPercent
      -- ^ @videoPercent@
    | ACWBRTVideoVisible
      -- ^ @videoVisible@
    | ACWBRTVideoStatus
      -- ^ @videoStatus@
    | ACWBRTVideoCurrentTime
      -- ^ @videoCurrentTime@
    | ACWBRTScrollDepthThreshold
      -- ^ @scrollDepthThreshold@
    | ACWBRTScrollDepthUnits
      -- ^ @scrollDepthUnits@
    | ACWBRTScrollDepthDirection
      -- ^ @scrollDepthDirection@
    | ACWBRTElementVisibilityRatio
      -- ^ @elementVisibilityRatio@
    | ACWBRTElementVisibilityTime
      -- ^ @elementVisibilityTime@
    | ACWBRTElementVisibilityFirstTime
      -- ^ @elementVisibilityFirstTime@
    | ACWBRTElementVisibilityRecentTime
      -- ^ @elementVisibilityRecentTime@
    | ACWBRTRequestPath
      -- ^ @requestPath@
    | ACWBRTRequestMethod
      -- ^ @requestMethod@
    | ACWBRTClientName
      -- ^ @clientName@
    | ACWBRTQueryString
      -- ^ @queryString@
    | ACWBRTServerPageLocationURL
      -- ^ @serverPageLocationUrl@
    | ACWBRTServerPageLocationPath
      -- ^ @serverPageLocationPath@
    | ACWBRTServerPageLocationHostname
      -- ^ @serverPageLocationHostname@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsContainersWorkspacesBuilt_in_variablesRevertType

instance FromHttpApiData AccountsContainersWorkspacesBuilt_in_variablesRevertType where
    parseQueryParam = \case
        "builtInVariableTypeUnspecified" -> Right ACWBRTBuiltInVariableTypeUnspecified
        "pageUrl" -> Right ACWBRTPageURL
        "pageHostname" -> Right ACWBRTPageHostname
        "pagePath" -> Right ACWBRTPagePath
        "referrer" -> Right ACWBRTReferrer
        "event" -> Right ACWBRTEvent
        "clickElement" -> Right ACWBRTClickElement
        "clickClasses" -> Right ACWBRTClickClasses
        "clickId" -> Right ACWBRTClickId
        "clickTarget" -> Right ACWBRTClickTarget
        "clickUrl" -> Right ACWBRTClickURL
        "clickText" -> Right ACWBRTClickText
        "firstPartyServingUrl" -> Right ACWBRTFirstPartyServingURL
        "formElement" -> Right ACWBRTFormElement
        "formClasses" -> Right ACWBRTFormClasses
        "formId" -> Right ACWBRTFormId
        "formTarget" -> Right ACWBRTFormTarget
        "formUrl" -> Right ACWBRTFormURL
        "formText" -> Right ACWBRTFormText
        "errorMessage" -> Right ACWBRTErrorMessage
        "errorUrl" -> Right ACWBRTErrorURL
        "errorLine" -> Right ACWBRTErrorLine
        "newHistoryUrl" -> Right ACWBRTNewHistoryURL
        "oldHistoryUrl" -> Right ACWBRTOldHistoryURL
        "newHistoryFragment" -> Right ACWBRTNewHistoryFragment
        "oldHistoryFragment" -> Right ACWBRTOldHistoryFragment
        "newHistoryState" -> Right ACWBRTNewHistoryState
        "oldHistoryState" -> Right ACWBRTOldHistoryState
        "historySource" -> Right ACWBRTHistorySource
        "containerVersion" -> Right ACWBRTContainerVersion
        "debugMode" -> Right ACWBRTDebugMode
        "randomNumber" -> Right ACWBRTRandomNumber
        "containerId" -> Right ACWBRTContainerId
        "appId" -> Right ACWBRTAppId
        "appName" -> Right ACWBRTAppName
        "appVersionCode" -> Right ACWBRTAppVersionCode
        "appVersionName" -> Right ACWBRTAppVersionName
        "language" -> Right ACWBRTLanguage
        "osVersion" -> Right ACWBRTOSVersion
        "platform" -> Right ACWBRTPlatform
        "sdkVersion" -> Right ACWBRTSdkVersion
        "deviceName" -> Right ACWBRTDeviceName
        "resolution" -> Right ACWBRTResolution
        "advertiserId" -> Right ACWBRTAdvertiserId
        "advertisingTrackingEnabled" -> Right ACWBRTAdvertisingTrackingEnabled
        "htmlId" -> Right ACWBRTHTMLId
        "environmentName" -> Right ACWBRTEnvironmentName
        "ampBrowserLanguage" -> Right ACWBRTAmpBrowserLanguage
        "ampCanonicalPath" -> Right ACWBRTAmpCanonicalPath
        "ampCanonicalUrl" -> Right ACWBRTAmpCanonicalURL
        "ampCanonicalHost" -> Right ACWBRTAmpCanonicalHost
        "ampReferrer" -> Right ACWBRTAmpReferrer
        "ampTitle" -> Right ACWBRTAmpTitle
        "ampClientId" -> Right ACWBRTAmpClientId
        "ampClientTimezone" -> Right ACWBRTAmpClientTimezone
        "ampClientTimestamp" -> Right ACWBRTAmpClientTimestamp
        "ampClientScreenWidth" -> Right ACWBRTAmpClientScreenWidth
        "ampClientScreenHeight" -> Right ACWBRTAmpClientScreenHeight
        "ampClientScrollX" -> Right ACWBRTAmpClientScrollX
        "ampClientScrollY" -> Right ACWBRTAmpClientScrollY
        "ampClientMaxScrollX" -> Right ACWBRTAmpClientMaxScrollX
        "ampClientMaxScrollY" -> Right ACWBRTAmpClientMaxScrollY
        "ampTotalEngagedTime" -> Right ACWBRTAmpTotalEngagedTime
        "ampPageViewId" -> Right ACWBRTAmpPageViewId
        "ampPageLoadTime" -> Right ACWBRTAmpPageLoadTime
        "ampPageDownloadTime" -> Right ACWBRTAmpPageDownloadTime
        "ampGtmEvent" -> Right ACWBRTAmpGtmEvent
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
        "videoProvider" -> Right ACWBRTVideoProvider
        "videoUrl" -> Right ACWBRTVideoURL
        "videoTitle" -> Right ACWBRTVideoTitle
        "videoDuration" -> Right ACWBRTVideoDuration
        "videoPercent" -> Right ACWBRTVideoPercent
        "videoVisible" -> Right ACWBRTVideoVisible
        "videoStatus" -> Right ACWBRTVideoStatus
        "videoCurrentTime" -> Right ACWBRTVideoCurrentTime
        "scrollDepthThreshold" -> Right ACWBRTScrollDepthThreshold
        "scrollDepthUnits" -> Right ACWBRTScrollDepthUnits
        "scrollDepthDirection" -> Right ACWBRTScrollDepthDirection
        "elementVisibilityRatio" -> Right ACWBRTElementVisibilityRatio
        "elementVisibilityTime" -> Right ACWBRTElementVisibilityTime
        "elementVisibilityFirstTime" -> Right ACWBRTElementVisibilityFirstTime
        "elementVisibilityRecentTime" -> Right ACWBRTElementVisibilityRecentTime
        "requestPath" -> Right ACWBRTRequestPath
        "requestMethod" -> Right ACWBRTRequestMethod
        "clientName" -> Right ACWBRTClientName
        "queryString" -> Right ACWBRTQueryString
        "serverPageLocationUrl" -> Right ACWBRTServerPageLocationURL
        "serverPageLocationPath" -> Right ACWBRTServerPageLocationPath
        "serverPageLocationHostname" -> Right ACWBRTServerPageLocationHostname
        x -> Left ("Unable to parse AccountsContainersWorkspacesBuilt_in_variablesRevertType from: " <> x)

instance ToHttpApiData AccountsContainersWorkspacesBuilt_in_variablesRevertType where
    toQueryParam = \case
        ACWBRTBuiltInVariableTypeUnspecified -> "builtInVariableTypeUnspecified"
        ACWBRTPageURL -> "pageUrl"
        ACWBRTPageHostname -> "pageHostname"
        ACWBRTPagePath -> "pagePath"
        ACWBRTReferrer -> "referrer"
        ACWBRTEvent -> "event"
        ACWBRTClickElement -> "clickElement"
        ACWBRTClickClasses -> "clickClasses"
        ACWBRTClickId -> "clickId"
        ACWBRTClickTarget -> "clickTarget"
        ACWBRTClickURL -> "clickUrl"
        ACWBRTClickText -> "clickText"
        ACWBRTFirstPartyServingURL -> "firstPartyServingUrl"
        ACWBRTFormElement -> "formElement"
        ACWBRTFormClasses -> "formClasses"
        ACWBRTFormId -> "formId"
        ACWBRTFormTarget -> "formTarget"
        ACWBRTFormURL -> "formUrl"
        ACWBRTFormText -> "formText"
        ACWBRTErrorMessage -> "errorMessage"
        ACWBRTErrorURL -> "errorUrl"
        ACWBRTErrorLine -> "errorLine"
        ACWBRTNewHistoryURL -> "newHistoryUrl"
        ACWBRTOldHistoryURL -> "oldHistoryUrl"
        ACWBRTNewHistoryFragment -> "newHistoryFragment"
        ACWBRTOldHistoryFragment -> "oldHistoryFragment"
        ACWBRTNewHistoryState -> "newHistoryState"
        ACWBRTOldHistoryState -> "oldHistoryState"
        ACWBRTHistorySource -> "historySource"
        ACWBRTContainerVersion -> "containerVersion"
        ACWBRTDebugMode -> "debugMode"
        ACWBRTRandomNumber -> "randomNumber"
        ACWBRTContainerId -> "containerId"
        ACWBRTAppId -> "appId"
        ACWBRTAppName -> "appName"
        ACWBRTAppVersionCode -> "appVersionCode"
        ACWBRTAppVersionName -> "appVersionName"
        ACWBRTLanguage -> "language"
        ACWBRTOSVersion -> "osVersion"
        ACWBRTPlatform -> "platform"
        ACWBRTSdkVersion -> "sdkVersion"
        ACWBRTDeviceName -> "deviceName"
        ACWBRTResolution -> "resolution"
        ACWBRTAdvertiserId -> "advertiserId"
        ACWBRTAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        ACWBRTHTMLId -> "htmlId"
        ACWBRTEnvironmentName -> "environmentName"
        ACWBRTAmpBrowserLanguage -> "ampBrowserLanguage"
        ACWBRTAmpCanonicalPath -> "ampCanonicalPath"
        ACWBRTAmpCanonicalURL -> "ampCanonicalUrl"
        ACWBRTAmpCanonicalHost -> "ampCanonicalHost"
        ACWBRTAmpReferrer -> "ampReferrer"
        ACWBRTAmpTitle -> "ampTitle"
        ACWBRTAmpClientId -> "ampClientId"
        ACWBRTAmpClientTimezone -> "ampClientTimezone"
        ACWBRTAmpClientTimestamp -> "ampClientTimestamp"
        ACWBRTAmpClientScreenWidth -> "ampClientScreenWidth"
        ACWBRTAmpClientScreenHeight -> "ampClientScreenHeight"
        ACWBRTAmpClientScrollX -> "ampClientScrollX"
        ACWBRTAmpClientScrollY -> "ampClientScrollY"
        ACWBRTAmpClientMaxScrollX -> "ampClientMaxScrollX"
        ACWBRTAmpClientMaxScrollY -> "ampClientMaxScrollY"
        ACWBRTAmpTotalEngagedTime -> "ampTotalEngagedTime"
        ACWBRTAmpPageViewId -> "ampPageViewId"
        ACWBRTAmpPageLoadTime -> "ampPageLoadTime"
        ACWBRTAmpPageDownloadTime -> "ampPageDownloadTime"
        ACWBRTAmpGtmEvent -> "ampGtmEvent"
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
        ACWBRTVideoProvider -> "videoProvider"
        ACWBRTVideoURL -> "videoUrl"
        ACWBRTVideoTitle -> "videoTitle"
        ACWBRTVideoDuration -> "videoDuration"
        ACWBRTVideoPercent -> "videoPercent"
        ACWBRTVideoVisible -> "videoVisible"
        ACWBRTVideoStatus -> "videoStatus"
        ACWBRTVideoCurrentTime -> "videoCurrentTime"
        ACWBRTScrollDepthThreshold -> "scrollDepthThreshold"
        ACWBRTScrollDepthUnits -> "scrollDepthUnits"
        ACWBRTScrollDepthDirection -> "scrollDepthDirection"
        ACWBRTElementVisibilityRatio -> "elementVisibilityRatio"
        ACWBRTElementVisibilityTime -> "elementVisibilityTime"
        ACWBRTElementVisibilityFirstTime -> "elementVisibilityFirstTime"
        ACWBRTElementVisibilityRecentTime -> "elementVisibilityRecentTime"
        ACWBRTRequestPath -> "requestPath"
        ACWBRTRequestMethod -> "requestMethod"
        ACWBRTClientName -> "clientName"
        ACWBRTQueryString -> "queryString"
        ACWBRTServerPageLocationURL -> "serverPageLocationUrl"
        ACWBRTServerPageLocationPath -> "serverPageLocationPath"
        ACWBRTServerPageLocationHostname -> "serverPageLocationHostname"

instance FromJSON AccountsContainersWorkspacesBuilt_in_variablesRevertType where
    parseJSON = parseJSONText "AccountsContainersWorkspacesBuilt_in_variablesRevertType"

instance ToJSON AccountsContainersWorkspacesBuilt_in_variablesRevertType where
    toJSON = toJSONText
