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
data TagFiringOption
    = OncePerEvent
      -- ^ @oncePerEvent@
    | OncePerLoad
      -- ^ @oncePerLoad@
    | Unlimited
      -- ^ @unlimited@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TagFiringOption

instance FromText TagFiringOption where
    fromText = \case
        "oncePerEvent" -> Just OncePerEvent
        "oncePerLoad" -> Just OncePerLoad
        "unlimited" -> Just Unlimited
        _ -> Nothing

instance ToText TagFiringOption where
    toText = \case
        OncePerEvent -> "oncePerEvent"
        OncePerLoad -> "oncePerLoad"
        Unlimited -> "unlimited"

instance FromJSON TagFiringOption where
    parseJSON = parseJSONText "TagFiringOption"

instance ToJSON TagFiringOption where
    toJSON = toJSONText

data UsageContextItem
    = Android
      -- ^ @android@
    | Ios
      -- ^ @ios@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsageContextItem

instance FromText UsageContextItem where
    fromText = \case
        "android" -> Just Android
        "ios" -> Just Ios
        "web" -> Just Web
        _ -> Nothing

instance ToText UsageContextItem where
    toText = \case
        Android -> "android"
        Ios -> "ios"
        Web -> "web"

instance FromJSON UsageContextItem where
    parseJSON = parseJSONText "UsageContextItem"

instance ToJSON UsageContextItem where
    toJSON = toJSONText

data EnabledBuiltInVariableItem
    = EBIVIAdvertiserId
      -- ^ @advertiserId@
    | EBIVIAdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | EBIVIAppId
      -- ^ @appId@
    | EBIVIAppName
      -- ^ @appName@
    | EBIVIAppVersionCode
      -- ^ @appVersionCode@
    | EBIVIAppVersionName
      -- ^ @appVersionName@
    | EBIVIClickClasses
      -- ^ @clickClasses@
    | EBIVIClickElement
      -- ^ @clickElement@
    | EBIVIClickId
      -- ^ @clickId@
    | EBIVIClickTarget
      -- ^ @clickTarget@
    | EBIVIClickText
      -- ^ @clickText@
    | EBIVIClickURL
      -- ^ @clickUrl@
    | EBIVIContainerId
      -- ^ @containerId@
    | EBIVIContainerVersion
      -- ^ @containerVersion@
    | EBIVIDebugMode
      -- ^ @debugMode@
    | EBIVIDeviceName
      -- ^ @deviceName@
    | EBIVIErrorLine
      -- ^ @errorLine@
    | EBIVIErrorMessage
      -- ^ @errorMessage@
    | EBIVIErrorURL
      -- ^ @errorUrl@
    | EBIVIEvent
      -- ^ @event@
    | EBIVIFormClasses
      -- ^ @formClasses@
    | EBIVIFormElement
      -- ^ @formElement@
    | EBIVIFormId
      -- ^ @formId@
    | EBIVIFormTarget
      -- ^ @formTarget@
    | EBIVIFormText
      -- ^ @formText@
    | EBIVIFormURL
      -- ^ @formUrl@
    | EBIVIHistorySource
      -- ^ @historySource@
    | EBIVIHTMLId
      -- ^ @htmlId@
    | EBIVILanguage
      -- ^ @language@
    | EBIVINewHistoryFragment
      -- ^ @newHistoryFragment@
    | EBIVINewHistoryState
      -- ^ @newHistoryState@
    | EBIVIOldHistoryFragment
      -- ^ @oldHistoryFragment@
    | EBIVIOldHistoryState
      -- ^ @oldHistoryState@
    | EBIVIOSVersion
      -- ^ @osVersion@
    | EBIVIPageHostname
      -- ^ @pageHostname@
    | EBIVIPagePath
      -- ^ @pagePath@
    | EBIVIPageURL
      -- ^ @pageUrl@
    | EBIVIPlatform
      -- ^ @platform@
    | EBIVIRandomNumber
      -- ^ @randomNumber@
    | EBIVIReferrer
      -- ^ @referrer@
    | EBIVIResolution
      -- ^ @resolution@
    | EBIVISdkVersion
      -- ^ @sdkVersion@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EnabledBuiltInVariableItem

