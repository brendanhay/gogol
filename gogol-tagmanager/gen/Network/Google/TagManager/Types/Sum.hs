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
    = AdvertiserId
      -- ^ @advertiserId@
    | AdvertisingTrackingEnabled
      -- ^ @advertisingTrackingEnabled@
    | AppId
      -- ^ @appId@
    | AppName
      -- ^ @appName@
    | AppVersionCode
      -- ^ @appVersionCode@
    | AppVersionName
      -- ^ @appVersionName@
    | ClickClasses
      -- ^ @clickClasses@
    | ClickElement
      -- ^ @clickElement@
    | ClickId
      -- ^ @clickId@
    | ClickTarget
      -- ^ @clickTarget@
    | ClickText
      -- ^ @clickText@
    | ClickURL
      -- ^ @clickUrl@
    | ContainerId
      -- ^ @containerId@
    | ContainerVersion
      -- ^ @containerVersion@
    | DebugMode
      -- ^ @debugMode@
    | DeviceName
      -- ^ @deviceName@
    | ErrorLine
      -- ^ @errorLine@
    | ErrorMessage
      -- ^ @errorMessage@
    | ErrorURL
      -- ^ @errorUrl@
    | Event
      -- ^ @event@
    | FormClasses
      -- ^ @formClasses@
    | FormElement
      -- ^ @formElement@
    | FormId
      -- ^ @formId@
    | FormTarget
      -- ^ @formTarget@
    | FormText
      -- ^ @formText@
    | FormURL
      -- ^ @formUrl@
    | HistorySource
      -- ^ @historySource@
    | HTMLId
      -- ^ @htmlId@
    | Language
      -- ^ @language@
    | NewHistoryFragment
      -- ^ @newHistoryFragment@
    | NewHistoryState
      -- ^ @newHistoryState@
    | OldHistoryFragment
      -- ^ @oldHistoryFragment@
    | OldHistoryState
      -- ^ @oldHistoryState@
    | OsVersion
      -- ^ @osVersion@
    | PageHostname
      -- ^ @pageHostname@
    | PagePath
      -- ^ @pagePath@
    | PageURL
      -- ^ @pageUrl@
    | Platform
      -- ^ @platform@
    | RandomNumber
      -- ^ @randomNumber@
    | Referrer
      -- ^ @referrer@
    | Resolution
      -- ^ @resolution@
    | SdkVersion
      -- ^ @sdkVersion@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerEnabledBuiltInVariable

instance FromText ContainerEnabledBuiltInVariable where
    fromText = \case
        "advertiserId" -> Just AdvertiserId
        "advertisingTrackingEnabled" -> Just AdvertisingTrackingEnabled
        "appId" -> Just AppId
        "appName" -> Just AppName
        "appVersionCode" -> Just AppVersionCode
        "appVersionName" -> Just AppVersionName
        "clickClasses" -> Just ClickClasses
        "clickElement" -> Just ClickElement
        "clickId" -> Just ClickId
        "clickTarget" -> Just ClickTarget
        "clickText" -> Just ClickText
        "clickUrl" -> Just ClickURL
        "containerId" -> Just ContainerId
        "containerVersion" -> Just ContainerVersion
        "debugMode" -> Just DebugMode
        "deviceName" -> Just DeviceName
        "errorLine" -> Just ErrorLine
        "errorMessage" -> Just ErrorMessage
        "errorUrl" -> Just ErrorURL
        "event" -> Just Event
        "formClasses" -> Just FormClasses
        "formElement" -> Just FormElement
        "formId" -> Just FormId
        "formTarget" -> Just FormTarget
        "formText" -> Just FormText
        "formUrl" -> Just FormURL
        "historySource" -> Just HistorySource
        "htmlId" -> Just HTMLId
        "language" -> Just Language
        "newHistoryFragment" -> Just NewHistoryFragment
        "newHistoryState" -> Just NewHistoryState
        "oldHistoryFragment" -> Just OldHistoryFragment
        "oldHistoryState" -> Just OldHistoryState
        "osVersion" -> Just OsVersion
        "pageHostname" -> Just PageHostname
        "pagePath" -> Just PagePath
        "pageUrl" -> Just PageURL
        "platform" -> Just Platform
        "randomNumber" -> Just RandomNumber
        "referrer" -> Just Referrer
        "resolution" -> Just Resolution
        "sdkVersion" -> Just SdkVersion
        _ -> Nothing

instance ToText ContainerEnabledBuiltInVariable where
    toText = \case
        AdvertiserId -> "advertiserId"
        AdvertisingTrackingEnabled -> "advertisingTrackingEnabled"
        AppId -> "appId"
        AppName -> "appName"
        AppVersionCode -> "appVersionCode"
        AppVersionName -> "appVersionName"
        ClickClasses -> "clickClasses"
        ClickElement -> "clickElement"
        ClickId -> "clickId"
        ClickTarget -> "clickTarget"
        ClickText -> "clickText"
        ClickURL -> "clickUrl"
        ContainerId -> "containerId"
        ContainerVersion -> "containerVersion"
        DebugMode -> "debugMode"
        DeviceName -> "deviceName"
        ErrorLine -> "errorLine"
        ErrorMessage -> "errorMessage"
        ErrorURL -> "errorUrl"
        Event -> "event"
        FormClasses -> "formClasses"
        FormElement -> "formElement"
        FormId -> "formId"
        FormTarget -> "formTarget"
        FormText -> "formText"
        FormURL -> "formUrl"
        HistorySource -> "historySource"
        HTMLId -> "htmlId"
        Language -> "language"
        NewHistoryFragment -> "newHistoryFragment"
        NewHistoryState -> "newHistoryState"
        OldHistoryFragment -> "oldHistoryFragment"
        OldHistoryState -> "oldHistoryState"
        OsVersion -> "osVersion"
        PageHostname -> "pageHostname"
        PagePath -> "pagePath"
        PageURL -> "pageUrl"
        Platform -> "platform"
        RandomNumber -> "randomNumber"
        Referrer -> "referrer"
        Resolution -> "resolution"
        SdkVersion -> "sdkVersion"

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
