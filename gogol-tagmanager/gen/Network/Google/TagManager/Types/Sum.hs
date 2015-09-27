{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TagManager.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TagManager.Types.Sum where

import           Network.Google.Prelude

data AccountAccessItemPermission
    = AAIPDelete
      -- ^ @delete@
    | AAIPEdit
      -- ^ @edit@
    | AAIPManage
      -- ^ @manage@
    | AAIPPublish
      -- ^ @publish@
    | AAIPRead
      -- ^ @read@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountAccessItemPermission

instance FromText AccountAccessItemPermission where
    fromText = \case
        "delete" -> Just AAIPDelete
        "edit" -> Just AAIPEdit
        "manage" -> Just AAIPManage
        "publish" -> Just AAIPPublish
        "read" -> Just AAIPRead
        _ -> Nothing

instance ToText AccountAccessItemPermission where
    toText = \case
        AAIPDelete -> "delete"
        AAIPEdit -> "edit"
        AAIPManage -> "manage"
        AAIPPublish -> "publish"
        AAIPRead -> "read"

instance FromJSON AccountAccessItemPermission where
    parseJSON = parseJSONText "AccountAccessItemPermission"

instance ToJSON AccountAccessItemPermission where
    toJSON = toJSONText

-- | The type of operator for this condition.
data ConditionType
    = CTContains
      -- ^ @contains@
    | CTCssSelector
      -- ^ @cssSelector@
    | CTEndsWith
      -- ^ @endsWith@
    | CTEquals
      -- ^ @equals@
    | CTGreater
      -- ^ @greater@
    | CTGreaterOrEquals
      -- ^ @greaterOrEquals@
    | CTLess
      -- ^ @less@
    | CTLessOrEquals
      -- ^ @lessOrEquals@
    | CTMatchRegex
      -- ^ @matchRegex@
    | CTStartsWith
      -- ^ @startsWith@
    | CTURLMatches
      -- ^ @urlMatches@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ConditionType

instance FromText ConditionType where
    fromText = \case
        "contains" -> Just CTContains
        "cssSelector" -> Just CTCssSelector
        "endsWith" -> Just CTEndsWith
        "equals" -> Just CTEquals
        "greater" -> Just CTGreater
        "greaterOrEquals" -> Just CTGreaterOrEquals
        "less" -> Just CTLess
        "lessOrEquals" -> Just CTLessOrEquals
        "matchRegex" -> Just CTMatchRegex
        "startsWith" -> Just CTStartsWith
        "urlMatches" -> Just CTURLMatches
        _ -> Nothing

instance ToText ConditionType where
    toText = \case
        CTContains -> "contains"
        CTCssSelector -> "cssSelector"
        CTEndsWith -> "endsWith"
        CTEquals -> "equals"
        CTGreater -> "greater"
        CTGreaterOrEquals -> "greaterOrEquals"
        CTLess -> "less"
        CTLessOrEquals -> "lessOrEquals"
        CTMatchRegex -> "matchRegex"
        CTStartsWith -> "startsWith"
        CTURLMatches -> "urlMatches"

instance FromJSON ConditionType where
    parseJSON = parseJSONText "ConditionType"

instance ToJSON ConditionType where
    toJSON = toJSONText

data ContainerAccessItemPermission
    = CAIPDelete
      -- ^ @delete@
    | CAIPEdit
      -- ^ @edit@
    | CAIPManage
      -- ^ @manage@
    | CAIPPublish
      -- ^ @publish@
    | CAIPRead
      -- ^ @read@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerAccessItemPermission

instance FromText ContainerAccessItemPermission where
    fromText = \case
        "delete" -> Just CAIPDelete
        "edit" -> Just CAIPEdit
        "manage" -> Just CAIPManage
        "publish" -> Just CAIPPublish
        "read" -> Just CAIPRead
        _ -> Nothing

instance ToText ContainerAccessItemPermission where
    toText = \case
        CAIPDelete -> "delete"
        CAIPEdit -> "edit"
        CAIPManage -> "manage"
        CAIPPublish -> "publish"
        CAIPRead -> "read"

instance FromJSON ContainerAccessItemPermission where
    parseJSON = parseJSONText "ContainerAccessItemPermission"

instance ToJSON ContainerAccessItemPermission where
    toJSON = toJSONText

data ContainerItemEnabledBuiltInVariable
    = CIEBIVAdvertiserId
      -- ^ @advertiserId@
    | CIEBIVAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | CIEBIVAppId
      -- ^ @appId@
    | CIEBIVAppName
      -- ^ @appName@
    | CIEBIVAppVersionCode
      -- ^ @appVersionCode@
    | CIEBIVAppVersionName
      -- ^ @appVersionName@
    | CIEBIVClickClasses
      -- ^ @clickClasses@
    | CIEBIVClickElement
      -- ^ @clickElement@
    | CIEBIVClickId
      -- ^ @clickId@
    | CIEBIVClickTarget
      -- ^ @clickTarget@
    | CIEBIVClickText
      -- ^ @clickText@
    | CIEBIVClickURL
      -- ^ @clickUrl@
    | CIEBIVContainerId
      -- ^ @containerId@
    | CIEBIVContainerVersion
      -- ^ @containerVersion@
    | CIEBIVDebugMode
      -- ^ @debugMode@
    | CIEBIVDeviceName
      -- ^ @deviceName@
    | CIEBIVErrorLine
      -- ^ @errorLine@
    | CIEBIVErrorMessage
      -- ^ @errorMessage@
    | CIEBIVErrorURL
      -- ^ @errorUrl@
    | CIEBIVEvent
      -- ^ @event@
    | CIEBIVFormClasses
      -- ^ @formClasses@
    | CIEBIVFormElement
      -- ^ @formElement@
    | CIEBIVFormId
      -- ^ @formId@
    | CIEBIVFormTarget
      -- ^ @formTarget@
    | CIEBIVFormText
      -- ^ @formText@
    | CIEBIVFormURL
      -- ^ @formUrl@
    | CIEBIVHistorySource
      -- ^ @historySource@
    | CIEBIVHTMLId
      -- ^ @htmlId@
    | CIEBIVLanguage
      -- ^ @language@
    | CIEBIVNewHistoryFragment
      -- ^ @newHistoryFragment@
    | CIEBIVNewHistoryState
      -- ^ @newHistoryState@
    | CIEBIVOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | CIEBIVOldHistoryState
      -- ^ @oldHistoryState@
    | CIEBIVOsVersion
      -- ^ @osVersion@
    | CIEBIVPageHostname
      -- ^ @pageHostname@
    | CIEBIVPagePath
      -- ^ @pagePath@
    | CIEBIVPageURL
      -- ^ @pageUrl@
    | CIEBIVPlatform
      -- ^ @platform@
    | CIEBIVRandomNumber
      -- ^ @randomNumber@
    | CIEBIVReferrer
      -- ^ @referrer@
    | CIEBIVResolution
      -- ^ @resolution@
    | CIEBIVSdkVersion
      -- ^ @sdkVersion@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerItemEnabledBuiltInVariable

instance FromText ContainerItemEnabledBuiltInVariable where
    fromText = \case
        "advertiserId" -> Just CIEBIVAdvertiserId
        "advertisingTrackingEnabled" -> Just CIEBIVAdvertisingTrackingEnabled
        "appId" -> Just CIEBIVAppId
        "appName" -> Just CIEBIVAppName
        "appVersionCode" -> Just CIEBIVAppVersionCode
        "appVersionName" -> Just CIEBIVAppVersionName
        "clickClasses" -> Just CIEBIVClickClasses
        "clickElement" -> Just CIEBIVClickElement
        "clickId" -> Just CIEBIVClickId
        "clickTarget" -> Just CIEBIVClickTarget
        "clickText" -> Just CIEBIVClickText
        "clickUrl" -> Just CIEBIVClickURL
        "containerId" -> Just CIEBIVContainerId
        "containerVersion" -> Just CIEBIVContainerVersion
        "debugMode" -> Just CIEBIVDebugMode
        "deviceName" -> Just CIEBIVDeviceName
        "errorLine" -> Just CIEBIVErrorLine
        "errorMessage" -> Just CIEBIVErrorMessage
        "errorUrl" -> Just CIEBIVErrorURL
        "event" -> Just CIEBIVEvent
        "formClasses" -> Just CIEBIVFormClasses
        "formElement" -> Just CIEBIVFormElement
        "formId" -> Just CIEBIVFormId
        "formTarget" -> Just CIEBIVFormTarget
        "formText" -> Just CIEBIVFormText
        "formUrl" -> Just CIEBIVFormURL
        "historySource" -> Just CIEBIVHistorySource
        "htmlId" -> Just CIEBIVHTMLId
        "language" -> Just CIEBIVLanguage
        "newHistoryFragment" -> Just CIEBIVNewHistoryFragment
        "newHistoryState" -> Just CIEBIVNewHistoryState
        "oldHistoryFragment" -> Just CIEBIVOldHistoryFragment
        "oldHistoryState" -> Just CIEBIVOldHistoryState
        "osVersion" -> Just CIEBIVOsVersion
        "pageHostname" -> Just CIEBIVPageHostname
        "pagePath" -> Just CIEBIVPagePath
        "pageUrl" -> Just CIEBIVPageURL
        "platform" -> Just CIEBIVPlatform
        "randomNumber" -> Just CIEBIVRandomNumber
        "referrer" -> Just CIEBIVReferrer
        "resolution" -> Just CIEBIVResolution
        "sdkVersion" -> Just CIEBIVSdkVersion
        _ -> Nothing

instance ToText ContainerItemEnabledBuiltInVariable where
    toText = \case
        CIEBIVAdvertiserId -> "advertiserId"
        CIEBIVAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        CIEBIVAppId -> "appId"
        CIEBIVAppName -> "appName"
        CIEBIVAppVersionCode -> "appVersionCode"
        CIEBIVAppVersionName -> "appVersionName"
        CIEBIVClickClasses -> "clickClasses"
        CIEBIVClickElement -> "clickElement"
        CIEBIVClickId -> "clickId"
        CIEBIVClickTarget -> "clickTarget"
        CIEBIVClickText -> "clickText"
        CIEBIVClickURL -> "clickUrl"
        CIEBIVContainerId -> "containerId"
        CIEBIVContainerVersion -> "containerVersion"
        CIEBIVDebugMode -> "debugMode"
        CIEBIVDeviceName -> "deviceName"
        CIEBIVErrorLine -> "errorLine"
        CIEBIVErrorMessage -> "errorMessage"
        CIEBIVErrorURL -> "errorUrl"
        CIEBIVEvent -> "event"
        CIEBIVFormClasses -> "formClasses"
        CIEBIVFormElement -> "formElement"
        CIEBIVFormId -> "formId"
        CIEBIVFormTarget -> "formTarget"
        CIEBIVFormText -> "formText"
        CIEBIVFormURL -> "formUrl"
        CIEBIVHistorySource -> "historySource"
        CIEBIVHTMLId -> "htmlId"
        CIEBIVLanguage -> "language"
        CIEBIVNewHistoryFragment -> "newHistoryFragment"
        CIEBIVNewHistoryState -> "newHistoryState"
        CIEBIVOldHistoryFragment -> "oldHistoryFragment"
        CIEBIVOldHistoryState -> "oldHistoryState"
        CIEBIVOsVersion -> "osVersion"
        CIEBIVPageHostname -> "pageHostname"
        CIEBIVPagePath -> "pagePath"
        CIEBIVPageURL -> "pageUrl"
        CIEBIVPlatform -> "platform"
        CIEBIVRandomNumber -> "randomNumber"
        CIEBIVReferrer -> "referrer"
        CIEBIVResolution -> "resolution"
        CIEBIVSdkVersion -> "sdkVersion"

instance FromJSON ContainerItemEnabledBuiltInVariable where
    parseJSON = parseJSONText "ContainerItemEnabledBuiltInVariable"

instance ToJSON ContainerItemEnabledBuiltInVariable where
    toJSON = toJSONText

data ContainerItemUsageContext
    = CIUCAndroid
      -- ^ @android@
    | CIUCIos
      -- ^ @ios@
    | CIUCWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerItemUsageContext

instance FromText ContainerItemUsageContext where
    fromText = \case
        "android" -> Just CIUCAndroid
        "ios" -> Just CIUCIos
        "web" -> Just CIUCWeb
        _ -> Nothing

instance ToText ContainerItemUsageContext where
    toText = \case
        CIUCAndroid -> "android"
        CIUCIos -> "ios"
        CIUCWeb -> "web"

instance FromJSON ContainerItemUsageContext where
    parseJSON = parseJSONText "ContainerItemUsageContext"

instance ToJSON ContainerItemUsageContext where
    toJSON = toJSONText

-- | The parameter type. Valid values are: - boolean: The value represents a
-- boolean, represented as \'true\' or \'false\' - integer: The value
-- represents a 64-bit signed integer value, in base 10 - list: A list of
-- parameters should be specified - map: A map of parameters should be
-- specified - template: The value represents any text; this can include
-- macro references (even macro references that might return non-string
-- types)
data ParameterType
    = PTBoolean
      -- ^ @boolean@
    | PTInteger
      -- ^ @integer@
    | PTList
      -- ^ @list@
    | PTMap
      -- ^ @map@
    | PTTemplate
      -- ^ @template@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ParameterType

instance FromText ParameterType where
    fromText = \case
        "boolean" -> Just PTBoolean
        "integer" -> Just PTInteger
        "list" -> Just PTList
        "map" -> Just PTMap
        "template" -> Just PTTemplate
        _ -> Nothing

instance ToText ParameterType where
    toText = \case
        PTBoolean -> "boolean"
        PTInteger -> "integer"
        PTList -> "list"
        PTMap -> "map"
        PTTemplate -> "template"

instance FromJSON ParameterType where
    parseJSON = parseJSONText "ParameterType"

instance ToJSON ParameterType where
    toJSON = toJSONText

-- | Option to fire this tag.
data TagTagFiringOption
    = TTFOOncePerEvent
      -- ^ @oncePerEvent@
    | TTFOOncePerLoad
      -- ^ @oncePerLoad@
    | TTFOUnlimited
      -- ^ @unlimited@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TagTagFiringOption

instance FromText TagTagFiringOption where
    fromText = \case
        "oncePerEvent" -> Just TTFOOncePerEvent
        "oncePerLoad" -> Just TTFOOncePerLoad
        "unlimited" -> Just TTFOUnlimited
        _ -> Nothing

instance ToText TagTagFiringOption where
    toText = \case
        TTFOOncePerEvent -> "oncePerEvent"
        TTFOOncePerLoad -> "oncePerLoad"
        TTFOUnlimited -> "unlimited"

instance FromJSON TagTagFiringOption where
    parseJSON = parseJSONText "TagTagFiringOption"

instance ToJSON TagTagFiringOption where
    toJSON = toJSONText

-- | Defines the data layer event that causes this trigger.
data TriggerType
    = TTAjaxSubmission
      -- ^ @ajaxSubmission@
    | TTAlways
      -- ^ @always@
    | TTClick
      -- ^ @click@
    | TTCustomEvent
      -- ^ @customEvent@
    | TTDomReady
      -- ^ @domReady@
    | TTFormSubmission
      -- ^ @formSubmission@
    | TTHistoryChange
      -- ^ @historyChange@
    | TTJsError
      -- ^ @jsError@
    | TTLinkClick
      -- ^ @linkClick@
    | TTPageview
      -- ^ @pageview@
    | TTTimer
      -- ^ @timer@
    | TTWindowLoaded
      -- ^ @windowLoaded@
    | TTYouTube
      -- ^ @youTube@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TriggerType

instance FromText TriggerType where
    fromText = \case
        "ajaxSubmission" -> Just TTAjaxSubmission
        "always" -> Just TTAlways
        "click" -> Just TTClick
        "customEvent" -> Just TTCustomEvent
        "domReady" -> Just TTDomReady
        "formSubmission" -> Just TTFormSubmission
        "historyChange" -> Just TTHistoryChange
        "jsError" -> Just TTJsError
        "linkClick" -> Just TTLinkClick
        "pageview" -> Just TTPageview
        "timer" -> Just TTTimer
        "windowLoaded" -> Just TTWindowLoaded
        "youTube" -> Just TTYouTube
        _ -> Nothing

instance ToText TriggerType where
    toText = \case
        TTAjaxSubmission -> "ajaxSubmission"
        TTAlways -> "always"
        TTClick -> "click"
        TTCustomEvent -> "customEvent"
        TTDomReady -> "domReady"
        TTFormSubmission -> "formSubmission"
        TTHistoryChange -> "historyChange"
        TTJsError -> "jsError"
        TTLinkClick -> "linkClick"
        TTPageview -> "pageview"
        TTTimer -> "timer"
        TTWindowLoaded -> "windowLoaded"
        TTYouTube -> "youTube"

instance FromJSON TriggerType where
    parseJSON = parseJSONText "TriggerType"

instance ToJSON TriggerType where
    toJSON = toJSONText
