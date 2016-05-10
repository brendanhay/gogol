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

instance FromHttpApiData TriggerType where
    parseQueryParam = \case
        "ajaxSubmission" -> Right AjaxSubmission
        "always" -> Right Always
        "click" -> Right Click
        "customEvent" -> Right CustomEvent
        "domReady" -> Right DomReady
        "formSubmission" -> Right FormSubmission
        "historyChange" -> Right HistoryChange
        "jsError" -> Right JsError
        "linkClick" -> Right LinkClick
        "pageview" -> Right Pageview
        "timer" -> Right Timer
        "windowLoaded" -> Right WindowLoaded
        "youTube" -> Right YouTube
        x -> Left ("Unable to parse TriggerType from: " <> x)

instance ToHttpApiData TriggerType where
    toQueryParam = \case
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
    | CEBIVIEnvironmentName
      -- ^ @environmentName@
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

instance FromHttpApiData ContainerEnabledBuiltInVariableItem where
    parseQueryParam = \case
        "advertiserId" -> Right CEBIVIAdvertiserId
        "advertisingTrackingEnabled" -> Right CEBIVIAdvertisingTrackingEnabled
        "appId" -> Right CEBIVIAppId
        "appName" -> Right CEBIVIAppName
        "appVersionCode" -> Right CEBIVIAppVersionCode
        "appVersionName" -> Right CEBIVIAppVersionName
        "clickClasses" -> Right CEBIVIClickClasses
        "clickElement" -> Right CEBIVIClickElement
        "clickId" -> Right CEBIVIClickId
        "clickTarget" -> Right CEBIVIClickTarget
        "clickText" -> Right CEBIVIClickText
        "clickUrl" -> Right CEBIVIClickURL
        "containerId" -> Right CEBIVIContainerId
        "containerVersion" -> Right CEBIVIContainerVersion
        "debugMode" -> Right CEBIVIDebugMode
        "deviceName" -> Right CEBIVIDeviceName
        "environmentName" -> Right CEBIVIEnvironmentName
        "errorLine" -> Right CEBIVIErrorLine
        "errorMessage" -> Right CEBIVIErrorMessage
        "errorUrl" -> Right CEBIVIErrorURL
        "event" -> Right CEBIVIEvent
        "formClasses" -> Right CEBIVIFormClasses
        "formElement" -> Right CEBIVIFormElement
        "formId" -> Right CEBIVIFormId
        "formTarget" -> Right CEBIVIFormTarget
        "formText" -> Right CEBIVIFormText
        "formUrl" -> Right CEBIVIFormURL
        "historySource" -> Right CEBIVIHistorySource
        "htmlId" -> Right CEBIVIHTMLId
        "language" -> Right CEBIVILanguage
        "newHistoryFragment" -> Right CEBIVINewHistoryFragment
        "newHistoryState" -> Right CEBIVINewHistoryState
        "oldHistoryFragment" -> Right CEBIVIOldHistoryFragment
        "oldHistoryState" -> Right CEBIVIOldHistoryState
        "osVersion" -> Right CEBIVIOSVersion
        "pageHostname" -> Right CEBIVIPageHostname
        "pagePath" -> Right CEBIVIPagePath
        "pageUrl" -> Right CEBIVIPageURL
        "platform" -> Right CEBIVIPlatform
        "randomNumber" -> Right CEBIVIRandomNumber
        "referrer" -> Right CEBIVIReferrer
        "resolution" -> Right CEBIVIResolution
        "sdkVersion" -> Right CEBIVISdkVersion
        x -> Left ("Unable to parse ContainerEnabledBuiltInVariableItem from: " <> x)

instance ToHttpApiData ContainerEnabledBuiltInVariableItem where
    toQueryParam = \case
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
        CEBIVIEnvironmentName -> "environmentName"
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
    | ANDROIdSDK5
      -- ^ @androidSdk5@
    | Ios
      -- ^ @ios@
    | IOSSDK5
      -- ^ @iosSdk5@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerUsageContextItem

instance FromHttpApiData ContainerUsageContextItem where
    parseQueryParam = \case
        "android" -> Right Android
        "androidSdk5" -> Right ANDROIdSDK5
        "ios" -> Right Ios
        "iosSdk5" -> Right IOSSDK5
        "web" -> Right Web
        x -> Left ("Unable to parse ContainerUsageContextItem from: " <> x)

instance ToHttpApiData ContainerUsageContextItem where
    toQueryParam = \case
        Android -> "android"
        ANDROIdSDK5 -> "androidSdk5"
        Ios -> "ios"
        IOSSDK5 -> "iosSdk5"
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

instance FromHttpApiData ConditionType where
    parseQueryParam = \case
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

instance FromHttpApiData AccountAccessPermissionItem where
    parseQueryParam = \case
        "delete" -> Right Delete'
        "edit" -> Right Edit
        "manage" -> Right Manage
        "publish" -> Right Publish
        "read" -> Right Read'
        x -> Left ("Unable to parse AccountAccessPermissionItem from: " <> x)

instance ToHttpApiData AccountAccessPermissionItem where
    toQueryParam = \case
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

instance FromHttpApiData TagTagFiringOption where
    parseQueryParam = \case
        "oncePerEvent" -> Right OncePerEvent
        "oncePerLoad" -> Right OncePerLoad
        "unlimited" -> Right Unlimited
        x -> Left ("Unable to parse TagTagFiringOption from: " <> x)

instance ToHttpApiData TagTagFiringOption where
    toQueryParam = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ParameterType

instance FromHttpApiData ParameterType where
    parseQueryParam = \case
        "boolean" -> Right Boolean
        "integer" -> Right Integer
        "list" -> Right List
        "map" -> Right Map
        "template" -> Right Template
        x -> Left ("Unable to parse ParameterType from: " <> x)

instance ToHttpApiData ParameterType where
    toQueryParam = \case
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

instance FromHttpApiData ContainerAccessPermissionItem where
    parseQueryParam = \case
        "delete" -> Right CAPIDelete'
        "edit" -> Right CAPIEdit
        "manage" -> Right CAPIManage
        "publish" -> Right CAPIPublish
        "read" -> Right CAPIRead'
        x -> Left ("Unable to parse ContainerAccessPermissionItem from: " <> x)

instance ToHttpApiData ContainerAccessPermissionItem where
    toQueryParam = \case
        CAPIDelete' -> "delete"
        CAPIEdit -> "edit"
        CAPIManage -> "manage"
        CAPIPublish -> "publish"
        CAPIRead' -> "read"

instance FromJSON ContainerAccessPermissionItem where
    parseJSON = parseJSONText "ContainerAccessPermissionItem"

instance ToJSON ContainerAccessPermissionItem where
    toJSON = toJSONText

-- | The type of this environment.
data EnvironmentType
    = Draft
      -- ^ @draft@
    | Latest
      -- ^ @latest@
    | Live
      -- ^ @live@
    | User
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EnvironmentType

instance FromHttpApiData EnvironmentType where
    parseQueryParam = \case
        "draft" -> Right Draft
        "latest" -> Right Latest
        "live" -> Right Live
        "user" -> Right User
        x -> Left ("Unable to parse EnvironmentType from: " <> x)

instance ToHttpApiData EnvironmentType where
    toQueryParam = \case
        Draft -> "draft"
        Latest -> "latest"
        Live -> "live"
        User -> "user"

instance FromJSON EnvironmentType where
    parseJSON = parseJSONText "EnvironmentType"

instance ToJSON EnvironmentType where
    toJSON = toJSONText
