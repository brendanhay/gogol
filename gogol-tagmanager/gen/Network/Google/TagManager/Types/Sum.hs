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

data ContainerAccessPermission
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

instance Hashable ContainerAccessPermission

instance FromText ContainerAccessPermission where
    fromText = \case
        "delete" -> Just Delete
        "edit" -> Just Edit
        "manage" -> Just Manage
        "publish" -> Just Publish
        "read" -> Just Read
        _ -> Nothing

instance ToText ContainerAccessPermission where
    toText = \case
        Delete -> "delete"
        Edit -> "edit"
        Manage -> "manage"
        Publish -> "publish"
        Read -> "read"

instance FromJSON ContainerAccessPermission where
    parseJSON = parseJSONText "ContainerAccessPermission"

instance ToJSON ContainerAccessPermission where
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

data AccountAccessPermission
    = AAPDelete
      -- ^ @delete@
    | AAPEdit
      -- ^ @edit@
    | AAPManage
      -- ^ @manage@
    | AAPPublish
      -- ^ @publish@
    | AAPRead
      -- ^ @read@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountAccessPermission

instance FromText AccountAccessPermission where
    fromText = \case
        "delete" -> Just AAPDelete
        "edit" -> Just AAPEdit
        "manage" -> Just AAPManage
        "publish" -> Just AAPPublish
        "read" -> Just AAPRead
        _ -> Nothing

instance ToText AccountAccessPermission where
    toText = \case
        AAPDelete -> "delete"
        AAPEdit -> "edit"
        AAPManage -> "manage"
        AAPPublish -> "publish"
        AAPRead -> "read"

instance FromJSON AccountAccessPermission where
    parseJSON = parseJSONText "AccountAccessPermission"

instance ToJSON AccountAccessPermission where
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

data ContainerEnabledBuiltInVariable
    = CEBIVAdvertiserId
      -- ^ @advertiserId@
    | CEBIVAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | CEBIVAppId
      -- ^ @appId@
    | CEBIVAppName
      -- ^ @appName@
    | CEBIVAppVersionCode
      -- ^ @appVersionCode@
    | CEBIVAppVersionName
      -- ^ @appVersionName@
    | CEBIVClickClasses
      -- ^ @clickClasses@
    | CEBIVClickElement
      -- ^ @clickElement@
    | CEBIVClickId
      -- ^ @clickId@
    | CEBIVClickTarget
      -- ^ @clickTarget@
    | CEBIVClickText
      -- ^ @clickText@
    | CEBIVClickURL
      -- ^ @clickUrl@
    | CEBIVContainerId
      -- ^ @containerId@
    | CEBIVContainerVersion
      -- ^ @containerVersion@
    | CEBIVDebugMode
      -- ^ @debugMode@
    | CEBIVDeviceName
      -- ^ @deviceName@
    | CEBIVErrorLine
      -- ^ @errorLine@
    | CEBIVErrorMessage
      -- ^ @errorMessage@
    | CEBIVErrorURL
      -- ^ @errorUrl@
    | CEBIVEvent
      -- ^ @event@
    | CEBIVFormClasses
      -- ^ @formClasses@
    | CEBIVFormElement
      -- ^ @formElement@
    | CEBIVFormId
      -- ^ @formId@
    | CEBIVFormTarget
      -- ^ @formTarget@
    | CEBIVFormText
      -- ^ @formText@
    | CEBIVFormURL
      -- ^ @formUrl@
    | CEBIVHistorySource
      -- ^ @historySource@
    | CEBIVHTMLId
      -- ^ @htmlId@
    | CEBIVLanguage
      -- ^ @language@
    | CEBIVNewHistoryFragment
      -- ^ @newHistoryFragment@
    | CEBIVNewHistoryState
      -- ^ @newHistoryState@
    | CEBIVOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | CEBIVOldHistoryState
      -- ^ @oldHistoryState@
    | CEBIVOSVersion
      -- ^ @osVersion@
    | CEBIVPageHostname
      -- ^ @pageHostname@
    | CEBIVPagePath
      -- ^ @pagePath@
    | CEBIVPageURL
      -- ^ @pageUrl@
    | CEBIVPlatform
      -- ^ @platform@
    | CEBIVRandomNumber
      -- ^ @randomNumber@
    | CEBIVReferrer
      -- ^ @referrer@
    | CEBIVResolution
      -- ^ @resolution@
    | CEBIVSdkVersion
      -- ^ @sdkVersion@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerEnabledBuiltInVariable

instance FromText ContainerEnabledBuiltInVariable where
    fromText = \case
        "advertiserId" -> Just CEBIVAdvertiserId
        "advertisingTrackingEnabled" -> Just CEBIVAdvertisingTrackingEnabled
        "appId" -> Just CEBIVAppId
        "appName" -> Just CEBIVAppName
        "appVersionCode" -> Just CEBIVAppVersionCode
        "appVersionName" -> Just CEBIVAppVersionName
        "clickClasses" -> Just CEBIVClickClasses
        "clickElement" -> Just CEBIVClickElement
        "clickId" -> Just CEBIVClickId
        "clickTarget" -> Just CEBIVClickTarget
        "clickText" -> Just CEBIVClickText
        "clickUrl" -> Just CEBIVClickURL
        "containerId" -> Just CEBIVContainerId
        "containerVersion" -> Just CEBIVContainerVersion
        "debugMode" -> Just CEBIVDebugMode
        "deviceName" -> Just CEBIVDeviceName
        "errorLine" -> Just CEBIVErrorLine
        "errorMessage" -> Just CEBIVErrorMessage
        "errorUrl" -> Just CEBIVErrorURL
        "event" -> Just CEBIVEvent
        "formClasses" -> Just CEBIVFormClasses
        "formElement" -> Just CEBIVFormElement
        "formId" -> Just CEBIVFormId
        "formTarget" -> Just CEBIVFormTarget
        "formText" -> Just CEBIVFormText
        "formUrl" -> Just CEBIVFormURL
        "historySource" -> Just CEBIVHistorySource
        "htmlId" -> Just CEBIVHTMLId
        "language" -> Just CEBIVLanguage
        "newHistoryFragment" -> Just CEBIVNewHistoryFragment
        "newHistoryState" -> Just CEBIVNewHistoryState
        "oldHistoryFragment" -> Just CEBIVOldHistoryFragment
        "oldHistoryState" -> Just CEBIVOldHistoryState
        "osVersion" -> Just CEBIVOSVersion
        "pageHostname" -> Just CEBIVPageHostname
        "pagePath" -> Just CEBIVPagePath
        "pageUrl" -> Just CEBIVPageURL
        "platform" -> Just CEBIVPlatform
        "randomNumber" -> Just CEBIVRandomNumber
        "referrer" -> Just CEBIVReferrer
        "resolution" -> Just CEBIVResolution
        "sdkVersion" -> Just CEBIVSdkVersion
        _ -> Nothing

instance ToText ContainerEnabledBuiltInVariable where
    toText = \case
        CEBIVAdvertiserId -> "advertiserId"
        CEBIVAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        CEBIVAppId -> "appId"
        CEBIVAppName -> "appName"
        CEBIVAppVersionCode -> "appVersionCode"
        CEBIVAppVersionName -> "appVersionName"
        CEBIVClickClasses -> "clickClasses"
        CEBIVClickElement -> "clickElement"
        CEBIVClickId -> "clickId"
        CEBIVClickTarget -> "clickTarget"
        CEBIVClickText -> "clickText"
        CEBIVClickURL -> "clickUrl"
        CEBIVContainerId -> "containerId"
        CEBIVContainerVersion -> "containerVersion"
        CEBIVDebugMode -> "debugMode"
        CEBIVDeviceName -> "deviceName"
        CEBIVErrorLine -> "errorLine"
        CEBIVErrorMessage -> "errorMessage"
        CEBIVErrorURL -> "errorUrl"
        CEBIVEvent -> "event"
        CEBIVFormClasses -> "formClasses"
        CEBIVFormElement -> "formElement"
        CEBIVFormId -> "formId"
        CEBIVFormTarget -> "formTarget"
        CEBIVFormText -> "formText"
        CEBIVFormURL -> "formUrl"
        CEBIVHistorySource -> "historySource"
        CEBIVHTMLId -> "htmlId"
        CEBIVLanguage -> "language"
        CEBIVNewHistoryFragment -> "newHistoryFragment"
        CEBIVNewHistoryState -> "newHistoryState"
        CEBIVOldHistoryFragment -> "oldHistoryFragment"
        CEBIVOldHistoryState -> "oldHistoryState"
        CEBIVOSVersion -> "osVersion"
        CEBIVPageHostname -> "pageHostname"
        CEBIVPagePath -> "pagePath"
        CEBIVPageURL -> "pageUrl"
        CEBIVPlatform -> "platform"
        CEBIVRandomNumber -> "randomNumber"
        CEBIVReferrer -> "referrer"
        CEBIVResolution -> "resolution"
        CEBIVSdkVersion -> "sdkVersion"

instance FromJSON ContainerEnabledBuiltInVariable where
    parseJSON = parseJSONText "ContainerEnabledBuiltInVariable"

instance ToJSON ContainerEnabledBuiltInVariable where
    toJSON = toJSONText

data ContainerUsageContext
    = Android
      -- ^ @android@
    | Ios
      -- ^ @ios@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerUsageContext

instance FromText ContainerUsageContext where
    fromText = \case
        "android" -> Just Android
        "ios" -> Just Ios
        "web" -> Just Web
        _ -> Nothing

instance ToText ContainerUsageContext where
    toText = \case
        Android -> "android"
        Ios -> "ios"
        Web -> "web"

instance FromJSON ContainerUsageContext where
    parseJSON = parseJSONText "ContainerUsageContext"

instance ToJSON ContainerUsageContext where
    toJSON = toJSONText