instance FromText EnabledBuiltInVariableItem where
    fromText = \case
        "advertiserId" -> Just EBIVIAdvertiserId
        "advertisingTrackingEnabled" -> Just EBIVIAdvertisingTrackingEnabled
        "appId" -> Just EBIVIAppId
        "appName" -> Just EBIVIAppName
        "appVersionCode" -> Just EBIVIAppVersionCode
        "appVersionName" -> Just EBIVIAppVersionName
        "clickClasses" -> Just EBIVIClickClasses
        "clickElement" -> Just EBIVIClickElement
        "clickId" -> Just EBIVIClickId
        "clickTarget" -> Just EBIVIClickTarget
        "clickText" -> Just EBIVIClickText
        "clickUrl" -> Just EBIVIClickURL
        "containerId" -> Just EBIVIContainerId
        "containerVersion" -> Just EBIVIContainerVersion
        "debugMode" -> Just EBIVIDebugMode
        "deviceName" -> Just EBIVIDeviceName
        "errorLine" -> Just EBIVIErrorLine
        "errorMessage" -> Just EBIVIErrorMessage
        "errorUrl" -> Just EBIVIErrorURL
        "event" -> Just EBIVIEvent
        "formClasses" -> Just EBIVIFormClasses
        "formElement" -> Just EBIVIFormElement
        "formId" -> Just EBIVIFormId
        "formTarget" -> Just EBIVIFormTarget
        "formText" -> Just EBIVIFormText
        "formUrl" -> Just EBIVIFormURL
        "historySource" -> Just EBIVIHistorySource
        "htmlId" -> Just EBIVIHTMLId
        "language" -> Just EBIVILanguage
        "newHistoryFragment" -> Just EBIVINewHistoryFragment
        "newHistoryState" -> Just EBIVINewHistoryState
        "oldHistoryFragment" -> Just EBIVIOldHistoryFragment
        "oldHistoryState" -> Just EBIVIOldHistoryState
        "osVersion" -> Just EBIVIOSVersion
        "pageHostname" -> Just EBIVIPageHostname
        "pagePath" -> Just EBIVIPagePath
        "pageUrl" -> Just EBIVIPageURL
        "platform" -> Just EBIVIPlatform
        "randomNumber" -> Just EBIVIRandomNumber
        "referrer" -> Just EBIVIReferrer
        "resolution" -> Just EBIVIResolution
        "sdkVersion" -> Just EBIVISdkVersion
        _ -> Nothing

instance ToText EnabledBuiltInVariableItem where
    toText = \case
        EBIVIAdvertiserId -> "advertiserId"
        EBIVIAdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        EBIVIAppId -> "appId"
        EBIVIAppName -> "appName"
        EBIVIAppVersionCode -> "appVersionCode"
        EBIVIAppVersionName -> "appVersionName"
        EBIVIClickClasses -> "clickClasses"
        EBIVIClickElement -> "clickElement"
        EBIVIClickId -> "clickId"
        EBIVIClickTarget -> "clickTarget"
        EBIVIClickText -> "clickText"
        EBIVIClickURL -> "clickUrl"
        EBIVIContainerId -> "containerId"
        EBIVIContainerVersion -> "containerVersion"
        EBIVIDebugMode -> "debugMode"
        EBIVIDeviceName -> "deviceName"
        EBIVIErrorLine -> "errorLine"
        EBIVIErrorMessage -> "errorMessage"
        EBIVIErrorURL -> "errorUrl"
        EBIVIEvent -> "event"
        EBIVIFormClasses -> "formClasses"
        EBIVIFormElement -> "formElement"
        EBIVIFormId -> "formId"
        EBIVIFormTarget -> "formTarget"
        EBIVIFormText -> "formText"
        EBIVIFormURL -> "formUrl"
        EBIVIHistorySource -> "historySource"
        EBIVIHTMLId -> "htmlId"
        EBIVILanguage -> "language"
        EBIVINewHistoryFragment -> "newHistoryFragment"
        EBIVINewHistoryState -> "newHistoryState"
        EBIVIOldHistoryFragment -> "oldHistoryFragment"
        EBIVIOldHistoryState -> "oldHistoryState"
        EBIVIOSVersion -> "osVersion"
        EBIVIPageHostname -> "pageHostname"
        EBIVIPagePath -> "pagePath"
        EBIVIPageURL -> "pageUrl"
        EBIVIPlatform -> "platform"
        EBIVIRandomNumber -> "randomNumber"
        EBIVIReferrer -> "referrer"
        EBIVIResolution -> "resolution"
        EBIVISdkVersion -> "sdkVersion"

instance FromJSON EnabledBuiltInVariableItem where
    parseJSON = parseJSONText "EnabledBuiltInVariableItem"

instance ToJSON EnabledBuiltInVariableItem where
    toJSON = toJSONText

data ContainerAccessPermissionItem
    = Delete
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

instance Hashable ContainerAccessPermissionItem

instance FromText ContainerAccessPermissionItem where
    fromText = \case
        "delete" -> Just Delete
        "edit" -> Just Edit
        "manage" -> Just Manage
        "publish" -> Just Publish
        "read" -> Just Read'
        _ -> Nothing

instance ToText ContainerAccessPermissionItem where
    toText = \case
        Delete -> "delete"
        Edit -> "edit"
        Manage -> "manage"
        Publish -> "publish"
        Read' -> "read"

instance FromJSON ContainerAccessPermissionItem where
    parseJSON = parseJSONText "ContainerAccessPermissionItem"

instance ToJSON ContainerAccessPermissionItem where
    toJSON = toJSONText

data PermissionItem
    = PIDelete
      -- ^ @delete@
    | PIEdit
      -- ^ @edit@
    | PIManage
      -- ^ @manage@
    | PIPublish
      -- ^ @publish@
    | PIRead'
      -- ^ @read@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionItem

instance FromText PermissionItem where
    fromText = \case
        "delete" -> Just PIDelete
        "edit" -> Just PIEdit
        "manage" -> Just PIManage
        "publish" -> Just PIPublish
        "read" -> Just PIRead'
        _ -> Nothing

instance ToText PermissionItem where
    toText = \case
        PIDelete -> "delete"
        PIEdit -> "edit"
        PIManage -> "manage"
        PIPublish -> "publish"
        PIRead' -> "read"

instance FromJSON PermissionItem where
    parseJSON = parseJSONText "PermissionItem"

instance ToJSON PermissionItem where
    toJSON = toJSONText
