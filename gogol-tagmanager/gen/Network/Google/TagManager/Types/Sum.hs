{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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

data ContainerItemUsageContext
    = CIUCAndroid
      -- ^ @android@
    | CIUCIos
      -- ^ @ios@
    | CIUCWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerItemUsageContext

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
