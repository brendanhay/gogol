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

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Option to fire this tag.
data TagTagFiringOption
    = OncePerEvent
      -- ^ @oncePerEvent@
    | OncePerLoad
      -- ^ @oncePerLoad@
    | Unlimited
      -- ^ @unlimited@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TagTagFiringOption

instance FromText TagTagFiringOption where
    fromText = \case
        "oncePerEvent" -> Just OncePerEvent
        "oncePerLoad" -> Just OncePerLoad
        "unlimited" -> Just Unlimited
        _ -> Nothing

instance ToText TagTagFiringOption where
    toText = \case
        OncePerEvent -> "oncePerEvent"
        OncePerLoad -> "oncePerLoad"
        Unlimited -> "unlimited"

instance FromJSON TagTagFiringOption where
    parseJSON = parseJSONText "TagTagFiringOption"

instance ToJSON TagTagFiringOption where
    toJSON = toJSONText

data AccountAccessItemPermission
    = Delete
      -- ^ @delete@
    | Edit
      -- ^ @edit@
    | Manage
      -- ^ @manage@
    | Publish
      -- ^ @publish@
    | Read
      -- ^ @read@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountAccessItemPermission

instance FromText AccountAccessItemPermission where
    fromText = \case
        "delete" -> Just Delete
        "edit" -> Just Edit
        "manage" -> Just Manage
        "publish" -> Just Publish
        "read" -> Just Read
        _ -> Nothing

instance ToText AccountAccessItemPermission where
    toText = \case
        Delete -> "delete"
        Edit -> "edit"
        Manage -> "manage"
        Publish -> "publish"
        Read -> "read"

instance FromJSON AccountAccessItemPermission where
    parseJSON = parseJSONText "AccountAccessItemPermission"

instance ToJSON AccountAccessItemPermission where
    toJSON = toJSONText

-- | The type of operator for this condition.
data ConditionType
    = Contains
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ConditionType

instance FromText ConditionType where
    fromText = \case
        "contains" -> Just Contains
        "cssSelector" -> Just CssSelector
        "endsWith" -> Just EndsWith
        "equals" -> Just Equals
        "greater" -> Just Greater
        "greaterOrEquals" -> Just GreaterOrEquals
        "less" -> Just Less
        "lessOrEquals" -> Just LessOrEquals
        "matchRegex" -> Just MatchRegex
        "startsWith" -> Just StartsWith
        "urlMatches" -> Just URLMatches
        _ -> Nothing

instance ToText ConditionType where
    toText = \case
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

-- | Defines the data layer event that causes this trigger.
data TriggerType
    = AjaxSubmission
      -- ^ @ajaxSubmission@
    | Always
      -- ^ @always@
    | Click
      -- ^ @click@
    | CustomEvent
      -- ^ @customEvent@
    | DomReady
      -- ^ @domReady@
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
    | Timer
      -- ^ @timer@
    | WindowLoaded
      -- ^ @windowLoaded@
    | YouTube
      -- ^ @youTube@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TriggerType

instance FromText TriggerType where
    fromText = \case
        "ajaxSubmission" -> Just AjaxSubmission
        "always" -> Just Always
        "click" -> Just Click
        "customEvent" -> Just CustomEvent
        "domReady" -> Just DomReady
        "formSubmission" -> Just FormSubmission
        "historyChange" -> Just HistoryChange
        "jsError" -> Just JsError
        "linkClick" -> Just LinkClick
        "pageview" -> Just Pageview
        "timer" -> Just Timer
        "windowLoaded" -> Just WindowLoaded
        "youTube" -> Just YouTube
        _ -> Nothing

instance ToText TriggerType where
    toText = \case
        AjaxSubmission -> "ajaxSubmission"
        Always -> "always"
        Click -> "click"
        CustomEvent -> "customEvent"
        DomReady -> "domReady"
        FormSubmission -> "formSubmission"
        HistoryChange -> "historyChange"
        JsError -> "jsError"
        LinkClick -> "linkClick"
        Pageview -> "pageview"
        Timer -> "timer"
        WindowLoaded -> "windowLoaded"
        YouTube -> "youTube"

instance FromJSON TriggerType where
    parseJSON = parseJSONText "TriggerType"

instance ToJSON TriggerType where
    toJSON = toJSONText

data ContainerItemUsageContext
    = Android
      -- ^ @android@
    | Ios
      -- ^ @ios@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerItemUsageContext

instance FromText ContainerItemUsageContext where
    fromText = \case
        "android" -> Just Android
        "ios" -> Just Ios
        "web" -> Just Web
        _ -> Nothing

instance ToText ContainerItemUsageContext where
    toText = \case
        Android -> "android"
        Ios -> "ios"
        Web -> "web"

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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ParameterType

instance FromText ParameterType where
    fromText = \case
        "boolean" -> Just Boolean
        "integer" -> Just Integer
        "list" -> Just List
        "map" -> Just Map
        "template" -> Just Template
        _ -> Nothing

instance ToText ParameterType where
    toText = \case
        Boolean -> "boolean"
        Integer -> "integer"
        List -> "list"
        Map -> "map"
        Template -> "template"

instance FromJSON ParameterType where
    parseJSON = parseJSONText "ParameterType"

instance ToJSON ParameterType where
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
