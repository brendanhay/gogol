{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

data ContainerEnabledBuiltInVariableItem
    = CEBIVIAdvertiserId
      -- ^ @advertiserId@
    | CEBIVIAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | CEBIVIAppId
      -- ^ @appId@
    | CEBIVIAppName
      -- ^ @appName@
    | CEBIVIAppVersionCode
      -- ^ @appVersionCode@
    | CEBIVIAppVersionName
      -- ^ @appVersionName@
    | CEBIVIClickClasses
      -- ^ @clickClasses@
    | CEBIVIClickElement
      -- ^ @clickElement@
    | CEBIVIClickId
      -- ^ @clickId@
    | CEBIVIClickTarget
      -- ^ @clickTarget@
    | CEBIVIClickText
      -- ^ @clickText@
    | CEBIVIClickURL
      -- ^ @clickUrl@
    | CEBIVIContainerId
      -- ^ @containerId@
    | CEBIVIContainerVersion
      -- ^ @containerVersion@
    | CEBIVIDebugMode
      -- ^ @debugMode@
    | CEBIVIDeviceName
      -- ^ @deviceName@
    | CEBIVIErrorLine
      -- ^ @errorLine@
    | CEBIVIErrorMessage
      -- ^ @errorMessage@
    | CEBIVIErrorURL
      -- ^ @errorUrl@
    | CEBIVIEvent
      -- ^ @event@
    | CEBIVIFormClasses
      -- ^ @formClasses@
    | CEBIVIFormElement
      -- ^ @formElement@
    | CEBIVIFormId
      -- ^ @formId@
    | CEBIVIFormTarget
      -- ^ @formTarget@
    | CEBIVIFormText
      -- ^ @formText@
    | CEBIVIFormURL
      -- ^ @formUrl@
    | CEBIVIHistorySource
      -- ^ @historySource@
    | CEBIVIHTMLId
      -- ^ @htmlId@
    | CEBIVILanguage
      -- ^ @language@
    | CEBIVINewHistoryFragment
      -- ^ @newHistoryFragment@
    | CEBIVINewHistoryState
      -- ^ @newHistoryState@
    | CEBIVIOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | CEBIVIOldHistoryState
      -- ^ @oldHistoryState@
    | CEBIVIOSVersion
      -- ^ @osVersion@
    | CEBIVIPageHostname
      -- ^ @pageHostname@
    | CEBIVIPagePath
      -- ^ @pagePath@
    | CEBIVIPageURL
      -- ^ @pageUrl@
    | CEBIVIPlatform
      -- ^ @platform@
    | CEBIVIRandomNumber
      -- ^ @randomNumber@
    | CEBIVIReferrer
      -- ^ @referrer@
    | CEBIVIResolution
      -- ^ @resolution@
    | CEBIVISdkVersion
      -- ^ @sdkVersion@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerEnabledBuiltInVariableItem

instance FromText ContainerEnabledBuiltInVariableItem where
    fromText = \case
        "advertiserId" -> Just CEBIVIAdvertiserId
        "advertisingTrackingEnabled" -> Just CEBIVIAdvertisingTrackingEnabled
        "appId" -> Just CEBIVIAppId
        "appName" -> Just CEBIVIAppName
        "appVersionCode" -> Just CEBIVIAppVersionCode
        "appVersionName" -> Just CEBIVIAppVersionName
        "clickClasses" -> Just CEBIVIClickClasses
        "clickElement" -> Just CEBIVIClickElement
        "clickId" -> Just CEBIVIClickId
        "clickTarget" -> Just CEBIVIClickTarget
        "clickText" -> Just CEBIVIClickText
        "clickUrl" -> Just CEBIVIClickURL
        "containerId" -> Just CEBIVIContainerId
        "containerVersion" -> Just CEBIVIContainerVersion
        "debugMode" -> Just CEBIVIDebugMode
        "deviceName" -> Just CEBIVIDeviceName
        "errorLine" -> Just CEBIVIErrorLine
        "errorMessage" -> Just CEBIVIErrorMessage
        "errorUrl" -> Just CEBIVIErrorURL
        "event" -> Just CEBIVIEvent
        "formClasses" -> Just CEBIVIFormClasses
        "formElement" -> Just CEBIVIFormElement
        "formId" -> Just CEBIVIFormId
        "formTarget" -> Just CEBIVIFormTarget
        "formText" -> Just CEBIVIFormText
        "formUrl" -> Just CEBIVIFormURL
        "historySource" -> Just CEBIVIHistorySource
        "htmlId" -> Just CEBIVIHTMLId
        "language" -> Just CEBIVILanguage
        "newHistoryFragment" -> Just CEBIVINewHistoryFragment
        "newHistoryState" -> Just CEBIVINewHistoryState
        "oldHistoryFragment" -> Just CEBIVIOldHistoryFragment
        "oldHistoryState" -> Just CEBIVIOldHistoryState
        "osVersion" -> Just CEBIVIOSVersion
        "pageHostname" -> Just CEBIVIPageHostname
        "pagePath" -> Just CEBIVIPagePath
        "pageUrl" -> Just CEBIVIPageURL
        "platform" -> Just CEBIVIPlatform
        "randomNumber" -> Just CEBIVIRandomNumber
        "referrer" -> Just CEBIVIReferrer
        "resolution" -> Just CEBIVIResolution
        "sdkVersion" -> Just CEBIVISdkVersion
        _ -> Nothing

instance ToText ContainerEnabledBuiltInVariableItem where
    toText = \case
        CEBIVIAdvertiserId -> "advertiserId"
        CEBIVIAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        CEBIVIAppId -> "appId"
        CEBIVIAppName -> "appName"
        CEBIVIAppVersionCode -> "appVersionCode"
        CEBIVIAppVersionName -> "appVersionName"
        CEBIVIClickClasses -> "clickClasses"
        CEBIVIClickElement -> "clickElement"
        CEBIVIClickId -> "clickId"
        CEBIVIClickTarget -> "clickTarget"
        CEBIVIClickText -> "clickText"
        CEBIVIClickURL -> "clickUrl"
        CEBIVIContainerId -> "containerId"
        CEBIVIContainerVersion -> "containerVersion"
        CEBIVIDebugMode -> "debugMode"
        CEBIVIDeviceName -> "deviceName"
        CEBIVIErrorLine -> "errorLine"
        CEBIVIErrorMessage -> "errorMessage"
        CEBIVIErrorURL -> "errorUrl"
        CEBIVIEvent -> "event"
        CEBIVIFormClasses -> "formClasses"
        CEBIVIFormElement -> "formElement"
        CEBIVIFormId -> "formId"
        CEBIVIFormTarget -> "formTarget"
        CEBIVIFormText -> "formText"
        CEBIVIFormURL -> "formUrl"
        CEBIVIHistorySource -> "historySource"
        CEBIVIHTMLId -> "htmlId"
        CEBIVILanguage -> "language"
        CEBIVINewHistoryFragment -> "newHistoryFragment"
        CEBIVINewHistoryState -> "newHistoryState"
        CEBIVIOldHistoryFragment -> "oldHistoryFragment"
        CEBIVIOldHistoryState -> "oldHistoryState"
        CEBIVIOSVersion -> "osVersion"
        CEBIVIPageHostname -> "pageHostname"
        CEBIVIPagePath -> "pagePath"
        CEBIVIPageURL -> "pageUrl"
        CEBIVIPlatform -> "platform"
        CEBIVIRandomNumber -> "randomNumber"
        CEBIVIReferrer -> "referrer"
        CEBIVIResolution -> "resolution"
        CEBIVISdkVersion -> "sdkVersion"

instance FromJSON ContainerEnabledBuiltInVariableItem where
    parseJSON = parseJSONText "ContainerEnabledBuiltInVariableItem"

instance ToJSON ContainerEnabledBuiltInVariableItem where
    toJSON = toJSONText

data ContainerUsageContextItem
    = Android
      -- ^ @android@
    | Ios
      -- ^ @ios@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerUsageContextItem

instance FromText ContainerUsageContextItem where
    fromText = \case
        "android" -> Just Android
        "ios" -> Just Ios
        "web" -> Just Web
        _ -> Nothing

instance ToText ContainerUsageContextItem where
    toText = \case
        Android -> "android"
        Ios -> "ios"
        Web -> "web"

instance FromJSON ContainerUsageContextItem where
    parseJSON = parseJSONText "ContainerUsageContextItem"

instance ToJSON ContainerUsageContextItem where
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

data AccountAccessPermissionItem
    = Delete'
      -- ^ @delete@
    | Edit
      -- ^ @edit@
    | Manage
      -- ^ @manage@
    | Publish
      -- ^ @publish@
    | Read'
      -- ^ @read@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountAccessPermissionItem

instance FromText AccountAccessPermissionItem where
    fromText = \case
        "delete" -> Just Delete'
        "edit" -> Just Edit
        "manage" -> Just Manage
        "publish" -> Just Publish
        "read" -> Just Read'
        _ -> Nothing

instance ToText AccountAccessPermissionItem where
    toText = \case
        Delete' -> "delete"
        Edit -> "edit"
        Manage -> "manage"
        Publish -> "publish"
        Read' -> "read"

instance FromJSON AccountAccessPermissionItem where
    parseJSON = parseJSONText "AccountAccessPermissionItem"

instance ToJSON AccountAccessPermissionItem where
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

data ContainerAccessPermissionItem
    = CAPIDelete'
      -- ^ @delete@
    | CAPIEdit
      -- ^ @edit@
    | CAPIManage
      -- ^ @manage@
    | CAPIPublish
      -- ^ @publish@
    | CAPIRead'
      -- ^ @read@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerAccessPermissionItem

instance FromText ContainerAccessPermissionItem where
    fromText = \case
        "delete" -> Just CAPIDelete'
        "edit" -> Just CAPIEdit
        "manage" -> Just CAPIManage
        "publish" -> Just CAPIPublish
        "read" -> Just CAPIRead'
        _ -> Nothing

instance ToText ContainerAccessPermissionItem where
    toText = \case
        CAPIDelete' -> "delete"
        CAPIEdit -> "edit"
        CAPIManage -> "manage"
        CAPIPublish -> "publish"
        CAPIRead' -> "read"

instance FromJSON ContainerAccessPermissionItem where
    parseJSON = parseJSONText "ContainerAccessPermissionItem"

instance ToJSON ContainerAccessPermissionItem where
    toJSON = toJSONText
