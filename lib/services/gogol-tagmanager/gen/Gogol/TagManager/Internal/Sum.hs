{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TagManager.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.TagManager.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AccountAccess_Permission
    AccountAccess_Permission
      ( AccountAccess_Permission_AccountPermissionUnspecified,
        AccountAccess_Permission_NoAccess,
        AccountAccess_Permission_User,
        AccountAccess_Permission_Admin,
        ..
      ),

    -- * BuiltInVariable_Type
    BuiltInVariable_Type
      ( BuiltInVariable_Type_BuiltInVariableTypeUnspecified,
        BuiltInVariable_Type_PageUrl,
        BuiltInVariable_Type_PageHostname,
        BuiltInVariable_Type_PagePath,
        BuiltInVariable_Type_Referrer,
        BuiltInVariable_Type_Event,
        BuiltInVariable_Type_ClickElement,
        BuiltInVariable_Type_ClickClasses,
        BuiltInVariable_Type_ClickId,
        BuiltInVariable_Type_ClickTarget,
        BuiltInVariable_Type_ClickUrl,
        BuiltInVariable_Type_ClickText,
        BuiltInVariable_Type_FirstPartyServingUrl,
        BuiltInVariable_Type_FormElement,
        BuiltInVariable_Type_FormClasses,
        BuiltInVariable_Type_FormId,
        BuiltInVariable_Type_FormTarget,
        BuiltInVariable_Type_FormUrl,
        BuiltInVariable_Type_FormText,
        BuiltInVariable_Type_ErrorMessage,
        BuiltInVariable_Type_ErrorUrl,
        BuiltInVariable_Type_ErrorLine,
        BuiltInVariable_Type_NewHistoryUrl,
        BuiltInVariable_Type_OldHistoryUrl,
        BuiltInVariable_Type_NewHistoryFragment,
        BuiltInVariable_Type_OldHistoryFragment,
        BuiltInVariable_Type_NewHistoryState,
        BuiltInVariable_Type_OldHistoryState,
        BuiltInVariable_Type_HistorySource,
        BuiltInVariable_Type_ContainerVersion,
        BuiltInVariable_Type_DebugMode,
        BuiltInVariable_Type_RandomNumber,
        BuiltInVariable_Type_ContainerId,
        BuiltInVariable_Type_AppId,
        BuiltInVariable_Type_AppName,
        BuiltInVariable_Type_AppVersionCode,
        BuiltInVariable_Type_AppVersionName,
        BuiltInVariable_Type_Language,
        BuiltInVariable_Type_OsVersion,
        BuiltInVariable_Type_Platform,
        BuiltInVariable_Type_SdkVersion,
        BuiltInVariable_Type_DeviceName,
        BuiltInVariable_Type_Resolution,
        BuiltInVariable_Type_AdvertiserId,
        BuiltInVariable_Type_AdvertisingTrackingEnabled,
        BuiltInVariable_Type_HtmlId,
        BuiltInVariable_Type_EnvironmentName,
        BuiltInVariable_Type_AmpBrowserLanguage,
        BuiltInVariable_Type_AmpCanonicalPath,
        BuiltInVariable_Type_AmpCanonicalUrl,
        BuiltInVariable_Type_AmpCanonicalHost,
        BuiltInVariable_Type_AmpReferrer,
        BuiltInVariable_Type_AmpTitle,
        BuiltInVariable_Type_AmpClientId,
        BuiltInVariable_Type_AmpClientTimezone,
        BuiltInVariable_Type_AmpClientTimestamp,
        BuiltInVariable_Type_AmpClientScreenWidth,
        BuiltInVariable_Type_AmpClientScreenHeight,
        BuiltInVariable_Type_AmpClientScrollX,
        BuiltInVariable_Type_AmpClientScrollY,
        BuiltInVariable_Type_AmpClientMaxScrollX,
        BuiltInVariable_Type_AmpClientMaxScrollY,
        BuiltInVariable_Type_AmpTotalEngagedTime,
        BuiltInVariable_Type_AmpPageViewId,
        BuiltInVariable_Type_AmpPageLoadTime,
        BuiltInVariable_Type_AmpPageDownloadTime,
        BuiltInVariable_Type_AmpGtmEvent,
        BuiltInVariable_Type_EventName,
        BuiltInVariable_Type_FirebaseEventParameterCampaign,
        BuiltInVariable_Type_FirebaseEventParameterCampaignAclid,
        BuiltInVariable_Type_FirebaseEventParameterCampaignAnid,
        BuiltInVariable_Type_FirebaseEventParameterCampaignClickTimestamp,
        BuiltInVariable_Type_FirebaseEventParameterCampaignContent,
        BuiltInVariable_Type_FIREBASEEVENTPARAMETERCAMPAIGNCP1,
        BuiltInVariable_Type_FirebaseEventParameterCampaignGclid,
        BuiltInVariable_Type_FirebaseEventParameterCampaignSource,
        BuiltInVariable_Type_FirebaseEventParameterCampaignTerm,
        BuiltInVariable_Type_FirebaseEventParameterCurrency,
        BuiltInVariable_Type_FirebaseEventParameterDynamicLinkAcceptTime,
        BuiltInVariable_Type_FirebaseEventParameterDynamicLinkLinkid,
        BuiltInVariable_Type_FirebaseEventParameterNotificationMessageDeviceTime,
        BuiltInVariable_Type_FirebaseEventParameterNotificationMessageId,
        BuiltInVariable_Type_FirebaseEventParameterNotificationMessageName,
        BuiltInVariable_Type_FirebaseEventParameterNotificationMessageTime,
        BuiltInVariable_Type_FirebaseEventParameterNotificationTopic,
        BuiltInVariable_Type_FirebaseEventParameterPreviousAppVersion,
        BuiltInVariable_Type_FirebaseEventParameterPreviousOsVersion,
        BuiltInVariable_Type_FirebaseEventParameterPrice,
        BuiltInVariable_Type_FirebaseEventParameterProductId,
        BuiltInVariable_Type_FirebaseEventParameterQuantity,
        BuiltInVariable_Type_FirebaseEventParameterValue,
        BuiltInVariable_Type_VideoProvider,
        BuiltInVariable_Type_VideoUrl,
        BuiltInVariable_Type_VideoTitle,
        BuiltInVariable_Type_VideoDuration,
        BuiltInVariable_Type_VideoPercent,
        BuiltInVariable_Type_VideoVisible,
        BuiltInVariable_Type_VideoStatus,
        BuiltInVariable_Type_VideoCurrentTime,
        BuiltInVariable_Type_ScrollDepthThreshold,
        BuiltInVariable_Type_ScrollDepthUnits,
        BuiltInVariable_Type_ScrollDepthDirection,
        BuiltInVariable_Type_ElementVisibilityRatio,
        BuiltInVariable_Type_ElementVisibilityTime,
        BuiltInVariable_Type_ElementVisibilityFirstTime,
        BuiltInVariable_Type_ElementVisibilityRecentTime,
        BuiltInVariable_Type_RequestPath,
        BuiltInVariable_Type_RequestMethod,
        BuiltInVariable_Type_ClientName,
        BuiltInVariable_Type_QueryString,
        BuiltInVariable_Type_ServerPageLocationUrl,
        BuiltInVariable_Type_ServerPageLocationPath,
        BuiltInVariable_Type_ServerPageLocationHostname,
        BuiltInVariable_Type_VisitorRegion,
        ..
      ),

    -- * Condition_Type
    Condition_Type
      ( Condition_Type_ConditionTypeUnspecified,
        Condition_Type_Equals,
        Condition_Type_Contains,
        Condition_Type_StartsWith,
        Condition_Type_EndsWith,
        Condition_Type_MatchRegex,
        Condition_Type_Greater,
        Condition_Type_GreaterOrEquals,
        Condition_Type_Less,
        Condition_Type_LessOrEquals,
        Condition_Type_CssSelector,
        Condition_Type_UrlMatches,
        ..
      ),

    -- * Container_UsageContextItem
    Container_UsageContextItem
      ( Container_UsageContextItem_UsageContextUnspecified,
        Container_UsageContextItem_Web,
        Container_UsageContextItem_Android,
        Container_UsageContextItem_Ios,
        Container_UsageContextItem_ANDROIDSDK5,
        Container_UsageContextItem_IOSSDK5,
        Container_UsageContextItem_Amp,
        Container_UsageContextItem_Server,
        ..
      ),

    -- * ContainerAccess_Permission
    ContainerAccess_Permission
      ( ContainerAccess_Permission_ContainerPermissionUnspecified,
        ContainerAccess_Permission_NoAccess,
        ContainerAccess_Permission_Read',
        ContainerAccess_Permission_Edit,
        ContainerAccess_Permission_Approve,
        ContainerAccess_Permission_Publish,
        ..
      ),

    -- * Entity_ChangeStatus
    Entity_ChangeStatus
      ( Entity_ChangeStatus_ChangeStatusUnspecified,
        Entity_ChangeStatus_None,
        Entity_ChangeStatus_Added,
        Entity_ChangeStatus_Deleted,
        Entity_ChangeStatus_Updated,
        ..
      ),

    -- * Environment_Type
    Environment_Type
      ( Environment_Type_User,
        Environment_Type_Live,
        Environment_Type_Latest,
        Environment_Type_Workspace,
        ..
      ),

    -- * Parameter_Type
    Parameter_Type
      ( Parameter_Type_TypeUnspecified,
        Parameter_Type_Template,
        Parameter_Type_Integer,
        Parameter_Type_Boolean,
        Parameter_Type_List,
        Parameter_Type_Map,
        Parameter_Type_TriggerReference,
        Parameter_Type_TagReference,
        ..
      ),

    -- * Tag_TagFiringOption
    Tag_TagFiringOption
      ( Tag_TagFiringOption_TagFiringOptionUnspecified,
        Tag_TagFiringOption_Unlimited,
        Tag_TagFiringOption_OncePerEvent,
        Tag_TagFiringOption_OncePerLoad,
        ..
      ),

    -- * TagConsentSetting_ConsentStatus
    TagConsentSetting_ConsentStatus
      ( TagConsentSetting_ConsentStatus_NotSet,
        TagConsentSetting_ConsentStatus_NotNeeded,
        TagConsentSetting_ConsentStatus_Needed,
        ..
      ),

    -- * Trigger_Type
    Trigger_Type
      ( Trigger_Type_EventTypeUnspecified,
        Trigger_Type_Pageview,
        Trigger_Type_DomReady,
        Trigger_Type_WindowLoaded,
        Trigger_Type_CustomEvent,
        Trigger_Type_TriggerGroup,
        Trigger_Type_Init,
        Trigger_Type_ConsentInit,
        Trigger_Type_ServerPageview,
        Trigger_Type_Always,
        Trigger_Type_FirebaseAppException,
        Trigger_Type_FirebaseAppUpdate,
        Trigger_Type_FirebaseCampaign,
        Trigger_Type_FirebaseFirstOpen,
        Trigger_Type_FirebaseInAppPurchase,
        Trigger_Type_FirebaseNotificationDismiss,
        Trigger_Type_FirebaseNotificationForeground,
        Trigger_Type_FirebaseNotificationOpen,
        Trigger_Type_FirebaseNotificationReceive,
        Trigger_Type_FirebaseOsUpdate,
        Trigger_Type_FirebaseSessionStart,
        Trigger_Type_FirebaseUserEngagement,
        Trigger_Type_FormSubmission,
        Trigger_Type_Click,
        Trigger_Type_LinkClick,
        Trigger_Type_JsError,
        Trigger_Type_HistoryChange,
        Trigger_Type_Timer,
        Trigger_Type_AmpClick,
        Trigger_Type_AmpTimer,
        Trigger_Type_AmpScroll,
        Trigger_Type_AmpVisibility,
        Trigger_Type_YouTubeVideo,
        Trigger_Type_ScrollDepth,
        Trigger_Type_ElementVisibility,
        ..
      ),

    -- * VariableFormatValue_CaseConversionType
    VariableFormatValue_CaseConversionType
      ( VariableFormatValue_CaseConversionType_None,
        VariableFormatValue_CaseConversionType_Lowercase,
        VariableFormatValue_CaseConversionType_Uppercase,
        ..
      ),

    -- * AccountsContainersCombineSettingSource
    AccountsContainersCombineSettingSource
      ( AccountsContainersCombineSettingSource_SettingSourceUnspecified,
        AccountsContainersCombineSettingSource_Current,
        AccountsContainersCombineSettingSource_Other,
        ..
      ),

    -- * AccountsContainersWorkspacesBuilt_in_variablesCreateType
    AccountsContainersWorkspacesBuilt_in_variablesCreateType
      ( AccountsContainersWorkspacesBuilt_in_variablesCreateType_BuiltInVariableTypeUnspecified,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_PageUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_PageHostname,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_PagePath,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_Referrer,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_Event,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickElement,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickClasses,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickTarget,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickText,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirstPartyServingUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormElement,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormClasses,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormTarget,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormText,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorMessage,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorLine,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryFragment,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryFragment,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryState,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryState,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_HistorySource,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ContainerVersion,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_DebugMode,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_RandomNumber,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ContainerId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppName,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppVersionCode,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppVersionName,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_Language,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_OsVersion,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_Platform,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_SdkVersion,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_DeviceName,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_Resolution,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AdvertiserId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AdvertisingTrackingEnabled,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_HtmlId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_EnvironmentName,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpBrowserLanguage,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalPath,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalHost,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpReferrer,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpTitle,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientTimezone,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientTimestamp,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScreenWidth,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScreenHeight,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScrollX,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScrollY,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientMaxScrollX,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientMaxScrollY,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpTotalEngagedTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageViewId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageLoadTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageDownloadTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpGtmEvent,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_EventName,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaign,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignAclid,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignAnid,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignClickTimestamp,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignContent,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FIREBASEEVENTPARAMETERCAMPAIGNCP1,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignGclid,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignSource,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignTerm,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCurrency,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterDynamicLinkAcceptTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterDynamicLinkLinkid,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageDeviceTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageName,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationTopic,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPreviousAppVersion,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPreviousOsVersion,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPrice,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterProductId,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterQuantity,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterValue,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoProvider,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoTitle,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoDuration,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoPercent,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoVisible,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoStatus,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoCurrentTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthThreshold,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthUnits,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthDirection,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityRatio,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityFirstTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityRecentTime,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_RequestPath,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_RequestMethod,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClientName,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_QueryString,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationUrl,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationPath,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationHostname,
        AccountsContainersWorkspacesBuilt_in_variablesCreateType_VisitorRegion,
        ..
      ),

    -- * AccountsContainersWorkspacesBuilt_in_variablesDeleteType
    AccountsContainersWorkspacesBuilt_in_variablesDeleteType
      ( AccountsContainersWorkspacesBuilt_in_variablesDeleteType_BuiltInVariableTypeUnspecified,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PageUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PageHostname,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PagePath,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Referrer,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Event,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickElement,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickClasses,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickTarget,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickText,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirstPartyServingUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormElement,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormClasses,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormTarget,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormText,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorMessage,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorLine,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryFragment,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryFragment,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryState,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryState,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_HistorySource,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ContainerVersion,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_DebugMode,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RandomNumber,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ContainerId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppName,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppVersionCode,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppVersionName,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Language,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OsVersion,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Platform,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_SdkVersion,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_DeviceName,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Resolution,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AdvertiserId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AdvertisingTrackingEnabled,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_HtmlId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_EnvironmentName,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpBrowserLanguage,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalPath,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalHost,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpReferrer,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpTitle,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientTimezone,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientTimestamp,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScreenWidth,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScreenHeight,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScrollX,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScrollY,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientMaxScrollX,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientMaxScrollY,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpTotalEngagedTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageViewId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageLoadTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageDownloadTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpGtmEvent,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_EventName,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaign,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignAclid,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignAnid,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignClickTimestamp,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignContent,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FIREBASEEVENTPARAMETERCAMPAIGNCP1,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignGclid,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignSource,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignTerm,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCurrency,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterDynamicLinkAcceptTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterDynamicLinkLinkid,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageDeviceTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageName,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationTopic,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPreviousAppVersion,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPreviousOsVersion,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPrice,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterProductId,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterQuantity,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterValue,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoProvider,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoTitle,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoDuration,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoPercent,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoVisible,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoStatus,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoCurrentTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthThreshold,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthUnits,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthDirection,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityRatio,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityFirstTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityRecentTime,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RequestPath,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RequestMethod,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClientName,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_QueryString,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationUrl,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationPath,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationHostname,
        AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VisitorRegion,
        ..
      ),

    -- * AccountsContainersWorkspacesBuilt_in_variablesRevertType
    AccountsContainersWorkspacesBuilt_in_variablesRevertType
      ( AccountsContainersWorkspacesBuilt_in_variablesRevertType_BuiltInVariableTypeUnspecified,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_PageUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_PageHostname,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_PagePath,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_Referrer,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_Event,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickElement,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickClasses,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickTarget,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickText,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirstPartyServingUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormElement,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormClasses,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormTarget,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormText,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorMessage,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorLine,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryFragment,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryFragment,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryState,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryState,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_HistorySource,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ContainerVersion,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_DebugMode,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_RandomNumber,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ContainerId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppName,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppVersionCode,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppVersionName,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_Language,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_OsVersion,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_Platform,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_SdkVersion,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_DeviceName,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_Resolution,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AdvertiserId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AdvertisingTrackingEnabled,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_HtmlId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_EnvironmentName,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpBrowserLanguage,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalPath,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalHost,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpReferrer,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpTitle,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientTimezone,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientTimestamp,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScreenWidth,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScreenHeight,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScrollX,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScrollY,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientMaxScrollX,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientMaxScrollY,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpTotalEngagedTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageViewId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageLoadTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageDownloadTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpGtmEvent,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_EventName,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaign,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignAclid,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignAnid,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignClickTimestamp,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignContent,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FIREBASEEVENTPARAMETERCAMPAIGNCP1,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignGclid,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignSource,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignTerm,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCurrency,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterDynamicLinkAcceptTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterDynamicLinkLinkid,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageDeviceTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageName,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationTopic,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPreviousAppVersion,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPreviousOsVersion,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPrice,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterProductId,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterQuantity,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterValue,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoProvider,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoTitle,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoDuration,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoPercent,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoVisible,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoStatus,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoCurrentTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthThreshold,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthUnits,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthDirection,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityRatio,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityFirstTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityRecentTime,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_RequestPath,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_RequestMethod,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClientName,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_QueryString,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationUrl,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationPath,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationHostname,
        AccountsContainersWorkspacesBuilt_in_variablesRevertType_VisitorRegion,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Whether the user has no access, user access, or admin access to an account. \@mutable tagmanager.accounts.permissions.create \@mutable tagmanager.accounts.permissions.update
newtype AccountAccess_Permission = AccountAccess_Permission {fromAccountAccess_Permission :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern AccountAccess_Permission_AccountPermissionUnspecified :: AccountAccess_Permission
pattern AccountAccess_Permission_AccountPermissionUnspecified = AccountAccess_Permission "accountPermissionUnspecified"

pattern AccountAccess_Permission_NoAccess :: AccountAccess_Permission
pattern AccountAccess_Permission_NoAccess = AccountAccess_Permission "noAccess"

pattern AccountAccess_Permission_User :: AccountAccess_Permission
pattern AccountAccess_Permission_User = AccountAccess_Permission "user"

pattern AccountAccess_Permission_Admin :: AccountAccess_Permission
pattern AccountAccess_Permission_Admin = AccountAccess_Permission "admin"

{-# COMPLETE
  AccountAccess_Permission_AccountPermissionUnspecified,
  AccountAccess_Permission_NoAccess,
  AccountAccess_Permission_User,
  AccountAccess_Permission_Admin,
  AccountAccess_Permission
  #-}

-- | Type of built-in variable. \@required.tagmanager.accounts.containers.workspaces.built/in/variable.update \@mutable tagmanager.accounts.containers.workspaces.built/in/variable.update
newtype BuiltInVariable_Type = BuiltInVariable_Type {fromBuiltInVariable_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern BuiltInVariable_Type_BuiltInVariableTypeUnspecified :: BuiltInVariable_Type
pattern BuiltInVariable_Type_BuiltInVariableTypeUnspecified = BuiltInVariable_Type "builtInVariableTypeUnspecified"

pattern BuiltInVariable_Type_PageUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_PageUrl = BuiltInVariable_Type "pageUrl"

pattern BuiltInVariable_Type_PageHostname :: BuiltInVariable_Type
pattern BuiltInVariable_Type_PageHostname = BuiltInVariable_Type "pageHostname"

pattern BuiltInVariable_Type_PagePath :: BuiltInVariable_Type
pattern BuiltInVariable_Type_PagePath = BuiltInVariable_Type "pagePath"

pattern BuiltInVariable_Type_Referrer :: BuiltInVariable_Type
pattern BuiltInVariable_Type_Referrer = BuiltInVariable_Type "referrer"

-- | For web or mobile.
pattern BuiltInVariable_Type_Event :: BuiltInVariable_Type
pattern BuiltInVariable_Type_Event = BuiltInVariable_Type "event"

pattern BuiltInVariable_Type_ClickElement :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ClickElement = BuiltInVariable_Type "clickElement"

pattern BuiltInVariable_Type_ClickClasses :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ClickClasses = BuiltInVariable_Type "clickClasses"

pattern BuiltInVariable_Type_ClickId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ClickId = BuiltInVariable_Type "clickId"

pattern BuiltInVariable_Type_ClickTarget :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ClickTarget = BuiltInVariable_Type "clickTarget"

pattern BuiltInVariable_Type_ClickUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ClickUrl = BuiltInVariable_Type "clickUrl"

pattern BuiltInVariable_Type_ClickText :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ClickText = BuiltInVariable_Type "clickText"

pattern BuiltInVariable_Type_FirstPartyServingUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirstPartyServingUrl = BuiltInVariable_Type "firstPartyServingUrl"

pattern BuiltInVariable_Type_FormElement :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FormElement = BuiltInVariable_Type "formElement"

pattern BuiltInVariable_Type_FormClasses :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FormClasses = BuiltInVariable_Type "formClasses"

pattern BuiltInVariable_Type_FormId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FormId = BuiltInVariable_Type "formId"

pattern BuiltInVariable_Type_FormTarget :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FormTarget = BuiltInVariable_Type "formTarget"

pattern BuiltInVariable_Type_FormUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FormUrl = BuiltInVariable_Type "formUrl"

pattern BuiltInVariable_Type_FormText :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FormText = BuiltInVariable_Type "formText"

pattern BuiltInVariable_Type_ErrorMessage :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ErrorMessage = BuiltInVariable_Type "errorMessage"

pattern BuiltInVariable_Type_ErrorUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ErrorUrl = BuiltInVariable_Type "errorUrl"

pattern BuiltInVariable_Type_ErrorLine :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ErrorLine = BuiltInVariable_Type "errorLine"

pattern BuiltInVariable_Type_NewHistoryUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_NewHistoryUrl = BuiltInVariable_Type "newHistoryUrl"

pattern BuiltInVariable_Type_OldHistoryUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_OldHistoryUrl = BuiltInVariable_Type "oldHistoryUrl"

pattern BuiltInVariable_Type_NewHistoryFragment :: BuiltInVariable_Type
pattern BuiltInVariable_Type_NewHistoryFragment = BuiltInVariable_Type "newHistoryFragment"

pattern BuiltInVariable_Type_OldHistoryFragment :: BuiltInVariable_Type
pattern BuiltInVariable_Type_OldHistoryFragment = BuiltInVariable_Type "oldHistoryFragment"

pattern BuiltInVariable_Type_NewHistoryState :: BuiltInVariable_Type
pattern BuiltInVariable_Type_NewHistoryState = BuiltInVariable_Type "newHistoryState"

pattern BuiltInVariable_Type_OldHistoryState :: BuiltInVariable_Type
pattern BuiltInVariable_Type_OldHistoryState = BuiltInVariable_Type "oldHistoryState"

pattern BuiltInVariable_Type_HistorySource :: BuiltInVariable_Type
pattern BuiltInVariable_Type_HistorySource = BuiltInVariable_Type "historySource"

-- | For web or mobile.
pattern BuiltInVariable_Type_ContainerVersion :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ContainerVersion = BuiltInVariable_Type "containerVersion"

pattern BuiltInVariable_Type_DebugMode :: BuiltInVariable_Type
pattern BuiltInVariable_Type_DebugMode = BuiltInVariable_Type "debugMode"

-- | For web or mobile.
pattern BuiltInVariable_Type_RandomNumber :: BuiltInVariable_Type
pattern BuiltInVariable_Type_RandomNumber = BuiltInVariable_Type "randomNumber"

-- | For web or mobile.
pattern BuiltInVariable_Type_ContainerId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ContainerId = BuiltInVariable_Type "containerId"

pattern BuiltInVariable_Type_AppId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AppId = BuiltInVariable_Type "appId"

pattern BuiltInVariable_Type_AppName :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AppName = BuiltInVariable_Type "appName"

pattern BuiltInVariable_Type_AppVersionCode :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AppVersionCode = BuiltInVariable_Type "appVersionCode"

pattern BuiltInVariable_Type_AppVersionName :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AppVersionName = BuiltInVariable_Type "appVersionName"

pattern BuiltInVariable_Type_Language :: BuiltInVariable_Type
pattern BuiltInVariable_Type_Language = BuiltInVariable_Type "language"

pattern BuiltInVariable_Type_OsVersion :: BuiltInVariable_Type
pattern BuiltInVariable_Type_OsVersion = BuiltInVariable_Type "osVersion"

pattern BuiltInVariable_Type_Platform :: BuiltInVariable_Type
pattern BuiltInVariable_Type_Platform = BuiltInVariable_Type "platform"

pattern BuiltInVariable_Type_SdkVersion :: BuiltInVariable_Type
pattern BuiltInVariable_Type_SdkVersion = BuiltInVariable_Type "sdkVersion"

pattern BuiltInVariable_Type_DeviceName :: BuiltInVariable_Type
pattern BuiltInVariable_Type_DeviceName = BuiltInVariable_Type "deviceName"

pattern BuiltInVariable_Type_Resolution :: BuiltInVariable_Type
pattern BuiltInVariable_Type_Resolution = BuiltInVariable_Type "resolution"

pattern BuiltInVariable_Type_AdvertiserId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AdvertiserId = BuiltInVariable_Type "advertiserId"

pattern BuiltInVariable_Type_AdvertisingTrackingEnabled :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AdvertisingTrackingEnabled = BuiltInVariable_Type "advertisingTrackingEnabled"

pattern BuiltInVariable_Type_HtmlId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_HtmlId = BuiltInVariable_Type "htmlId"

pattern BuiltInVariable_Type_EnvironmentName :: BuiltInVariable_Type
pattern BuiltInVariable_Type_EnvironmentName = BuiltInVariable_Type "environmentName"

pattern BuiltInVariable_Type_AmpBrowserLanguage :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpBrowserLanguage = BuiltInVariable_Type "ampBrowserLanguage"

pattern BuiltInVariable_Type_AmpCanonicalPath :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpCanonicalPath = BuiltInVariable_Type "ampCanonicalPath"

pattern BuiltInVariable_Type_AmpCanonicalUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpCanonicalUrl = BuiltInVariable_Type "ampCanonicalUrl"

pattern BuiltInVariable_Type_AmpCanonicalHost :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpCanonicalHost = BuiltInVariable_Type "ampCanonicalHost"

pattern BuiltInVariable_Type_AmpReferrer :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpReferrer = BuiltInVariable_Type "ampReferrer"

pattern BuiltInVariable_Type_AmpTitle :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpTitle = BuiltInVariable_Type "ampTitle"

pattern BuiltInVariable_Type_AmpClientId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientId = BuiltInVariable_Type "ampClientId"

pattern BuiltInVariable_Type_AmpClientTimezone :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientTimezone = BuiltInVariable_Type "ampClientTimezone"

pattern BuiltInVariable_Type_AmpClientTimestamp :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientTimestamp = BuiltInVariable_Type "ampClientTimestamp"

pattern BuiltInVariable_Type_AmpClientScreenWidth :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientScreenWidth = BuiltInVariable_Type "ampClientScreenWidth"

pattern BuiltInVariable_Type_AmpClientScreenHeight :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientScreenHeight = BuiltInVariable_Type "ampClientScreenHeight"

pattern BuiltInVariable_Type_AmpClientScrollX :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientScrollX = BuiltInVariable_Type "ampClientScrollX"

pattern BuiltInVariable_Type_AmpClientScrollY :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientScrollY = BuiltInVariable_Type "ampClientScrollY"

pattern BuiltInVariable_Type_AmpClientMaxScrollX :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientMaxScrollX = BuiltInVariable_Type "ampClientMaxScrollX"

pattern BuiltInVariable_Type_AmpClientMaxScrollY :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpClientMaxScrollY = BuiltInVariable_Type "ampClientMaxScrollY"

pattern BuiltInVariable_Type_AmpTotalEngagedTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpTotalEngagedTime = BuiltInVariable_Type "ampTotalEngagedTime"

pattern BuiltInVariable_Type_AmpPageViewId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpPageViewId = BuiltInVariable_Type "ampPageViewId"

pattern BuiltInVariable_Type_AmpPageLoadTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpPageLoadTime = BuiltInVariable_Type "ampPageLoadTime"

pattern BuiltInVariable_Type_AmpPageDownloadTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpPageDownloadTime = BuiltInVariable_Type "ampPageDownloadTime"

pattern BuiltInVariable_Type_AmpGtmEvent :: BuiltInVariable_Type
pattern BuiltInVariable_Type_AmpGtmEvent = BuiltInVariable_Type "ampGtmEvent"

pattern BuiltInVariable_Type_EventName :: BuiltInVariable_Type
pattern BuiltInVariable_Type_EventName = BuiltInVariable_Type "eventName"

pattern BuiltInVariable_Type_FirebaseEventParameterCampaign :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCampaign = BuiltInVariable_Type "firebaseEventParameterCampaign"

pattern BuiltInVariable_Type_FirebaseEventParameterCampaignAclid :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCampaignAclid = BuiltInVariable_Type "firebaseEventParameterCampaignAclid"

pattern BuiltInVariable_Type_FirebaseEventParameterCampaignAnid :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCampaignAnid = BuiltInVariable_Type "firebaseEventParameterCampaignAnid"

pattern BuiltInVariable_Type_FirebaseEventParameterCampaignClickTimestamp :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCampaignClickTimestamp = BuiltInVariable_Type "firebaseEventParameterCampaignClickTimestamp"

pattern BuiltInVariable_Type_FirebaseEventParameterCampaignContent :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCampaignContent = BuiltInVariable_Type "firebaseEventParameterCampaignContent"

pattern BuiltInVariable_Type_FIREBASEEVENTPARAMETERCAMPAIGNCP1 :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FIREBASEEVENTPARAMETERCAMPAIGNCP1 = BuiltInVariable_Type "firebaseEventParameterCampaignCp1"

pattern BuiltInVariable_Type_FirebaseEventParameterCampaignGclid :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCampaignGclid = BuiltInVariable_Type "firebaseEventParameterCampaignGclid"

pattern BuiltInVariable_Type_FirebaseEventParameterCampaignSource :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCampaignSource = BuiltInVariable_Type "firebaseEventParameterCampaignSource"

pattern BuiltInVariable_Type_FirebaseEventParameterCampaignTerm :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCampaignTerm = BuiltInVariable_Type "firebaseEventParameterCampaignTerm"

pattern BuiltInVariable_Type_FirebaseEventParameterCurrency :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterCurrency = BuiltInVariable_Type "firebaseEventParameterCurrency"

pattern BuiltInVariable_Type_FirebaseEventParameterDynamicLinkAcceptTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterDynamicLinkAcceptTime = BuiltInVariable_Type "firebaseEventParameterDynamicLinkAcceptTime"

pattern BuiltInVariable_Type_FirebaseEventParameterDynamicLinkLinkid :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterDynamicLinkLinkid = BuiltInVariable_Type "firebaseEventParameterDynamicLinkLinkid"

pattern BuiltInVariable_Type_FirebaseEventParameterNotificationMessageDeviceTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterNotificationMessageDeviceTime = BuiltInVariable_Type "firebaseEventParameterNotificationMessageDeviceTime"

pattern BuiltInVariable_Type_FirebaseEventParameterNotificationMessageId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterNotificationMessageId = BuiltInVariable_Type "firebaseEventParameterNotificationMessageId"

pattern BuiltInVariable_Type_FirebaseEventParameterNotificationMessageName :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterNotificationMessageName = BuiltInVariable_Type "firebaseEventParameterNotificationMessageName"

pattern BuiltInVariable_Type_FirebaseEventParameterNotificationMessageTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterNotificationMessageTime = BuiltInVariable_Type "firebaseEventParameterNotificationMessageTime"

pattern BuiltInVariable_Type_FirebaseEventParameterNotificationTopic :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterNotificationTopic = BuiltInVariable_Type "firebaseEventParameterNotificationTopic"

pattern BuiltInVariable_Type_FirebaseEventParameterPreviousAppVersion :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterPreviousAppVersion = BuiltInVariable_Type "firebaseEventParameterPreviousAppVersion"

pattern BuiltInVariable_Type_FirebaseEventParameterPreviousOsVersion :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterPreviousOsVersion = BuiltInVariable_Type "firebaseEventParameterPreviousOsVersion"

pattern BuiltInVariable_Type_FirebaseEventParameterPrice :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterPrice = BuiltInVariable_Type "firebaseEventParameterPrice"

pattern BuiltInVariable_Type_FirebaseEventParameterProductId :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterProductId = BuiltInVariable_Type "firebaseEventParameterProductId"

pattern BuiltInVariable_Type_FirebaseEventParameterQuantity :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterQuantity = BuiltInVariable_Type "firebaseEventParameterQuantity"

pattern BuiltInVariable_Type_FirebaseEventParameterValue :: BuiltInVariable_Type
pattern BuiltInVariable_Type_FirebaseEventParameterValue = BuiltInVariable_Type "firebaseEventParameterValue"

pattern BuiltInVariable_Type_VideoProvider :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VideoProvider = BuiltInVariable_Type "videoProvider"

pattern BuiltInVariable_Type_VideoUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VideoUrl = BuiltInVariable_Type "videoUrl"

pattern BuiltInVariable_Type_VideoTitle :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VideoTitle = BuiltInVariable_Type "videoTitle"

pattern BuiltInVariable_Type_VideoDuration :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VideoDuration = BuiltInVariable_Type "videoDuration"

pattern BuiltInVariable_Type_VideoPercent :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VideoPercent = BuiltInVariable_Type "videoPercent"

pattern BuiltInVariable_Type_VideoVisible :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VideoVisible = BuiltInVariable_Type "videoVisible"

pattern BuiltInVariable_Type_VideoStatus :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VideoStatus = BuiltInVariable_Type "videoStatus"

pattern BuiltInVariable_Type_VideoCurrentTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VideoCurrentTime = BuiltInVariable_Type "videoCurrentTime"

pattern BuiltInVariable_Type_ScrollDepthThreshold :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ScrollDepthThreshold = BuiltInVariable_Type "scrollDepthThreshold"

pattern BuiltInVariable_Type_ScrollDepthUnits :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ScrollDepthUnits = BuiltInVariable_Type "scrollDepthUnits"

pattern BuiltInVariable_Type_ScrollDepthDirection :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ScrollDepthDirection = BuiltInVariable_Type "scrollDepthDirection"

pattern BuiltInVariable_Type_ElementVisibilityRatio :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ElementVisibilityRatio = BuiltInVariable_Type "elementVisibilityRatio"

pattern BuiltInVariable_Type_ElementVisibilityTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ElementVisibilityTime = BuiltInVariable_Type "elementVisibilityTime"

pattern BuiltInVariable_Type_ElementVisibilityFirstTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ElementVisibilityFirstTime = BuiltInVariable_Type "elementVisibilityFirstTime"

pattern BuiltInVariable_Type_ElementVisibilityRecentTime :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ElementVisibilityRecentTime = BuiltInVariable_Type "elementVisibilityRecentTime"

pattern BuiltInVariable_Type_RequestPath :: BuiltInVariable_Type
pattern BuiltInVariable_Type_RequestPath = BuiltInVariable_Type "requestPath"

pattern BuiltInVariable_Type_RequestMethod :: BuiltInVariable_Type
pattern BuiltInVariable_Type_RequestMethod = BuiltInVariable_Type "requestMethod"

pattern BuiltInVariable_Type_ClientName :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ClientName = BuiltInVariable_Type "clientName"

pattern BuiltInVariable_Type_QueryString :: BuiltInVariable_Type
pattern BuiltInVariable_Type_QueryString = BuiltInVariable_Type "queryString"

pattern BuiltInVariable_Type_ServerPageLocationUrl :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ServerPageLocationUrl = BuiltInVariable_Type "serverPageLocationUrl"

pattern BuiltInVariable_Type_ServerPageLocationPath :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ServerPageLocationPath = BuiltInVariable_Type "serverPageLocationPath"

pattern BuiltInVariable_Type_ServerPageLocationHostname :: BuiltInVariable_Type
pattern BuiltInVariable_Type_ServerPageLocationHostname = BuiltInVariable_Type "serverPageLocationHostname"

pattern BuiltInVariable_Type_VisitorRegion :: BuiltInVariable_Type
pattern BuiltInVariable_Type_VisitorRegion = BuiltInVariable_Type "visitorRegion"

{-# COMPLETE
  BuiltInVariable_Type_BuiltInVariableTypeUnspecified,
  BuiltInVariable_Type_PageUrl,
  BuiltInVariable_Type_PageHostname,
  BuiltInVariable_Type_PagePath,
  BuiltInVariable_Type_Referrer,
  BuiltInVariable_Type_Event,
  BuiltInVariable_Type_ClickElement,
  BuiltInVariable_Type_ClickClasses,
  BuiltInVariable_Type_ClickId,
  BuiltInVariable_Type_ClickTarget,
  BuiltInVariable_Type_ClickUrl,
  BuiltInVariable_Type_ClickText,
  BuiltInVariable_Type_FirstPartyServingUrl,
  BuiltInVariable_Type_FormElement,
  BuiltInVariable_Type_FormClasses,
  BuiltInVariable_Type_FormId,
  BuiltInVariable_Type_FormTarget,
  BuiltInVariable_Type_FormUrl,
  BuiltInVariable_Type_FormText,
  BuiltInVariable_Type_ErrorMessage,
  BuiltInVariable_Type_ErrorUrl,
  BuiltInVariable_Type_ErrorLine,
  BuiltInVariable_Type_NewHistoryUrl,
  BuiltInVariable_Type_OldHistoryUrl,
  BuiltInVariable_Type_NewHistoryFragment,
  BuiltInVariable_Type_OldHistoryFragment,
  BuiltInVariable_Type_NewHistoryState,
  BuiltInVariable_Type_OldHistoryState,
  BuiltInVariable_Type_HistorySource,
  BuiltInVariable_Type_ContainerVersion,
  BuiltInVariable_Type_DebugMode,
  BuiltInVariable_Type_RandomNumber,
  BuiltInVariable_Type_ContainerId,
  BuiltInVariable_Type_AppId,
  BuiltInVariable_Type_AppName,
  BuiltInVariable_Type_AppVersionCode,
  BuiltInVariable_Type_AppVersionName,
  BuiltInVariable_Type_Language,
  BuiltInVariable_Type_OsVersion,
  BuiltInVariable_Type_Platform,
  BuiltInVariable_Type_SdkVersion,
  BuiltInVariable_Type_DeviceName,
  BuiltInVariable_Type_Resolution,
  BuiltInVariable_Type_AdvertiserId,
  BuiltInVariable_Type_AdvertisingTrackingEnabled,
  BuiltInVariable_Type_HtmlId,
  BuiltInVariable_Type_EnvironmentName,
  BuiltInVariable_Type_AmpBrowserLanguage,
  BuiltInVariable_Type_AmpCanonicalPath,
  BuiltInVariable_Type_AmpCanonicalUrl,
  BuiltInVariable_Type_AmpCanonicalHost,
  BuiltInVariable_Type_AmpReferrer,
  BuiltInVariable_Type_AmpTitle,
  BuiltInVariable_Type_AmpClientId,
  BuiltInVariable_Type_AmpClientTimezone,
  BuiltInVariable_Type_AmpClientTimestamp,
  BuiltInVariable_Type_AmpClientScreenWidth,
  BuiltInVariable_Type_AmpClientScreenHeight,
  BuiltInVariable_Type_AmpClientScrollX,
  BuiltInVariable_Type_AmpClientScrollY,
  BuiltInVariable_Type_AmpClientMaxScrollX,
  BuiltInVariable_Type_AmpClientMaxScrollY,
  BuiltInVariable_Type_AmpTotalEngagedTime,
  BuiltInVariable_Type_AmpPageViewId,
  BuiltInVariable_Type_AmpPageLoadTime,
  BuiltInVariable_Type_AmpPageDownloadTime,
  BuiltInVariable_Type_AmpGtmEvent,
  BuiltInVariable_Type_EventName,
  BuiltInVariable_Type_FirebaseEventParameterCampaign,
  BuiltInVariable_Type_FirebaseEventParameterCampaignAclid,
  BuiltInVariable_Type_FirebaseEventParameterCampaignAnid,
  BuiltInVariable_Type_FirebaseEventParameterCampaignClickTimestamp,
  BuiltInVariable_Type_FirebaseEventParameterCampaignContent,
  BuiltInVariable_Type_FIREBASEEVENTPARAMETERCAMPAIGNCP1,
  BuiltInVariable_Type_FirebaseEventParameterCampaignGclid,
  BuiltInVariable_Type_FirebaseEventParameterCampaignSource,
  BuiltInVariable_Type_FirebaseEventParameterCampaignTerm,
  BuiltInVariable_Type_FirebaseEventParameterCurrency,
  BuiltInVariable_Type_FirebaseEventParameterDynamicLinkAcceptTime,
  BuiltInVariable_Type_FirebaseEventParameterDynamicLinkLinkid,
  BuiltInVariable_Type_FirebaseEventParameterNotificationMessageDeviceTime,
  BuiltInVariable_Type_FirebaseEventParameterNotificationMessageId,
  BuiltInVariable_Type_FirebaseEventParameterNotificationMessageName,
  BuiltInVariable_Type_FirebaseEventParameterNotificationMessageTime,
  BuiltInVariable_Type_FirebaseEventParameterNotificationTopic,
  BuiltInVariable_Type_FirebaseEventParameterPreviousAppVersion,
  BuiltInVariable_Type_FirebaseEventParameterPreviousOsVersion,
  BuiltInVariable_Type_FirebaseEventParameterPrice,
  BuiltInVariable_Type_FirebaseEventParameterProductId,
  BuiltInVariable_Type_FirebaseEventParameterQuantity,
  BuiltInVariable_Type_FirebaseEventParameterValue,
  BuiltInVariable_Type_VideoProvider,
  BuiltInVariable_Type_VideoUrl,
  BuiltInVariable_Type_VideoTitle,
  BuiltInVariable_Type_VideoDuration,
  BuiltInVariable_Type_VideoPercent,
  BuiltInVariable_Type_VideoVisible,
  BuiltInVariable_Type_VideoStatus,
  BuiltInVariable_Type_VideoCurrentTime,
  BuiltInVariable_Type_ScrollDepthThreshold,
  BuiltInVariable_Type_ScrollDepthUnits,
  BuiltInVariable_Type_ScrollDepthDirection,
  BuiltInVariable_Type_ElementVisibilityRatio,
  BuiltInVariable_Type_ElementVisibilityTime,
  BuiltInVariable_Type_ElementVisibilityFirstTime,
  BuiltInVariable_Type_ElementVisibilityRecentTime,
  BuiltInVariable_Type_RequestPath,
  BuiltInVariable_Type_RequestMethod,
  BuiltInVariable_Type_ClientName,
  BuiltInVariable_Type_QueryString,
  BuiltInVariable_Type_ServerPageLocationUrl,
  BuiltInVariable_Type_ServerPageLocationPath,
  BuiltInVariable_Type_ServerPageLocationHostname,
  BuiltInVariable_Type_VisitorRegion,
  BuiltInVariable_Type
  #-}

-- | The type of operator for this condition. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
newtype Condition_Type = Condition_Type {fromCondition_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Condition_Type_ConditionTypeUnspecified :: Condition_Type
pattern Condition_Type_ConditionTypeUnspecified = Condition_Type "conditionTypeUnspecified"

pattern Condition_Type_Equals :: Condition_Type
pattern Condition_Type_Equals = Condition_Type "equals"

pattern Condition_Type_Contains :: Condition_Type
pattern Condition_Type_Contains = Condition_Type "contains"

pattern Condition_Type_StartsWith :: Condition_Type
pattern Condition_Type_StartsWith = Condition_Type "startsWith"

pattern Condition_Type_EndsWith :: Condition_Type
pattern Condition_Type_EndsWith = Condition_Type "endsWith"

pattern Condition_Type_MatchRegex :: Condition_Type
pattern Condition_Type_MatchRegex = Condition_Type "matchRegex"

pattern Condition_Type_Greater :: Condition_Type
pattern Condition_Type_Greater = Condition_Type "greater"

pattern Condition_Type_GreaterOrEquals :: Condition_Type
pattern Condition_Type_GreaterOrEquals = Condition_Type "greaterOrEquals"

pattern Condition_Type_Less :: Condition_Type
pattern Condition_Type_Less = Condition_Type "less"

pattern Condition_Type_LessOrEquals :: Condition_Type
pattern Condition_Type_LessOrEquals = Condition_Type "lessOrEquals"

pattern Condition_Type_CssSelector :: Condition_Type
pattern Condition_Type_CssSelector = Condition_Type "cssSelector"

pattern Condition_Type_UrlMatches :: Condition_Type
pattern Condition_Type_UrlMatches = Condition_Type "urlMatches"

{-# COMPLETE
  Condition_Type_ConditionTypeUnspecified,
  Condition_Type_Equals,
  Condition_Type_Contains,
  Condition_Type_StartsWith,
  Condition_Type_EndsWith,
  Condition_Type_MatchRegex,
  Condition_Type_Greater,
  Condition_Type_GreaterOrEquals,
  Condition_Type_Less,
  Condition_Type_LessOrEquals,
  Condition_Type_CssSelector,
  Condition_Type_UrlMatches,
  Condition_Type
  #-}

newtype Container_UsageContextItem = Container_UsageContextItem {fromContainer_UsageContextItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Container_UsageContextItem_UsageContextUnspecified :: Container_UsageContextItem
pattern Container_UsageContextItem_UsageContextUnspecified = Container_UsageContextItem "usageContextUnspecified"

pattern Container_UsageContextItem_Web :: Container_UsageContextItem
pattern Container_UsageContextItem_Web = Container_UsageContextItem "web"

pattern Container_UsageContextItem_Android :: Container_UsageContextItem
pattern Container_UsageContextItem_Android = Container_UsageContextItem "android"

pattern Container_UsageContextItem_Ios :: Container_UsageContextItem
pattern Container_UsageContextItem_Ios = Container_UsageContextItem "ios"

pattern Container_UsageContextItem_ANDROIDSDK5 :: Container_UsageContextItem
pattern Container_UsageContextItem_ANDROIDSDK5 = Container_UsageContextItem "androidSdk5"

pattern Container_UsageContextItem_IOSSDK5 :: Container_UsageContextItem
pattern Container_UsageContextItem_IOSSDK5 = Container_UsageContextItem "iosSdk5"

pattern Container_UsageContextItem_Amp :: Container_UsageContextItem
pattern Container_UsageContextItem_Amp = Container_UsageContextItem "amp"

pattern Container_UsageContextItem_Server :: Container_UsageContextItem
pattern Container_UsageContextItem_Server = Container_UsageContextItem "server"

{-# COMPLETE
  Container_UsageContextItem_UsageContextUnspecified,
  Container_UsageContextItem_Web,
  Container_UsageContextItem_Android,
  Container_UsageContextItem_Ios,
  Container_UsageContextItem_ANDROIDSDK5,
  Container_UsageContextItem_IOSSDK5,
  Container_UsageContextItem_Amp,
  Container_UsageContextItem_Server,
  Container_UsageContextItem
  #-}

-- | List of Container permissions. \@mutable tagmanager.accounts.permissions.create \@mutable tagmanager.accounts.permissions.update
newtype ContainerAccess_Permission = ContainerAccess_Permission {fromContainerAccess_Permission :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContainerAccess_Permission_ContainerPermissionUnspecified :: ContainerAccess_Permission
pattern ContainerAccess_Permission_ContainerPermissionUnspecified = ContainerAccess_Permission "containerPermissionUnspecified"

pattern ContainerAccess_Permission_NoAccess :: ContainerAccess_Permission
pattern ContainerAccess_Permission_NoAccess = ContainerAccess_Permission "noAccess"

pattern ContainerAccess_Permission_Read' :: ContainerAccess_Permission
pattern ContainerAccess_Permission_Read' = ContainerAccess_Permission "read"

pattern ContainerAccess_Permission_Edit :: ContainerAccess_Permission
pattern ContainerAccess_Permission_Edit = ContainerAccess_Permission "edit"

pattern ContainerAccess_Permission_Approve :: ContainerAccess_Permission
pattern ContainerAccess_Permission_Approve = ContainerAccess_Permission "approve"

pattern ContainerAccess_Permission_Publish :: ContainerAccess_Permission
pattern ContainerAccess_Permission_Publish = ContainerAccess_Permission "publish"

{-# COMPLETE
  ContainerAccess_Permission_ContainerPermissionUnspecified,
  ContainerAccess_Permission_NoAccess,
  ContainerAccess_Permission_Read',
  ContainerAccess_Permission_Edit,
  ContainerAccess_Permission_Approve,
  ContainerAccess_Permission_Publish,
  ContainerAccess_Permission
  #-}

-- | Represents how the entity has been changed in the workspace.
newtype Entity_ChangeStatus = Entity_ChangeStatus {fromEntity_ChangeStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Entity_ChangeStatus_ChangeStatusUnspecified :: Entity_ChangeStatus
pattern Entity_ChangeStatus_ChangeStatusUnspecified = Entity_ChangeStatus "changeStatusUnspecified"

-- | The entity has never been changed.
pattern Entity_ChangeStatus_None :: Entity_ChangeStatus
pattern Entity_ChangeStatus_None = Entity_ChangeStatus "none"

-- | The entity is added to the workspace.
pattern Entity_ChangeStatus_Added :: Entity_ChangeStatus
pattern Entity_ChangeStatus_Added = Entity_ChangeStatus "added"

-- | The entity is deleted from the workspace.
pattern Entity_ChangeStatus_Deleted :: Entity_ChangeStatus
pattern Entity_ChangeStatus_Deleted = Entity_ChangeStatus "deleted"

-- | The entity has been updated in the workspace.
pattern Entity_ChangeStatus_Updated :: Entity_ChangeStatus
pattern Entity_ChangeStatus_Updated = Entity_ChangeStatus "updated"

{-# COMPLETE
  Entity_ChangeStatus_ChangeStatusUnspecified,
  Entity_ChangeStatus_None,
  Entity_ChangeStatus_Added,
  Entity_ChangeStatus_Deleted,
  Entity_ChangeStatus_Updated,
  Entity_ChangeStatus
  #-}

-- | The type of this environment.
newtype Environment_Type = Environment_Type {fromEnvironment_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Points to a user defined environment.
pattern Environment_Type_User :: Environment_Type
pattern Environment_Type_User = Environment_Type "user"

-- | Points to the current live container version.
pattern Environment_Type_Live :: Environment_Type
pattern Environment_Type_Live = Environment_Type "live"

-- | Points to the latest container version.
pattern Environment_Type_Latest :: Environment_Type
pattern Environment_Type_Latest = Environment_Type "latest"

-- | Automatically managed environment that points to a workspace preview or version created by a workspace.
pattern Environment_Type_Workspace :: Environment_Type
pattern Environment_Type_Workspace = Environment_Type "workspace"

{-# COMPLETE
  Environment_Type_User,
  Environment_Type_Live,
  Environment_Type_Latest,
  Environment_Type_Workspace,
  Environment_Type
  #-}

-- | The parameter type. Valid values are: - boolean: The value represents a boolean, represented as \'true\' or \'false\' - integer: The value represents a 64-bit signed integer value, in base 10 - list: A list of parameters should be specified - map: A map of parameters should be specified - template: The value represents any text; this can include variable references (even variable references that might return non-string types) - trigger/reference: The value represents a trigger, represented as the trigger id - tag/reference: The value represents a tag, represented as the tag name \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
newtype Parameter_Type = Parameter_Type {fromParameter_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Parameter_Type_TypeUnspecified :: Parameter_Type
pattern Parameter_Type_TypeUnspecified = Parameter_Type "typeUnspecified"

-- | May include variable references (such as \"{{myVariable}}\").
pattern Parameter_Type_Template :: Parameter_Type
pattern Parameter_Type_Template = Parameter_Type "template"

pattern Parameter_Type_Integer :: Parameter_Type
pattern Parameter_Type_Integer = Parameter_Type "integer"

pattern Parameter_Type_Boolean :: Parameter_Type
pattern Parameter_Type_Boolean = Parameter_Type "boolean"

pattern Parameter_Type_List :: Parameter_Type
pattern Parameter_Type_List = Parameter_Type "list"

pattern Parameter_Type_Map :: Parameter_Type
pattern Parameter_Type_Map = Parameter_Type "map"

pattern Parameter_Type_TriggerReference :: Parameter_Type
pattern Parameter_Type_TriggerReference = Parameter_Type "triggerReference"

pattern Parameter_Type_TagReference :: Parameter_Type
pattern Parameter_Type_TagReference = Parameter_Type "tagReference"

{-# COMPLETE
  Parameter_Type_TypeUnspecified,
  Parameter_Type_Template,
  Parameter_Type_Integer,
  Parameter_Type_Boolean,
  Parameter_Type_List,
  Parameter_Type_Map,
  Parameter_Type_TriggerReference,
  Parameter_Type_TagReference,
  Parameter_Type
  #-}

-- | Option to fire this tag.
newtype Tag_TagFiringOption = Tag_TagFiringOption {fromTag_TagFiringOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Tag_TagFiringOption_TagFiringOptionUnspecified :: Tag_TagFiringOption
pattern Tag_TagFiringOption_TagFiringOptionUnspecified = Tag_TagFiringOption "tagFiringOptionUnspecified"

-- | Tag can be fired multiple times per event.
pattern Tag_TagFiringOption_Unlimited :: Tag_TagFiringOption
pattern Tag_TagFiringOption_Unlimited = Tag_TagFiringOption "unlimited"

-- | Tag can only be fired per event but can be fired multiple times per load (e.g., app load or page load).
pattern Tag_TagFiringOption_OncePerEvent :: Tag_TagFiringOption
pattern Tag_TagFiringOption_OncePerEvent = Tag_TagFiringOption "oncePerEvent"

-- | Tag can only be fired per load (e.g., app load or page load).
pattern Tag_TagFiringOption_OncePerLoad :: Tag_TagFiringOption
pattern Tag_TagFiringOption_OncePerLoad = Tag_TagFiringOption "oncePerLoad"

{-# COMPLETE
  Tag_TagFiringOption_TagFiringOptionUnspecified,
  Tag_TagFiringOption_Unlimited,
  Tag_TagFiringOption_OncePerEvent,
  Tag_TagFiringOption_OncePerLoad,
  Tag_TagFiringOption
  #-}

-- | The tag\'s consent status. If set to NEEDED, the runtime will check that the consent types specified by the consent_type field have been granted.
newtype TagConsentSetting_ConsentStatus = TagConsentSetting_ConsentStatus {fromTagConsentSetting_ConsentStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value where user has not specified any setting on it.
pattern TagConsentSetting_ConsentStatus_NotSet :: TagConsentSetting_ConsentStatus
pattern TagConsentSetting_ConsentStatus_NotSet = TagConsentSetting_ConsentStatus "notSet"

-- | Tag doesn\'t require any additional consent settings.
pattern TagConsentSetting_ConsentStatus_NotNeeded :: TagConsentSetting_ConsentStatus
pattern TagConsentSetting_ConsentStatus_NotNeeded = TagConsentSetting_ConsentStatus "notNeeded"

-- | Tag requires additional consent settings.
pattern TagConsentSetting_ConsentStatus_Needed :: TagConsentSetting_ConsentStatus
pattern TagConsentSetting_ConsentStatus_Needed = TagConsentSetting_ConsentStatus "needed"

{-# COMPLETE
  TagConsentSetting_ConsentStatus_NotSet,
  TagConsentSetting_ConsentStatus_NotNeeded,
  TagConsentSetting_ConsentStatus_Needed,
  TagConsentSetting_ConsentStatus
  #-}

-- | Defines the data layer event that causes this trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
newtype Trigger_Type = Trigger_Type {fromTrigger_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Trigger_Type_EventTypeUnspecified :: Trigger_Type
pattern Trigger_Type_EventTypeUnspecified = Trigger_Type "eventTypeUnspecified"

pattern Trigger_Type_Pageview :: Trigger_Type
pattern Trigger_Type_Pageview = Trigger_Type "pageview"

pattern Trigger_Type_DomReady :: Trigger_Type
pattern Trigger_Type_DomReady = Trigger_Type "domReady"

pattern Trigger_Type_WindowLoaded :: Trigger_Type
pattern Trigger_Type_WindowLoaded = Trigger_Type "windowLoaded"

pattern Trigger_Type_CustomEvent :: Trigger_Type
pattern Trigger_Type_CustomEvent = Trigger_Type "customEvent"

pattern Trigger_Type_TriggerGroup :: Trigger_Type
pattern Trigger_Type_TriggerGroup = Trigger_Type "triggerGroup"

pattern Trigger_Type_Init :: Trigger_Type
pattern Trigger_Type_Init = Trigger_Type "init"

pattern Trigger_Type_ConsentInit :: Trigger_Type
pattern Trigger_Type_ConsentInit = Trigger_Type "consentInit"

pattern Trigger_Type_ServerPageview :: Trigger_Type
pattern Trigger_Type_ServerPageview = Trigger_Type "serverPageview"

pattern Trigger_Type_Always :: Trigger_Type
pattern Trigger_Type_Always = Trigger_Type "always"

pattern Trigger_Type_FirebaseAppException :: Trigger_Type
pattern Trigger_Type_FirebaseAppException = Trigger_Type "firebaseAppException"

pattern Trigger_Type_FirebaseAppUpdate :: Trigger_Type
pattern Trigger_Type_FirebaseAppUpdate = Trigger_Type "firebaseAppUpdate"

pattern Trigger_Type_FirebaseCampaign :: Trigger_Type
pattern Trigger_Type_FirebaseCampaign = Trigger_Type "firebaseCampaign"

pattern Trigger_Type_FirebaseFirstOpen :: Trigger_Type
pattern Trigger_Type_FirebaseFirstOpen = Trigger_Type "firebaseFirstOpen"

pattern Trigger_Type_FirebaseInAppPurchase :: Trigger_Type
pattern Trigger_Type_FirebaseInAppPurchase = Trigger_Type "firebaseInAppPurchase"

pattern Trigger_Type_FirebaseNotificationDismiss :: Trigger_Type
pattern Trigger_Type_FirebaseNotificationDismiss = Trigger_Type "firebaseNotificationDismiss"

pattern Trigger_Type_FirebaseNotificationForeground :: Trigger_Type
pattern Trigger_Type_FirebaseNotificationForeground = Trigger_Type "firebaseNotificationForeground"

pattern Trigger_Type_FirebaseNotificationOpen :: Trigger_Type
pattern Trigger_Type_FirebaseNotificationOpen = Trigger_Type "firebaseNotificationOpen"

pattern Trigger_Type_FirebaseNotificationReceive :: Trigger_Type
pattern Trigger_Type_FirebaseNotificationReceive = Trigger_Type "firebaseNotificationReceive"

pattern Trigger_Type_FirebaseOsUpdate :: Trigger_Type
pattern Trigger_Type_FirebaseOsUpdate = Trigger_Type "firebaseOsUpdate"

pattern Trigger_Type_FirebaseSessionStart :: Trigger_Type
pattern Trigger_Type_FirebaseSessionStart = Trigger_Type "firebaseSessionStart"

pattern Trigger_Type_FirebaseUserEngagement :: Trigger_Type
pattern Trigger_Type_FirebaseUserEngagement = Trigger_Type "firebaseUserEngagement"

pattern Trigger_Type_FormSubmission :: Trigger_Type
pattern Trigger_Type_FormSubmission = Trigger_Type "formSubmission"

pattern Trigger_Type_Click :: Trigger_Type
pattern Trigger_Type_Click = Trigger_Type "click"

pattern Trigger_Type_LinkClick :: Trigger_Type
pattern Trigger_Type_LinkClick = Trigger_Type "linkClick"

pattern Trigger_Type_JsError :: Trigger_Type
pattern Trigger_Type_JsError = Trigger_Type "jsError"

pattern Trigger_Type_HistoryChange :: Trigger_Type
pattern Trigger_Type_HistoryChange = Trigger_Type "historyChange"

pattern Trigger_Type_Timer :: Trigger_Type
pattern Trigger_Type_Timer = Trigger_Type "timer"

pattern Trigger_Type_AmpClick :: Trigger_Type
pattern Trigger_Type_AmpClick = Trigger_Type "ampClick"

pattern Trigger_Type_AmpTimer :: Trigger_Type
pattern Trigger_Type_AmpTimer = Trigger_Type "ampTimer"

pattern Trigger_Type_AmpScroll :: Trigger_Type
pattern Trigger_Type_AmpScroll = Trigger_Type "ampScroll"

pattern Trigger_Type_AmpVisibility :: Trigger_Type
pattern Trigger_Type_AmpVisibility = Trigger_Type "ampVisibility"

pattern Trigger_Type_YouTubeVideo :: Trigger_Type
pattern Trigger_Type_YouTubeVideo = Trigger_Type "youTubeVideo"

pattern Trigger_Type_ScrollDepth :: Trigger_Type
pattern Trigger_Type_ScrollDepth = Trigger_Type "scrollDepth"

pattern Trigger_Type_ElementVisibility :: Trigger_Type
pattern Trigger_Type_ElementVisibility = Trigger_Type "elementVisibility"

{-# COMPLETE
  Trigger_Type_EventTypeUnspecified,
  Trigger_Type_Pageview,
  Trigger_Type_DomReady,
  Trigger_Type_WindowLoaded,
  Trigger_Type_CustomEvent,
  Trigger_Type_TriggerGroup,
  Trigger_Type_Init,
  Trigger_Type_ConsentInit,
  Trigger_Type_ServerPageview,
  Trigger_Type_Always,
  Trigger_Type_FirebaseAppException,
  Trigger_Type_FirebaseAppUpdate,
  Trigger_Type_FirebaseCampaign,
  Trigger_Type_FirebaseFirstOpen,
  Trigger_Type_FirebaseInAppPurchase,
  Trigger_Type_FirebaseNotificationDismiss,
  Trigger_Type_FirebaseNotificationForeground,
  Trigger_Type_FirebaseNotificationOpen,
  Trigger_Type_FirebaseNotificationReceive,
  Trigger_Type_FirebaseOsUpdate,
  Trigger_Type_FirebaseSessionStart,
  Trigger_Type_FirebaseUserEngagement,
  Trigger_Type_FormSubmission,
  Trigger_Type_Click,
  Trigger_Type_LinkClick,
  Trigger_Type_JsError,
  Trigger_Type_HistoryChange,
  Trigger_Type_Timer,
  Trigger_Type_AmpClick,
  Trigger_Type_AmpTimer,
  Trigger_Type_AmpScroll,
  Trigger_Type_AmpVisibility,
  Trigger_Type_YouTubeVideo,
  Trigger_Type_ScrollDepth,
  Trigger_Type_ElementVisibility,
  Trigger_Type
  #-}

-- | The option to convert a string-type variable value to either lowercase or uppercase.
newtype VariableFormatValue_CaseConversionType = VariableFormatValue_CaseConversionType {fromVariableFormatValue_CaseConversionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VariableFormatValue_CaseConversionType_None :: VariableFormatValue_CaseConversionType
pattern VariableFormatValue_CaseConversionType_None = VariableFormatValue_CaseConversionType "none"

-- | The option to convert a variable value to lowercase.
pattern VariableFormatValue_CaseConversionType_Lowercase :: VariableFormatValue_CaseConversionType
pattern VariableFormatValue_CaseConversionType_Lowercase = VariableFormatValue_CaseConversionType "lowercase"

-- | The option to convert a variable value to uppercase.
pattern VariableFormatValue_CaseConversionType_Uppercase :: VariableFormatValue_CaseConversionType
pattern VariableFormatValue_CaseConversionType_Uppercase = VariableFormatValue_CaseConversionType "uppercase"

{-# COMPLETE
  VariableFormatValue_CaseConversionType_None,
  VariableFormatValue_CaseConversionType_Lowercase,
  VariableFormatValue_CaseConversionType_Uppercase,
  VariableFormatValue_CaseConversionType
  #-}

-- | Specify the source of config setting after combine
newtype AccountsContainersCombineSettingSource = AccountsContainersCombineSettingSource {fromAccountsContainersCombineSettingSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern AccountsContainersCombineSettingSource_SettingSourceUnspecified :: AccountsContainersCombineSettingSource
pattern AccountsContainersCombineSettingSource_SettingSourceUnspecified = AccountsContainersCombineSettingSource "settingSourceUnspecified"

-- | Keep the current container config setting after combine
pattern AccountsContainersCombineSettingSource_Current :: AccountsContainersCombineSettingSource
pattern AccountsContainersCombineSettingSource_Current = AccountsContainersCombineSettingSource "current"

-- | Use config setting from the other tag after combine
pattern AccountsContainersCombineSettingSource_Other :: AccountsContainersCombineSettingSource
pattern AccountsContainersCombineSettingSource_Other = AccountsContainersCombineSettingSource "other"

{-# COMPLETE
  AccountsContainersCombineSettingSource_SettingSourceUnspecified,
  AccountsContainersCombineSettingSource_Current,
  AccountsContainersCombineSettingSource_Other,
  AccountsContainersCombineSettingSource
  #-}

-- | The types of built-in variables to enable.
newtype AccountsContainersWorkspacesBuilt_in_variablesCreateType = AccountsContainersWorkspacesBuilt_in_variablesCreateType {fromAccountsContainersWorkspacesBuilt_in_variablesCreateType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_BuiltInVariableTypeUnspecified :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_BuiltInVariableTypeUnspecified = AccountsContainersWorkspacesBuilt_in_variablesCreateType "builtInVariableTypeUnspecified"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_PageUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_PageUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "pageUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_PageHostname :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_PageHostname = AccountsContainersWorkspacesBuilt_in_variablesCreateType "pageHostname"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_PagePath :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_PagePath = AccountsContainersWorkspacesBuilt_in_variablesCreateType "pagePath"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Referrer :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Referrer = AccountsContainersWorkspacesBuilt_in_variablesCreateType "referrer"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Event :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Event = AccountsContainersWorkspacesBuilt_in_variablesCreateType "event"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickElement :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickElement = AccountsContainersWorkspacesBuilt_in_variablesCreateType "clickElement"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickClasses :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickClasses = AccountsContainersWorkspacesBuilt_in_variablesCreateType "clickClasses"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "clickId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickTarget :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickTarget = AccountsContainersWorkspacesBuilt_in_variablesCreateType "clickTarget"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "clickUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickText :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickText = AccountsContainersWorkspacesBuilt_in_variablesCreateType "clickText"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirstPartyServingUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirstPartyServingUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firstPartyServingUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormElement :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormElement = AccountsContainersWorkspacesBuilt_in_variablesCreateType "formElement"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormClasses :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormClasses = AccountsContainersWorkspacesBuilt_in_variablesCreateType "formClasses"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "formId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormTarget :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormTarget = AccountsContainersWorkspacesBuilt_in_variablesCreateType "formTarget"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "formUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormText :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormText = AccountsContainersWorkspacesBuilt_in_variablesCreateType "formText"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorMessage :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorMessage = AccountsContainersWorkspacesBuilt_in_variablesCreateType "errorMessage"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "errorUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorLine :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorLine = AccountsContainersWorkspacesBuilt_in_variablesCreateType "errorLine"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "newHistoryUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "oldHistoryUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryFragment :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryFragment = AccountsContainersWorkspacesBuilt_in_variablesCreateType "newHistoryFragment"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryFragment :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryFragment = AccountsContainersWorkspacesBuilt_in_variablesCreateType "oldHistoryFragment"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryState :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryState = AccountsContainersWorkspacesBuilt_in_variablesCreateType "newHistoryState"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryState :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryState = AccountsContainersWorkspacesBuilt_in_variablesCreateType "oldHistoryState"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_HistorySource :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_HistorySource = AccountsContainersWorkspacesBuilt_in_variablesCreateType "historySource"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ContainerVersion :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ContainerVersion = AccountsContainersWorkspacesBuilt_in_variablesCreateType "containerVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_DebugMode :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_DebugMode = AccountsContainersWorkspacesBuilt_in_variablesCreateType "debugMode"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_RandomNumber :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_RandomNumber = AccountsContainersWorkspacesBuilt_in_variablesCreateType "randomNumber"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ContainerId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ContainerId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "containerId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "appId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppName :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppName = AccountsContainersWorkspacesBuilt_in_variablesCreateType "appName"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppVersionCode :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppVersionCode = AccountsContainersWorkspacesBuilt_in_variablesCreateType "appVersionCode"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppVersionName :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppVersionName = AccountsContainersWorkspacesBuilt_in_variablesCreateType "appVersionName"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Language :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Language = AccountsContainersWorkspacesBuilt_in_variablesCreateType "language"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_OsVersion :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_OsVersion = AccountsContainersWorkspacesBuilt_in_variablesCreateType "osVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Platform :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Platform = AccountsContainersWorkspacesBuilt_in_variablesCreateType "platform"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_SdkVersion :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_SdkVersion = AccountsContainersWorkspacesBuilt_in_variablesCreateType "sdkVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_DeviceName :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_DeviceName = AccountsContainersWorkspacesBuilt_in_variablesCreateType "deviceName"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Resolution :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_Resolution = AccountsContainersWorkspacesBuilt_in_variablesCreateType "resolution"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AdvertiserId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AdvertiserId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "advertiserId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AdvertisingTrackingEnabled :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AdvertisingTrackingEnabled = AccountsContainersWorkspacesBuilt_in_variablesCreateType "advertisingTrackingEnabled"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_HtmlId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_HtmlId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "htmlId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_EnvironmentName :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_EnvironmentName = AccountsContainersWorkspacesBuilt_in_variablesCreateType "environmentName"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpBrowserLanguage :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpBrowserLanguage = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampBrowserLanguage"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalPath :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalPath = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampCanonicalPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampCanonicalUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalHost :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalHost = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampCanonicalHost"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpReferrer :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpReferrer = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampReferrer"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpTitle :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpTitle = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampTitle"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientTimezone :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientTimezone = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientTimezone"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientTimestamp :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientTimestamp = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientTimestamp"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScreenWidth :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScreenWidth = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientScreenWidth"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScreenHeight :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScreenHeight = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientScreenHeight"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScrollX :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScrollX = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientScrollX"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScrollY :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScrollY = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientScrollY"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientMaxScrollX :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientMaxScrollX = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientMaxScrollX"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientMaxScrollY :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientMaxScrollY = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampClientMaxScrollY"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpTotalEngagedTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpTotalEngagedTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampTotalEngagedTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageViewId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageViewId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampPageViewId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageLoadTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageLoadTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampPageLoadTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageDownloadTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageDownloadTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampPageDownloadTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpGtmEvent :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpGtmEvent = AccountsContainersWorkspacesBuilt_in_variablesCreateType "ampGtmEvent"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_EventName :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_EventName = AccountsContainersWorkspacesBuilt_in_variablesCreateType "eventName"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaign :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaign = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaign"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignAclid :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignAclid = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaignAclid"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignAnid :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignAnid = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaignAnid"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignClickTimestamp :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignClickTimestamp = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaignClickTimestamp"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignContent :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignContent = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaignContent"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FIREBASEEVENTPARAMETERCAMPAIGNCP1 :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FIREBASEEVENTPARAMETERCAMPAIGNCP1 = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaignCp1"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignGclid :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignGclid = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaignGclid"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignSource :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignSource = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaignSource"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignTerm :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignTerm = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCampaignTerm"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCurrency :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCurrency = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterCurrency"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterDynamicLinkAcceptTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterDynamicLinkAcceptTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterDynamicLinkAcceptTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterDynamicLinkLinkid :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterDynamicLinkLinkid = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterDynamicLinkLinkid"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageDeviceTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageDeviceTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterNotificationMessageDeviceTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterNotificationMessageId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageName :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageName = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterNotificationMessageName"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterNotificationMessageTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationTopic :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationTopic = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterNotificationTopic"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPreviousAppVersion :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPreviousAppVersion = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterPreviousAppVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPreviousOsVersion :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPreviousOsVersion = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterPreviousOsVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPrice :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPrice = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterPrice"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterProductId :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterProductId = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterProductId"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterQuantity :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterQuantity = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterQuantity"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterValue :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterValue = AccountsContainersWorkspacesBuilt_in_variablesCreateType "firebaseEventParameterValue"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoProvider :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoProvider = AccountsContainersWorkspacesBuilt_in_variablesCreateType "videoProvider"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "videoUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoTitle :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoTitle = AccountsContainersWorkspacesBuilt_in_variablesCreateType "videoTitle"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoDuration :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoDuration = AccountsContainersWorkspacesBuilt_in_variablesCreateType "videoDuration"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoPercent :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoPercent = AccountsContainersWorkspacesBuilt_in_variablesCreateType "videoPercent"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoVisible :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoVisible = AccountsContainersWorkspacesBuilt_in_variablesCreateType "videoVisible"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoStatus :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoStatus = AccountsContainersWorkspacesBuilt_in_variablesCreateType "videoStatus"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoCurrentTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoCurrentTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "videoCurrentTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthThreshold :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthThreshold = AccountsContainersWorkspacesBuilt_in_variablesCreateType "scrollDepthThreshold"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthUnits :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthUnits = AccountsContainersWorkspacesBuilt_in_variablesCreateType "scrollDepthUnits"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthDirection :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthDirection = AccountsContainersWorkspacesBuilt_in_variablesCreateType "scrollDepthDirection"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityRatio :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityRatio = AccountsContainersWorkspacesBuilt_in_variablesCreateType "elementVisibilityRatio"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "elementVisibilityTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityFirstTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityFirstTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "elementVisibilityFirstTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityRecentTime :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityRecentTime = AccountsContainersWorkspacesBuilt_in_variablesCreateType "elementVisibilityRecentTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_RequestPath :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_RequestPath = AccountsContainersWorkspacesBuilt_in_variablesCreateType "requestPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_RequestMethod :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_RequestMethod = AccountsContainersWorkspacesBuilt_in_variablesCreateType "requestMethod"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClientName :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClientName = AccountsContainersWorkspacesBuilt_in_variablesCreateType "clientName"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_QueryString :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_QueryString = AccountsContainersWorkspacesBuilt_in_variablesCreateType "queryString"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationUrl :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationUrl = AccountsContainersWorkspacesBuilt_in_variablesCreateType "serverPageLocationUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationPath :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationPath = AccountsContainersWorkspacesBuilt_in_variablesCreateType "serverPageLocationPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationHostname :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationHostname = AccountsContainersWorkspacesBuilt_in_variablesCreateType "serverPageLocationHostname"

pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VisitorRegion :: AccountsContainersWorkspacesBuilt_in_variablesCreateType
pattern AccountsContainersWorkspacesBuilt_in_variablesCreateType_VisitorRegion = AccountsContainersWorkspacesBuilt_in_variablesCreateType "visitorRegion"

{-# COMPLETE
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_BuiltInVariableTypeUnspecified,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_PageUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_PageHostname,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_PagePath,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_Referrer,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_Event,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickElement,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickClasses,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickTarget,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClickText,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirstPartyServingUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormElement,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormClasses,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormTarget,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FormText,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorMessage,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ErrorLine,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryFragment,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryFragment,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_NewHistoryState,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_OldHistoryState,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_HistorySource,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ContainerVersion,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_DebugMode,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_RandomNumber,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ContainerId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppName,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppVersionCode,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AppVersionName,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_Language,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_OsVersion,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_Platform,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_SdkVersion,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_DeviceName,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_Resolution,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AdvertiserId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AdvertisingTrackingEnabled,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_HtmlId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_EnvironmentName,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpBrowserLanguage,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalPath,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpCanonicalHost,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpReferrer,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpTitle,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientTimezone,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientTimestamp,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScreenWidth,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScreenHeight,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScrollX,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientScrollY,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientMaxScrollX,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpClientMaxScrollY,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpTotalEngagedTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageViewId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageLoadTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpPageDownloadTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_AmpGtmEvent,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_EventName,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaign,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignAclid,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignAnid,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignClickTimestamp,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignContent,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FIREBASEEVENTPARAMETERCAMPAIGNCP1,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignGclid,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignSource,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCampaignTerm,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterCurrency,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterDynamicLinkAcceptTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterDynamicLinkLinkid,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageDeviceTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageName,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationMessageTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterNotificationTopic,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPreviousAppVersion,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPreviousOsVersion,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterPrice,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterProductId,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterQuantity,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_FirebaseEventParameterValue,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoProvider,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoTitle,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoDuration,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoPercent,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoVisible,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoStatus,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VideoCurrentTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthThreshold,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthUnits,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ScrollDepthDirection,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityRatio,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityFirstTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ElementVisibilityRecentTime,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_RequestPath,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_RequestMethod,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ClientName,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_QueryString,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationUrl,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationPath,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_ServerPageLocationHostname,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType_VisitorRegion,
  AccountsContainersWorkspacesBuilt_in_variablesCreateType
  #-}

-- | The types of built-in variables to delete.
newtype AccountsContainersWorkspacesBuilt_in_variablesDeleteType = AccountsContainersWorkspacesBuilt_in_variablesDeleteType {fromAccountsContainersWorkspacesBuilt_in_variablesDeleteType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_BuiltInVariableTypeUnspecified :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_BuiltInVariableTypeUnspecified = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "builtInVariableTypeUnspecified"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PageUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PageUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "pageUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PageHostname :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PageHostname = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "pageHostname"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PagePath :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PagePath = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "pagePath"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Referrer :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Referrer = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "referrer"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Event :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Event = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "event"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickElement :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickElement = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "clickElement"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickClasses :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickClasses = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "clickClasses"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "clickId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickTarget :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickTarget = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "clickTarget"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "clickUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickText :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickText = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "clickText"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirstPartyServingUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirstPartyServingUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firstPartyServingUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormElement :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormElement = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "formElement"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormClasses :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormClasses = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "formClasses"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "formId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormTarget :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormTarget = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "formTarget"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "formUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormText :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormText = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "formText"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorMessage :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorMessage = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "errorMessage"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "errorUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorLine :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorLine = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "errorLine"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "newHistoryUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "oldHistoryUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryFragment :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryFragment = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "newHistoryFragment"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryFragment :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryFragment = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "oldHistoryFragment"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryState :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryState = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "newHistoryState"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryState :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryState = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "oldHistoryState"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_HistorySource :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_HistorySource = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "historySource"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ContainerVersion :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ContainerVersion = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "containerVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_DebugMode :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_DebugMode = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "debugMode"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RandomNumber :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RandomNumber = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "randomNumber"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ContainerId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ContainerId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "containerId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "appId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppName :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppName = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "appName"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppVersionCode :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppVersionCode = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "appVersionCode"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppVersionName :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppVersionName = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "appVersionName"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Language :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Language = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "language"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OsVersion :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OsVersion = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "osVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Platform :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Platform = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "platform"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_SdkVersion :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_SdkVersion = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "sdkVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_DeviceName :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_DeviceName = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "deviceName"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Resolution :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Resolution = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "resolution"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AdvertiserId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AdvertiserId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "advertiserId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AdvertisingTrackingEnabled :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AdvertisingTrackingEnabled = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "advertisingTrackingEnabled"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_HtmlId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_HtmlId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "htmlId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_EnvironmentName :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_EnvironmentName = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "environmentName"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpBrowserLanguage :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpBrowserLanguage = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampBrowserLanguage"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalPath :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalPath = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampCanonicalPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampCanonicalUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalHost :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalHost = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampCanonicalHost"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpReferrer :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpReferrer = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampReferrer"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpTitle :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpTitle = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampTitle"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientTimezone :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientTimezone = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientTimezone"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientTimestamp :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientTimestamp = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientTimestamp"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScreenWidth :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScreenWidth = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientScreenWidth"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScreenHeight :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScreenHeight = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientScreenHeight"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScrollX :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScrollX = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientScrollX"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScrollY :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScrollY = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientScrollY"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientMaxScrollX :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientMaxScrollX = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientMaxScrollX"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientMaxScrollY :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientMaxScrollY = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampClientMaxScrollY"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpTotalEngagedTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpTotalEngagedTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampTotalEngagedTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageViewId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageViewId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampPageViewId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageLoadTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageLoadTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampPageLoadTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageDownloadTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageDownloadTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampPageDownloadTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpGtmEvent :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpGtmEvent = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "ampGtmEvent"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_EventName :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_EventName = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "eventName"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaign :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaign = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaign"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignAclid :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignAclid = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaignAclid"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignAnid :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignAnid = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaignAnid"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignClickTimestamp :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignClickTimestamp = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaignClickTimestamp"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignContent :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignContent = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaignContent"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FIREBASEEVENTPARAMETERCAMPAIGNCP1 :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FIREBASEEVENTPARAMETERCAMPAIGNCP1 = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaignCp1"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignGclid :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignGclid = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaignGclid"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignSource :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignSource = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaignSource"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignTerm :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignTerm = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCampaignTerm"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCurrency :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCurrency = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterCurrency"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterDynamicLinkAcceptTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterDynamicLinkAcceptTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterDynamicLinkAcceptTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterDynamicLinkLinkid :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterDynamicLinkLinkid = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterDynamicLinkLinkid"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageDeviceTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageDeviceTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterNotificationMessageDeviceTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterNotificationMessageId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageName :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageName = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterNotificationMessageName"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterNotificationMessageTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationTopic :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationTopic = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterNotificationTopic"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPreviousAppVersion :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPreviousAppVersion = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterPreviousAppVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPreviousOsVersion :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPreviousOsVersion = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterPreviousOsVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPrice :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPrice = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterPrice"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterProductId :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterProductId = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterProductId"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterQuantity :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterQuantity = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterQuantity"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterValue :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterValue = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "firebaseEventParameterValue"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoProvider :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoProvider = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "videoProvider"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "videoUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoTitle :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoTitle = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "videoTitle"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoDuration :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoDuration = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "videoDuration"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoPercent :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoPercent = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "videoPercent"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoVisible :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoVisible = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "videoVisible"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoStatus :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoStatus = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "videoStatus"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoCurrentTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoCurrentTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "videoCurrentTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthThreshold :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthThreshold = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "scrollDepthThreshold"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthUnits :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthUnits = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "scrollDepthUnits"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthDirection :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthDirection = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "scrollDepthDirection"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityRatio :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityRatio = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "elementVisibilityRatio"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "elementVisibilityTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityFirstTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityFirstTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "elementVisibilityFirstTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityRecentTime :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityRecentTime = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "elementVisibilityRecentTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RequestPath :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RequestPath = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "requestPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RequestMethod :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RequestMethod = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "requestMethod"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClientName :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClientName = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "clientName"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_QueryString :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_QueryString = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "queryString"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationUrl :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationUrl = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "serverPageLocationUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationPath :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationPath = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "serverPageLocationPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationHostname :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationHostname = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "serverPageLocationHostname"

pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VisitorRegion :: AccountsContainersWorkspacesBuilt_in_variablesDeleteType
pattern AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VisitorRegion = AccountsContainersWorkspacesBuilt_in_variablesDeleteType "visitorRegion"

{-# COMPLETE
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_BuiltInVariableTypeUnspecified,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PageUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PageHostname,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_PagePath,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Referrer,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Event,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickElement,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickClasses,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickTarget,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClickText,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirstPartyServingUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormElement,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormClasses,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormTarget,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FormText,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorMessage,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ErrorLine,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryFragment,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryFragment,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_NewHistoryState,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OldHistoryState,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_HistorySource,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ContainerVersion,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_DebugMode,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RandomNumber,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ContainerId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppName,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppVersionCode,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AppVersionName,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Language,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_OsVersion,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Platform,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_SdkVersion,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_DeviceName,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_Resolution,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AdvertiserId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AdvertisingTrackingEnabled,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_HtmlId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_EnvironmentName,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpBrowserLanguage,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalPath,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpCanonicalHost,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpReferrer,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpTitle,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientTimezone,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientTimestamp,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScreenWidth,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScreenHeight,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScrollX,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientScrollY,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientMaxScrollX,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpClientMaxScrollY,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpTotalEngagedTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageViewId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageLoadTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpPageDownloadTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_AmpGtmEvent,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_EventName,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaign,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignAclid,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignAnid,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignClickTimestamp,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignContent,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FIREBASEEVENTPARAMETERCAMPAIGNCP1,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignGclid,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignSource,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCampaignTerm,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterCurrency,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterDynamicLinkAcceptTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterDynamicLinkLinkid,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageDeviceTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageName,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationMessageTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterNotificationTopic,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPreviousAppVersion,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPreviousOsVersion,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterPrice,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterProductId,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterQuantity,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_FirebaseEventParameterValue,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoProvider,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoTitle,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoDuration,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoPercent,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoVisible,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoStatus,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VideoCurrentTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthThreshold,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthUnits,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ScrollDepthDirection,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityRatio,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityFirstTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ElementVisibilityRecentTime,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RequestPath,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_RequestMethod,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ClientName,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_QueryString,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationUrl,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationPath,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_ServerPageLocationHostname,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType_VisitorRegion,
  AccountsContainersWorkspacesBuilt_in_variablesDeleteType
  #-}

-- | The type of built-in variable to revert.
newtype AccountsContainersWorkspacesBuilt_in_variablesRevertType = AccountsContainersWorkspacesBuilt_in_variablesRevertType {fromAccountsContainersWorkspacesBuilt_in_variablesRevertType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_BuiltInVariableTypeUnspecified :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_BuiltInVariableTypeUnspecified = AccountsContainersWorkspacesBuilt_in_variablesRevertType "builtInVariableTypeUnspecified"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_PageUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_PageUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "pageUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_PageHostname :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_PageHostname = AccountsContainersWorkspacesBuilt_in_variablesRevertType "pageHostname"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_PagePath :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_PagePath = AccountsContainersWorkspacesBuilt_in_variablesRevertType "pagePath"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Referrer :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Referrer = AccountsContainersWorkspacesBuilt_in_variablesRevertType "referrer"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Event :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Event = AccountsContainersWorkspacesBuilt_in_variablesRevertType "event"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickElement :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickElement = AccountsContainersWorkspacesBuilt_in_variablesRevertType "clickElement"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickClasses :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickClasses = AccountsContainersWorkspacesBuilt_in_variablesRevertType "clickClasses"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "clickId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickTarget :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickTarget = AccountsContainersWorkspacesBuilt_in_variablesRevertType "clickTarget"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "clickUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickText :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickText = AccountsContainersWorkspacesBuilt_in_variablesRevertType "clickText"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirstPartyServingUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirstPartyServingUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firstPartyServingUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormElement :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormElement = AccountsContainersWorkspacesBuilt_in_variablesRevertType "formElement"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormClasses :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormClasses = AccountsContainersWorkspacesBuilt_in_variablesRevertType "formClasses"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "formId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormTarget :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormTarget = AccountsContainersWorkspacesBuilt_in_variablesRevertType "formTarget"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "formUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormText :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormText = AccountsContainersWorkspacesBuilt_in_variablesRevertType "formText"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorMessage :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorMessage = AccountsContainersWorkspacesBuilt_in_variablesRevertType "errorMessage"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "errorUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorLine :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorLine = AccountsContainersWorkspacesBuilt_in_variablesRevertType "errorLine"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "newHistoryUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "oldHistoryUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryFragment :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryFragment = AccountsContainersWorkspacesBuilt_in_variablesRevertType "newHistoryFragment"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryFragment :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryFragment = AccountsContainersWorkspacesBuilt_in_variablesRevertType "oldHistoryFragment"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryState :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryState = AccountsContainersWorkspacesBuilt_in_variablesRevertType "newHistoryState"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryState :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryState = AccountsContainersWorkspacesBuilt_in_variablesRevertType "oldHistoryState"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_HistorySource :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_HistorySource = AccountsContainersWorkspacesBuilt_in_variablesRevertType "historySource"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ContainerVersion :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ContainerVersion = AccountsContainersWorkspacesBuilt_in_variablesRevertType "containerVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_DebugMode :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_DebugMode = AccountsContainersWorkspacesBuilt_in_variablesRevertType "debugMode"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_RandomNumber :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_RandomNumber = AccountsContainersWorkspacesBuilt_in_variablesRevertType "randomNumber"

-- | For web or mobile.
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ContainerId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ContainerId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "containerId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "appId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppName :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppName = AccountsContainersWorkspacesBuilt_in_variablesRevertType "appName"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppVersionCode :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppVersionCode = AccountsContainersWorkspacesBuilt_in_variablesRevertType "appVersionCode"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppVersionName :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppVersionName = AccountsContainersWorkspacesBuilt_in_variablesRevertType "appVersionName"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Language :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Language = AccountsContainersWorkspacesBuilt_in_variablesRevertType "language"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_OsVersion :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_OsVersion = AccountsContainersWorkspacesBuilt_in_variablesRevertType "osVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Platform :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Platform = AccountsContainersWorkspacesBuilt_in_variablesRevertType "platform"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_SdkVersion :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_SdkVersion = AccountsContainersWorkspacesBuilt_in_variablesRevertType "sdkVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_DeviceName :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_DeviceName = AccountsContainersWorkspacesBuilt_in_variablesRevertType "deviceName"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Resolution :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_Resolution = AccountsContainersWorkspacesBuilt_in_variablesRevertType "resolution"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AdvertiserId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AdvertiserId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "advertiserId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AdvertisingTrackingEnabled :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AdvertisingTrackingEnabled = AccountsContainersWorkspacesBuilt_in_variablesRevertType "advertisingTrackingEnabled"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_HtmlId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_HtmlId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "htmlId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_EnvironmentName :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_EnvironmentName = AccountsContainersWorkspacesBuilt_in_variablesRevertType "environmentName"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpBrowserLanguage :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpBrowserLanguage = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampBrowserLanguage"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalPath :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalPath = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampCanonicalPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampCanonicalUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalHost :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalHost = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampCanonicalHost"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpReferrer :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpReferrer = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampReferrer"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpTitle :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpTitle = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampTitle"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientTimezone :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientTimezone = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientTimezone"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientTimestamp :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientTimestamp = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientTimestamp"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScreenWidth :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScreenWidth = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientScreenWidth"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScreenHeight :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScreenHeight = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientScreenHeight"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScrollX :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScrollX = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientScrollX"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScrollY :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScrollY = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientScrollY"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientMaxScrollX :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientMaxScrollX = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientMaxScrollX"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientMaxScrollY :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientMaxScrollY = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampClientMaxScrollY"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpTotalEngagedTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpTotalEngagedTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampTotalEngagedTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageViewId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageViewId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampPageViewId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageLoadTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageLoadTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampPageLoadTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageDownloadTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageDownloadTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampPageDownloadTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpGtmEvent :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpGtmEvent = AccountsContainersWorkspacesBuilt_in_variablesRevertType "ampGtmEvent"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_EventName :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_EventName = AccountsContainersWorkspacesBuilt_in_variablesRevertType "eventName"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaign :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaign = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaign"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignAclid :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignAclid = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaignAclid"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignAnid :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignAnid = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaignAnid"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignClickTimestamp :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignClickTimestamp = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaignClickTimestamp"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignContent :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignContent = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaignContent"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FIREBASEEVENTPARAMETERCAMPAIGNCP1 :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FIREBASEEVENTPARAMETERCAMPAIGNCP1 = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaignCp1"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignGclid :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignGclid = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaignGclid"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignSource :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignSource = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaignSource"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignTerm :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignTerm = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCampaignTerm"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCurrency :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCurrency = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterCurrency"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterDynamicLinkAcceptTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterDynamicLinkAcceptTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterDynamicLinkAcceptTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterDynamicLinkLinkid :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterDynamicLinkLinkid = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterDynamicLinkLinkid"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageDeviceTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageDeviceTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterNotificationMessageDeviceTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterNotificationMessageId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageName :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageName = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterNotificationMessageName"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterNotificationMessageTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationTopic :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationTopic = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterNotificationTopic"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPreviousAppVersion :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPreviousAppVersion = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterPreviousAppVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPreviousOsVersion :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPreviousOsVersion = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterPreviousOsVersion"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPrice :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPrice = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterPrice"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterProductId :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterProductId = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterProductId"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterQuantity :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterQuantity = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterQuantity"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterValue :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterValue = AccountsContainersWorkspacesBuilt_in_variablesRevertType "firebaseEventParameterValue"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoProvider :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoProvider = AccountsContainersWorkspacesBuilt_in_variablesRevertType "videoProvider"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "videoUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoTitle :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoTitle = AccountsContainersWorkspacesBuilt_in_variablesRevertType "videoTitle"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoDuration :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoDuration = AccountsContainersWorkspacesBuilt_in_variablesRevertType "videoDuration"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoPercent :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoPercent = AccountsContainersWorkspacesBuilt_in_variablesRevertType "videoPercent"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoVisible :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoVisible = AccountsContainersWorkspacesBuilt_in_variablesRevertType "videoVisible"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoStatus :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoStatus = AccountsContainersWorkspacesBuilt_in_variablesRevertType "videoStatus"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoCurrentTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoCurrentTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "videoCurrentTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthThreshold :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthThreshold = AccountsContainersWorkspacesBuilt_in_variablesRevertType "scrollDepthThreshold"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthUnits :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthUnits = AccountsContainersWorkspacesBuilt_in_variablesRevertType "scrollDepthUnits"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthDirection :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthDirection = AccountsContainersWorkspacesBuilt_in_variablesRevertType "scrollDepthDirection"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityRatio :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityRatio = AccountsContainersWorkspacesBuilt_in_variablesRevertType "elementVisibilityRatio"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "elementVisibilityTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityFirstTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityFirstTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "elementVisibilityFirstTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityRecentTime :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityRecentTime = AccountsContainersWorkspacesBuilt_in_variablesRevertType "elementVisibilityRecentTime"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_RequestPath :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_RequestPath = AccountsContainersWorkspacesBuilt_in_variablesRevertType "requestPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_RequestMethod :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_RequestMethod = AccountsContainersWorkspacesBuilt_in_variablesRevertType "requestMethod"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClientName :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClientName = AccountsContainersWorkspacesBuilt_in_variablesRevertType "clientName"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_QueryString :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_QueryString = AccountsContainersWorkspacesBuilt_in_variablesRevertType "queryString"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationUrl :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationUrl = AccountsContainersWorkspacesBuilt_in_variablesRevertType "serverPageLocationUrl"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationPath :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationPath = AccountsContainersWorkspacesBuilt_in_variablesRevertType "serverPageLocationPath"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationHostname :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationHostname = AccountsContainersWorkspacesBuilt_in_variablesRevertType "serverPageLocationHostname"

pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VisitorRegion :: AccountsContainersWorkspacesBuilt_in_variablesRevertType
pattern AccountsContainersWorkspacesBuilt_in_variablesRevertType_VisitorRegion = AccountsContainersWorkspacesBuilt_in_variablesRevertType "visitorRegion"

{-# COMPLETE
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_BuiltInVariableTypeUnspecified,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_PageUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_PageHostname,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_PagePath,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_Referrer,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_Event,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickElement,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickClasses,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickTarget,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClickText,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirstPartyServingUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormElement,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormClasses,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormTarget,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FormText,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorMessage,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ErrorLine,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryFragment,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryFragment,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_NewHistoryState,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_OldHistoryState,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_HistorySource,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ContainerVersion,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_DebugMode,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_RandomNumber,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ContainerId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppName,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppVersionCode,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AppVersionName,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_Language,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_OsVersion,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_Platform,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_SdkVersion,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_DeviceName,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_Resolution,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AdvertiserId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AdvertisingTrackingEnabled,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_HtmlId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_EnvironmentName,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpBrowserLanguage,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalPath,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpCanonicalHost,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpReferrer,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpTitle,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientTimezone,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientTimestamp,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScreenWidth,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScreenHeight,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScrollX,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientScrollY,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientMaxScrollX,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpClientMaxScrollY,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpTotalEngagedTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageViewId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageLoadTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpPageDownloadTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_AmpGtmEvent,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_EventName,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaign,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignAclid,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignAnid,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignClickTimestamp,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignContent,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FIREBASEEVENTPARAMETERCAMPAIGNCP1,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignGclid,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignSource,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCampaignTerm,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterCurrency,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterDynamicLinkAcceptTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterDynamicLinkLinkid,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageDeviceTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageName,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationMessageTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterNotificationTopic,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPreviousAppVersion,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPreviousOsVersion,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterPrice,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterProductId,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterQuantity,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_FirebaseEventParameterValue,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoProvider,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoTitle,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoDuration,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoPercent,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoVisible,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoStatus,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VideoCurrentTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthThreshold,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthUnits,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ScrollDepthDirection,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityRatio,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityFirstTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ElementVisibilityRecentTime,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_RequestPath,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_RequestMethod,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ClientName,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_QueryString,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationUrl,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationPath,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_ServerPageLocationHostname,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType_VisitorRegion,
  AccountsContainersWorkspacesBuilt_in_variablesRevertType
  #-}
