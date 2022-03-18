{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DFAReporting.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DFAReporting.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Account_AccountProfile
    Account_AccountProfile
      (
        Account_AccountProfile_ACCOUNTPROFILEBASIC,
        Account_AccountProfile_ACCOUNTPROFILESTANDARD,
        ..
      ),

    -- * Account_ActiveAdsLimitTier
    Account_ActiveAdsLimitTier
      (
        Account_ActiveAdsLimitTier_ACTIVEADSTIER40K,
        Account_ActiveAdsLimitTier_ACTIVEADSTIER75K,
        Account_ActiveAdsLimitTier_ACTIVEADSTIER100K,
        Account_ActiveAdsLimitTier_ACTIVEADSTIER200K,
        Account_ActiveAdsLimitTier_ACTIVEADSTIER300K,
        Account_ActiveAdsLimitTier_ACTIVEADSTIER500K,
        Account_ActiveAdsLimitTier_ACTIVEADSTIER750K,
        Account_ActiveAdsLimitTier_ACTIVEADSTIER1M,
        ..
      ),

    -- * AccountActiveAdSummary_ActiveAdsLimitTier
    AccountActiveAdSummary_ActiveAdsLimitTier
      (
        AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER40K,
        AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER75K,
        AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER100K,
        AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER200K,
        AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER300K,
        AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER500K,
        AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER750K,
        AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER1M,
        ..
      ),

    -- * AccountPermission_AccountProfilesItem
    AccountPermission_AccountProfilesItem
      (
        AccountPermission_AccountProfilesItem_ACCOUNTPROFILEBASIC,
        AccountPermission_AccountProfilesItem_ACCOUNTPROFILESTANDARD,
        ..
      ),

    -- * AccountPermission_Level
    AccountPermission_Level
      (
        AccountPermission_Level_User,
        AccountPermission_Level_Administrator,
        ..
      ),

    -- * AccountUserProfile_TraffickerType
    AccountUserProfile_TraffickerType
      (
        AccountUserProfile_TraffickerType_INTERNALNONTRAFFICKER,
        AccountUserProfile_TraffickerType_INTERNALTRAFFICKER,
        AccountUserProfile_TraffickerType_EXTERNALTRAFFICKER,
        ..
      ),

    -- * AccountUserProfile_UserAccessType
    AccountUserProfile_UserAccessType
      (
        AccountUserProfile_UserAccessType_NORMALUSER,
        AccountUserProfile_UserAccessType_SUPERUSER,
        AccountUserProfile_UserAccessType_INTERNALADMINISTRATOR,
        AccountUserProfile_UserAccessType_READONLYSUPERUSER,
        ..
      ),

    -- * Ad_Compatibility
    Ad_Compatibility
      (
        Ad_Compatibility_Display,
        Ad_Compatibility_DISPLAYINTERSTITIAL,
        Ad_Compatibility_App,
        Ad_Compatibility_APPINTERSTITIAL,
        Ad_Compatibility_INSTREAMVIDEO,
        Ad_Compatibility_INSTREAMAUDIO,
        ..
      ),

    -- * Ad_Type
    Ad_Type
      (
        Ad_Type_ADSERVINGSTANDARDAD,
        Ad_Type_ADSERVINGDEFAULTAD,
        Ad_Type_ADSERVINGCLICKTRACKER,
        Ad_Type_ADSERVINGTRACKING,
        Ad_Type_ADSERVINGBRANDSAFEAD,
        ..
      ),

    -- * AdSlot_Compatibility
    AdSlot_Compatibility
      (
        AdSlot_Compatibility_Display,
        AdSlot_Compatibility_DISPLAYINTERSTITIAL,
        AdSlot_Compatibility_App,
        AdSlot_Compatibility_APPINTERSTITIAL,
        AdSlot_Compatibility_INSTREAMVIDEO,
        AdSlot_Compatibility_INSTREAMAUDIO,
        ..
      ),

    -- * AdSlot_PaymentSourceType
    AdSlot_PaymentSourceType
      (
        AdSlot_PaymentSourceType_PLANNINGPAYMENTSOURCETYPEAGENCYPAID,
        AdSlot_PaymentSourceType_PLANNINGPAYMENTSOURCETYPEPUBLISHERPAID,
        ..
      ),

    -- * Advertiser_Status
    Advertiser_Status
      (
        Advertiser_Status_Approved,
        Advertiser_Status_ONHOLD,
        ..
      ),

    -- * ConversionError_Code
    ConversionError_Code
      (
        ConversionError_Code_INVALIDARGUMENT,
        ConversionError_Code_Internal,
        ConversionError_Code_PERMISSIONDENIED,
        ConversionError_Code_NOTFOUND,
        ..
      ),

    -- * Creative_ArtworkType
    Creative_ArtworkType
      (
        Creative_ArtworkType_ARTWORKTYPEFLASH,
        Creative_ArtworkType_ARTWORK_TYPE_HTML5,
        Creative_ArtworkType_ARTWORKTYPEMIXED,
        Creative_ArtworkType_ARTWORKTYPEIMAGE,
        ..
      ),

    -- * Creative_AuthoringSource
    Creative_AuthoringSource
      (
        Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEDCM,
        Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEDBM,
        Creative_AuthoringSource_CREATIVEAUTHORINGSOURCESTUDIO,
        Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEGWD,
        ..
      ),

    -- * Creative_AuthoringTool
    Creative_AuthoringTool
      (
        Creative_AuthoringTool_Ninja,
        Creative_AuthoringTool_Swiffy,
        ..
      ),

    -- * Creative_BackupImageFeaturesItem
    Creative_BackupImageFeaturesItem
      (
        Creative_BackupImageFeaturesItem_CSSFONTFACE,
        Creative_BackupImageFeaturesItem_CSSBACKGROUNDSIZE,
        Creative_BackupImageFeaturesItem_CSSBORDERIMAGE,
        Creative_BackupImageFeaturesItem_CSSBORDERRADIUS,
        Creative_BackupImageFeaturesItem_CSSBOXSHADOW,
        Creative_BackupImageFeaturesItem_CSSFLEXBOX,
        Creative_BackupImageFeaturesItem_CSSHSLA,
        Creative_BackupImageFeaturesItem_CSSMULTIPLEBGS,
        Creative_BackupImageFeaturesItem_CSSOPACITY,
        Creative_BackupImageFeaturesItem_CSSRGBA,
        Creative_BackupImageFeaturesItem_CSSTEXTSHADOW,
        Creative_BackupImageFeaturesItem_CSSANIMATIONS,
        Creative_BackupImageFeaturesItem_CSSCOLUMNS,
        Creative_BackupImageFeaturesItem_CSSGENERATEDCONTENT,
        Creative_BackupImageFeaturesItem_CSSGRADIENTS,
        Creative_BackupImageFeaturesItem_CSSREFLECTIONS,
        Creative_BackupImageFeaturesItem_CSSTRANSFORMS,
        Creative_BackupImageFeaturesItem_CSSTRANSFORMS3D,
        Creative_BackupImageFeaturesItem_CSSTRANSITIONS,
        Creative_BackupImageFeaturesItem_APPLICATIONCACHE,
        Creative_BackupImageFeaturesItem_Canvas,
        Creative_BackupImageFeaturesItem_CANVASTEXT,
        Creative_BackupImageFeaturesItem_DRAGANDDROP,
        Creative_BackupImageFeaturesItem_HASHCHANGE,
        Creative_BackupImageFeaturesItem_History,
        Creative_BackupImageFeaturesItem_Audio,
        Creative_BackupImageFeaturesItem_Video,
        Creative_BackupImageFeaturesItem_INDEXEDDB,
        Creative_BackupImageFeaturesItem_INPUTATTRAUTOCOMPLETE,
        Creative_BackupImageFeaturesItem_INPUTATTRAUTOFOCUS,
        Creative_BackupImageFeaturesItem_INPUTATTRLIST,
        Creative_BackupImageFeaturesItem_INPUTATTRPLACEHOLDER,
        Creative_BackupImageFeaturesItem_INPUTATTRMAX,
        Creative_BackupImageFeaturesItem_INPUTATTRMIN,
        Creative_BackupImageFeaturesItem_INPUTATTRMULTIPLE,
        Creative_BackupImageFeaturesItem_INPUTATTRPATTERN,
        Creative_BackupImageFeaturesItem_INPUTATTRREQUIRED,
        Creative_BackupImageFeaturesItem_INPUTATTRSTEP,
        Creative_BackupImageFeaturesItem_INPUTTYPESEARCH,
        Creative_BackupImageFeaturesItem_INPUTTYPETEL,
        Creative_BackupImageFeaturesItem_INPUTTYPEURL,
        Creative_BackupImageFeaturesItem_INPUTTYPEEMAIL,
        Creative_BackupImageFeaturesItem_INPUTTYPEDATETIME,
        Creative_BackupImageFeaturesItem_INPUTTYPEDATE,
        Creative_BackupImageFeaturesItem_INPUTTYPEMONTH,
        Creative_BackupImageFeaturesItem_INPUTTYPEWEEK,
        Creative_BackupImageFeaturesItem_INPUTTYPETIME,
        Creative_BackupImageFeaturesItem_INPUTTYPEDATETIMELOCAL,
        Creative_BackupImageFeaturesItem_INPUTTYPENUMBER,
        Creative_BackupImageFeaturesItem_INPUTTYPERANGE,
        Creative_BackupImageFeaturesItem_INPUTTYPECOLOR,
        Creative_BackupImageFeaturesItem_LOCALSTORAGE,
        Creative_BackupImageFeaturesItem_POSTMESSAGE,
        Creative_BackupImageFeaturesItem_SESSIONSTORAGE,
        Creative_BackupImageFeaturesItem_WEBSOCKETS,
        Creative_BackupImageFeaturesItem_WEBSQLDATABASE,
        Creative_BackupImageFeaturesItem_WEBWORKERS,
        Creative_BackupImageFeaturesItem_GEOLOCATION,
        Creative_BackupImageFeaturesItem_INLINESVG,
        Creative_BackupImageFeaturesItem_Smil,
        Creative_BackupImageFeaturesItem_SVGHREF,
        Creative_BackupImageFeaturesItem_SVGCLIPPATHS,
        Creative_BackupImageFeaturesItem_Touch,
        Creative_BackupImageFeaturesItem_Webgl,
        Creative_BackupImageFeaturesItem_SVGFILTERS,
        Creative_BackupImageFeaturesItem_SVGFEIMAGE,
        ..
      ),

    -- * Creative_CompatibilityItem
    Creative_CompatibilityItem
      (
        Creative_CompatibilityItem_Display,
        Creative_CompatibilityItem_DISPLAYINTERSTITIAL,
        Creative_CompatibilityItem_App,
        Creative_CompatibilityItem_APPINTERSTITIAL,
        Creative_CompatibilityItem_INSTREAMVIDEO,
        Creative_CompatibilityItem_INSTREAMAUDIO,
        ..
      ),

    -- * Creative_Type
    Creative_Type
      (
        Creative_Type_Image,
        Creative_Type_DISPLAYREDIRECT,
        Creative_Type_CUSTOMDISPLAY,
        Creative_Type_INTERNALREDIRECT,
        Creative_Type_CUSTOMDISPLAYINTERSTITIAL,
        Creative_Type_INTERSTITIALINTERNALREDIRECT,
        Creative_Type_TRACKINGTEXT,
        Creative_Type_RICHMEDIADISPLAYBANNER,
        Creative_Type_RICHMEDIAINPAGEFLOATING,
        Creative_Type_RICHMEDIAIMEXPAND,
        Creative_Type_RICHMEDIADISPLAYEXPANDING,
        Creative_Type_RICHMEDIADISPLAYINTERSTITIAL,
        Creative_Type_RICHMEDIADISPLAYMULTIFLOATINGINTERSTITIAL,
        Creative_Type_RICHMEDIAMOBILEINAPP,
        Creative_Type_FLASHINPAGE,
        Creative_Type_INSTREAMVIDEO,
        Creative_Type_VPAIDLINEARVIDEO,
        Creative_Type_VPAIDNONLINEARVIDEO,
        Creative_Type_INSTREAMVIDEOREDIRECT,
        Creative_Type_RICHMEDIAPEELDOWN,
        Creative_Type_HTML5BANNER,
        Creative_Type_Display,
        Creative_Type_DISPLAYIMAGEGALLERY,
        Creative_Type_BRANDSAFEDEFAULTINSTREAMVIDEO,
        Creative_Type_INSTREAMAUDIO,
        ..
      ),

    -- * CreativeAsset_Alignment
    CreativeAsset_Alignment
      (
        CreativeAsset_Alignment_ALIGNMENTTOP,
        CreativeAsset_Alignment_ALIGNMENTRIGHT,
        CreativeAsset_Alignment_ALIGNMENTBOTTOM,
        CreativeAsset_Alignment_ALIGNMENTLEFT,
        ..
      ),

    -- * CreativeAsset_ArtworkType
    CreativeAsset_ArtworkType
      (
        CreativeAsset_ArtworkType_ARTWORKTYPEFLASH,
        CreativeAsset_ArtworkType_ARTWORK_TYPE_HTML5,
        CreativeAsset_ArtworkType_ARTWORKTYPEMIXED,
        CreativeAsset_ArtworkType_ARTWORKTYPEIMAGE,
        ..
      ),

    -- * CreativeAsset_ChildAssetType
    CreativeAsset_ChildAssetType
      (
        CreativeAsset_ChildAssetType_CHILDASSETTYPEFLASH,
        CreativeAsset_ChildAssetType_CHILDASSETTYPEVIDEO,
        CreativeAsset_ChildAssetType_CHILDASSETTYPEIMAGE,
        CreativeAsset_ChildAssetType_CHILDASSETTYPEDATA,
        ..
      ),

    -- * CreativeAsset_DetectedFeaturesItem
    CreativeAsset_DetectedFeaturesItem
      (
        CreativeAsset_DetectedFeaturesItem_CSSFONTFACE,
        CreativeAsset_DetectedFeaturesItem_CSSBACKGROUNDSIZE,
        CreativeAsset_DetectedFeaturesItem_CSSBORDERIMAGE,
        CreativeAsset_DetectedFeaturesItem_CSSBORDERRADIUS,
        CreativeAsset_DetectedFeaturesItem_CSSBOXSHADOW,
        CreativeAsset_DetectedFeaturesItem_CSSFLEXBOX,
        CreativeAsset_DetectedFeaturesItem_CSSHSLA,
        CreativeAsset_DetectedFeaturesItem_CSSMULTIPLEBGS,
        CreativeAsset_DetectedFeaturesItem_CSSOPACITY,
        CreativeAsset_DetectedFeaturesItem_CSSRGBA,
        CreativeAsset_DetectedFeaturesItem_CSSTEXTSHADOW,
        CreativeAsset_DetectedFeaturesItem_CSSANIMATIONS,
        CreativeAsset_DetectedFeaturesItem_CSSCOLUMNS,
        CreativeAsset_DetectedFeaturesItem_CSSGENERATEDCONTENT,
        CreativeAsset_DetectedFeaturesItem_CSSGRADIENTS,
        CreativeAsset_DetectedFeaturesItem_CSSREFLECTIONS,
        CreativeAsset_DetectedFeaturesItem_CSSTRANSFORMS,
        CreativeAsset_DetectedFeaturesItem_CSSTRANSFORMS3D,
        CreativeAsset_DetectedFeaturesItem_CSSTRANSITIONS,
        CreativeAsset_DetectedFeaturesItem_APPLICATIONCACHE,
        CreativeAsset_DetectedFeaturesItem_Canvas,
        CreativeAsset_DetectedFeaturesItem_CANVASTEXT,
        CreativeAsset_DetectedFeaturesItem_DRAGANDDROP,
        CreativeAsset_DetectedFeaturesItem_HASHCHANGE,
        CreativeAsset_DetectedFeaturesItem_History,
        CreativeAsset_DetectedFeaturesItem_Audio,
        CreativeAsset_DetectedFeaturesItem_Video,
        CreativeAsset_DetectedFeaturesItem_INDEXEDDB,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRAUTOCOMPLETE,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRAUTOFOCUS,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRLIST,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRPLACEHOLDER,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRMAX,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRMIN,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRMULTIPLE,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRPATTERN,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRREQUIRED,
        CreativeAsset_DetectedFeaturesItem_INPUTATTRSTEP,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPESEARCH,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPETEL,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPEURL,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPEEMAIL,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATETIME,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATE,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPEMONTH,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPEWEEK,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPETIME,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATETIMELOCAL,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPENUMBER,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPERANGE,
        CreativeAsset_DetectedFeaturesItem_INPUTTYPECOLOR,
        CreativeAsset_DetectedFeaturesItem_LOCALSTORAGE,
        CreativeAsset_DetectedFeaturesItem_POSTMESSAGE,
        CreativeAsset_DetectedFeaturesItem_SESSIONSTORAGE,
        CreativeAsset_DetectedFeaturesItem_WEBSOCKETS,
        CreativeAsset_DetectedFeaturesItem_WEBSQLDATABASE,
        CreativeAsset_DetectedFeaturesItem_WEBWORKERS,
        CreativeAsset_DetectedFeaturesItem_GEOLOCATION,
        CreativeAsset_DetectedFeaturesItem_INLINESVG,
        CreativeAsset_DetectedFeaturesItem_Smil,
        CreativeAsset_DetectedFeaturesItem_SVGHREF,
        CreativeAsset_DetectedFeaturesItem_SVGCLIPPATHS,
        CreativeAsset_DetectedFeaturesItem_Touch,
        CreativeAsset_DetectedFeaturesItem_Webgl,
        CreativeAsset_DetectedFeaturesItem_SVGFILTERS,
        CreativeAsset_DetectedFeaturesItem_SVGFEIMAGE,
        ..
      ),

    -- * CreativeAsset_DisplayType
    CreativeAsset_DisplayType
      (
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEINPAGE,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLOATING,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEOVERLAY,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEEXPANDING,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLASHINFLASH,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLASHINFLASHEXPANDING,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEPEELDOWN,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEVPAIDLINEAR,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEVPAIDNONLINEAR,
        CreativeAsset_DisplayType_ASSETDISPLAYTYPEBACKDROP,
        ..
      ),

    -- * CreativeAsset_DurationType
    CreativeAsset_DurationType
      (
        CreativeAsset_DurationType_ASSETDURATIONTYPEAUTO,
        CreativeAsset_DurationType_ASSETDURATIONTYPENONE,
        CreativeAsset_DurationType_ASSETDURATIONTYPECUSTOM,
        ..
      ),

    -- * CreativeAsset_Orientation
    CreativeAsset_Orientation
      (
        CreativeAsset_Orientation_Landscape,
        CreativeAsset_Orientation_Portrait,
        CreativeAsset_Orientation_Square,
        ..
      ),

    -- * CreativeAsset_PositionLeftUnit
    CreativeAsset_PositionLeftUnit
      (
        CreativeAsset_PositionLeftUnit_OFFSETUNITPIXEL,
        CreativeAsset_PositionLeftUnit_OFFSETUNITPERCENT,
        CreativeAsset_PositionLeftUnit_OFFSETUNITPIXELFROMCENTER,
        ..
      ),

    -- * CreativeAsset_PositionTopUnit
    CreativeAsset_PositionTopUnit
      (
        CreativeAsset_PositionTopUnit_OFFSETUNITPIXEL,
        CreativeAsset_PositionTopUnit_OFFSETUNITPERCENT,
        CreativeAsset_PositionTopUnit_OFFSETUNITPIXELFROMCENTER,
        ..
      ),

    -- * CreativeAsset_Role
    CreativeAsset_Role
      (
        CreativeAsset_Role_Primary,
        CreativeAsset_Role_BACKUPIMAGE,
        CreativeAsset_Role_ADDITIONALIMAGE,
        CreativeAsset_Role_ADDITIONALFLASH,
        CreativeAsset_Role_PARENTVIDEO,
        CreativeAsset_Role_TRANSCODEDVIDEO,
        CreativeAsset_Role_Other,
        CreativeAsset_Role_ALTERNATEVIDEO,
        CreativeAsset_Role_PARENTAUDIO,
        CreativeAsset_Role_TRANSCODEDAUDIO,
        ..
      ),

    -- * CreativeAsset_StartTimeType
    CreativeAsset_StartTimeType
      (
        CreativeAsset_StartTimeType_ASSETSTARTTIMETYPENONE,
        CreativeAsset_StartTimeType_ASSETSTARTTIMETYPECUSTOM,
        ..
      ),

    -- * CreativeAsset_WindowMode
    CreativeAsset_WindowMode
      (
        CreativeAsset_WindowMode_Opaque,
        CreativeAsset_WindowMode_Window,
        CreativeAsset_WindowMode_Transparent,
        ..
      ),

    -- * CreativeAssetId_Type
    CreativeAssetId_Type
      (
        CreativeAssetId_Type_Image,
        CreativeAssetId_Type_Flash,
        CreativeAssetId_Type_Video,
        CreativeAssetId_Type_Html,
        CreativeAssetId_Type_HTMLIMAGE,
        CreativeAssetId_Type_Audio,
        ..
      ),

    -- * CreativeAssetMetadata_DetectedFeaturesItem
    CreativeAssetMetadata_DetectedFeaturesItem
      (
        CreativeAssetMetadata_DetectedFeaturesItem_CSSFONTFACE,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSBACKGROUNDSIZE,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSBORDERIMAGE,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSBORDERRADIUS,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSBOXSHADOW,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSFLEXBOX,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSHSLA,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSMULTIPLEBGS,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSOPACITY,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSRGBA,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSTEXTSHADOW,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSANIMATIONS,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSCOLUMNS,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSGENERATEDCONTENT,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSGRADIENTS,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSREFLECTIONS,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSFORMS,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSFORMS3D,
        CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSITIONS,
        CreativeAssetMetadata_DetectedFeaturesItem_APPLICATIONCACHE,
        CreativeAssetMetadata_DetectedFeaturesItem_Canvas,
        CreativeAssetMetadata_DetectedFeaturesItem_CANVASTEXT,
        CreativeAssetMetadata_DetectedFeaturesItem_DRAGANDDROP,
        CreativeAssetMetadata_DetectedFeaturesItem_HASHCHANGE,
        CreativeAssetMetadata_DetectedFeaturesItem_History,
        CreativeAssetMetadata_DetectedFeaturesItem_Audio,
        CreativeAssetMetadata_DetectedFeaturesItem_Video,
        CreativeAssetMetadata_DetectedFeaturesItem_INDEXEDDB,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRAUTOCOMPLETE,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRAUTOFOCUS,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRLIST,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRPLACEHOLDER,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMAX,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMIN,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMULTIPLE,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRPATTERN,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRREQUIRED,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRSTEP,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPESEARCH,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPETEL,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEURL,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEEMAIL,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATETIME,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATE,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEMONTH,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEWEEK,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPETIME,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATETIMELOCAL,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPENUMBER,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPERANGE,
        CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPECOLOR,
        CreativeAssetMetadata_DetectedFeaturesItem_LOCALSTORAGE,
        CreativeAssetMetadata_DetectedFeaturesItem_POSTMESSAGE,
        CreativeAssetMetadata_DetectedFeaturesItem_SESSIONSTORAGE,
        CreativeAssetMetadata_DetectedFeaturesItem_WEBSOCKETS,
        CreativeAssetMetadata_DetectedFeaturesItem_WEBSQLDATABASE,
        CreativeAssetMetadata_DetectedFeaturesItem_WEBWORKERS,
        CreativeAssetMetadata_DetectedFeaturesItem_GEOLOCATION,
        CreativeAssetMetadata_DetectedFeaturesItem_INLINESVG,
        CreativeAssetMetadata_DetectedFeaturesItem_Smil,
        CreativeAssetMetadata_DetectedFeaturesItem_SVGHREF,
        CreativeAssetMetadata_DetectedFeaturesItem_SVGCLIPPATHS,
        CreativeAssetMetadata_DetectedFeaturesItem_Touch,
        CreativeAssetMetadata_DetectedFeaturesItem_Webgl,
        CreativeAssetMetadata_DetectedFeaturesItem_SVGFILTERS,
        CreativeAssetMetadata_DetectedFeaturesItem_SVGFEIMAGE,
        ..
      ),

    -- * CreativeAssetMetadata_WarnedValidationRulesItem
    CreativeAssetMetadata_WarnedValidationRulesItem
      (
        CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGNONTOPLEVEL,
        CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGMISSING,
        CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGMORETHANONE,
        CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINVALID,
        CreativeAssetMetadata_WarnedValidationRulesItem_ORPHANEDASSET,
        CreativeAssetMetadata_WarnedValidationRulesItem_PRIMARYHTMLMISSING,
        CreativeAssetMetadata_WarnedValidationRulesItem_EXTERNALFILEREFERENCED,
        CreativeAssetMetadata_WarnedValidationRulesItem_MRAIDREFERENCED,
        CreativeAssetMetadata_WarnedValidationRulesItem_ADMOBREFERENCED,
        CreativeAssetMetadata_WarnedValidationRulesItem_FILETYPEINVALID,
        CreativeAssetMetadata_WarnedValidationRulesItem_ZIPINVALID,
        CreativeAssetMetadata_WarnedValidationRulesItem_LINKEDFILENOTFOUND,
        CreativeAssetMetadata_WarnedValidationRulesItem_MAX_FLASH_VERSION_11,
        CreativeAssetMetadata_WarnedValidationRulesItem_NOTSSLCOMPLIANT,
        CreativeAssetMetadata_WarnedValidationRulesItem_FILEDETAILEMPTY,
        CreativeAssetMetadata_WarnedValidationRulesItem_ASSETINVALID,
        CreativeAssetMetadata_WarnedValidationRulesItem_GWDPROPERTIESINVALID,
        CreativeAssetMetadata_WarnedValidationRulesItem_ENABLERUNSUPPORTEDMETHODDCM,
        CreativeAssetMetadata_WarnedValidationRulesItem_ASSETFORMATUNSUPPORTEDDCM,
        CreativeAssetMetadata_WarnedValidationRulesItem_COMPONENTUNSUPPORTEDDCM,
        CreativeAssetMetadata_WarnedValidationRulesItem_HTML5FEATUREUNSUPPORTED,
        CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINGWD,
        CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGHARDCODED,
        CreativeAssetMetadata_WarnedValidationRulesItem_SVGINVALID,
        CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINRICHMEDIA,
        ..
      ),

    -- * CreativeCustomEvent_AdvertiserCustomEventType
    CreativeCustomEvent_AdvertiserCustomEventType
      (
        CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTTIMER,
        CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTEXIT,
        CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTCOUNTER,
        ..
      ),

    -- * CreativeCustomEvent_ArtworkType
    CreativeCustomEvent_ArtworkType
      (
        CreativeCustomEvent_ArtworkType_ARTWORKTYPEFLASH,
        CreativeCustomEvent_ArtworkType_ARTWORK_TYPE_HTML5,
        CreativeCustomEvent_ArtworkType_ARTWORKTYPEMIXED,
        CreativeCustomEvent_ArtworkType_ARTWORKTYPEIMAGE,
        ..
      ),

    -- * CreativeCustomEvent_TargetType
    CreativeCustomEvent_TargetType
      (
        CreativeCustomEvent_TargetType_TARGETBLANK,
        CreativeCustomEvent_TargetType_TARGETTOP,
        CreativeCustomEvent_TargetType_TARGETSELF,
        CreativeCustomEvent_TargetType_TARGETPARENT,
        CreativeCustomEvent_TargetType_TARGETPOPUP,
        ..
      ),

    -- * CreativeGroupAssignment_CreativeGroupNumber
    CreativeGroupAssignment_CreativeGroupNumber
      (
        CreativeGroupAssignment_CreativeGroupNumber_CREATIVEGROUPONE,
        CreativeGroupAssignment_CreativeGroupNumber_CREATIVEGROUPTWO,
        ..
      ),

    -- * CreativeOptimizationConfiguration_OptimizationModel
    CreativeOptimizationConfiguration_OptimizationModel
      (
        CreativeOptimizationConfiguration_OptimizationModel_Click,
        CreativeOptimizationConfiguration_OptimizationModel_POSTCLICK,
        CreativeOptimizationConfiguration_OptimizationModel_POSTIMPRESSION,
        CreativeOptimizationConfiguration_OptimizationModel_POSTCLICKANDIMPRESSION,
        CreativeOptimizationConfiguration_OptimizationModel_VIDEOCOMPLETION,
        ..
      ),

    -- * CreativeRotation_Type
    CreativeRotation_Type
      (
        CreativeRotation_Type_CREATIVEROTATIONTYPESEQUENTIAL,
        CreativeRotation_Type_CREATIVEROTATIONTYPERANDOM,
        ..
      ),

    -- * CreativeRotation_WeightCalculationStrategy
    CreativeRotation_WeightCalculationStrategy
      (
        CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYEQUAL,
        CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYCUSTOM,
        CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYHIGHESTCTR,
        CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYOPTIMIZED,
        ..
      ),

    -- * CustomFloodlightVariable_Type
    CustomFloodlightVariable_Type
      (
        CustomFloodlightVariable_Type_U1,
        CustomFloodlightVariable_Type_U2,
        CustomFloodlightVariable_Type_U3,
        CustomFloodlightVariable_Type_U4,
        CustomFloodlightVariable_Type_U5,
        CustomFloodlightVariable_Type_U6,
        CustomFloodlightVariable_Type_U7,
        CustomFloodlightVariable_Type_U8,
        CustomFloodlightVariable_Type_U9,
        CustomFloodlightVariable_Type_U10,
        CustomFloodlightVariable_Type_U11,
        CustomFloodlightVariable_Type_U12,
        CustomFloodlightVariable_Type_U13,
        CustomFloodlightVariable_Type_U14,
        CustomFloodlightVariable_Type_U15,
        CustomFloodlightVariable_Type_U16,
        CustomFloodlightVariable_Type_U17,
        CustomFloodlightVariable_Type_U18,
        CustomFloodlightVariable_Type_U19,
        CustomFloodlightVariable_Type_U20,
        CustomFloodlightVariable_Type_U21,
        CustomFloodlightVariable_Type_U22,
        CustomFloodlightVariable_Type_U23,
        CustomFloodlightVariable_Type_U24,
        CustomFloodlightVariable_Type_U25,
        CustomFloodlightVariable_Type_U26,
        CustomFloodlightVariable_Type_U27,
        CustomFloodlightVariable_Type_U28,
        CustomFloodlightVariable_Type_U29,
        CustomFloodlightVariable_Type_U30,
        CustomFloodlightVariable_Type_U31,
        CustomFloodlightVariable_Type_U32,
        CustomFloodlightVariable_Type_U33,
        CustomFloodlightVariable_Type_U34,
        CustomFloodlightVariable_Type_U35,
        CustomFloodlightVariable_Type_U36,
        CustomFloodlightVariable_Type_U37,
        CustomFloodlightVariable_Type_U38,
        CustomFloodlightVariable_Type_U39,
        CustomFloodlightVariable_Type_U40,
        CustomFloodlightVariable_Type_U41,
        CustomFloodlightVariable_Type_U42,
        CustomFloodlightVariable_Type_U43,
        CustomFloodlightVariable_Type_U44,
        CustomFloodlightVariable_Type_U45,
        CustomFloodlightVariable_Type_U46,
        CustomFloodlightVariable_Type_U47,
        CustomFloodlightVariable_Type_U48,
        CustomFloodlightVariable_Type_U49,
        CustomFloodlightVariable_Type_U50,
        CustomFloodlightVariable_Type_U51,
        CustomFloodlightVariable_Type_U52,
        CustomFloodlightVariable_Type_U53,
        CustomFloodlightVariable_Type_U54,
        CustomFloodlightVariable_Type_U55,
        CustomFloodlightVariable_Type_U56,
        CustomFloodlightVariable_Type_U57,
        CustomFloodlightVariable_Type_U58,
        CustomFloodlightVariable_Type_U59,
        CustomFloodlightVariable_Type_U60,
        CustomFloodlightVariable_Type_U61,
        CustomFloodlightVariable_Type_U62,
        CustomFloodlightVariable_Type_U63,
        CustomFloodlightVariable_Type_U64,
        CustomFloodlightVariable_Type_U65,
        CustomFloodlightVariable_Type_U66,
        CustomFloodlightVariable_Type_U67,
        CustomFloodlightVariable_Type_U68,
        CustomFloodlightVariable_Type_U69,
        CustomFloodlightVariable_Type_U70,
        CustomFloodlightVariable_Type_U71,
        CustomFloodlightVariable_Type_U72,
        CustomFloodlightVariable_Type_U73,
        CustomFloodlightVariable_Type_U74,
        CustomFloodlightVariable_Type_U75,
        CustomFloodlightVariable_Type_U76,
        CustomFloodlightVariable_Type_U77,
        CustomFloodlightVariable_Type_U78,
        CustomFloodlightVariable_Type_U79,
        CustomFloodlightVariable_Type_U80,
        CustomFloodlightVariable_Type_U81,
        CustomFloodlightVariable_Type_U82,
        CustomFloodlightVariable_Type_U83,
        CustomFloodlightVariable_Type_U84,
        CustomFloodlightVariable_Type_U85,
        CustomFloodlightVariable_Type_U86,
        CustomFloodlightVariable_Type_U87,
        CustomFloodlightVariable_Type_U88,
        CustomFloodlightVariable_Type_U89,
        CustomFloodlightVariable_Type_U90,
        CustomFloodlightVariable_Type_U91,
        CustomFloodlightVariable_Type_U92,
        CustomFloodlightVariable_Type_U93,
        CustomFloodlightVariable_Type_U94,
        CustomFloodlightVariable_Type_U95,
        CustomFloodlightVariable_Type_U96,
        CustomFloodlightVariable_Type_U97,
        CustomFloodlightVariable_Type_U98,
        CustomFloodlightVariable_Type_U99,
        CustomFloodlightVariable_Type_U100,
        ..
      ),

    -- * DateRange_RelativeDateRange
    DateRange_RelativeDateRange
      (
        DateRange_RelativeDateRange_Today,
        DateRange_RelativeDateRange_Yesterday,
        DateRange_RelativeDateRange_WEEKTODATE,
        DateRange_RelativeDateRange_MONTHTODATE,
        DateRange_RelativeDateRange_QUARTERTODATE,
        DateRange_RelativeDateRange_YEARTODATE,
        DateRange_RelativeDateRange_PREVIOUSWEEK,
        DateRange_RelativeDateRange_PREVIOUSMONTH,
        DateRange_RelativeDateRange_PREVIOUSQUARTER,
        DateRange_RelativeDateRange_PREVIOUSYEAR,
        DateRange_RelativeDateRange_LAST7DAYS,
        DateRange_RelativeDateRange_LAST30DAYS,
        DateRange_RelativeDateRange_LAST90DAYS,
        DateRange_RelativeDateRange_LAST365DAYS,
        DateRange_RelativeDateRange_LAST24MONTHS,
        DateRange_RelativeDateRange_LAST14DAYS,
        DateRange_RelativeDateRange_LAST60DAYS,
        ..
      ),

    -- * DayPartTargeting_DaysOfWeekItem
    DayPartTargeting_DaysOfWeekItem
      (
        DayPartTargeting_DaysOfWeekItem_Monday,
        DayPartTargeting_DaysOfWeekItem_Tuesday,
        DayPartTargeting_DaysOfWeekItem_Wednesday,
        DayPartTargeting_DaysOfWeekItem_Thursday,
        DayPartTargeting_DaysOfWeekItem_Friday,
        DayPartTargeting_DaysOfWeekItem_Saturday,
        DayPartTargeting_DaysOfWeekItem_Sunday,
        ..
      ),

    -- * DeliverySchedule_Priority
    DeliverySchedule_Priority
      (
        DeliverySchedule_Priority_AD_PRIORITY_01,
        DeliverySchedule_Priority_AD_PRIORITY_02,
        DeliverySchedule_Priority_AD_PRIORITY_03,
        DeliverySchedule_Priority_AD_PRIORITY_04,
        DeliverySchedule_Priority_AD_PRIORITY_05,
        DeliverySchedule_Priority_AD_PRIORITY_06,
        DeliverySchedule_Priority_AD_PRIORITY_07,
        DeliverySchedule_Priority_AD_PRIORITY_08,
        DeliverySchedule_Priority_AD_PRIORITY_09,
        DeliverySchedule_Priority_AD_PRIORITY_10,
        DeliverySchedule_Priority_AD_PRIORITY_11,
        DeliverySchedule_Priority_AD_PRIORITY_12,
        DeliverySchedule_Priority_AD_PRIORITY_13,
        DeliverySchedule_Priority_AD_PRIORITY_14,
        DeliverySchedule_Priority_AD_PRIORITY_15,
        DeliverySchedule_Priority_AD_PRIORITY_16,
        ..
      ),

    -- * DimensionValue_MatchType
    DimensionValue_MatchType
      (
        DimensionValue_MatchType_Exact,
        DimensionValue_MatchType_BEGINSWITH,
        DimensionValue_MatchType_Contains,
        DimensionValue_MatchType_WILDCARDEXPRESSION,
        ..
      ),

    -- * DirectorySite_InpageTagFormatsItem
    DirectorySite_InpageTagFormatsItem
      (
        DirectorySite_InpageTagFormatsItem_Standard,
        DirectorySite_InpageTagFormatsItem_IFRAMEJAVASCRIPTINPAGE,
        DirectorySite_InpageTagFormatsItem_INTERNALREDIRECTINPAGE,
        DirectorySite_InpageTagFormatsItem_JAVASCRIPTINPAGE,
        ..
      ),

    -- * DirectorySite_InterstitialTagFormatsItem
    DirectorySite_InterstitialTagFormatsItem
      (
        DirectorySite_InterstitialTagFormatsItem_IFRAMEJAVASCRIPTINTERSTITIAL,
        DirectorySite_InterstitialTagFormatsItem_INTERNALREDIRECTINTERSTITIAL,
        DirectorySite_InterstitialTagFormatsItem_JAVASCRIPTINTERSTITIAL,
        ..
      ),

    -- * DynamicTargetingKey_ObjectType
    DynamicTargetingKey_ObjectType
      (
        DynamicTargetingKey_ObjectType_OBJECTADVERTISER,
        DynamicTargetingKey_ObjectType_OBJECTAD,
        DynamicTargetingKey_ObjectType_OBJECTCREATIVE,
        DynamicTargetingKey_ObjectType_OBJECTPLACEMENT,
        ..
      ),

    -- * EncryptionInfo_EncryptionEntityType
    EncryptionInfo_EncryptionEntityType
      (
        EncryptionInfo_EncryptionEntityType_ENCRYPTIONENTITYTYPEUNKNOWN,
        EncryptionInfo_EncryptionEntityType_DCMACCOUNT,
        EncryptionInfo_EncryptionEntityType_DCMADVERTISER,
        EncryptionInfo_EncryptionEntityType_DBMPARTNER,
        EncryptionInfo_EncryptionEntityType_DBMADVERTISER,
        EncryptionInfo_EncryptionEntityType_ADWORDSCUSTOMER,
        EncryptionInfo_EncryptionEntityType_DFPNETWORKCODE,
        ..
      ),

    -- * EncryptionInfo_EncryptionSource
    EncryptionInfo_EncryptionSource
      (
        EncryptionInfo_EncryptionSource_ENCRYPTIONSCOPEUNKNOWN,
        EncryptionInfo_EncryptionSource_ADSERVING,
        EncryptionInfo_EncryptionSource_DATATRANSFER,
        ..
      ),

    -- * EventTag_SiteFilterType
    EventTag_SiteFilterType
      (
        EventTag_SiteFilterType_Allowlist,
        EventTag_SiteFilterType_Blocklist,
        ..
      ),

    -- * EventTag_Status
    EventTag_Status
      (
        EventTag_Status_Enabled,
        EventTag_Status_Disabled,
        ..
      ),

    -- * EventTag_Type
    EventTag_Type
      (
        EventTag_Type_IMPRESSIONIMAGEEVENTTAG,
        EventTag_Type_IMPRESSIONJAVASCRIPTEVENTTAG,
        EventTag_Type_CLICKTHROUGHEVENTTAG,
        ..
      ),

    -- * File_Format
    File_Format
      (
        File_Format_Csv,
        File_Format_Excel,
        ..
      ),

    -- * File_Status
    File_Status
      (
        File_Status_Processing,
        File_Status_REPORTAVAILABLE,
        File_Status_Failed,
        File_Status_Cancelled,
        ..
      ),

    -- * FloodlightActivity_CacheBustingType
    FloodlightActivity_CacheBustingType
      (
        FloodlightActivity_CacheBustingType_Javascript,
        FloodlightActivity_CacheBustingType_ACTIVESERVERPAGE,
        FloodlightActivity_CacheBustingType_Jsp,
        FloodlightActivity_CacheBustingType_Php,
        FloodlightActivity_CacheBustingType_COLDFUSION,
        ..
      ),

    -- * FloodlightActivity_CountingMethod
    FloodlightActivity_CountingMethod
      (
        FloodlightActivity_CountingMethod_STANDARDCOUNTING,
        FloodlightActivity_CountingMethod_UNIQUECOUNTING,
        FloodlightActivity_CountingMethod_SESSIONCOUNTING,
        FloodlightActivity_CountingMethod_TRANSACTIONSCOUNTING,
        FloodlightActivity_CountingMethod_ITEMSSOLDCOUNTING,
        ..
      ),

    -- * FloodlightActivity_FloodlightActivityGroupType
    FloodlightActivity_FloodlightActivityGroupType
      (
        FloodlightActivity_FloodlightActivityGroupType_Counter,
        FloodlightActivity_FloodlightActivityGroupType_Sale,
        ..
      ),

    -- * FloodlightActivity_FloodlightTagType
    FloodlightActivity_FloodlightTagType
      (
        FloodlightActivity_FloodlightTagType_Iframe,
        FloodlightActivity_FloodlightTagType_Image,
        FloodlightActivity_FloodlightTagType_GLOBALSITETAG,
        ..
      ),

    -- * FloodlightActivity_Status
    FloodlightActivity_Status
      (
        FloodlightActivity_Status_Active,
        FloodlightActivity_Status_ARCHIVEDANDDISABLED,
        FloodlightActivity_Status_Archived,
        FloodlightActivity_Status_DISABLEDPOLICY,
        ..
      ),

    -- * FloodlightActivity_TagFormat
    FloodlightActivity_TagFormat
      (
        FloodlightActivity_TagFormat_Html,
        FloodlightActivity_TagFormat_Xhtml,
        ..
      ),

    -- * FloodlightActivity_UserDefinedVariableTypesItem
    FloodlightActivity_UserDefinedVariableTypesItem
      (
        FloodlightActivity_UserDefinedVariableTypesItem_U1,
        FloodlightActivity_UserDefinedVariableTypesItem_U2,
        FloodlightActivity_UserDefinedVariableTypesItem_U3,
        FloodlightActivity_UserDefinedVariableTypesItem_U4,
        FloodlightActivity_UserDefinedVariableTypesItem_U5,
        FloodlightActivity_UserDefinedVariableTypesItem_U6,
        FloodlightActivity_UserDefinedVariableTypesItem_U7,
        FloodlightActivity_UserDefinedVariableTypesItem_U8,
        FloodlightActivity_UserDefinedVariableTypesItem_U9,
        FloodlightActivity_UserDefinedVariableTypesItem_U10,
        FloodlightActivity_UserDefinedVariableTypesItem_U11,
        FloodlightActivity_UserDefinedVariableTypesItem_U12,
        FloodlightActivity_UserDefinedVariableTypesItem_U13,
        FloodlightActivity_UserDefinedVariableTypesItem_U14,
        FloodlightActivity_UserDefinedVariableTypesItem_U15,
        FloodlightActivity_UserDefinedVariableTypesItem_U16,
        FloodlightActivity_UserDefinedVariableTypesItem_U17,
        FloodlightActivity_UserDefinedVariableTypesItem_U18,
        FloodlightActivity_UserDefinedVariableTypesItem_U19,
        FloodlightActivity_UserDefinedVariableTypesItem_U20,
        FloodlightActivity_UserDefinedVariableTypesItem_U21,
        FloodlightActivity_UserDefinedVariableTypesItem_U22,
        FloodlightActivity_UserDefinedVariableTypesItem_U23,
        FloodlightActivity_UserDefinedVariableTypesItem_U24,
        FloodlightActivity_UserDefinedVariableTypesItem_U25,
        FloodlightActivity_UserDefinedVariableTypesItem_U26,
        FloodlightActivity_UserDefinedVariableTypesItem_U27,
        FloodlightActivity_UserDefinedVariableTypesItem_U28,
        FloodlightActivity_UserDefinedVariableTypesItem_U29,
        FloodlightActivity_UserDefinedVariableTypesItem_U30,
        FloodlightActivity_UserDefinedVariableTypesItem_U31,
        FloodlightActivity_UserDefinedVariableTypesItem_U32,
        FloodlightActivity_UserDefinedVariableTypesItem_U33,
        FloodlightActivity_UserDefinedVariableTypesItem_U34,
        FloodlightActivity_UserDefinedVariableTypesItem_U35,
        FloodlightActivity_UserDefinedVariableTypesItem_U36,
        FloodlightActivity_UserDefinedVariableTypesItem_U37,
        FloodlightActivity_UserDefinedVariableTypesItem_U38,
        FloodlightActivity_UserDefinedVariableTypesItem_U39,
        FloodlightActivity_UserDefinedVariableTypesItem_U40,
        FloodlightActivity_UserDefinedVariableTypesItem_U41,
        FloodlightActivity_UserDefinedVariableTypesItem_U42,
        FloodlightActivity_UserDefinedVariableTypesItem_U43,
        FloodlightActivity_UserDefinedVariableTypesItem_U44,
        FloodlightActivity_UserDefinedVariableTypesItem_U45,
        FloodlightActivity_UserDefinedVariableTypesItem_U46,
        FloodlightActivity_UserDefinedVariableTypesItem_U47,
        FloodlightActivity_UserDefinedVariableTypesItem_U48,
        FloodlightActivity_UserDefinedVariableTypesItem_U49,
        FloodlightActivity_UserDefinedVariableTypesItem_U50,
        FloodlightActivity_UserDefinedVariableTypesItem_U51,
        FloodlightActivity_UserDefinedVariableTypesItem_U52,
        FloodlightActivity_UserDefinedVariableTypesItem_U53,
        FloodlightActivity_UserDefinedVariableTypesItem_U54,
        FloodlightActivity_UserDefinedVariableTypesItem_U55,
        FloodlightActivity_UserDefinedVariableTypesItem_U56,
        FloodlightActivity_UserDefinedVariableTypesItem_U57,
        FloodlightActivity_UserDefinedVariableTypesItem_U58,
        FloodlightActivity_UserDefinedVariableTypesItem_U59,
        FloodlightActivity_UserDefinedVariableTypesItem_U60,
        FloodlightActivity_UserDefinedVariableTypesItem_U61,
        FloodlightActivity_UserDefinedVariableTypesItem_U62,
        FloodlightActivity_UserDefinedVariableTypesItem_U63,
        FloodlightActivity_UserDefinedVariableTypesItem_U64,
        FloodlightActivity_UserDefinedVariableTypesItem_U65,
        FloodlightActivity_UserDefinedVariableTypesItem_U66,
        FloodlightActivity_UserDefinedVariableTypesItem_U67,
        FloodlightActivity_UserDefinedVariableTypesItem_U68,
        FloodlightActivity_UserDefinedVariableTypesItem_U69,
        FloodlightActivity_UserDefinedVariableTypesItem_U70,
        FloodlightActivity_UserDefinedVariableTypesItem_U71,
        FloodlightActivity_UserDefinedVariableTypesItem_U72,
        FloodlightActivity_UserDefinedVariableTypesItem_U73,
        FloodlightActivity_UserDefinedVariableTypesItem_U74,
        FloodlightActivity_UserDefinedVariableTypesItem_U75,
        FloodlightActivity_UserDefinedVariableTypesItem_U76,
        FloodlightActivity_UserDefinedVariableTypesItem_U77,
        FloodlightActivity_UserDefinedVariableTypesItem_U78,
        FloodlightActivity_UserDefinedVariableTypesItem_U79,
        FloodlightActivity_UserDefinedVariableTypesItem_U80,
        FloodlightActivity_UserDefinedVariableTypesItem_U81,
        FloodlightActivity_UserDefinedVariableTypesItem_U82,
        FloodlightActivity_UserDefinedVariableTypesItem_U83,
        FloodlightActivity_UserDefinedVariableTypesItem_U84,
        FloodlightActivity_UserDefinedVariableTypesItem_U85,
        FloodlightActivity_UserDefinedVariableTypesItem_U86,
        FloodlightActivity_UserDefinedVariableTypesItem_U87,
        FloodlightActivity_UserDefinedVariableTypesItem_U88,
        FloodlightActivity_UserDefinedVariableTypesItem_U89,
        FloodlightActivity_UserDefinedVariableTypesItem_U90,
        FloodlightActivity_UserDefinedVariableTypesItem_U91,
        FloodlightActivity_UserDefinedVariableTypesItem_U92,
        FloodlightActivity_UserDefinedVariableTypesItem_U93,
        FloodlightActivity_UserDefinedVariableTypesItem_U94,
        FloodlightActivity_UserDefinedVariableTypesItem_U95,
        FloodlightActivity_UserDefinedVariableTypesItem_U96,
        FloodlightActivity_UserDefinedVariableTypesItem_U97,
        FloodlightActivity_UserDefinedVariableTypesItem_U98,
        FloodlightActivity_UserDefinedVariableTypesItem_U99,
        FloodlightActivity_UserDefinedVariableTypesItem_U100,
        ..
      ),

    -- * FloodlightActivityGroup_Type
    FloodlightActivityGroup_Type
      (
        FloodlightActivityGroup_Type_Counter,
        FloodlightActivityGroup_Type_Sale,
        ..
      ),

    -- * FloodlightConfiguration_FirstDayOfWeek
    FloodlightConfiguration_FirstDayOfWeek
      (
        FloodlightConfiguration_FirstDayOfWeek_Monday,
        FloodlightConfiguration_FirstDayOfWeek_Sunday,
        ..
      ),

    -- * FloodlightConfiguration_NaturalSearchConversionAttributionOption
    FloodlightConfiguration_NaturalSearchConversionAttributionOption
      (
        FloodlightConfiguration_NaturalSearchConversionAttributionOption_EXCLUDENATURALSEARCHCONVERSIONATTRIBUTION,
        FloodlightConfiguration_NaturalSearchConversionAttributionOption_INCLUDENATURALSEARCHCONVERSIONATTRIBUTION,
        FloodlightConfiguration_NaturalSearchConversionAttributionOption_INCLUDENATURALSEARCHTIEREDCONVERSIONATTRIBUTION,
        ..
      ),

    -- * FsCommand_PositionOption
    FsCommand_PositionOption
      (
        FsCommand_PositionOption_Centered,
        FsCommand_PositionOption_DISTANCEFROMTOPLEFTCORNER,
        ..
      ),

    -- * InventoryItem_Type
    InventoryItem_Type
      (
        InventoryItem_Type_PLANNINGPLACEMENTTYPEREGULAR,
        InventoryItem_Type_PLANNINGPLACEMENTTYPECREDIT,
        ..
      ),

    -- * ListPopulationTerm_Operator
    ListPopulationTerm_Operator
      (
        ListPopulationTerm_Operator_NUMEQUALS,
        ListPopulationTerm_Operator_NUMLESSTHAN,
        ListPopulationTerm_Operator_NUMLESSTHANEQUAL,
        ListPopulationTerm_Operator_NUMGREATERTHAN,
        ListPopulationTerm_Operator_NUMGREATERTHANEQUAL,
        ListPopulationTerm_Operator_STRINGEQUALS,
        ListPopulationTerm_Operator_STRINGCONTAINS,
        ..
      ),

    -- * ListPopulationTerm_Type
    ListPopulationTerm_Type
      (
        ListPopulationTerm_Type_CUSTOMVARIABLETERM,
        ListPopulationTerm_Type_LISTMEMBERSHIPTERM,
        ListPopulationTerm_Type_REFERRERTERM,
        ..
      ),

    -- * MeasurementPartnerAdvertiserLink_LinkStatus
    MeasurementPartnerAdvertiserLink_LinkStatus
      (
        MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERUNLINKED,
        MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKED,
        MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKPENDING,
        MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKFAILURE,
        MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT,
        MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING,
        MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING,
        MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING,
        ..
      ),

    -- * MeasurementPartnerAdvertiserLink_MeasurementPartner
    MeasurementPartnerAdvertiserLink_MeasurementPartner
      (
        MeasurementPartnerAdvertiserLink_MeasurementPartner_None,
        MeasurementPartnerAdvertiserLink_MeasurementPartner_INTEGRALADSCIENCE,
        ..
      ),

    -- * MeasurementPartnerCampaignLink_LinkStatus
    MeasurementPartnerCampaignLink_LinkStatus
      (
        MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERUNLINKED,
        MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKED,
        MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKPENDING,
        MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKFAILURE,
        MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT,
        MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING,
        MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING,
        MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING,
        ..
      ),

    -- * MeasurementPartnerCampaignLink_MeasurementPartner
    MeasurementPartnerCampaignLink_MeasurementPartner
      (
        MeasurementPartnerCampaignLink_MeasurementPartner_None,
        MeasurementPartnerCampaignLink_MeasurementPartner_INTEGRALADSCIENCE,
        ..
      ),

    -- * MeasurementPartnerWrappingData_LinkStatus
    MeasurementPartnerWrappingData_LinkStatus
      (
        MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERUNLINKED,
        MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKED,
        MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKPENDING,
        MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKFAILURE,
        MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT,
        MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING,
        MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING,
        MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING,
        ..
      ),

    -- * MeasurementPartnerWrappingData_MeasurementPartner
    MeasurementPartnerWrappingData_MeasurementPartner
      (
        MeasurementPartnerWrappingData_MeasurementPartner_None,
        MeasurementPartnerWrappingData_MeasurementPartner_INTEGRALADSCIENCE,
        ..
      ),

    -- * MeasurementPartnerWrappingData_TagWrappingMode
    MeasurementPartnerWrappingData_TagWrappingMode
      (
        MeasurementPartnerWrappingData_TagWrappingMode_None,
        MeasurementPartnerWrappingData_TagWrappingMode_Blocking,
        MeasurementPartnerWrappingData_TagWrappingMode_Monitoring,
        MeasurementPartnerWrappingData_TagWrappingMode_MONITORINGONLY,
        MeasurementPartnerWrappingData_TagWrappingMode_VIDEOPIXELMONITORING,
        MeasurementPartnerWrappingData_TagWrappingMode_Tracking,
        MeasurementPartnerWrappingData_TagWrappingMode_NONVPAIDMONITORING,
        ..
      ),

    -- * MobileApp_Directory
    MobileApp_Directory
      (
        MobileApp_Directory_Unknown,
        MobileApp_Directory_APPLEAPPSTORE,
        MobileApp_Directory_GOOGLEPLAYSTORE,
        ..
      ),

    -- * ObjectFilter_Status
    ObjectFilter_Status
      (
        ObjectFilter_Status_None,
        ObjectFilter_Status_Assigned,
        ObjectFilter_Status_All,
        ..
      ),

    -- * OrderContact_ContactType
    OrderContact_ContactType
      (
        OrderContact_ContactType_PLANNINGORDERCONTACTBUYERCONTACT,
        OrderContact_ContactType_PLANNINGORDERCONTACTBUYERBILLINGCONTACT,
        OrderContact_ContactType_PLANNINGORDERCONTACTSELLERCONTACT,
        ..
      ),

    -- * OrderDocument_Type
    OrderDocument_Type
      (
        OrderDocument_Type_PLANNINGORDERTYPEINSERTIONORDER,
        OrderDocument_Type_PLANNINGORDERTYPECHANGEORDER,
        ..
      ),

    -- * PathFilter_PathMatchPosition
    PathFilter_PathMatchPosition
      (
        PathFilter_PathMatchPosition_PATHMATCHPOSITIONUNSPECIFIED,
        PathFilter_PathMatchPosition_Any,
        PathFilter_PathMatchPosition_First,
        PathFilter_PathMatchPosition_Last,
        ..
      ),

    -- * PathReportDimensionValue_MatchType
    PathReportDimensionValue_MatchType
      (
        PathReportDimensionValue_MatchType_Exact,
        PathReportDimensionValue_MatchType_BEGINSWITH,
        PathReportDimensionValue_MatchType_Contains,
        PathReportDimensionValue_MatchType_WILDCARDEXPRESSION,
        ..
      ),

    -- * Placement_Compatibility
    Placement_Compatibility
      (
        Placement_Compatibility_Display,
        Placement_Compatibility_DISPLAYINTERSTITIAL,
        Placement_Compatibility_App,
        Placement_Compatibility_APPINTERSTITIAL,
        Placement_Compatibility_INSTREAMVIDEO,
        Placement_Compatibility_INSTREAMAUDIO,
        ..
      ),

    -- * Placement_PaymentSource
    Placement_PaymentSource
      (
        Placement_PaymentSource_PLACEMENTAGENCYPAID,
        Placement_PaymentSource_PLACEMENTPUBLISHERPAID,
        ..
      ),

    -- * Placement_Status
    Placement_Status
      (
        Placement_Status_PENDINGREVIEW,
        Placement_Status_PAYMENTACCEPTED,
        Placement_Status_PAYMENTREJECTED,
        Placement_Status_ACKNOWLEDGEREJECTION,
        Placement_Status_ACKNOWLEDGEACCEPTANCE,
        Placement_Status_Draft,
        ..
      ),

    -- * Placement_TagFormatsItem
    Placement_TagFormatsItem
      (
        Placement_TagFormatsItem_PLACEMENTTAGSTANDARD,
        Placement_TagFormatsItem_PLACEMENTTAGIFRAMEJAVASCRIPT,
        Placement_TagFormatsItem_PLACEMENTTAGIFRAMEILAYER,
        Placement_TagFormatsItem_PLACEMENTTAGINTERNALREDIRECT,
        Placement_TagFormatsItem_PLACEMENTTAGJAVASCRIPT,
        Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT,
        Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT,
        Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALJAVASCRIPT,
        Placement_TagFormatsItem_PLACEMENTTAGCLICKCOMMANDS,
        Placement_TagFormatsItem_PLACEMENTTAGINSTREAMVIDEOPREFETCH,
        Placement_TagFormatsItem_PLACEMENTTAGTRACKING,
        Placement_TagFormatsItem_PLACEMENTTAGTRACKINGIFRAME,
        Placement_TagFormatsItem_PLACEMENTTAGTRACKINGJAVASCRIPT,
        Placement_TagFormatsItem_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3,
        Placement_TagFormatsItem_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY,
        Placement_TagFormatsItem_PLACEMENTTAGJAVASCRIPTLEGACY,
        Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY,
        Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY,
        Placement_TagFormatsItem_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4,
        Placement_TagFormatsItem_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT,
        ..
      ),

    -- * Placement_VpaidAdapterChoice
    Placement_VpaidAdapterChoice
      (
        Placement_VpaidAdapterChoice_Default,
        Placement_VpaidAdapterChoice_Flash,
        Placement_VpaidAdapterChoice_HTML5,
        Placement_VpaidAdapterChoice_Both,
        ..
      ),

    -- * PlacementGroup_PlacementGroupType
    PlacementGroup_PlacementGroupType
      (
        PlacementGroup_PlacementGroupType_PLACEMENTPACKAGE,
        PlacementGroup_PlacementGroupType_PLACEMENTROADBLOCK,
        ..
      ),

    -- * PopupWindowProperties_PositionType
    PopupWindowProperties_PositionType
      (
        PopupWindowProperties_PositionType_Center,
        PopupWindowProperties_PositionType_Coordinates,
        ..
      ),

    -- * Pricing_CapCostType
    Pricing_CapCostType
      (
        Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPENONE,
        Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPEMONTHLY,
        Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPECUMULATIVE,
        ..
      ),

    -- * Pricing_GroupType
    Pricing_GroupType
      (
        Pricing_GroupType_PLANNINGPLACEMENTGROUPTYPEPACKAGE,
        Pricing_GroupType_PLANNINGPLACEMENTGROUPTYPEROADBLOCK,
        ..
      ),

    -- * Pricing_PricingType
    Pricing_PricingType
      (
        Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEIMPRESSIONS,
        Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPM,
        Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECLICKS,
        Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPC,
        Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPA,
        Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEFLATRATEIMPRESSIONS,
        Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEFLATRATECLICKS,
        Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPMACTIVEVIEW,
        ..
      ),

    -- * PricingSchedule_CapCostOption
    PricingSchedule_CapCostOption
      (
        PricingSchedule_CapCostOption_CAPCOSTNONE,
        PricingSchedule_CapCostOption_CAPCOSTMONTHLY,
        PricingSchedule_CapCostOption_CAPCOSTCUMULATIVE,
        ..
      ),

    -- * PricingSchedule_PricingType
    PricingSchedule_PricingType
      (
        PricingSchedule_PricingType_PRICINGTYPECPM,
        PricingSchedule_PricingType_PRICINGTYPECPC,
        PricingSchedule_PricingType_PRICINGTYPECPA,
        PricingSchedule_PricingType_PRICINGTYPEFLATRATEIMPRESSIONS,
        PricingSchedule_PricingType_PRICINGTYPEFLATRATECLICKS,
        PricingSchedule_PricingType_PRICINGTYPECPMACTIVEVIEW,
        ..
      ),

    -- * Project_AudienceAgeGroup
    Project_AudienceAgeGroup
      (
        Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_18_24,
        Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_25_34,
        Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_35_44,
        Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_45_54,
        Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_55_64,
        Project_AudienceAgeGroup_PLANNINGAUDIENCEAGE65ORMORE,
        Project_AudienceAgeGroup_PLANNINGAUDIENCEAGEUNKNOWN,
        ..
      ),

    -- * Project_AudienceGender
    Project_AudienceGender
      (
        Project_AudienceGender_PLANNINGAUDIENCEGENDERMALE,
        Project_AudienceGender_PLANNINGAUDIENCEGENDERFEMALE,
        ..
      ),

    -- * Recipient_DeliveryType
    Recipient_DeliveryType
      (
        Recipient_DeliveryType_Link,
        Recipient_DeliveryType_Attachment,
        ..
      ),

    -- * RemarketingList_ListSource
    RemarketingList_ListSource
      (
        RemarketingList_ListSource_REMARKETINGLISTSOURCEOTHER,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEADX,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEDFP,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEXFP,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEDFA,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEGA,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEYOUTUBE,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEDBM,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEGPLUS,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEDMP,
        RemarketingList_ListSource_REMARKETINGLISTSOURCEPLAYSTORE,
        ..
      ),

    -- * Report_CrossDimensionReachCriteria_Dimension
    Report_CrossDimensionReachCriteria_Dimension
      (
        Report_CrossDimensionReachCriteria_Dimension_Advertiser,
        Report_CrossDimensionReachCriteria_Dimension_Campaign,
        Report_CrossDimensionReachCriteria_Dimension_SITEBYADVERTISER,
        Report_CrossDimensionReachCriteria_Dimension_SITEBYCAMPAIGN,
        ..
      ),

    -- * Report_Delivery_EmailOwnerDeliveryType
    Report_Delivery_EmailOwnerDeliveryType
      (
        Report_Delivery_EmailOwnerDeliveryType_Link,
        Report_Delivery_EmailOwnerDeliveryType_Attachment,
        ..
      ),

    -- * Report_Format
    Report_Format
      (
        Report_Format_Csv,
        Report_Format_Excel,
        ..
      ),

    -- * Report_Schedule_RepeatsOnWeekDaysItem
    Report_Schedule_RepeatsOnWeekDaysItem
      (
        Report_Schedule_RepeatsOnWeekDaysItem_Sunday,
        Report_Schedule_RepeatsOnWeekDaysItem_Monday,
        Report_Schedule_RepeatsOnWeekDaysItem_Tuesday,
        Report_Schedule_RepeatsOnWeekDaysItem_Wednesday,
        Report_Schedule_RepeatsOnWeekDaysItem_Thursday,
        Report_Schedule_RepeatsOnWeekDaysItem_Friday,
        Report_Schedule_RepeatsOnWeekDaysItem_Saturday,
        ..
      ),

    -- * Report_Schedule_RunsOnDayOfMonth
    Report_Schedule_RunsOnDayOfMonth
      (
        Report_Schedule_RunsOnDayOfMonth_DAYOFMONTH,
        Report_Schedule_RunsOnDayOfMonth_WEEKOFMONTH,
        ..
      ),

    -- * Report_Type
    Report_Type
      (
        Report_Type_Standard,
        Report_Type_Reach,
        Report_Type_PATHTOCONVERSION,
        Report_Type_CROSSDIMENSIONREACH,
        Report_Type_Floodlight,
        Report_Type_Path,
        Report_Type_PATHATTRIBUTION,
        ..
      ),

    -- * SiteContact_ContactType
    SiteContact_ContactType
      (
        SiteContact_ContactType_SALESPERSON,
        SiteContact_ContactType_Trafficker,
        ..
      ),

    -- * SiteSettings_VpaidAdapterChoiceTemplate
    SiteSettings_VpaidAdapterChoiceTemplate
      (
        SiteSettings_VpaidAdapterChoiceTemplate_Default,
        SiteSettings_VpaidAdapterChoiceTemplate_Flash,
        SiteSettings_VpaidAdapterChoiceTemplate_HTML5,
        SiteSettings_VpaidAdapterChoiceTemplate_Both,
        ..
      ),

    -- * SiteVideoSettings_Orientation
    SiteVideoSettings_Orientation
      (
        SiteVideoSettings_Orientation_Any,
        SiteVideoSettings_Orientation_Landscape,
        SiteVideoSettings_Orientation_Portrait,
        ..
      ),

    -- * SortedDimension_SortOrder
    SortedDimension_SortOrder
      (
        SortedDimension_SortOrder_Ascending,
        SortedDimension_SortOrder_Descending,
        ..
      ),

    -- * TagData_Format
    TagData_Format
      (
        TagData_Format_PLACEMENTTAGSTANDARD,
        TagData_Format_PLACEMENTTAGIFRAMEJAVASCRIPT,
        TagData_Format_PLACEMENTTAGIFRAMEILAYER,
        TagData_Format_PLACEMENTTAGINTERNALREDIRECT,
        TagData_Format_PLACEMENTTAGJAVASCRIPT,
        TagData_Format_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT,
        TagData_Format_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT,
        TagData_Format_PLACEMENTTAGINTERSTITIALJAVASCRIPT,
        TagData_Format_PLACEMENTTAGCLICKCOMMANDS,
        TagData_Format_PLACEMENTTAGINSTREAMVIDEOPREFETCH,
        TagData_Format_PLACEMENTTAGTRACKING,
        TagData_Format_PLACEMENTTAGTRACKINGIFRAME,
        TagData_Format_PLACEMENTTAGTRACKINGJAVASCRIPT,
        TagData_Format_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3,
        TagData_Format_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY,
        TagData_Format_PLACEMENTTAGJAVASCRIPTLEGACY,
        TagData_Format_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY,
        TagData_Format_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY,
        TagData_Format_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4,
        TagData_Format_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT,
        ..
      ),

    -- * TagSetting_KeywordOption
    TagSetting_KeywordOption
      (
        TagSetting_KeywordOption_PLACEHOLDERWITHLISTOFKEYWORDS,
        TagSetting_KeywordOption_Ignore,
        TagSetting_KeywordOption_GENERATESEPARATETAGFOREACHKEYWORD,
        ..
      ),

    -- * TargetWindow_TargetWindowOption
    TargetWindow_TargetWindowOption
      (
        TargetWindow_TargetWindowOption_NEWWINDOW,
        TargetWindow_TargetWindowOption_CURRENTWINDOW,
        TargetWindow_TargetWindowOption_Custom,
        ..
      ),

    -- * TargetableRemarketingList_ListSource
    TargetableRemarketingList_ListSource
      (
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEOTHER,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEADX,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDFP,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEXFP,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDFA,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEGA,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEYOUTUBE,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDBM,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEGPLUS,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDMP,
        TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEPLAYSTORE,
        ..
      ),

    -- * ThirdPartyTrackingUrl_ThirdPartyUrlType
    ThirdPartyTrackingUrl_ThirdPartyUrlType
      (
        ThirdPartyTrackingUrl_ThirdPartyUrlType_Impression,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_CLICKTRACKING,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSTART,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOFIRSTQUARTILE,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOMIDPOINT,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOTHIRDQUARTILE,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOCOMPLETE,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOMUTE,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOPAUSE,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOREWIND,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOFULLSCREEN,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSTOP,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOCUSTOM,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_Survey,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIAIMPRESSION,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIARMIMPRESSION,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIABACKUPIMPRESSION,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSKIP,
        ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOPROGRESS,
        ..
      ),

    -- * UniversalAdId_Registry
    UniversalAdId_Registry
      (
        UniversalAdId_Registry_Other,
        UniversalAdId_Registry_ADIDOFFICIAL,
        UniversalAdId_Registry_Clearcast,
        UniversalAdId_Registry_Dcm,
        ..
      ),

    -- * UserDefinedVariableConfiguration_DataType
    UserDefinedVariableConfiguration_DataType
      (
        UserDefinedVariableConfiguration_DataType_String,
        UserDefinedVariableConfiguration_DataType_Number,
        ..
      ),

    -- * UserDefinedVariableConfiguration_VariableType
    UserDefinedVariableConfiguration_VariableType
      (
        UserDefinedVariableConfiguration_VariableType_U1,
        UserDefinedVariableConfiguration_VariableType_U2,
        UserDefinedVariableConfiguration_VariableType_U3,
        UserDefinedVariableConfiguration_VariableType_U4,
        UserDefinedVariableConfiguration_VariableType_U5,
        UserDefinedVariableConfiguration_VariableType_U6,
        UserDefinedVariableConfiguration_VariableType_U7,
        UserDefinedVariableConfiguration_VariableType_U8,
        UserDefinedVariableConfiguration_VariableType_U9,
        UserDefinedVariableConfiguration_VariableType_U10,
        UserDefinedVariableConfiguration_VariableType_U11,
        UserDefinedVariableConfiguration_VariableType_U12,
        UserDefinedVariableConfiguration_VariableType_U13,
        UserDefinedVariableConfiguration_VariableType_U14,
        UserDefinedVariableConfiguration_VariableType_U15,
        UserDefinedVariableConfiguration_VariableType_U16,
        UserDefinedVariableConfiguration_VariableType_U17,
        UserDefinedVariableConfiguration_VariableType_U18,
        UserDefinedVariableConfiguration_VariableType_U19,
        UserDefinedVariableConfiguration_VariableType_U20,
        UserDefinedVariableConfiguration_VariableType_U21,
        UserDefinedVariableConfiguration_VariableType_U22,
        UserDefinedVariableConfiguration_VariableType_U23,
        UserDefinedVariableConfiguration_VariableType_U24,
        UserDefinedVariableConfiguration_VariableType_U25,
        UserDefinedVariableConfiguration_VariableType_U26,
        UserDefinedVariableConfiguration_VariableType_U27,
        UserDefinedVariableConfiguration_VariableType_U28,
        UserDefinedVariableConfiguration_VariableType_U29,
        UserDefinedVariableConfiguration_VariableType_U30,
        UserDefinedVariableConfiguration_VariableType_U31,
        UserDefinedVariableConfiguration_VariableType_U32,
        UserDefinedVariableConfiguration_VariableType_U33,
        UserDefinedVariableConfiguration_VariableType_U34,
        UserDefinedVariableConfiguration_VariableType_U35,
        UserDefinedVariableConfiguration_VariableType_U36,
        UserDefinedVariableConfiguration_VariableType_U37,
        UserDefinedVariableConfiguration_VariableType_U38,
        UserDefinedVariableConfiguration_VariableType_U39,
        UserDefinedVariableConfiguration_VariableType_U40,
        UserDefinedVariableConfiguration_VariableType_U41,
        UserDefinedVariableConfiguration_VariableType_U42,
        UserDefinedVariableConfiguration_VariableType_U43,
        UserDefinedVariableConfiguration_VariableType_U44,
        UserDefinedVariableConfiguration_VariableType_U45,
        UserDefinedVariableConfiguration_VariableType_U46,
        UserDefinedVariableConfiguration_VariableType_U47,
        UserDefinedVariableConfiguration_VariableType_U48,
        UserDefinedVariableConfiguration_VariableType_U49,
        UserDefinedVariableConfiguration_VariableType_U50,
        UserDefinedVariableConfiguration_VariableType_U51,
        UserDefinedVariableConfiguration_VariableType_U52,
        UserDefinedVariableConfiguration_VariableType_U53,
        UserDefinedVariableConfiguration_VariableType_U54,
        UserDefinedVariableConfiguration_VariableType_U55,
        UserDefinedVariableConfiguration_VariableType_U56,
        UserDefinedVariableConfiguration_VariableType_U57,
        UserDefinedVariableConfiguration_VariableType_U58,
        UserDefinedVariableConfiguration_VariableType_U59,
        UserDefinedVariableConfiguration_VariableType_U60,
        UserDefinedVariableConfiguration_VariableType_U61,
        UserDefinedVariableConfiguration_VariableType_U62,
        UserDefinedVariableConfiguration_VariableType_U63,
        UserDefinedVariableConfiguration_VariableType_U64,
        UserDefinedVariableConfiguration_VariableType_U65,
        UserDefinedVariableConfiguration_VariableType_U66,
        UserDefinedVariableConfiguration_VariableType_U67,
        UserDefinedVariableConfiguration_VariableType_U68,
        UserDefinedVariableConfiguration_VariableType_U69,
        UserDefinedVariableConfiguration_VariableType_U70,
        UserDefinedVariableConfiguration_VariableType_U71,
        UserDefinedVariableConfiguration_VariableType_U72,
        UserDefinedVariableConfiguration_VariableType_U73,
        UserDefinedVariableConfiguration_VariableType_U74,
        UserDefinedVariableConfiguration_VariableType_U75,
        UserDefinedVariableConfiguration_VariableType_U76,
        UserDefinedVariableConfiguration_VariableType_U77,
        UserDefinedVariableConfiguration_VariableType_U78,
        UserDefinedVariableConfiguration_VariableType_U79,
        UserDefinedVariableConfiguration_VariableType_U80,
        UserDefinedVariableConfiguration_VariableType_U81,
        UserDefinedVariableConfiguration_VariableType_U82,
        UserDefinedVariableConfiguration_VariableType_U83,
        UserDefinedVariableConfiguration_VariableType_U84,
        UserDefinedVariableConfiguration_VariableType_U85,
        UserDefinedVariableConfiguration_VariableType_U86,
        UserDefinedVariableConfiguration_VariableType_U87,
        UserDefinedVariableConfiguration_VariableType_U88,
        UserDefinedVariableConfiguration_VariableType_U89,
        UserDefinedVariableConfiguration_VariableType_U90,
        UserDefinedVariableConfiguration_VariableType_U91,
        UserDefinedVariableConfiguration_VariableType_U92,
        UserDefinedVariableConfiguration_VariableType_U93,
        UserDefinedVariableConfiguration_VariableType_U94,
        UserDefinedVariableConfiguration_VariableType_U95,
        UserDefinedVariableConfiguration_VariableType_U96,
        UserDefinedVariableConfiguration_VariableType_U97,
        UserDefinedVariableConfiguration_VariableType_U98,
        UserDefinedVariableConfiguration_VariableType_U99,
        UserDefinedVariableConfiguration_VariableType_U100,
        ..
      ),

    -- * UserRolePermission_Availability
    UserRolePermission_Availability
      (
        UserRolePermission_Availability_NOTAVAILABLEBYDEFAULT,
        UserRolePermission_Availability_ACCOUNTBYDEFAULT,
        UserRolePermission_Availability_SUBACCOUNTANDACCOUNTBYDEFAULT,
        UserRolePermission_Availability_ACCOUNTALWAYS,
        UserRolePermission_Availability_SUBACCOUNTANDACCOUNTALWAYS,
        UserRolePermission_Availability_USERPROFILEONLY,
        ..
      ),

    -- * VideoFormat_FileType
    VideoFormat_FileType
      (
        VideoFormat_FileType_Flv,
        VideoFormat_FileType_Threegpp,
        VideoFormat_FileType_MP4,
        VideoFormat_FileType_Webm,
        VideoFormat_FileType_M3U8,
        ..
      ),

    -- * VideoSettings_Orientation
    VideoSettings_Orientation
      (
        VideoSettings_Orientation_Any,
        VideoSettings_Orientation_Landscape,
        VideoSettings_Orientation_Portrait,
        ..
      ),

    -- * AccountUserProfilesListSortField
    AccountUserProfilesListSortField
      (
        AccountUserProfilesListSortField_ID,
        AccountUserProfilesListSortField_Name,
        ..
      ),

    -- * AccountUserProfilesListSortOrder
    AccountUserProfilesListSortOrder
      (
        AccountUserProfilesListSortOrder_Ascending,
        AccountUserProfilesListSortOrder_Descending,
        ..
      ),

    -- * AccountsListSortField
    AccountsListSortField
      (
        AccountsListSortField_ID,
        AccountsListSortField_Name,
        ..
      ),

    -- * AccountsListSortOrder
    AccountsListSortOrder
      (
        AccountsListSortOrder_Ascending,
        AccountsListSortOrder_Descending,
        ..
      ),

    -- * AdsListCompatibility
    AdsListCompatibility
      (
        AdsListCompatibility_Display,
        AdsListCompatibility_DISPLAYINTERSTITIAL,
        AdsListCompatibility_App,
        AdsListCompatibility_APPINTERSTITIAL,
        AdsListCompatibility_INSTREAMVIDEO,
        AdsListCompatibility_INSTREAMAUDIO,
        ..
      ),

    -- * AdsListSortField
    AdsListSortField
      (
        AdsListSortField_ID,
        AdsListSortField_Name,
        ..
      ),

    -- * AdsListSortOrder
    AdsListSortOrder
      (
        AdsListSortOrder_Ascending,
        AdsListSortOrder_Descending,
        ..
      ),

    -- * AdsListType
    AdsListType
      (
        AdsListType_ADSERVINGSTANDARDAD,
        AdsListType_ADSERVINGDEFAULTAD,
        AdsListType_ADSERVINGCLICKTRACKER,
        AdsListType_ADSERVINGTRACKING,
        AdsListType_ADSERVINGBRANDSAFEAD,
        ..
      ),

    -- * AdvertiserGroupsListSortField
    AdvertiserGroupsListSortField
      (
        AdvertiserGroupsListSortField_ID,
        AdvertiserGroupsListSortField_Name,
        ..
      ),

    -- * AdvertiserGroupsListSortOrder
    AdvertiserGroupsListSortOrder
      (
        AdvertiserGroupsListSortOrder_Ascending,
        AdvertiserGroupsListSortOrder_Descending,
        ..
      ),

    -- * AdvertiserLandingPagesListSortField
    AdvertiserLandingPagesListSortField
      (
        AdvertiserLandingPagesListSortField_ID,
        AdvertiserLandingPagesListSortField_Name,
        ..
      ),

    -- * AdvertiserLandingPagesListSortOrder
    AdvertiserLandingPagesListSortOrder
      (
        AdvertiserLandingPagesListSortOrder_Ascending,
        AdvertiserLandingPagesListSortOrder_Descending,
        ..
      ),

    -- * AdvertisersListSortField
    AdvertisersListSortField
      (
        AdvertisersListSortField_ID,
        AdvertisersListSortField_Name,
        ..
      ),

    -- * AdvertisersListSortOrder
    AdvertisersListSortOrder
      (
        AdvertisersListSortOrder_Ascending,
        AdvertisersListSortOrder_Descending,
        ..
      ),

    -- * AdvertisersListStatus
    AdvertisersListStatus
      (
        AdvertisersListStatus_Approved,
        AdvertisersListStatus_ONHOLD,
        ..
      ),

    -- * CampaignCreativeAssociationsListSortOrder
    CampaignCreativeAssociationsListSortOrder
      (
        CampaignCreativeAssociationsListSortOrder_Ascending,
        CampaignCreativeAssociationsListSortOrder_Descending,
        ..
      ),

    -- * CampaignsListSortField
    CampaignsListSortField
      (
        CampaignsListSortField_ID,
        CampaignsListSortField_Name,
        ..
      ),

    -- * CampaignsListSortOrder
    CampaignsListSortOrder
      (
        CampaignsListSortOrder_Ascending,
        CampaignsListSortOrder_Descending,
        ..
      ),

    -- * ChangeLogsListAction
    ChangeLogsListAction
      (
        ChangeLogsListAction_ACTIONCREATE,
        ChangeLogsListAction_ACTIONUPDATE,
        ChangeLogsListAction_ACTIONDELETE,
        ChangeLogsListAction_ACTIONENABLE,
        ChangeLogsListAction_ACTIONDISABLE,
        ChangeLogsListAction_ACTIONADD,
        ChangeLogsListAction_ACTIONREMOVE,
        ChangeLogsListAction_ACTIONMARKASDEFAULT,
        ChangeLogsListAction_ACTIONASSOCIATE,
        ChangeLogsListAction_ACTIONASSIGN,
        ChangeLogsListAction_ACTIONUNASSIGN,
        ChangeLogsListAction_ACTIONSEND,
        ChangeLogsListAction_ACTIONLINK,
        ChangeLogsListAction_ACTIONUNLINK,
        ChangeLogsListAction_ACTIONPUSH,
        ChangeLogsListAction_ACTIONEMAILTAGS,
        ChangeLogsListAction_ACTIONSHARE,
        ..
      ),

    -- * ChangeLogsListObjectType
    ChangeLogsListObjectType
      (
        ChangeLogsListObjectType_OBJECTADVERTISER,
        ChangeLogsListObjectType_OBJECTFLOODLIGHTCONFIGURATION,
        ChangeLogsListObjectType_OBJECTAD,
        ChangeLogsListObjectType_OBJECTFLOODLIGHTACTVITY,
        ChangeLogsListObjectType_OBJECTCAMPAIGN,
        ChangeLogsListObjectType_OBJECTFLOODLIGHTACTIVITYGROUP,
        ChangeLogsListObjectType_OBJECTCREATIVE,
        ChangeLogsListObjectType_OBJECTPLACEMENT,
        ChangeLogsListObjectType_OBJECTDFASITE,
        ChangeLogsListObjectType_OBJECTUSERROLE,
        ChangeLogsListObjectType_OBJECTUSERPROFILE,
        ChangeLogsListObjectType_OBJECTADVERTISERGROUP,
        ChangeLogsListObjectType_OBJECTACCOUNT,
        ChangeLogsListObjectType_OBJECTSUBACCOUNT,
        ChangeLogsListObjectType_OBJECTRICHMEDIACREATIVE,
        ChangeLogsListObjectType_OBJECTINSTREAMCREATIVE,
        ChangeLogsListObjectType_OBJECTMEDIAORDER,
        ChangeLogsListObjectType_OBJECTCONTENTCATEGORY,
        ChangeLogsListObjectType_OBJECTPLACEMENTSTRATEGY,
        ChangeLogsListObjectType_OBJECTSDSITE,
        ChangeLogsListObjectType_OBJECTSIZE,
        ChangeLogsListObjectType_OBJECTCREATIVEGROUP,
        ChangeLogsListObjectType_OBJECTCREATIVEASSET,
        ChangeLogsListObjectType_OBJECTUSERPROFILEFILTER,
        ChangeLogsListObjectType_OBJECTLANDINGPAGE,
        ChangeLogsListObjectType_OBJECTCREATIVEFIELD,
        ChangeLogsListObjectType_OBJECTREMARKETINGLIST,
        ChangeLogsListObjectType_OBJECTPROVIDEDLISTCLIENT,
        ChangeLogsListObjectType_OBJECTEVENTTAG,
        ChangeLogsListObjectType_OBJECTCREATIVEBUNDLE,
        ChangeLogsListObjectType_OBJECTBILLINGACCOUNTGROUP,
        ChangeLogsListObjectType_OBJECTBILLINGFEATURE,
        ChangeLogsListObjectType_OBJECTRATECARD,
        ChangeLogsListObjectType_OBJECTACCOUNTBILLINGFEATURE,
        ChangeLogsListObjectType_OBJECTBILLINGMINIMUMFEE,
        ChangeLogsListObjectType_OBJECTBILLINGPROFILE,
        ChangeLogsListObjectType_OBJECTPLAYSTORELINK,
        ChangeLogsListObjectType_OBJECTTARGETINGTEMPLATE,
        ChangeLogsListObjectType_OBJECTSEARCHLIFTSTUDY,
        ChangeLogsListObjectType_OBJECTFLOODLIGHTDV360LINK,
        ..
      ),

    -- * ContentCategoriesListSortField
    ContentCategoriesListSortField
      (
        ContentCategoriesListSortField_ID,
        ContentCategoriesListSortField_Name,
        ..
      ),

    -- * ContentCategoriesListSortOrder
    ContentCategoriesListSortOrder
      (
        ContentCategoriesListSortOrder_Ascending,
        ContentCategoriesListSortOrder_Descending,
        ..
      ),

    -- * CreativeFieldValuesListSortField
    CreativeFieldValuesListSortField
      (
        CreativeFieldValuesListSortField_ID,
        CreativeFieldValuesListSortField_Value,
        ..
      ),

    -- * CreativeFieldValuesListSortOrder
    CreativeFieldValuesListSortOrder
      (
        CreativeFieldValuesListSortOrder_Ascending,
        CreativeFieldValuesListSortOrder_Descending,
        ..
      ),

    -- * CreativeFieldsListSortField
    CreativeFieldsListSortField
      (
        CreativeFieldsListSortField_ID,
        CreativeFieldsListSortField_Name,
        ..
      ),

    -- * CreativeFieldsListSortOrder
    CreativeFieldsListSortOrder
      (
        CreativeFieldsListSortOrder_Ascending,
        CreativeFieldsListSortOrder_Descending,
        ..
      ),

    -- * CreativeGroupsListSortField
    CreativeGroupsListSortField
      (
        CreativeGroupsListSortField_ID,
        CreativeGroupsListSortField_Name,
        ..
      ),

    -- * CreativeGroupsListSortOrder
    CreativeGroupsListSortOrder
      (
        CreativeGroupsListSortOrder_Ascending,
        CreativeGroupsListSortOrder_Descending,
        ..
      ),

    -- * CreativesListSortField
    CreativesListSortField
      (
        CreativesListSortField_ID,
        CreativesListSortField_Name,
        ..
      ),

    -- * CreativesListSortOrder
    CreativesListSortOrder
      (
        CreativesListSortOrder_Ascending,
        CreativesListSortOrder_Descending,
        ..
      ),

    -- * CreativesListTypes
    CreativesListTypes
      (
        CreativesListTypes_Image,
        CreativesListTypes_DISPLAYREDIRECT,
        CreativesListTypes_CUSTOMDISPLAY,
        CreativesListTypes_INTERNALREDIRECT,
        CreativesListTypes_CUSTOMDISPLAYINTERSTITIAL,
        CreativesListTypes_INTERSTITIALINTERNALREDIRECT,
        CreativesListTypes_TRACKINGTEXT,
        CreativesListTypes_RICHMEDIADISPLAYBANNER,
        CreativesListTypes_RICHMEDIAINPAGEFLOATING,
        CreativesListTypes_RICHMEDIAIMEXPAND,
        CreativesListTypes_RICHMEDIADISPLAYEXPANDING,
        CreativesListTypes_RICHMEDIADISPLAYINTERSTITIAL,
        CreativesListTypes_RICHMEDIADISPLAYMULTIFLOATINGINTERSTITIAL,
        CreativesListTypes_RICHMEDIAMOBILEINAPP,
        CreativesListTypes_FLASHINPAGE,
        CreativesListTypes_INSTREAMVIDEO,
        CreativesListTypes_VPAIDLINEARVIDEO,
        CreativesListTypes_VPAIDNONLINEARVIDEO,
        CreativesListTypes_INSTREAMVIDEOREDIRECT,
        CreativesListTypes_RICHMEDIAPEELDOWN,
        CreativesListTypes_HTML5BANNER,
        CreativesListTypes_Display,
        CreativesListTypes_DISPLAYIMAGEGALLERY,
        CreativesListTypes_BRANDSAFEDEFAULTINSTREAMVIDEO,
        CreativesListTypes_INSTREAMAUDIO,
        ..
      ),

    -- * DirectorySitesListSortField
    DirectorySitesListSortField
      (
        DirectorySitesListSortField_ID,
        DirectorySitesListSortField_Name,
        ..
      ),

    -- * DirectorySitesListSortOrder
    DirectorySitesListSortOrder
      (
        DirectorySitesListSortOrder_Ascending,
        DirectorySitesListSortOrder_Descending,
        ..
      ),

    -- * DynamicTargetingKeysDeleteObjectType
    DynamicTargetingKeysDeleteObjectType
      (
        DynamicTargetingKeysDeleteObjectType_OBJECTADVERTISER,
        DynamicTargetingKeysDeleteObjectType_OBJECTAD,
        DynamicTargetingKeysDeleteObjectType_OBJECTCREATIVE,
        DynamicTargetingKeysDeleteObjectType_OBJECTPLACEMENT,
        ..
      ),

    -- * DynamicTargetingKeysListObjectType
    DynamicTargetingKeysListObjectType
      (
        DynamicTargetingKeysListObjectType_OBJECTADVERTISER,
        DynamicTargetingKeysListObjectType_OBJECTAD,
        DynamicTargetingKeysListObjectType_OBJECTCREATIVE,
        DynamicTargetingKeysListObjectType_OBJECTPLACEMENT,
        ..
      ),

    -- * EventTagsListEventTagTypes
    EventTagsListEventTagTypes
      (
        EventTagsListEventTagTypes_IMPRESSIONIMAGEEVENTTAG,
        EventTagsListEventTagTypes_IMPRESSIONJAVASCRIPTEVENTTAG,
        EventTagsListEventTagTypes_CLICKTHROUGHEVENTTAG,
        ..
      ),

    -- * EventTagsListSortField
    EventTagsListSortField
      (
        EventTagsListSortField_ID,
        EventTagsListSortField_Name,
        ..
      ),

    -- * EventTagsListSortOrder
    EventTagsListSortOrder
      (
        EventTagsListSortOrder_Ascending,
        EventTagsListSortOrder_Descending,
        ..
      ),

    -- * FilesListScope
    FilesListScope
      (
        FilesListScope_All,
        FilesListScope_Mine,
        FilesListScope_SHAREDWITHME,
        ..
      ),

    -- * FilesListSortField
    FilesListSortField
      (
        FilesListSortField_ID,
        FilesListSortField_LASTMODIFIEDTIME,
        ..
      ),

    -- * FilesListSortOrder
    FilesListSortOrder
      (
        FilesListSortOrder_Ascending,
        FilesListSortOrder_Descending,
        ..
      ),

    -- * FloodlightActivitiesListFloodlightActivityGroupType
    FloodlightActivitiesListFloodlightActivityGroupType
      (
        FloodlightActivitiesListFloodlightActivityGroupType_Counter,
        FloodlightActivitiesListFloodlightActivityGroupType_Sale,
        ..
      ),

    -- * FloodlightActivitiesListSortField
    FloodlightActivitiesListSortField
      (
        FloodlightActivitiesListSortField_ID,
        FloodlightActivitiesListSortField_Name,
        ..
      ),

    -- * FloodlightActivitiesListSortOrder
    FloodlightActivitiesListSortOrder
      (
        FloodlightActivitiesListSortOrder_Ascending,
        FloodlightActivitiesListSortOrder_Descending,
        ..
      ),

    -- * FloodlightActivityGroupsListSortField
    FloodlightActivityGroupsListSortField
      (
        FloodlightActivityGroupsListSortField_ID,
        FloodlightActivityGroupsListSortField_Name,
        ..
      ),

    -- * FloodlightActivityGroupsListSortOrder
    FloodlightActivityGroupsListSortOrder
      (
        FloodlightActivityGroupsListSortOrder_Ascending,
        FloodlightActivityGroupsListSortOrder_Descending,
        ..
      ),

    -- * FloodlightActivityGroupsListType
    FloodlightActivityGroupsListType
      (
        FloodlightActivityGroupsListType_Counter,
        FloodlightActivityGroupsListType_Sale,
        ..
      ),

    -- * InventoryItemsListSortField
    InventoryItemsListSortField
      (
        InventoryItemsListSortField_ID,
        InventoryItemsListSortField_Name,
        ..
      ),

    -- * InventoryItemsListSortOrder
    InventoryItemsListSortOrder
      (
        InventoryItemsListSortOrder_Ascending,
        InventoryItemsListSortOrder_Descending,
        ..
      ),

    -- * InventoryItemsListType
    InventoryItemsListType
      (
        InventoryItemsListType_PLANNINGPLACEMENTTYPEREGULAR,
        InventoryItemsListType_PLANNINGPLACEMENTTYPECREDIT,
        ..
      ),

    -- * MobileAppsListDirectories
    MobileAppsListDirectories
      (
        MobileAppsListDirectories_Unknown,
        MobileAppsListDirectories_APPLEAPPSTORE,
        MobileAppsListDirectories_GOOGLEPLAYSTORE,
        ..
      ),

    -- * OrderDocumentsListSortField
    OrderDocumentsListSortField
      (
        OrderDocumentsListSortField_ID,
        OrderDocumentsListSortField_Name,
        ..
      ),

    -- * OrderDocumentsListSortOrder
    OrderDocumentsListSortOrder
      (
        OrderDocumentsListSortOrder_Ascending,
        OrderDocumentsListSortOrder_Descending,
        ..
      ),

    -- * OrdersListSortField
    OrdersListSortField
      (
        OrdersListSortField_ID,
        OrdersListSortField_Name,
        ..
      ),

    -- * OrdersListSortOrder
    OrdersListSortOrder
      (
        OrdersListSortOrder_Ascending,
        OrdersListSortOrder_Descending,
        ..
      ),

    -- * PlacementGroupsListPlacementGroupType
    PlacementGroupsListPlacementGroupType
      (
        PlacementGroupsListPlacementGroupType_PLACEMENTPACKAGE,
        PlacementGroupsListPlacementGroupType_PLACEMENTROADBLOCK,
        ..
      ),

    -- * PlacementGroupsListPricingTypes
    PlacementGroupsListPricingTypes
      (
        PlacementGroupsListPricingTypes_PRICINGTYPECPM,
        PlacementGroupsListPricingTypes_PRICINGTYPECPC,
        PlacementGroupsListPricingTypes_PRICINGTYPECPA,
        PlacementGroupsListPricingTypes_PRICINGTYPEFLATRATEIMPRESSIONS,
        PlacementGroupsListPricingTypes_PRICINGTYPEFLATRATECLICKS,
        PlacementGroupsListPricingTypes_PRICINGTYPECPMACTIVEVIEW,
        ..
      ),

    -- * PlacementGroupsListSortField
    PlacementGroupsListSortField
      (
        PlacementGroupsListSortField_ID,
        PlacementGroupsListSortField_Name,
        ..
      ),

    -- * PlacementGroupsListSortOrder
    PlacementGroupsListSortOrder
      (
        PlacementGroupsListSortOrder_Ascending,
        PlacementGroupsListSortOrder_Descending,
        ..
      ),

    -- * PlacementStrategiesListSortField
    PlacementStrategiesListSortField
      (
        PlacementStrategiesListSortField_ID,
        PlacementStrategiesListSortField_Name,
        ..
      ),

    -- * PlacementStrategiesListSortOrder
    PlacementStrategiesListSortOrder
      (
        PlacementStrategiesListSortOrder_Ascending,
        PlacementStrategiesListSortOrder_Descending,
        ..
      ),

    -- * PlacementsGeneratetagsTagFormats
    PlacementsGeneratetagsTagFormats
      (
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGSTANDARD,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEJAVASCRIPT,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEILAYER,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERNALREDIRECT,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGJAVASCRIPT,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALJAVASCRIPT,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGCLICKCOMMANDS,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGINSTREAMVIDEOPREFETCH,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKING,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGIFRAME,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGJAVASCRIPT,
        PlacementsGeneratetagsTagFormats_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGJAVASCRIPTLEGACY,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY,
        PlacementsGeneratetagsTagFormats_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4,
        PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT,
        ..
      ),

    -- * PlacementsListCompatibilities
    PlacementsListCompatibilities
      (
        PlacementsListCompatibilities_Display,
        PlacementsListCompatibilities_DISPLAYINTERSTITIAL,
        PlacementsListCompatibilities_App,
        PlacementsListCompatibilities_APPINTERSTITIAL,
        PlacementsListCompatibilities_INSTREAMVIDEO,
        PlacementsListCompatibilities_INSTREAMAUDIO,
        ..
      ),

    -- * PlacementsListPaymentSource
    PlacementsListPaymentSource
      (
        PlacementsListPaymentSource_PLACEMENTAGENCYPAID,
        PlacementsListPaymentSource_PLACEMENTPUBLISHERPAID,
        ..
      ),

    -- * PlacementsListPricingTypes
    PlacementsListPricingTypes
      (
        PlacementsListPricingTypes_PRICINGTYPECPM,
        PlacementsListPricingTypes_PRICINGTYPECPC,
        PlacementsListPricingTypes_PRICINGTYPECPA,
        PlacementsListPricingTypes_PRICINGTYPEFLATRATEIMPRESSIONS,
        PlacementsListPricingTypes_PRICINGTYPEFLATRATECLICKS,
        PlacementsListPricingTypes_PRICINGTYPECPMACTIVEVIEW,
        ..
      ),

    -- * PlacementsListSortField
    PlacementsListSortField
      (
        PlacementsListSortField_ID,
        PlacementsListSortField_Name,
        ..
      ),

    -- * PlacementsListSortOrder
    PlacementsListSortOrder
      (
        PlacementsListSortOrder_Ascending,
        PlacementsListSortOrder_Descending,
        ..
      ),

    -- * ProjectsListSortField
    ProjectsListSortField
      (
        ProjectsListSortField_ID,
        ProjectsListSortField_Name,
        ..
      ),

    -- * ProjectsListSortOrder
    ProjectsListSortOrder
      (
        ProjectsListSortOrder_Ascending,
        ProjectsListSortOrder_Descending,
        ..
      ),

    -- * RemarketingListsListSortField
    RemarketingListsListSortField
      (
        RemarketingListsListSortField_ID,
        RemarketingListsListSortField_Name,
        ..
      ),

    -- * RemarketingListsListSortOrder
    RemarketingListsListSortOrder
      (
        RemarketingListsListSortOrder_Ascending,
        RemarketingListsListSortOrder_Descending,
        ..
      ),

    -- * ReportsFilesListSortField
    ReportsFilesListSortField
      (
        ReportsFilesListSortField_ID,
        ReportsFilesListSortField_LASTMODIFIEDTIME,
        ..
      ),

    -- * ReportsFilesListSortOrder
    ReportsFilesListSortOrder
      (
        ReportsFilesListSortOrder_Ascending,
        ReportsFilesListSortOrder_Descending,
        ..
      ),

    -- * ReportsListScope
    ReportsListScope
      (
        ReportsListScope_All,
        ReportsListScope_Mine,
        ..
      ),

    -- * ReportsListSortField
    ReportsListSortField
      (
        ReportsListSortField_ID,
        ReportsListSortField_LASTMODIFIEDTIME,
        ReportsListSortField_Name,
        ..
      ),

    -- * ReportsListSortOrder
    ReportsListSortOrder
      (
        ReportsListSortOrder_Ascending,
        ReportsListSortOrder_Descending,
        ..
      ),

    -- * SitesListSortField
    SitesListSortField
      (
        SitesListSortField_ID,
        SitesListSortField_Name,
        ..
      ),

    -- * SitesListSortOrder
    SitesListSortOrder
      (
        SitesListSortOrder_Ascending,
        SitesListSortOrder_Descending,
        ..
      ),

    -- * SubaccountsListSortField
    SubaccountsListSortField
      (
        SubaccountsListSortField_ID,
        SubaccountsListSortField_Name,
        ..
      ),

    -- * SubaccountsListSortOrder
    SubaccountsListSortOrder
      (
        SubaccountsListSortOrder_Ascending,
        SubaccountsListSortOrder_Descending,
        ..
      ),

    -- * TargetableRemarketingListsListSortField
    TargetableRemarketingListsListSortField
      (
        TargetableRemarketingListsListSortField_ID,
        TargetableRemarketingListsListSortField_Name,
        ..
      ),

    -- * TargetableRemarketingListsListSortOrder
    TargetableRemarketingListsListSortOrder
      (
        TargetableRemarketingListsListSortOrder_Ascending,
        TargetableRemarketingListsListSortOrder_Descending,
        ..
      ),

    -- * TargetingTemplatesListSortField
    TargetingTemplatesListSortField
      (
        TargetingTemplatesListSortField_ID,
        TargetingTemplatesListSortField_Name,
        ..
      ),

    -- * TargetingTemplatesListSortOrder
    TargetingTemplatesListSortOrder
      (
        TargetingTemplatesListSortOrder_Ascending,
        TargetingTemplatesListSortOrder_Descending,
        ..
      ),

    -- * UserRolesListSortField
    UserRolesListSortField
      (
        UserRolesListSortField_ID,
        UserRolesListSortField_Name,
        ..
      ),

    -- * UserRolesListSortOrder
    UserRolesListSortOrder
      (
        UserRolesListSortOrder_Ascending,
        UserRolesListSortOrder_Descending,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Profile for this account. This is a read-only field that can be left blank.
newtype Account_AccountProfile = Account_AccountProfile { fromAccount_AccountProfile :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Account_AccountProfile_ACCOUNTPROFILEBASIC :: Account_AccountProfile
pattern Account_AccountProfile_ACCOUNTPROFILEBASIC = Account_AccountProfile "ACCOUNT_PROFILE_BASIC"

-- | 
pattern Account_AccountProfile_ACCOUNTPROFILESTANDARD :: Account_AccountProfile
pattern Account_AccountProfile_ACCOUNTPROFILESTANDARD = Account_AccountProfile "ACCOUNT_PROFILE_STANDARD"

{-# COMPLETE
  Account_AccountProfile_ACCOUNTPROFILEBASIC,
  Account_AccountProfile_ACCOUNTPROFILESTANDARD,
  Account_AccountProfile #-}

-- | Maximum number of active ads allowed for this account.
newtype Account_ActiveAdsLimitTier = Account_ActiveAdsLimitTier { fromAccount_ActiveAdsLimitTier :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER40K :: Account_ActiveAdsLimitTier
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER40K = Account_ActiveAdsLimitTier "ACTIVE_ADS_TIER_40K"

-- | 
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER75K :: Account_ActiveAdsLimitTier
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER75K = Account_ActiveAdsLimitTier "ACTIVE_ADS_TIER_75K"

-- | 
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER100K :: Account_ActiveAdsLimitTier
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER100K = Account_ActiveAdsLimitTier "ACTIVE_ADS_TIER_100K"

-- | 
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER200K :: Account_ActiveAdsLimitTier
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER200K = Account_ActiveAdsLimitTier "ACTIVE_ADS_TIER_200K"

-- | 
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER300K :: Account_ActiveAdsLimitTier
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER300K = Account_ActiveAdsLimitTier "ACTIVE_ADS_TIER_300K"

-- | 
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER500K :: Account_ActiveAdsLimitTier
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER500K = Account_ActiveAdsLimitTier "ACTIVE_ADS_TIER_500K"

-- | 
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER750K :: Account_ActiveAdsLimitTier
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER750K = Account_ActiveAdsLimitTier "ACTIVE_ADS_TIER_750K"

-- | 
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER1M :: Account_ActiveAdsLimitTier
pattern Account_ActiveAdsLimitTier_ACTIVEADSTIER1M = Account_ActiveAdsLimitTier "ACTIVE_ADS_TIER_1M"

{-# COMPLETE
  Account_ActiveAdsLimitTier_ACTIVEADSTIER40K,
  Account_ActiveAdsLimitTier_ACTIVEADSTIER75K,
  Account_ActiveAdsLimitTier_ACTIVEADSTIER100K,
  Account_ActiveAdsLimitTier_ACTIVEADSTIER200K,
  Account_ActiveAdsLimitTier_ACTIVEADSTIER300K,
  Account_ActiveAdsLimitTier_ACTIVEADSTIER500K,
  Account_ActiveAdsLimitTier_ACTIVEADSTIER750K,
  Account_ActiveAdsLimitTier_ACTIVEADSTIER1M,
  Account_ActiveAdsLimitTier #-}

-- | Maximum number of active ads allowed for the account.
newtype AccountActiveAdSummary_ActiveAdsLimitTier = AccountActiveAdSummary_ActiveAdsLimitTier { fromAccountActiveAdSummary_ActiveAdsLimitTier :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER40K :: AccountActiveAdSummary_ActiveAdsLimitTier
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER40K = AccountActiveAdSummary_ActiveAdsLimitTier "ACTIVE_ADS_TIER_40K"

-- | 
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER75K :: AccountActiveAdSummary_ActiveAdsLimitTier
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER75K = AccountActiveAdSummary_ActiveAdsLimitTier "ACTIVE_ADS_TIER_75K"

-- | 
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER100K :: AccountActiveAdSummary_ActiveAdsLimitTier
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER100K = AccountActiveAdSummary_ActiveAdsLimitTier "ACTIVE_ADS_TIER_100K"

-- | 
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER200K :: AccountActiveAdSummary_ActiveAdsLimitTier
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER200K = AccountActiveAdSummary_ActiveAdsLimitTier "ACTIVE_ADS_TIER_200K"

-- | 
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER300K :: AccountActiveAdSummary_ActiveAdsLimitTier
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER300K = AccountActiveAdSummary_ActiveAdsLimitTier "ACTIVE_ADS_TIER_300K"

-- | 
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER500K :: AccountActiveAdSummary_ActiveAdsLimitTier
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER500K = AccountActiveAdSummary_ActiveAdsLimitTier "ACTIVE_ADS_TIER_500K"

-- | 
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER750K :: AccountActiveAdSummary_ActiveAdsLimitTier
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER750K = AccountActiveAdSummary_ActiveAdsLimitTier "ACTIVE_ADS_TIER_750K"

-- | 
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER1M :: AccountActiveAdSummary_ActiveAdsLimitTier
pattern AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER1M = AccountActiveAdSummary_ActiveAdsLimitTier "ACTIVE_ADS_TIER_1M"

{-# COMPLETE
  AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER40K,
  AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER75K,
  AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER100K,
  AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER200K,
  AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER300K,
  AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER500K,
  AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER750K,
  AccountActiveAdSummary_ActiveAdsLimitTier_ACTIVEADSTIER1M,
  AccountActiveAdSummary_ActiveAdsLimitTier #-}

newtype AccountPermission_AccountProfilesItem = AccountPermission_AccountProfilesItem { fromAccountPermission_AccountProfilesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountPermission_AccountProfilesItem_ACCOUNTPROFILEBASIC :: AccountPermission_AccountProfilesItem
pattern AccountPermission_AccountProfilesItem_ACCOUNTPROFILEBASIC = AccountPermission_AccountProfilesItem "ACCOUNT_PROFILE_BASIC"

-- | 
pattern AccountPermission_AccountProfilesItem_ACCOUNTPROFILESTANDARD :: AccountPermission_AccountProfilesItem
pattern AccountPermission_AccountProfilesItem_ACCOUNTPROFILESTANDARD = AccountPermission_AccountProfilesItem "ACCOUNT_PROFILE_STANDARD"

{-# COMPLETE
  AccountPermission_AccountProfilesItem_ACCOUNTPROFILEBASIC,
  AccountPermission_AccountProfilesItem_ACCOUNTPROFILESTANDARD,
  AccountPermission_AccountProfilesItem #-}

-- | Administrative level required to enable this account permission.
newtype AccountPermission_Level = AccountPermission_Level { fromAccountPermission_Level :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountPermission_Level_User :: AccountPermission_Level
pattern AccountPermission_Level_User = AccountPermission_Level "USER"

-- | 
pattern AccountPermission_Level_Administrator :: AccountPermission_Level
pattern AccountPermission_Level_Administrator = AccountPermission_Level "ADMINISTRATOR"

{-# COMPLETE
  AccountPermission_Level_User,
  AccountPermission_Level_Administrator,
  AccountPermission_Level #-}

-- | Trafficker type of this user profile. This is a read-only field.
newtype AccountUserProfile_TraffickerType = AccountUserProfile_TraffickerType { fromAccountUserProfile_TraffickerType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountUserProfile_TraffickerType_INTERNALNONTRAFFICKER :: AccountUserProfile_TraffickerType
pattern AccountUserProfile_TraffickerType_INTERNALNONTRAFFICKER = AccountUserProfile_TraffickerType "INTERNAL_NON_TRAFFICKER"

-- | 
pattern AccountUserProfile_TraffickerType_INTERNALTRAFFICKER :: AccountUserProfile_TraffickerType
pattern AccountUserProfile_TraffickerType_INTERNALTRAFFICKER = AccountUserProfile_TraffickerType "INTERNAL_TRAFFICKER"

-- | 
pattern AccountUserProfile_TraffickerType_EXTERNALTRAFFICKER :: AccountUserProfile_TraffickerType
pattern AccountUserProfile_TraffickerType_EXTERNALTRAFFICKER = AccountUserProfile_TraffickerType "EXTERNAL_TRAFFICKER"

{-# COMPLETE
  AccountUserProfile_TraffickerType_INTERNALNONTRAFFICKER,
  AccountUserProfile_TraffickerType_INTERNALTRAFFICKER,
  AccountUserProfile_TraffickerType_EXTERNALTRAFFICKER,
  AccountUserProfile_TraffickerType #-}

-- | User type of the user profile. This is a read-only field that can be left blank.
newtype AccountUserProfile_UserAccessType = AccountUserProfile_UserAccessType { fromAccountUserProfile_UserAccessType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountUserProfile_UserAccessType_NORMALUSER :: AccountUserProfile_UserAccessType
pattern AccountUserProfile_UserAccessType_NORMALUSER = AccountUserProfile_UserAccessType "NORMAL_USER"

-- | 
pattern AccountUserProfile_UserAccessType_SUPERUSER :: AccountUserProfile_UserAccessType
pattern AccountUserProfile_UserAccessType_SUPERUSER = AccountUserProfile_UserAccessType "SUPER_USER"

-- | 
pattern AccountUserProfile_UserAccessType_INTERNALADMINISTRATOR :: AccountUserProfile_UserAccessType
pattern AccountUserProfile_UserAccessType_INTERNALADMINISTRATOR = AccountUserProfile_UserAccessType "INTERNAL_ADMINISTRATOR"

-- | 
pattern AccountUserProfile_UserAccessType_READONLYSUPERUSER :: AccountUserProfile_UserAccessType
pattern AccountUserProfile_UserAccessType_READONLYSUPERUSER = AccountUserProfile_UserAccessType "READ_ONLY_SUPER_USER"

{-# COMPLETE
  AccountUserProfile_UserAccessType_NORMALUSER,
  AccountUserProfile_UserAccessType_SUPERUSER,
  AccountUserProfile_UserAccessType_INTERNALADMINISTRATOR,
  AccountUserProfile_UserAccessType_READONLYSUPERUSER,
  AccountUserProfile_UserAccessType #-}

-- | Compatibility of this ad. Applicable when type is AD/SERVING/DEFAULT/AD. DISPLAY and DISPLAY/INTERSTITIAL refer to either rendering on desktop or on mobile devices or in mobile apps for regular or interstitial ads, respectively. APP and APP/INTERSTITIAL are only used for existing default ads. New mobile placements must be assigned DISPLAY or DISPLAY/INTERSTITIAL and default ads created for those placements will be limited to those compatibility types. IN/STREAM/VIDEO refers to rendering in-stream video ads developed with the VAST standard.
newtype Ad_Compatibility = Ad_Compatibility { fromAd_Compatibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Ad_Compatibility_Display :: Ad_Compatibility
pattern Ad_Compatibility_Display = Ad_Compatibility "DISPLAY"

-- | 
pattern Ad_Compatibility_DISPLAYINTERSTITIAL :: Ad_Compatibility
pattern Ad_Compatibility_DISPLAYINTERSTITIAL = Ad_Compatibility "DISPLAY_INTERSTITIAL"

-- | 
pattern Ad_Compatibility_App :: Ad_Compatibility
pattern Ad_Compatibility_App = Ad_Compatibility "APP"

-- | 
pattern Ad_Compatibility_APPINTERSTITIAL :: Ad_Compatibility
pattern Ad_Compatibility_APPINTERSTITIAL = Ad_Compatibility "APP_INTERSTITIAL"

-- | 
pattern Ad_Compatibility_INSTREAMVIDEO :: Ad_Compatibility
pattern Ad_Compatibility_INSTREAMVIDEO = Ad_Compatibility "IN_STREAM_VIDEO"

-- | 
pattern Ad_Compatibility_INSTREAMAUDIO :: Ad_Compatibility
pattern Ad_Compatibility_INSTREAMAUDIO = Ad_Compatibility "IN_STREAM_AUDIO"

{-# COMPLETE
  Ad_Compatibility_Display,
  Ad_Compatibility_DISPLAYINTERSTITIAL,
  Ad_Compatibility_App,
  Ad_Compatibility_APPINTERSTITIAL,
  Ad_Compatibility_INSTREAMVIDEO,
  Ad_Compatibility_INSTREAMAUDIO,
  Ad_Compatibility #-}

-- | Type of ad. This is a required field on insertion. Note that default ads ( AD/SERVING/DEFAULT_AD) cannot be created directly (see Creative resource).
newtype Ad_Type = Ad_Type { fromAd_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Ad_Type_ADSERVINGSTANDARDAD :: Ad_Type
pattern Ad_Type_ADSERVINGSTANDARDAD = Ad_Type "AD_SERVING_STANDARD_AD"

-- | 
pattern Ad_Type_ADSERVINGDEFAULTAD :: Ad_Type
pattern Ad_Type_ADSERVINGDEFAULTAD = Ad_Type "AD_SERVING_DEFAULT_AD"

-- | 
pattern Ad_Type_ADSERVINGCLICKTRACKER :: Ad_Type
pattern Ad_Type_ADSERVINGCLICKTRACKER = Ad_Type "AD_SERVING_CLICK_TRACKER"

-- | 
pattern Ad_Type_ADSERVINGTRACKING :: Ad_Type
pattern Ad_Type_ADSERVINGTRACKING = Ad_Type "AD_SERVING_TRACKING"

-- | 
pattern Ad_Type_ADSERVINGBRANDSAFEAD :: Ad_Type
pattern Ad_Type_ADSERVINGBRANDSAFEAD = Ad_Type "AD_SERVING_BRAND_SAFE_AD"

{-# COMPLETE
  Ad_Type_ADSERVINGSTANDARDAD,
  Ad_Type_ADSERVINGDEFAULTAD,
  Ad_Type_ADSERVINGCLICKTRACKER,
  Ad_Type_ADSERVINGTRACKING,
  Ad_Type_ADSERVINGBRANDSAFEAD,
  Ad_Type #-}

-- | Ad slot compatibility. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering either on desktop, mobile devices or in mobile apps for regular or interstitial ads respectively. APP and APP/INTERSTITIAL are for rendering in mobile apps. IN/STREAM/VIDEO refers to rendering in in-stream video ads developed with the VAST standard.
newtype AdSlot_Compatibility = AdSlot_Compatibility { fromAdSlot_Compatibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdSlot_Compatibility_Display :: AdSlot_Compatibility
pattern AdSlot_Compatibility_Display = AdSlot_Compatibility "DISPLAY"

-- | 
pattern AdSlot_Compatibility_DISPLAYINTERSTITIAL :: AdSlot_Compatibility
pattern AdSlot_Compatibility_DISPLAYINTERSTITIAL = AdSlot_Compatibility "DISPLAY_INTERSTITIAL"

-- | 
pattern AdSlot_Compatibility_App :: AdSlot_Compatibility
pattern AdSlot_Compatibility_App = AdSlot_Compatibility "APP"

-- | 
pattern AdSlot_Compatibility_APPINTERSTITIAL :: AdSlot_Compatibility
pattern AdSlot_Compatibility_APPINTERSTITIAL = AdSlot_Compatibility "APP_INTERSTITIAL"

-- | 
pattern AdSlot_Compatibility_INSTREAMVIDEO :: AdSlot_Compatibility
pattern AdSlot_Compatibility_INSTREAMVIDEO = AdSlot_Compatibility "IN_STREAM_VIDEO"

-- | 
pattern AdSlot_Compatibility_INSTREAMAUDIO :: AdSlot_Compatibility
pattern AdSlot_Compatibility_INSTREAMAUDIO = AdSlot_Compatibility "IN_STREAM_AUDIO"

{-# COMPLETE
  AdSlot_Compatibility_Display,
  AdSlot_Compatibility_DISPLAYINTERSTITIAL,
  AdSlot_Compatibility_App,
  AdSlot_Compatibility_APPINTERSTITIAL,
  AdSlot_Compatibility_INSTREAMVIDEO,
  AdSlot_Compatibility_INSTREAMAUDIO,
  AdSlot_Compatibility #-}

-- | Payment source type of this ad slot.
newtype AdSlot_PaymentSourceType = AdSlot_PaymentSourceType { fromAdSlot_PaymentSourceType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdSlot_PaymentSourceType_PLANNINGPAYMENTSOURCETYPEAGENCYPAID :: AdSlot_PaymentSourceType
pattern AdSlot_PaymentSourceType_PLANNINGPAYMENTSOURCETYPEAGENCYPAID = AdSlot_PaymentSourceType "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID"

-- | 
pattern AdSlot_PaymentSourceType_PLANNINGPAYMENTSOURCETYPEPUBLISHERPAID :: AdSlot_PaymentSourceType
pattern AdSlot_PaymentSourceType_PLANNINGPAYMENTSOURCETYPEPUBLISHERPAID = AdSlot_PaymentSourceType "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID"

{-# COMPLETE
  AdSlot_PaymentSourceType_PLANNINGPAYMENTSOURCETYPEAGENCYPAID,
  AdSlot_PaymentSourceType_PLANNINGPAYMENTSOURCETYPEPUBLISHERPAID,
  AdSlot_PaymentSourceType #-}

-- | Status of this advertiser.
newtype Advertiser_Status = Advertiser_Status { fromAdvertiser_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Advertiser_Status_Approved :: Advertiser_Status
pattern Advertiser_Status_Approved = Advertiser_Status "APPROVED"

-- | 
pattern Advertiser_Status_ONHOLD :: Advertiser_Status
pattern Advertiser_Status_ONHOLD = Advertiser_Status "ON_HOLD"

{-# COMPLETE
  Advertiser_Status_Approved,
  Advertiser_Status_ONHOLD,
  Advertiser_Status #-}

-- | The error code.
newtype ConversionError_Code = ConversionError_Code { fromConversionError_Code :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ConversionError_Code_INVALIDARGUMENT :: ConversionError_Code
pattern ConversionError_Code_INVALIDARGUMENT = ConversionError_Code "INVALID_ARGUMENT"

-- | 
pattern ConversionError_Code_Internal :: ConversionError_Code
pattern ConversionError_Code_Internal = ConversionError_Code "INTERNAL"

-- | 
pattern ConversionError_Code_PERMISSIONDENIED :: ConversionError_Code
pattern ConversionError_Code_PERMISSIONDENIED = ConversionError_Code "PERMISSION_DENIED"

-- | 
pattern ConversionError_Code_NOTFOUND :: ConversionError_Code
pattern ConversionError_Code_NOTFOUND = ConversionError_Code "NOT_FOUND"

{-# COMPLETE
  ConversionError_Code_INVALIDARGUMENT,
  ConversionError_Code_Internal,
  ConversionError_Code_PERMISSIONDENIED,
  ConversionError_Code_NOTFOUND,
  ConversionError_Code #-}

-- | Type of artwork used for the creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
newtype Creative_ArtworkType = Creative_ArtworkType { fromCreative_ArtworkType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Creative_ArtworkType_ARTWORKTYPEFLASH :: Creative_ArtworkType
pattern Creative_ArtworkType_ARTWORKTYPEFLASH = Creative_ArtworkType "ARTWORK_TYPE_FLASH"

-- | 
pattern Creative_ArtworkType_ARTWORK_TYPE_HTML5 :: Creative_ArtworkType
pattern Creative_ArtworkType_ARTWORK_TYPE_HTML5 = Creative_ArtworkType "ARTWORK_TYPE_HTML5"

-- | 
pattern Creative_ArtworkType_ARTWORKTYPEMIXED :: Creative_ArtworkType
pattern Creative_ArtworkType_ARTWORKTYPEMIXED = Creative_ArtworkType "ARTWORK_TYPE_MIXED"

-- | 
pattern Creative_ArtworkType_ARTWORKTYPEIMAGE :: Creative_ArtworkType
pattern Creative_ArtworkType_ARTWORKTYPEIMAGE = Creative_ArtworkType "ARTWORK_TYPE_IMAGE"

{-# COMPLETE
  Creative_ArtworkType_ARTWORKTYPEFLASH,
  Creative_ArtworkType_ARTWORK_TYPE_HTML5,
  Creative_ArtworkType_ARTWORKTYPEMIXED,
  Creative_ArtworkType_ARTWORKTYPEIMAGE,
  Creative_ArtworkType #-}

-- | Source application where creative was authored. Presently, only DBM authored creatives will have this field set. Applicable to all creative types.
newtype Creative_AuthoringSource = Creative_AuthoringSource { fromCreative_AuthoringSource :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEDCM :: Creative_AuthoringSource
pattern Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEDCM = Creative_AuthoringSource "CREATIVE_AUTHORING_SOURCE_DCM"

-- | 
pattern Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEDBM :: Creative_AuthoringSource
pattern Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEDBM = Creative_AuthoringSource "CREATIVE_AUTHORING_SOURCE_DBM"

-- | 
pattern Creative_AuthoringSource_CREATIVEAUTHORINGSOURCESTUDIO :: Creative_AuthoringSource
pattern Creative_AuthoringSource_CREATIVEAUTHORINGSOURCESTUDIO = Creative_AuthoringSource "CREATIVE_AUTHORING_SOURCE_STUDIO"

-- | 
pattern Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEGWD :: Creative_AuthoringSource
pattern Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEGWD = Creative_AuthoringSource "CREATIVE_AUTHORING_SOURCE_GWD"

{-# COMPLETE
  Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEDCM,
  Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEDBM,
  Creative_AuthoringSource_CREATIVEAUTHORINGSOURCESTUDIO,
  Creative_AuthoringSource_CREATIVEAUTHORINGSOURCEGWD,
  Creative_AuthoringSource #-}

-- | Authoring tool for HTML5 banner creatives. This is a read-only field. Applicable to the following creative types: HTML5_BANNER.
newtype Creative_AuthoringTool = Creative_AuthoringTool { fromCreative_AuthoringTool :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Creative_AuthoringTool_Ninja :: Creative_AuthoringTool
pattern Creative_AuthoringTool_Ninja = Creative_AuthoringTool "NINJA"

-- | 
pattern Creative_AuthoringTool_Swiffy :: Creative_AuthoringTool
pattern Creative_AuthoringTool_Swiffy = Creative_AuthoringTool "SWIFFY"

{-# COMPLETE
  Creative_AuthoringTool_Ninja,
  Creative_AuthoringTool_Swiffy,
  Creative_AuthoringTool #-}

newtype Creative_BackupImageFeaturesItem = Creative_BackupImageFeaturesItem { fromCreative_BackupImageFeaturesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Creative_BackupImageFeaturesItem_CSSFONTFACE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSFONTFACE = Creative_BackupImageFeaturesItem "CSS_FONT_FACE"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSBACKGROUNDSIZE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSBACKGROUNDSIZE = Creative_BackupImageFeaturesItem "CSS_BACKGROUND_SIZE"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSBORDERIMAGE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSBORDERIMAGE = Creative_BackupImageFeaturesItem "CSS_BORDER_IMAGE"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSBORDERRADIUS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSBORDERRADIUS = Creative_BackupImageFeaturesItem "CSS_BORDER_RADIUS"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSBOXSHADOW :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSBOXSHADOW = Creative_BackupImageFeaturesItem "CSS_BOX_SHADOW"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSFLEXBOX :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSFLEXBOX = Creative_BackupImageFeaturesItem "CSS_FLEX_BOX"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSHSLA :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSHSLA = Creative_BackupImageFeaturesItem "CSS_HSLA"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSMULTIPLEBGS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSMULTIPLEBGS = Creative_BackupImageFeaturesItem "CSS_MULTIPLE_BGS"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSOPACITY :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSOPACITY = Creative_BackupImageFeaturesItem "CSS_OPACITY"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSRGBA :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSRGBA = Creative_BackupImageFeaturesItem "CSS_RGBA"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSTEXTSHADOW :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSTEXTSHADOW = Creative_BackupImageFeaturesItem "CSS_TEXT_SHADOW"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSANIMATIONS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSANIMATIONS = Creative_BackupImageFeaturesItem "CSS_ANIMATIONS"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSCOLUMNS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSCOLUMNS = Creative_BackupImageFeaturesItem "CSS_COLUMNS"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSGENERATEDCONTENT :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSGENERATEDCONTENT = Creative_BackupImageFeaturesItem "CSS_GENERATED_CONTENT"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSGRADIENTS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSGRADIENTS = Creative_BackupImageFeaturesItem "CSS_GRADIENTS"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSREFLECTIONS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSREFLECTIONS = Creative_BackupImageFeaturesItem "CSS_REFLECTIONS"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSTRANSFORMS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSTRANSFORMS = Creative_BackupImageFeaturesItem "CSS_TRANSFORMS"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSTRANSFORMS3D :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSTRANSFORMS3D = Creative_BackupImageFeaturesItem "CSS_TRANSFORMS3D"

-- | 
pattern Creative_BackupImageFeaturesItem_CSSTRANSITIONS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CSSTRANSITIONS = Creative_BackupImageFeaturesItem "CSS_TRANSITIONS"

-- | 
pattern Creative_BackupImageFeaturesItem_APPLICATIONCACHE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_APPLICATIONCACHE = Creative_BackupImageFeaturesItem "APPLICATION_CACHE"

-- | 
pattern Creative_BackupImageFeaturesItem_Canvas :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_Canvas = Creative_BackupImageFeaturesItem "CANVAS"

-- | 
pattern Creative_BackupImageFeaturesItem_CANVASTEXT :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_CANVASTEXT = Creative_BackupImageFeaturesItem "CANVAS_TEXT"

-- | 
pattern Creative_BackupImageFeaturesItem_DRAGANDDROP :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_DRAGANDDROP = Creative_BackupImageFeaturesItem "DRAG_AND_DROP"

-- | 
pattern Creative_BackupImageFeaturesItem_HASHCHANGE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_HASHCHANGE = Creative_BackupImageFeaturesItem "HASH_CHANGE"

-- | 
pattern Creative_BackupImageFeaturesItem_History :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_History = Creative_BackupImageFeaturesItem "HISTORY"

-- | 
pattern Creative_BackupImageFeaturesItem_Audio :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_Audio = Creative_BackupImageFeaturesItem "AUDIO"

-- | 
pattern Creative_BackupImageFeaturesItem_Video :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_Video = Creative_BackupImageFeaturesItem "VIDEO"

-- | 
pattern Creative_BackupImageFeaturesItem_INDEXEDDB :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INDEXEDDB = Creative_BackupImageFeaturesItem "INDEXED_DB"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRAUTOCOMPLETE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRAUTOCOMPLETE = Creative_BackupImageFeaturesItem "INPUT_ATTR_AUTOCOMPLETE"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRAUTOFOCUS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRAUTOFOCUS = Creative_BackupImageFeaturesItem "INPUT_ATTR_AUTOFOCUS"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRLIST :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRLIST = Creative_BackupImageFeaturesItem "INPUT_ATTR_LIST"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRPLACEHOLDER :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRPLACEHOLDER = Creative_BackupImageFeaturesItem "INPUT_ATTR_PLACEHOLDER"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRMAX :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRMAX = Creative_BackupImageFeaturesItem "INPUT_ATTR_MAX"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRMIN :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRMIN = Creative_BackupImageFeaturesItem "INPUT_ATTR_MIN"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRMULTIPLE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRMULTIPLE = Creative_BackupImageFeaturesItem "INPUT_ATTR_MULTIPLE"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRPATTERN :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRPATTERN = Creative_BackupImageFeaturesItem "INPUT_ATTR_PATTERN"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRREQUIRED :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRREQUIRED = Creative_BackupImageFeaturesItem "INPUT_ATTR_REQUIRED"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTATTRSTEP :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTATTRSTEP = Creative_BackupImageFeaturesItem "INPUT_ATTR_STEP"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPESEARCH :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPESEARCH = Creative_BackupImageFeaturesItem "INPUT_TYPE_SEARCH"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPETEL :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPETEL = Creative_BackupImageFeaturesItem "INPUT_TYPE_TEL"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPEURL :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPEURL = Creative_BackupImageFeaturesItem "INPUT_TYPE_URL"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPEEMAIL :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPEEMAIL = Creative_BackupImageFeaturesItem "INPUT_TYPE_EMAIL"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPEDATETIME :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPEDATETIME = Creative_BackupImageFeaturesItem "INPUT_TYPE_DATETIME"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPEDATE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPEDATE = Creative_BackupImageFeaturesItem "INPUT_TYPE_DATE"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPEMONTH :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPEMONTH = Creative_BackupImageFeaturesItem "INPUT_TYPE_MONTH"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPEWEEK :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPEWEEK = Creative_BackupImageFeaturesItem "INPUT_TYPE_WEEK"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPETIME :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPETIME = Creative_BackupImageFeaturesItem "INPUT_TYPE_TIME"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPEDATETIMELOCAL :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPEDATETIMELOCAL = Creative_BackupImageFeaturesItem "INPUT_TYPE_DATETIME_LOCAL"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPENUMBER :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPENUMBER = Creative_BackupImageFeaturesItem "INPUT_TYPE_NUMBER"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPERANGE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPERANGE = Creative_BackupImageFeaturesItem "INPUT_TYPE_RANGE"

-- | 
pattern Creative_BackupImageFeaturesItem_INPUTTYPECOLOR :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INPUTTYPECOLOR = Creative_BackupImageFeaturesItem "INPUT_TYPE_COLOR"

-- | 
pattern Creative_BackupImageFeaturesItem_LOCALSTORAGE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_LOCALSTORAGE = Creative_BackupImageFeaturesItem "LOCAL_STORAGE"

-- | 
pattern Creative_BackupImageFeaturesItem_POSTMESSAGE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_POSTMESSAGE = Creative_BackupImageFeaturesItem "POST_MESSAGE"

-- | 
pattern Creative_BackupImageFeaturesItem_SESSIONSTORAGE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_SESSIONSTORAGE = Creative_BackupImageFeaturesItem "SESSION_STORAGE"

-- | 
pattern Creative_BackupImageFeaturesItem_WEBSOCKETS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_WEBSOCKETS = Creative_BackupImageFeaturesItem "WEB_SOCKETS"

-- | 
pattern Creative_BackupImageFeaturesItem_WEBSQLDATABASE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_WEBSQLDATABASE = Creative_BackupImageFeaturesItem "WEB_SQL_DATABASE"

-- | 
pattern Creative_BackupImageFeaturesItem_WEBWORKERS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_WEBWORKERS = Creative_BackupImageFeaturesItem "WEB_WORKERS"

-- | 
pattern Creative_BackupImageFeaturesItem_GEOLOCATION :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_GEOLOCATION = Creative_BackupImageFeaturesItem "GEO_LOCATION"

-- | 
pattern Creative_BackupImageFeaturesItem_INLINESVG :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_INLINESVG = Creative_BackupImageFeaturesItem "INLINE_SVG"

-- | 
pattern Creative_BackupImageFeaturesItem_Smil :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_Smil = Creative_BackupImageFeaturesItem "SMIL"

-- | 
pattern Creative_BackupImageFeaturesItem_SVGHREF :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_SVGHREF = Creative_BackupImageFeaturesItem "SVG_HREF"

-- | 
pattern Creative_BackupImageFeaturesItem_SVGCLIPPATHS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_SVGCLIPPATHS = Creative_BackupImageFeaturesItem "SVG_CLIP_PATHS"

-- | 
pattern Creative_BackupImageFeaturesItem_Touch :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_Touch = Creative_BackupImageFeaturesItem "TOUCH"

-- | 
pattern Creative_BackupImageFeaturesItem_Webgl :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_Webgl = Creative_BackupImageFeaturesItem "WEBGL"

-- | 
pattern Creative_BackupImageFeaturesItem_SVGFILTERS :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_SVGFILTERS = Creative_BackupImageFeaturesItem "SVG_FILTERS"

-- | 
pattern Creative_BackupImageFeaturesItem_SVGFEIMAGE :: Creative_BackupImageFeaturesItem
pattern Creative_BackupImageFeaturesItem_SVGFEIMAGE = Creative_BackupImageFeaturesItem "SVG_FE_IMAGE"

{-# COMPLETE
  Creative_BackupImageFeaturesItem_CSSFONTFACE,
  Creative_BackupImageFeaturesItem_CSSBACKGROUNDSIZE,
  Creative_BackupImageFeaturesItem_CSSBORDERIMAGE,
  Creative_BackupImageFeaturesItem_CSSBORDERRADIUS,
  Creative_BackupImageFeaturesItem_CSSBOXSHADOW,
  Creative_BackupImageFeaturesItem_CSSFLEXBOX,
  Creative_BackupImageFeaturesItem_CSSHSLA,
  Creative_BackupImageFeaturesItem_CSSMULTIPLEBGS,
  Creative_BackupImageFeaturesItem_CSSOPACITY,
  Creative_BackupImageFeaturesItem_CSSRGBA,
  Creative_BackupImageFeaturesItem_CSSTEXTSHADOW,
  Creative_BackupImageFeaturesItem_CSSANIMATIONS,
  Creative_BackupImageFeaturesItem_CSSCOLUMNS,
  Creative_BackupImageFeaturesItem_CSSGENERATEDCONTENT,
  Creative_BackupImageFeaturesItem_CSSGRADIENTS,
  Creative_BackupImageFeaturesItem_CSSREFLECTIONS,
  Creative_BackupImageFeaturesItem_CSSTRANSFORMS,
  Creative_BackupImageFeaturesItem_CSSTRANSFORMS3D,
  Creative_BackupImageFeaturesItem_CSSTRANSITIONS,
  Creative_BackupImageFeaturesItem_APPLICATIONCACHE,
  Creative_BackupImageFeaturesItem_Canvas,
  Creative_BackupImageFeaturesItem_CANVASTEXT,
  Creative_BackupImageFeaturesItem_DRAGANDDROP,
  Creative_BackupImageFeaturesItem_HASHCHANGE,
  Creative_BackupImageFeaturesItem_History,
  Creative_BackupImageFeaturesItem_Audio,
  Creative_BackupImageFeaturesItem_Video,
  Creative_BackupImageFeaturesItem_INDEXEDDB,
  Creative_BackupImageFeaturesItem_INPUTATTRAUTOCOMPLETE,
  Creative_BackupImageFeaturesItem_INPUTATTRAUTOFOCUS,
  Creative_BackupImageFeaturesItem_INPUTATTRLIST,
  Creative_BackupImageFeaturesItem_INPUTATTRPLACEHOLDER,
  Creative_BackupImageFeaturesItem_INPUTATTRMAX,
  Creative_BackupImageFeaturesItem_INPUTATTRMIN,
  Creative_BackupImageFeaturesItem_INPUTATTRMULTIPLE,
  Creative_BackupImageFeaturesItem_INPUTATTRPATTERN,
  Creative_BackupImageFeaturesItem_INPUTATTRREQUIRED,
  Creative_BackupImageFeaturesItem_INPUTATTRSTEP,
  Creative_BackupImageFeaturesItem_INPUTTYPESEARCH,
  Creative_BackupImageFeaturesItem_INPUTTYPETEL,
  Creative_BackupImageFeaturesItem_INPUTTYPEURL,
  Creative_BackupImageFeaturesItem_INPUTTYPEEMAIL,
  Creative_BackupImageFeaturesItem_INPUTTYPEDATETIME,
  Creative_BackupImageFeaturesItem_INPUTTYPEDATE,
  Creative_BackupImageFeaturesItem_INPUTTYPEMONTH,
  Creative_BackupImageFeaturesItem_INPUTTYPEWEEK,
  Creative_BackupImageFeaturesItem_INPUTTYPETIME,
  Creative_BackupImageFeaturesItem_INPUTTYPEDATETIMELOCAL,
  Creative_BackupImageFeaturesItem_INPUTTYPENUMBER,
  Creative_BackupImageFeaturesItem_INPUTTYPERANGE,
  Creative_BackupImageFeaturesItem_INPUTTYPECOLOR,
  Creative_BackupImageFeaturesItem_LOCALSTORAGE,
  Creative_BackupImageFeaturesItem_POSTMESSAGE,
  Creative_BackupImageFeaturesItem_SESSIONSTORAGE,
  Creative_BackupImageFeaturesItem_WEBSOCKETS,
  Creative_BackupImageFeaturesItem_WEBSQLDATABASE,
  Creative_BackupImageFeaturesItem_WEBWORKERS,
  Creative_BackupImageFeaturesItem_GEOLOCATION,
  Creative_BackupImageFeaturesItem_INLINESVG,
  Creative_BackupImageFeaturesItem_Smil,
  Creative_BackupImageFeaturesItem_SVGHREF,
  Creative_BackupImageFeaturesItem_SVGCLIPPATHS,
  Creative_BackupImageFeaturesItem_Touch,
  Creative_BackupImageFeaturesItem_Webgl,
  Creative_BackupImageFeaturesItem_SVGFILTERS,
  Creative_BackupImageFeaturesItem_SVGFEIMAGE,
  Creative_BackupImageFeaturesItem #-}

newtype Creative_CompatibilityItem = Creative_CompatibilityItem { fromCreative_CompatibilityItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Creative_CompatibilityItem_Display :: Creative_CompatibilityItem
pattern Creative_CompatibilityItem_Display = Creative_CompatibilityItem "DISPLAY"

-- | 
pattern Creative_CompatibilityItem_DISPLAYINTERSTITIAL :: Creative_CompatibilityItem
pattern Creative_CompatibilityItem_DISPLAYINTERSTITIAL = Creative_CompatibilityItem "DISPLAY_INTERSTITIAL"

-- | 
pattern Creative_CompatibilityItem_App :: Creative_CompatibilityItem
pattern Creative_CompatibilityItem_App = Creative_CompatibilityItem "APP"

-- | 
pattern Creative_CompatibilityItem_APPINTERSTITIAL :: Creative_CompatibilityItem
pattern Creative_CompatibilityItem_APPINTERSTITIAL = Creative_CompatibilityItem "APP_INTERSTITIAL"

-- | 
pattern Creative_CompatibilityItem_INSTREAMVIDEO :: Creative_CompatibilityItem
pattern Creative_CompatibilityItem_INSTREAMVIDEO = Creative_CompatibilityItem "IN_STREAM_VIDEO"

-- | 
pattern Creative_CompatibilityItem_INSTREAMAUDIO :: Creative_CompatibilityItem
pattern Creative_CompatibilityItem_INSTREAMAUDIO = Creative_CompatibilityItem "IN_STREAM_AUDIO"

{-# COMPLETE
  Creative_CompatibilityItem_Display,
  Creative_CompatibilityItem_DISPLAYINTERSTITIAL,
  Creative_CompatibilityItem_App,
  Creative_CompatibilityItem_APPINTERSTITIAL,
  Creative_CompatibilityItem_INSTREAMVIDEO,
  Creative_CompatibilityItem_INSTREAMAUDIO,
  Creative_CompatibilityItem #-}

-- | Type of this creative. This is a required field. Applicable to all creative types. /Note:/ FLASH/INPAGE, HTML5/BANNER, and IMAGE are only used for existing creatives. New creatives should use DISPLAY as a replacement for these types.
newtype Creative_Type = Creative_Type { fromCreative_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Creative_Type_Image :: Creative_Type
pattern Creative_Type_Image = Creative_Type "IMAGE"

-- | 
pattern Creative_Type_DISPLAYREDIRECT :: Creative_Type
pattern Creative_Type_DISPLAYREDIRECT = Creative_Type "DISPLAY_REDIRECT"

-- | 
pattern Creative_Type_CUSTOMDISPLAY :: Creative_Type
pattern Creative_Type_CUSTOMDISPLAY = Creative_Type "CUSTOM_DISPLAY"

-- | 
pattern Creative_Type_INTERNALREDIRECT :: Creative_Type
pattern Creative_Type_INTERNALREDIRECT = Creative_Type "INTERNAL_REDIRECT"

-- | 
pattern Creative_Type_CUSTOMDISPLAYINTERSTITIAL :: Creative_Type
pattern Creative_Type_CUSTOMDISPLAYINTERSTITIAL = Creative_Type "CUSTOM_DISPLAY_INTERSTITIAL"

-- | 
pattern Creative_Type_INTERSTITIALINTERNALREDIRECT :: Creative_Type
pattern Creative_Type_INTERSTITIALINTERNALREDIRECT = Creative_Type "INTERSTITIAL_INTERNAL_REDIRECT"

-- | 
pattern Creative_Type_TRACKINGTEXT :: Creative_Type
pattern Creative_Type_TRACKINGTEXT = Creative_Type "TRACKING_TEXT"

-- | 
pattern Creative_Type_RICHMEDIADISPLAYBANNER :: Creative_Type
pattern Creative_Type_RICHMEDIADISPLAYBANNER = Creative_Type "RICH_MEDIA_DISPLAY_BANNER"

-- | 
pattern Creative_Type_RICHMEDIAINPAGEFLOATING :: Creative_Type
pattern Creative_Type_RICHMEDIAINPAGEFLOATING = Creative_Type "RICH_MEDIA_INPAGE_FLOATING"

-- | 
pattern Creative_Type_RICHMEDIAIMEXPAND :: Creative_Type
pattern Creative_Type_RICHMEDIAIMEXPAND = Creative_Type "RICH_MEDIA_IM_EXPAND"

-- | 
pattern Creative_Type_RICHMEDIADISPLAYEXPANDING :: Creative_Type
pattern Creative_Type_RICHMEDIADISPLAYEXPANDING = Creative_Type "RICH_MEDIA_DISPLAY_EXPANDING"

-- | 
pattern Creative_Type_RICHMEDIADISPLAYINTERSTITIAL :: Creative_Type
pattern Creative_Type_RICHMEDIADISPLAYINTERSTITIAL = Creative_Type "RICH_MEDIA_DISPLAY_INTERSTITIAL"

-- | 
pattern Creative_Type_RICHMEDIADISPLAYMULTIFLOATINGINTERSTITIAL :: Creative_Type
pattern Creative_Type_RICHMEDIADISPLAYMULTIFLOATINGINTERSTITIAL = Creative_Type "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL"

-- | 
pattern Creative_Type_RICHMEDIAMOBILEINAPP :: Creative_Type
pattern Creative_Type_RICHMEDIAMOBILEINAPP = Creative_Type "RICH_MEDIA_MOBILE_IN_APP"

-- | 
pattern Creative_Type_FLASHINPAGE :: Creative_Type
pattern Creative_Type_FLASHINPAGE = Creative_Type "FLASH_INPAGE"

-- | 
pattern Creative_Type_INSTREAMVIDEO :: Creative_Type
pattern Creative_Type_INSTREAMVIDEO = Creative_Type "INSTREAM_VIDEO"

-- | 
pattern Creative_Type_VPAIDLINEARVIDEO :: Creative_Type
pattern Creative_Type_VPAIDLINEARVIDEO = Creative_Type "VPAID_LINEAR_VIDEO"

-- | 
pattern Creative_Type_VPAIDNONLINEARVIDEO :: Creative_Type
pattern Creative_Type_VPAIDNONLINEARVIDEO = Creative_Type "VPAID_NON_LINEAR_VIDEO"

-- | 
pattern Creative_Type_INSTREAMVIDEOREDIRECT :: Creative_Type
pattern Creative_Type_INSTREAMVIDEOREDIRECT = Creative_Type "INSTREAM_VIDEO_REDIRECT"

-- | 
pattern Creative_Type_RICHMEDIAPEELDOWN :: Creative_Type
pattern Creative_Type_RICHMEDIAPEELDOWN = Creative_Type "RICH_MEDIA_PEEL_DOWN"

-- | 
pattern Creative_Type_HTML5BANNER :: Creative_Type
pattern Creative_Type_HTML5BANNER = Creative_Type "HTML5_BANNER"

-- | 
pattern Creative_Type_Display :: Creative_Type
pattern Creative_Type_Display = Creative_Type "DISPLAY"

-- | 
pattern Creative_Type_DISPLAYIMAGEGALLERY :: Creative_Type
pattern Creative_Type_DISPLAYIMAGEGALLERY = Creative_Type "DISPLAY_IMAGE_GALLERY"

-- | 
pattern Creative_Type_BRANDSAFEDEFAULTINSTREAMVIDEO :: Creative_Type
pattern Creative_Type_BRANDSAFEDEFAULTINSTREAMVIDEO = Creative_Type "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"

-- | 
pattern Creative_Type_INSTREAMAUDIO :: Creative_Type
pattern Creative_Type_INSTREAMAUDIO = Creative_Type "INSTREAM_AUDIO"

{-# COMPLETE
  Creative_Type_Image,
  Creative_Type_DISPLAYREDIRECT,
  Creative_Type_CUSTOMDISPLAY,
  Creative_Type_INTERNALREDIRECT,
  Creative_Type_CUSTOMDISPLAYINTERSTITIAL,
  Creative_Type_INTERSTITIALINTERNALREDIRECT,
  Creative_Type_TRACKINGTEXT,
  Creative_Type_RICHMEDIADISPLAYBANNER,
  Creative_Type_RICHMEDIAINPAGEFLOATING,
  Creative_Type_RICHMEDIAIMEXPAND,
  Creative_Type_RICHMEDIADISPLAYEXPANDING,
  Creative_Type_RICHMEDIADISPLAYINTERSTITIAL,
  Creative_Type_RICHMEDIADISPLAYMULTIFLOATINGINTERSTITIAL,
  Creative_Type_RICHMEDIAMOBILEINAPP,
  Creative_Type_FLASHINPAGE,
  Creative_Type_INSTREAMVIDEO,
  Creative_Type_VPAIDLINEARVIDEO,
  Creative_Type_VPAIDNONLINEARVIDEO,
  Creative_Type_INSTREAMVIDEOREDIRECT,
  Creative_Type_RICHMEDIAPEELDOWN,
  Creative_Type_HTML5BANNER,
  Creative_Type_Display,
  Creative_Type_DISPLAYIMAGEGALLERY,
  Creative_Type_BRANDSAFEDEFAULTINSTREAMVIDEO,
  Creative_Type_INSTREAMAUDIO,
  Creative_Type #-}

-- | Possible alignments for an asset. This is a read-only field. Applicable to the following creative types: RICH/MEDIA/DISPLAY/MULTI/FLOATING_INTERSTITIAL .
newtype CreativeAsset_Alignment = CreativeAsset_Alignment { fromCreativeAsset_Alignment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_Alignment_ALIGNMENTTOP :: CreativeAsset_Alignment
pattern CreativeAsset_Alignment_ALIGNMENTTOP = CreativeAsset_Alignment "ALIGNMENT_TOP"

-- | 
pattern CreativeAsset_Alignment_ALIGNMENTRIGHT :: CreativeAsset_Alignment
pattern CreativeAsset_Alignment_ALIGNMENTRIGHT = CreativeAsset_Alignment "ALIGNMENT_RIGHT"

-- | 
pattern CreativeAsset_Alignment_ALIGNMENTBOTTOM :: CreativeAsset_Alignment
pattern CreativeAsset_Alignment_ALIGNMENTBOTTOM = CreativeAsset_Alignment "ALIGNMENT_BOTTOM"

-- | 
pattern CreativeAsset_Alignment_ALIGNMENTLEFT :: CreativeAsset_Alignment
pattern CreativeAsset_Alignment_ALIGNMENTLEFT = CreativeAsset_Alignment "ALIGNMENT_LEFT"

{-# COMPLETE
  CreativeAsset_Alignment_ALIGNMENTTOP,
  CreativeAsset_Alignment_ALIGNMENTRIGHT,
  CreativeAsset_Alignment_ALIGNMENTBOTTOM,
  CreativeAsset_Alignment_ALIGNMENTLEFT,
  CreativeAsset_Alignment #-}

-- | Artwork type of rich media creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.
newtype CreativeAsset_ArtworkType = CreativeAsset_ArtworkType { fromCreativeAsset_ArtworkType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_ArtworkType_ARTWORKTYPEFLASH :: CreativeAsset_ArtworkType
pattern CreativeAsset_ArtworkType_ARTWORKTYPEFLASH = CreativeAsset_ArtworkType "ARTWORK_TYPE_FLASH"

-- | 
pattern CreativeAsset_ArtworkType_ARTWORK_TYPE_HTML5 :: CreativeAsset_ArtworkType
pattern CreativeAsset_ArtworkType_ARTWORK_TYPE_HTML5 = CreativeAsset_ArtworkType "ARTWORK_TYPE_HTML5"

-- | 
pattern CreativeAsset_ArtworkType_ARTWORKTYPEMIXED :: CreativeAsset_ArtworkType
pattern CreativeAsset_ArtworkType_ARTWORKTYPEMIXED = CreativeAsset_ArtworkType "ARTWORK_TYPE_MIXED"

-- | 
pattern CreativeAsset_ArtworkType_ARTWORKTYPEIMAGE :: CreativeAsset_ArtworkType
pattern CreativeAsset_ArtworkType_ARTWORKTYPEIMAGE = CreativeAsset_ArtworkType "ARTWORK_TYPE_IMAGE"

{-# COMPLETE
  CreativeAsset_ArtworkType_ARTWORKTYPEFLASH,
  CreativeAsset_ArtworkType_ARTWORK_TYPE_HTML5,
  CreativeAsset_ArtworkType_ARTWORKTYPEMIXED,
  CreativeAsset_ArtworkType_ARTWORKTYPEIMAGE,
  CreativeAsset_ArtworkType #-}

-- | Rich media child asset type. This is a read-only field. Applicable to the following creative types: all VPAID.
newtype CreativeAsset_ChildAssetType = CreativeAsset_ChildAssetType { fromCreativeAsset_ChildAssetType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_ChildAssetType_CHILDASSETTYPEFLASH :: CreativeAsset_ChildAssetType
pattern CreativeAsset_ChildAssetType_CHILDASSETTYPEFLASH = CreativeAsset_ChildAssetType "CHILD_ASSET_TYPE_FLASH"

-- | 
pattern CreativeAsset_ChildAssetType_CHILDASSETTYPEVIDEO :: CreativeAsset_ChildAssetType
pattern CreativeAsset_ChildAssetType_CHILDASSETTYPEVIDEO = CreativeAsset_ChildAssetType "CHILD_ASSET_TYPE_VIDEO"

-- | 
pattern CreativeAsset_ChildAssetType_CHILDASSETTYPEIMAGE :: CreativeAsset_ChildAssetType
pattern CreativeAsset_ChildAssetType_CHILDASSETTYPEIMAGE = CreativeAsset_ChildAssetType "CHILD_ASSET_TYPE_IMAGE"

-- | 
pattern CreativeAsset_ChildAssetType_CHILDASSETTYPEDATA :: CreativeAsset_ChildAssetType
pattern CreativeAsset_ChildAssetType_CHILDASSETTYPEDATA = CreativeAsset_ChildAssetType "CHILD_ASSET_TYPE_DATA"

{-# COMPLETE
  CreativeAsset_ChildAssetType_CHILDASSETTYPEFLASH,
  CreativeAsset_ChildAssetType_CHILDASSETTYPEVIDEO,
  CreativeAsset_ChildAssetType_CHILDASSETTYPEIMAGE,
  CreativeAsset_ChildAssetType_CHILDASSETTYPEDATA,
  CreativeAsset_ChildAssetType #-}

newtype CreativeAsset_DetectedFeaturesItem = CreativeAsset_DetectedFeaturesItem { fromCreativeAsset_DetectedFeaturesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSFONTFACE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSFONTFACE = CreativeAsset_DetectedFeaturesItem "CSS_FONT_FACE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSBACKGROUNDSIZE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSBACKGROUNDSIZE = CreativeAsset_DetectedFeaturesItem "CSS_BACKGROUND_SIZE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSBORDERIMAGE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSBORDERIMAGE = CreativeAsset_DetectedFeaturesItem "CSS_BORDER_IMAGE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSBORDERRADIUS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSBORDERRADIUS = CreativeAsset_DetectedFeaturesItem "CSS_BORDER_RADIUS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSBOXSHADOW :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSBOXSHADOW = CreativeAsset_DetectedFeaturesItem "CSS_BOX_SHADOW"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSFLEXBOX :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSFLEXBOX = CreativeAsset_DetectedFeaturesItem "CSS_FLEX_BOX"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSHSLA :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSHSLA = CreativeAsset_DetectedFeaturesItem "CSS_HSLA"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSMULTIPLEBGS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSMULTIPLEBGS = CreativeAsset_DetectedFeaturesItem "CSS_MULTIPLE_BGS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSOPACITY :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSOPACITY = CreativeAsset_DetectedFeaturesItem "CSS_OPACITY"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSRGBA :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSRGBA = CreativeAsset_DetectedFeaturesItem "CSS_RGBA"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSTEXTSHADOW :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSTEXTSHADOW = CreativeAsset_DetectedFeaturesItem "CSS_TEXT_SHADOW"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSANIMATIONS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSANIMATIONS = CreativeAsset_DetectedFeaturesItem "CSS_ANIMATIONS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSCOLUMNS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSCOLUMNS = CreativeAsset_DetectedFeaturesItem "CSS_COLUMNS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSGENERATEDCONTENT :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSGENERATEDCONTENT = CreativeAsset_DetectedFeaturesItem "CSS_GENERATED_CONTENT"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSGRADIENTS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSGRADIENTS = CreativeAsset_DetectedFeaturesItem "CSS_GRADIENTS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSREFLECTIONS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSREFLECTIONS = CreativeAsset_DetectedFeaturesItem "CSS_REFLECTIONS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSTRANSFORMS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSTRANSFORMS = CreativeAsset_DetectedFeaturesItem "CSS_TRANSFORMS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSTRANSFORMS3D :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSTRANSFORMS3D = CreativeAsset_DetectedFeaturesItem "CSS_TRANSFORMS3D"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CSSTRANSITIONS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CSSTRANSITIONS = CreativeAsset_DetectedFeaturesItem "CSS_TRANSITIONS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_APPLICATIONCACHE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_APPLICATIONCACHE = CreativeAsset_DetectedFeaturesItem "APPLICATION_CACHE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_Canvas :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_Canvas = CreativeAsset_DetectedFeaturesItem "CANVAS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_CANVASTEXT :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_CANVASTEXT = CreativeAsset_DetectedFeaturesItem "CANVAS_TEXT"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_DRAGANDDROP :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_DRAGANDDROP = CreativeAsset_DetectedFeaturesItem "DRAG_AND_DROP"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_HASHCHANGE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_HASHCHANGE = CreativeAsset_DetectedFeaturesItem "HASH_CHANGE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_History :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_History = CreativeAsset_DetectedFeaturesItem "HISTORY"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_Audio :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_Audio = CreativeAsset_DetectedFeaturesItem "AUDIO"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_Video :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_Video = CreativeAsset_DetectedFeaturesItem "VIDEO"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INDEXEDDB :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INDEXEDDB = CreativeAsset_DetectedFeaturesItem "INDEXED_DB"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRAUTOCOMPLETE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRAUTOCOMPLETE = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_AUTOCOMPLETE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRAUTOFOCUS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRAUTOFOCUS = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_AUTOFOCUS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRLIST :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRLIST = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_LIST"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRPLACEHOLDER :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRPLACEHOLDER = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_PLACEHOLDER"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRMAX :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRMAX = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_MAX"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRMIN :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRMIN = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_MIN"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRMULTIPLE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRMULTIPLE = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_MULTIPLE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRPATTERN :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRPATTERN = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_PATTERN"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRREQUIRED :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRREQUIRED = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_REQUIRED"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRSTEP :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTATTRSTEP = CreativeAsset_DetectedFeaturesItem "INPUT_ATTR_STEP"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPESEARCH :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPESEARCH = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_SEARCH"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPETEL :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPETEL = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_TEL"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEURL :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEURL = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_URL"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEEMAIL :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEEMAIL = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_EMAIL"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATETIME :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATETIME = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_DATETIME"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATE = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_DATE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEMONTH :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEMONTH = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_MONTH"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEWEEK :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEWEEK = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_WEEK"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPETIME :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPETIME = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_TIME"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATETIMELOCAL :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATETIMELOCAL = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_DATETIME_LOCAL"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPENUMBER :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPENUMBER = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_NUMBER"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPERANGE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPERANGE = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_RANGE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPECOLOR :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INPUTTYPECOLOR = CreativeAsset_DetectedFeaturesItem "INPUT_TYPE_COLOR"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_LOCALSTORAGE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_LOCALSTORAGE = CreativeAsset_DetectedFeaturesItem "LOCAL_STORAGE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_POSTMESSAGE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_POSTMESSAGE = CreativeAsset_DetectedFeaturesItem "POST_MESSAGE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_SESSIONSTORAGE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_SESSIONSTORAGE = CreativeAsset_DetectedFeaturesItem "SESSION_STORAGE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_WEBSOCKETS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_WEBSOCKETS = CreativeAsset_DetectedFeaturesItem "WEB_SOCKETS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_WEBSQLDATABASE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_WEBSQLDATABASE = CreativeAsset_DetectedFeaturesItem "WEB_SQL_DATABASE"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_WEBWORKERS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_WEBWORKERS = CreativeAsset_DetectedFeaturesItem "WEB_WORKERS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_GEOLOCATION :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_GEOLOCATION = CreativeAsset_DetectedFeaturesItem "GEO_LOCATION"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_INLINESVG :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_INLINESVG = CreativeAsset_DetectedFeaturesItem "INLINE_SVG"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_Smil :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_Smil = CreativeAsset_DetectedFeaturesItem "SMIL"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_SVGHREF :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_SVGHREF = CreativeAsset_DetectedFeaturesItem "SVG_HREF"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_SVGCLIPPATHS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_SVGCLIPPATHS = CreativeAsset_DetectedFeaturesItem "SVG_CLIP_PATHS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_Touch :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_Touch = CreativeAsset_DetectedFeaturesItem "TOUCH"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_Webgl :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_Webgl = CreativeAsset_DetectedFeaturesItem "WEBGL"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_SVGFILTERS :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_SVGFILTERS = CreativeAsset_DetectedFeaturesItem "SVG_FILTERS"

-- | 
pattern CreativeAsset_DetectedFeaturesItem_SVGFEIMAGE :: CreativeAsset_DetectedFeaturesItem
pattern CreativeAsset_DetectedFeaturesItem_SVGFEIMAGE = CreativeAsset_DetectedFeaturesItem "SVG_FE_IMAGE"

{-# COMPLETE
  CreativeAsset_DetectedFeaturesItem_CSSFONTFACE,
  CreativeAsset_DetectedFeaturesItem_CSSBACKGROUNDSIZE,
  CreativeAsset_DetectedFeaturesItem_CSSBORDERIMAGE,
  CreativeAsset_DetectedFeaturesItem_CSSBORDERRADIUS,
  CreativeAsset_DetectedFeaturesItem_CSSBOXSHADOW,
  CreativeAsset_DetectedFeaturesItem_CSSFLEXBOX,
  CreativeAsset_DetectedFeaturesItem_CSSHSLA,
  CreativeAsset_DetectedFeaturesItem_CSSMULTIPLEBGS,
  CreativeAsset_DetectedFeaturesItem_CSSOPACITY,
  CreativeAsset_DetectedFeaturesItem_CSSRGBA,
  CreativeAsset_DetectedFeaturesItem_CSSTEXTSHADOW,
  CreativeAsset_DetectedFeaturesItem_CSSANIMATIONS,
  CreativeAsset_DetectedFeaturesItem_CSSCOLUMNS,
  CreativeAsset_DetectedFeaturesItem_CSSGENERATEDCONTENT,
  CreativeAsset_DetectedFeaturesItem_CSSGRADIENTS,
  CreativeAsset_DetectedFeaturesItem_CSSREFLECTIONS,
  CreativeAsset_DetectedFeaturesItem_CSSTRANSFORMS,
  CreativeAsset_DetectedFeaturesItem_CSSTRANSFORMS3D,
  CreativeAsset_DetectedFeaturesItem_CSSTRANSITIONS,
  CreativeAsset_DetectedFeaturesItem_APPLICATIONCACHE,
  CreativeAsset_DetectedFeaturesItem_Canvas,
  CreativeAsset_DetectedFeaturesItem_CANVASTEXT,
  CreativeAsset_DetectedFeaturesItem_DRAGANDDROP,
  CreativeAsset_DetectedFeaturesItem_HASHCHANGE,
  CreativeAsset_DetectedFeaturesItem_History,
  CreativeAsset_DetectedFeaturesItem_Audio,
  CreativeAsset_DetectedFeaturesItem_Video,
  CreativeAsset_DetectedFeaturesItem_INDEXEDDB,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRAUTOCOMPLETE,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRAUTOFOCUS,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRLIST,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRPLACEHOLDER,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRMAX,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRMIN,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRMULTIPLE,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRPATTERN,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRREQUIRED,
  CreativeAsset_DetectedFeaturesItem_INPUTATTRSTEP,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPESEARCH,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPETEL,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPEURL,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPEEMAIL,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATETIME,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATE,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPEMONTH,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPEWEEK,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPETIME,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPEDATETIMELOCAL,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPENUMBER,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPERANGE,
  CreativeAsset_DetectedFeaturesItem_INPUTTYPECOLOR,
  CreativeAsset_DetectedFeaturesItem_LOCALSTORAGE,
  CreativeAsset_DetectedFeaturesItem_POSTMESSAGE,
  CreativeAsset_DetectedFeaturesItem_SESSIONSTORAGE,
  CreativeAsset_DetectedFeaturesItem_WEBSOCKETS,
  CreativeAsset_DetectedFeaturesItem_WEBSQLDATABASE,
  CreativeAsset_DetectedFeaturesItem_WEBWORKERS,
  CreativeAsset_DetectedFeaturesItem_GEOLOCATION,
  CreativeAsset_DetectedFeaturesItem_INLINESVG,
  CreativeAsset_DetectedFeaturesItem_Smil,
  CreativeAsset_DetectedFeaturesItem_SVGHREF,
  CreativeAsset_DetectedFeaturesItem_SVGCLIPPATHS,
  CreativeAsset_DetectedFeaturesItem_Touch,
  CreativeAsset_DetectedFeaturesItem_Webgl,
  CreativeAsset_DetectedFeaturesItem_SVGFILTERS,
  CreativeAsset_DetectedFeaturesItem_SVGFEIMAGE,
  CreativeAsset_DetectedFeaturesItem #-}

-- | Type of rich media asset. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.
newtype CreativeAsset_DisplayType = CreativeAsset_DisplayType { fromCreativeAsset_DisplayType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEINPAGE :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEINPAGE = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_INPAGE"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLOATING :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLOATING = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_FLOATING"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEOVERLAY :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEOVERLAY = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_OVERLAY"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEEXPANDING :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEEXPANDING = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_EXPANDING"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLASHINFLASH :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLASHINFLASH = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLASHINFLASHEXPANDING :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLASHINFLASHEXPANDING = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEPEELDOWN :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEPEELDOWN = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_PEEL_DOWN"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEVPAIDLINEAR :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEVPAIDLINEAR = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_VPAID_LINEAR"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEVPAIDNONLINEAR :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEVPAIDNONLINEAR = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR"

-- | 
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEBACKDROP :: CreativeAsset_DisplayType
pattern CreativeAsset_DisplayType_ASSETDISPLAYTYPEBACKDROP = CreativeAsset_DisplayType "ASSET_DISPLAY_TYPE_BACKDROP"

{-# COMPLETE
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEINPAGE,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLOATING,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEOVERLAY,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEEXPANDING,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLASHINFLASH,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEFLASHINFLASHEXPANDING,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEPEELDOWN,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEVPAIDLINEAR,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEVPAIDNONLINEAR,
  CreativeAsset_DisplayType_ASSETDISPLAYTYPEBACKDROP,
  CreativeAsset_DisplayType #-}

-- | Duration type for which an asset will be displayed. Applicable to the following creative types: all RICH_MEDIA.
newtype CreativeAsset_DurationType = CreativeAsset_DurationType { fromCreativeAsset_DurationType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_DurationType_ASSETDURATIONTYPEAUTO :: CreativeAsset_DurationType
pattern CreativeAsset_DurationType_ASSETDURATIONTYPEAUTO = CreativeAsset_DurationType "ASSET_DURATION_TYPE_AUTO"

-- | 
pattern CreativeAsset_DurationType_ASSETDURATIONTYPENONE :: CreativeAsset_DurationType
pattern CreativeAsset_DurationType_ASSETDURATIONTYPENONE = CreativeAsset_DurationType "ASSET_DURATION_TYPE_NONE"

-- | 
pattern CreativeAsset_DurationType_ASSETDURATIONTYPECUSTOM :: CreativeAsset_DurationType
pattern CreativeAsset_DurationType_ASSETDURATIONTYPECUSTOM = CreativeAsset_DurationType "ASSET_DURATION_TYPE_CUSTOM"

{-# COMPLETE
  CreativeAsset_DurationType_ASSETDURATIONTYPEAUTO,
  CreativeAsset_DurationType_ASSETDURATIONTYPENONE,
  CreativeAsset_DurationType_ASSETDURATIONTYPECUSTOM,
  CreativeAsset_DurationType #-}

-- | Orientation of video asset. This is a read-only, auto-generated field.
newtype CreativeAsset_Orientation = CreativeAsset_Orientation { fromCreativeAsset_Orientation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_Orientation_Landscape :: CreativeAsset_Orientation
pattern CreativeAsset_Orientation_Landscape = CreativeAsset_Orientation "LANDSCAPE"

-- | 
pattern CreativeAsset_Orientation_Portrait :: CreativeAsset_Orientation
pattern CreativeAsset_Orientation_Portrait = CreativeAsset_Orientation "PORTRAIT"

-- | 
pattern CreativeAsset_Orientation_Square :: CreativeAsset_Orientation
pattern CreativeAsset_Orientation_Square = CreativeAsset_Orientation "SQUARE"

{-# COMPLETE
  CreativeAsset_Orientation_Landscape,
  CreativeAsset_Orientation_Portrait,
  CreativeAsset_Orientation_Square,
  CreativeAsset_Orientation #-}

-- | Offset left unit for an asset. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.
newtype CreativeAsset_PositionLeftUnit = CreativeAsset_PositionLeftUnit { fromCreativeAsset_PositionLeftUnit :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_PositionLeftUnit_OFFSETUNITPIXEL :: CreativeAsset_PositionLeftUnit
pattern CreativeAsset_PositionLeftUnit_OFFSETUNITPIXEL = CreativeAsset_PositionLeftUnit "OFFSET_UNIT_PIXEL"

-- | 
pattern CreativeAsset_PositionLeftUnit_OFFSETUNITPERCENT :: CreativeAsset_PositionLeftUnit
pattern CreativeAsset_PositionLeftUnit_OFFSETUNITPERCENT = CreativeAsset_PositionLeftUnit "OFFSET_UNIT_PERCENT"

-- | 
pattern CreativeAsset_PositionLeftUnit_OFFSETUNITPIXELFROMCENTER :: CreativeAsset_PositionLeftUnit
pattern CreativeAsset_PositionLeftUnit_OFFSETUNITPIXELFROMCENTER = CreativeAsset_PositionLeftUnit "OFFSET_UNIT_PIXEL_FROM_CENTER"

{-# COMPLETE
  CreativeAsset_PositionLeftUnit_OFFSETUNITPIXEL,
  CreativeAsset_PositionLeftUnit_OFFSETUNITPERCENT,
  CreativeAsset_PositionLeftUnit_OFFSETUNITPIXELFROMCENTER,
  CreativeAsset_PositionLeftUnit #-}

-- | Offset top unit for an asset. This is a read-only field if the asset displayType is ASSET/DISPLAY/TYPE/OVERLAY. Applicable to the following creative types: all RICH/MEDIA.
newtype CreativeAsset_PositionTopUnit = CreativeAsset_PositionTopUnit { fromCreativeAsset_PositionTopUnit :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_PositionTopUnit_OFFSETUNITPIXEL :: CreativeAsset_PositionTopUnit
pattern CreativeAsset_PositionTopUnit_OFFSETUNITPIXEL = CreativeAsset_PositionTopUnit "OFFSET_UNIT_PIXEL"

-- | 
pattern CreativeAsset_PositionTopUnit_OFFSETUNITPERCENT :: CreativeAsset_PositionTopUnit
pattern CreativeAsset_PositionTopUnit_OFFSETUNITPERCENT = CreativeAsset_PositionTopUnit "OFFSET_UNIT_PERCENT"

-- | 
pattern CreativeAsset_PositionTopUnit_OFFSETUNITPIXELFROMCENTER :: CreativeAsset_PositionTopUnit
pattern CreativeAsset_PositionTopUnit_OFFSETUNITPIXELFROMCENTER = CreativeAsset_PositionTopUnit "OFFSET_UNIT_PIXEL_FROM_CENTER"

{-# COMPLETE
  CreativeAsset_PositionTopUnit_OFFSETUNITPIXEL,
  CreativeAsset_PositionTopUnit_OFFSETUNITPERCENT,
  CreativeAsset_PositionTopUnit_OFFSETUNITPIXELFROMCENTER,
  CreativeAsset_PositionTopUnit #-}

-- | Role of the asset in relation to creative. Applicable to all but the following creative types: all REDIRECT and TRACKING/TEXT. This is a required field. PRIMARY applies to DISPLAY, FLASH/INPAGE, HTML5/BANNER, IMAGE, DISPLAY/IMAGE/GALLERY, all RICH/MEDIA (which may contain multiple primary assets), and all VPAID creatives. BACKUP/IMAGE applies to FLASH/INPAGE, HTML5/BANNER, all RICH/MEDIA, and all VPAID creatives. Applicable to DISPLAY when the primary asset type is not HTML/IMAGE. ADDITIONAL/IMAGE and ADDITIONAL/FLASH apply to FLASH/INPAGE creatives. OTHER refers to assets from sources other than Campaign Manager, such as Studio uploaded assets, applicable to all RICH/MEDIA and all VPAID creatives. PARENT/VIDEO refers to videos uploaded by the user in Campaign Manager and is applicable to INSTREAM/VIDEO and VPAID/LINEAR/VIDEO creatives. TRANSCODED/VIDEO refers to videos transcoded by Campaign Manager from PARENT/VIDEO assets and is applicable to INSTREAM/VIDEO and VPAID/LINEAR/VIDEO creatives. ALTERNATE/VIDEO
-- refers to the Campaign Manager representation of child asset videos from Studio, and is applicable to VPAID/LINEAR/VIDEO creatives. These cannot be added or removed within Campaign Manager. For VPAID/LINEAR/VIDEO creatives, PARENT/VIDEO, TRANSCODED/VIDEO and ALTERNATE/VIDEO assets that are marked active serve as backup in case the VPAID creative cannot be served. Only PARENT/VIDEO assets can be added or removed for an INSTREAM/VIDEO or VPAID/LINEAR/VIDEO creative. PARENT/AUDIO refers to audios uploaded by the user in Campaign Manager and is applicable to INSTREAM/AUDIO creatives. TRANSCODED/AUDIO refers to audios transcoded by Campaign Manager from PARENT/AUDIO assets and is applicable to INSTREAM_AUDIO creatives.
newtype CreativeAsset_Role = CreativeAsset_Role { fromCreativeAsset_Role :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_Role_Primary :: CreativeAsset_Role
pattern CreativeAsset_Role_Primary = CreativeAsset_Role "PRIMARY"

-- | 
pattern CreativeAsset_Role_BACKUPIMAGE :: CreativeAsset_Role
pattern CreativeAsset_Role_BACKUPIMAGE = CreativeAsset_Role "BACKUP_IMAGE"

-- | 
pattern CreativeAsset_Role_ADDITIONALIMAGE :: CreativeAsset_Role
pattern CreativeAsset_Role_ADDITIONALIMAGE = CreativeAsset_Role "ADDITIONAL_IMAGE"

-- | 
pattern CreativeAsset_Role_ADDITIONALFLASH :: CreativeAsset_Role
pattern CreativeAsset_Role_ADDITIONALFLASH = CreativeAsset_Role "ADDITIONAL_FLASH"

-- | 
pattern CreativeAsset_Role_PARENTVIDEO :: CreativeAsset_Role
pattern CreativeAsset_Role_PARENTVIDEO = CreativeAsset_Role "PARENT_VIDEO"

-- | 
pattern CreativeAsset_Role_TRANSCODEDVIDEO :: CreativeAsset_Role
pattern CreativeAsset_Role_TRANSCODEDVIDEO = CreativeAsset_Role "TRANSCODED_VIDEO"

-- | 
pattern CreativeAsset_Role_Other :: CreativeAsset_Role
pattern CreativeAsset_Role_Other = CreativeAsset_Role "OTHER"

-- | 
pattern CreativeAsset_Role_ALTERNATEVIDEO :: CreativeAsset_Role
pattern CreativeAsset_Role_ALTERNATEVIDEO = CreativeAsset_Role "ALTERNATE_VIDEO"

-- | 
pattern CreativeAsset_Role_PARENTAUDIO :: CreativeAsset_Role
pattern CreativeAsset_Role_PARENTAUDIO = CreativeAsset_Role "PARENT_AUDIO"

-- | 
pattern CreativeAsset_Role_TRANSCODEDAUDIO :: CreativeAsset_Role
pattern CreativeAsset_Role_TRANSCODEDAUDIO = CreativeAsset_Role "TRANSCODED_AUDIO"

{-# COMPLETE
  CreativeAsset_Role_Primary,
  CreativeAsset_Role_BACKUPIMAGE,
  CreativeAsset_Role_ADDITIONALIMAGE,
  CreativeAsset_Role_ADDITIONALFLASH,
  CreativeAsset_Role_PARENTVIDEO,
  CreativeAsset_Role_TRANSCODEDVIDEO,
  CreativeAsset_Role_Other,
  CreativeAsset_Role_ALTERNATEVIDEO,
  CreativeAsset_Role_PARENTAUDIO,
  CreativeAsset_Role_TRANSCODEDAUDIO,
  CreativeAsset_Role #-}

-- | Initial wait time type before making the asset visible. Applicable to the following creative types: all RICH_MEDIA.
newtype CreativeAsset_StartTimeType = CreativeAsset_StartTimeType { fromCreativeAsset_StartTimeType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_StartTimeType_ASSETSTARTTIMETYPENONE :: CreativeAsset_StartTimeType
pattern CreativeAsset_StartTimeType_ASSETSTARTTIMETYPENONE = CreativeAsset_StartTimeType "ASSET_START_TIME_TYPE_NONE"

-- | 
pattern CreativeAsset_StartTimeType_ASSETSTARTTIMETYPECUSTOM :: CreativeAsset_StartTimeType
pattern CreativeAsset_StartTimeType_ASSETSTARTTIMETYPECUSTOM = CreativeAsset_StartTimeType "ASSET_START_TIME_TYPE_CUSTOM"

{-# COMPLETE
  CreativeAsset_StartTimeType_ASSETSTARTTIMETYPENONE,
  CreativeAsset_StartTimeType_ASSETSTARTTIMETYPECUSTOM,
  CreativeAsset_StartTimeType #-}

-- | Window mode options for flash assets. Applicable to the following creative types: FLASH/INPAGE, RICH/MEDIA/DISPLAY/EXPANDING, RICH/MEDIA/IM/EXPAND, RICH/MEDIA/DISPLAY/BANNER, and RICH/MEDIA/INPAGE_FLOATING.
newtype CreativeAsset_WindowMode = CreativeAsset_WindowMode { fromCreativeAsset_WindowMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAsset_WindowMode_Opaque :: CreativeAsset_WindowMode
pattern CreativeAsset_WindowMode_Opaque = CreativeAsset_WindowMode "OPAQUE"

-- | 
pattern CreativeAsset_WindowMode_Window :: CreativeAsset_WindowMode
pattern CreativeAsset_WindowMode_Window = CreativeAsset_WindowMode "WINDOW"

-- | 
pattern CreativeAsset_WindowMode_Transparent :: CreativeAsset_WindowMode
pattern CreativeAsset_WindowMode_Transparent = CreativeAsset_WindowMode "TRANSPARENT"

{-# COMPLETE
  CreativeAsset_WindowMode_Opaque,
  CreativeAsset_WindowMode_Window,
  CreativeAsset_WindowMode_Transparent,
  CreativeAsset_WindowMode #-}

-- | Type of asset to upload. This is a required field. FLASH and IMAGE are no longer supported for new uploads. All image assets should use HTML_IMAGE.
newtype CreativeAssetId_Type = CreativeAssetId_Type { fromCreativeAssetId_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAssetId_Type_Image :: CreativeAssetId_Type
pattern CreativeAssetId_Type_Image = CreativeAssetId_Type "IMAGE"

-- | 
pattern CreativeAssetId_Type_Flash :: CreativeAssetId_Type
pattern CreativeAssetId_Type_Flash = CreativeAssetId_Type "FLASH"

-- | 
pattern CreativeAssetId_Type_Video :: CreativeAssetId_Type
pattern CreativeAssetId_Type_Video = CreativeAssetId_Type "VIDEO"

-- | 
pattern CreativeAssetId_Type_Html :: CreativeAssetId_Type
pattern CreativeAssetId_Type_Html = CreativeAssetId_Type "HTML"

-- | 
pattern CreativeAssetId_Type_HTMLIMAGE :: CreativeAssetId_Type
pattern CreativeAssetId_Type_HTMLIMAGE = CreativeAssetId_Type "HTML_IMAGE"

-- | 
pattern CreativeAssetId_Type_Audio :: CreativeAssetId_Type
pattern CreativeAssetId_Type_Audio = CreativeAssetId_Type "AUDIO"

{-# COMPLETE
  CreativeAssetId_Type_Image,
  CreativeAssetId_Type_Flash,
  CreativeAssetId_Type_Video,
  CreativeAssetId_Type_Html,
  CreativeAssetId_Type_HTMLIMAGE,
  CreativeAssetId_Type_Audio,
  CreativeAssetId_Type #-}

newtype CreativeAssetMetadata_DetectedFeaturesItem = CreativeAssetMetadata_DetectedFeaturesItem { fromCreativeAssetMetadata_DetectedFeaturesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSFONTFACE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSFONTFACE = CreativeAssetMetadata_DetectedFeaturesItem "CSS_FONT_FACE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSBACKGROUNDSIZE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSBACKGROUNDSIZE = CreativeAssetMetadata_DetectedFeaturesItem "CSS_BACKGROUND_SIZE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSBORDERIMAGE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSBORDERIMAGE = CreativeAssetMetadata_DetectedFeaturesItem "CSS_BORDER_IMAGE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSBORDERRADIUS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSBORDERRADIUS = CreativeAssetMetadata_DetectedFeaturesItem "CSS_BORDER_RADIUS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSBOXSHADOW :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSBOXSHADOW = CreativeAssetMetadata_DetectedFeaturesItem "CSS_BOX_SHADOW"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSFLEXBOX :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSFLEXBOX = CreativeAssetMetadata_DetectedFeaturesItem "CSS_FLEX_BOX"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSHSLA :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSHSLA = CreativeAssetMetadata_DetectedFeaturesItem "CSS_HSLA"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSMULTIPLEBGS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSMULTIPLEBGS = CreativeAssetMetadata_DetectedFeaturesItem "CSS_MULTIPLE_BGS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSOPACITY :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSOPACITY = CreativeAssetMetadata_DetectedFeaturesItem "CSS_OPACITY"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSRGBA :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSRGBA = CreativeAssetMetadata_DetectedFeaturesItem "CSS_RGBA"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSTEXTSHADOW :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSTEXTSHADOW = CreativeAssetMetadata_DetectedFeaturesItem "CSS_TEXT_SHADOW"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSANIMATIONS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSANIMATIONS = CreativeAssetMetadata_DetectedFeaturesItem "CSS_ANIMATIONS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSCOLUMNS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSCOLUMNS = CreativeAssetMetadata_DetectedFeaturesItem "CSS_COLUMNS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSGENERATEDCONTENT :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSGENERATEDCONTENT = CreativeAssetMetadata_DetectedFeaturesItem "CSS_GENERATED_CONTENT"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSGRADIENTS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSGRADIENTS = CreativeAssetMetadata_DetectedFeaturesItem "CSS_GRADIENTS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSREFLECTIONS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSREFLECTIONS = CreativeAssetMetadata_DetectedFeaturesItem "CSS_REFLECTIONS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSFORMS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSFORMS = CreativeAssetMetadata_DetectedFeaturesItem "CSS_TRANSFORMS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSFORMS3D :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSFORMS3D = CreativeAssetMetadata_DetectedFeaturesItem "CSS_TRANSFORMS3D"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSITIONS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSITIONS = CreativeAssetMetadata_DetectedFeaturesItem "CSS_TRANSITIONS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_APPLICATIONCACHE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_APPLICATIONCACHE = CreativeAssetMetadata_DetectedFeaturesItem "APPLICATION_CACHE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_Canvas :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_Canvas = CreativeAssetMetadata_DetectedFeaturesItem "CANVAS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_CANVASTEXT :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_CANVASTEXT = CreativeAssetMetadata_DetectedFeaturesItem "CANVAS_TEXT"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_DRAGANDDROP :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_DRAGANDDROP = CreativeAssetMetadata_DetectedFeaturesItem "DRAG_AND_DROP"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_HASHCHANGE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_HASHCHANGE = CreativeAssetMetadata_DetectedFeaturesItem "HASH_CHANGE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_History :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_History = CreativeAssetMetadata_DetectedFeaturesItem "HISTORY"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_Audio :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_Audio = CreativeAssetMetadata_DetectedFeaturesItem "AUDIO"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_Video :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_Video = CreativeAssetMetadata_DetectedFeaturesItem "VIDEO"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INDEXEDDB :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INDEXEDDB = CreativeAssetMetadata_DetectedFeaturesItem "INDEXED_DB"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRAUTOCOMPLETE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRAUTOCOMPLETE = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_AUTOCOMPLETE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRAUTOFOCUS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRAUTOFOCUS = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_AUTOFOCUS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRLIST :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRLIST = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_LIST"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRPLACEHOLDER :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRPLACEHOLDER = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_PLACEHOLDER"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMAX :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMAX = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_MAX"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMIN :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMIN = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_MIN"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMULTIPLE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMULTIPLE = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_MULTIPLE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRPATTERN :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRPATTERN = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_PATTERN"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRREQUIRED :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRREQUIRED = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_REQUIRED"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRSTEP :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRSTEP = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_ATTR_STEP"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPESEARCH :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPESEARCH = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_SEARCH"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPETEL :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPETEL = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_TEL"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEURL :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEURL = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_URL"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEEMAIL :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEEMAIL = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_EMAIL"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATETIME :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATETIME = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_DATETIME"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATE = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_DATE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEMONTH :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEMONTH = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_MONTH"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEWEEK :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEWEEK = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_WEEK"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPETIME :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPETIME = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_TIME"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATETIMELOCAL :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATETIMELOCAL = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_DATETIME_LOCAL"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPENUMBER :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPENUMBER = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_NUMBER"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPERANGE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPERANGE = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_RANGE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPECOLOR :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPECOLOR = CreativeAssetMetadata_DetectedFeaturesItem "INPUT_TYPE_COLOR"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_LOCALSTORAGE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_LOCALSTORAGE = CreativeAssetMetadata_DetectedFeaturesItem "LOCAL_STORAGE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_POSTMESSAGE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_POSTMESSAGE = CreativeAssetMetadata_DetectedFeaturesItem "POST_MESSAGE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_SESSIONSTORAGE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_SESSIONSTORAGE = CreativeAssetMetadata_DetectedFeaturesItem "SESSION_STORAGE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_WEBSOCKETS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_WEBSOCKETS = CreativeAssetMetadata_DetectedFeaturesItem "WEB_SOCKETS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_WEBSQLDATABASE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_WEBSQLDATABASE = CreativeAssetMetadata_DetectedFeaturesItem "WEB_SQL_DATABASE"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_WEBWORKERS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_WEBWORKERS = CreativeAssetMetadata_DetectedFeaturesItem "WEB_WORKERS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_GEOLOCATION :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_GEOLOCATION = CreativeAssetMetadata_DetectedFeaturesItem "GEO_LOCATION"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_INLINESVG :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_INLINESVG = CreativeAssetMetadata_DetectedFeaturesItem "INLINE_SVG"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_Smil :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_Smil = CreativeAssetMetadata_DetectedFeaturesItem "SMIL"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_SVGHREF :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_SVGHREF = CreativeAssetMetadata_DetectedFeaturesItem "SVG_HREF"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_SVGCLIPPATHS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_SVGCLIPPATHS = CreativeAssetMetadata_DetectedFeaturesItem "SVG_CLIP_PATHS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_Touch :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_Touch = CreativeAssetMetadata_DetectedFeaturesItem "TOUCH"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_Webgl :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_Webgl = CreativeAssetMetadata_DetectedFeaturesItem "WEBGL"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_SVGFILTERS :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_SVGFILTERS = CreativeAssetMetadata_DetectedFeaturesItem "SVG_FILTERS"

-- | 
pattern CreativeAssetMetadata_DetectedFeaturesItem_SVGFEIMAGE :: CreativeAssetMetadata_DetectedFeaturesItem
pattern CreativeAssetMetadata_DetectedFeaturesItem_SVGFEIMAGE = CreativeAssetMetadata_DetectedFeaturesItem "SVG_FE_IMAGE"

{-# COMPLETE
  CreativeAssetMetadata_DetectedFeaturesItem_CSSFONTFACE,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSBACKGROUNDSIZE,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSBORDERIMAGE,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSBORDERRADIUS,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSBOXSHADOW,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSFLEXBOX,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSHSLA,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSMULTIPLEBGS,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSOPACITY,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSRGBA,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSTEXTSHADOW,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSANIMATIONS,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSCOLUMNS,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSGENERATEDCONTENT,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSGRADIENTS,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSREFLECTIONS,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSFORMS,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSFORMS3D,
  CreativeAssetMetadata_DetectedFeaturesItem_CSSTRANSITIONS,
  CreativeAssetMetadata_DetectedFeaturesItem_APPLICATIONCACHE,
  CreativeAssetMetadata_DetectedFeaturesItem_Canvas,
  CreativeAssetMetadata_DetectedFeaturesItem_CANVASTEXT,
  CreativeAssetMetadata_DetectedFeaturesItem_DRAGANDDROP,
  CreativeAssetMetadata_DetectedFeaturesItem_HASHCHANGE,
  CreativeAssetMetadata_DetectedFeaturesItem_History,
  CreativeAssetMetadata_DetectedFeaturesItem_Audio,
  CreativeAssetMetadata_DetectedFeaturesItem_Video,
  CreativeAssetMetadata_DetectedFeaturesItem_INDEXEDDB,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRAUTOCOMPLETE,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRAUTOFOCUS,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRLIST,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRPLACEHOLDER,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMAX,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMIN,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRMULTIPLE,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRPATTERN,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRREQUIRED,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTATTRSTEP,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPESEARCH,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPETEL,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEURL,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEEMAIL,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATETIME,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATE,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEMONTH,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEWEEK,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPETIME,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPEDATETIMELOCAL,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPENUMBER,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPERANGE,
  CreativeAssetMetadata_DetectedFeaturesItem_INPUTTYPECOLOR,
  CreativeAssetMetadata_DetectedFeaturesItem_LOCALSTORAGE,
  CreativeAssetMetadata_DetectedFeaturesItem_POSTMESSAGE,
  CreativeAssetMetadata_DetectedFeaturesItem_SESSIONSTORAGE,
  CreativeAssetMetadata_DetectedFeaturesItem_WEBSOCKETS,
  CreativeAssetMetadata_DetectedFeaturesItem_WEBSQLDATABASE,
  CreativeAssetMetadata_DetectedFeaturesItem_WEBWORKERS,
  CreativeAssetMetadata_DetectedFeaturesItem_GEOLOCATION,
  CreativeAssetMetadata_DetectedFeaturesItem_INLINESVG,
  CreativeAssetMetadata_DetectedFeaturesItem_Smil,
  CreativeAssetMetadata_DetectedFeaturesItem_SVGHREF,
  CreativeAssetMetadata_DetectedFeaturesItem_SVGCLIPPATHS,
  CreativeAssetMetadata_DetectedFeaturesItem_Touch,
  CreativeAssetMetadata_DetectedFeaturesItem_Webgl,
  CreativeAssetMetadata_DetectedFeaturesItem_SVGFILTERS,
  CreativeAssetMetadata_DetectedFeaturesItem_SVGFEIMAGE,
  CreativeAssetMetadata_DetectedFeaturesItem #-}

newtype CreativeAssetMetadata_WarnedValidationRulesItem = CreativeAssetMetadata_WarnedValidationRulesItem { fromCreativeAssetMetadata_WarnedValidationRulesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGNONTOPLEVEL :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGNONTOPLEVEL = CreativeAssetMetadata_WarnedValidationRulesItem "CLICK_TAG_NON_TOP_LEVEL"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGMISSING :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGMISSING = CreativeAssetMetadata_WarnedValidationRulesItem "CLICK_TAG_MISSING"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGMORETHANONE :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGMORETHANONE = CreativeAssetMetadata_WarnedValidationRulesItem "CLICK_TAG_MORE_THAN_ONE"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINVALID :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINVALID = CreativeAssetMetadata_WarnedValidationRulesItem "CLICK_TAG_INVALID"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ORPHANEDASSET :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ORPHANEDASSET = CreativeAssetMetadata_WarnedValidationRulesItem "ORPHANED_ASSET"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_PRIMARYHTMLMISSING :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_PRIMARYHTMLMISSING = CreativeAssetMetadata_WarnedValidationRulesItem "PRIMARY_HTML_MISSING"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_EXTERNALFILEREFERENCED :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_EXTERNALFILEREFERENCED = CreativeAssetMetadata_WarnedValidationRulesItem "EXTERNAL_FILE_REFERENCED"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_MRAIDREFERENCED :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_MRAIDREFERENCED = CreativeAssetMetadata_WarnedValidationRulesItem "MRAID_REFERENCED"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ADMOBREFERENCED :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ADMOBREFERENCED = CreativeAssetMetadata_WarnedValidationRulesItem "ADMOB_REFERENCED"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_FILETYPEINVALID :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_FILETYPEINVALID = CreativeAssetMetadata_WarnedValidationRulesItem "FILE_TYPE_INVALID"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ZIPINVALID :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ZIPINVALID = CreativeAssetMetadata_WarnedValidationRulesItem "ZIP_INVALID"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_LINKEDFILENOTFOUND :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_LINKEDFILENOTFOUND = CreativeAssetMetadata_WarnedValidationRulesItem "LINKED_FILE_NOT_FOUND"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_MAX_FLASH_VERSION_11 :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_MAX_FLASH_VERSION_11 = CreativeAssetMetadata_WarnedValidationRulesItem "MAX_FLASH_VERSION_11"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_NOTSSLCOMPLIANT :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_NOTSSLCOMPLIANT = CreativeAssetMetadata_WarnedValidationRulesItem "NOT_SSL_COMPLIANT"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_FILEDETAILEMPTY :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_FILEDETAILEMPTY = CreativeAssetMetadata_WarnedValidationRulesItem "FILE_DETAIL_EMPTY"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ASSETINVALID :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ASSETINVALID = CreativeAssetMetadata_WarnedValidationRulesItem "ASSET_INVALID"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_GWDPROPERTIESINVALID :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_GWDPROPERTIESINVALID = CreativeAssetMetadata_WarnedValidationRulesItem "GWD_PROPERTIES_INVALID"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ENABLERUNSUPPORTEDMETHODDCM :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ENABLERUNSUPPORTEDMETHODDCM = CreativeAssetMetadata_WarnedValidationRulesItem "ENABLER_UNSUPPORTED_METHOD_DCM"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ASSETFORMATUNSUPPORTEDDCM :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_ASSETFORMATUNSUPPORTEDDCM = CreativeAssetMetadata_WarnedValidationRulesItem "ASSET_FORMAT_UNSUPPORTED_DCM"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_COMPONENTUNSUPPORTEDDCM :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_COMPONENTUNSUPPORTEDDCM = CreativeAssetMetadata_WarnedValidationRulesItem "COMPONENT_UNSUPPORTED_DCM"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_HTML5FEATUREUNSUPPORTED :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_HTML5FEATUREUNSUPPORTED = CreativeAssetMetadata_WarnedValidationRulesItem "HTML5_FEATURE_UNSUPPORTED"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINGWD :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINGWD = CreativeAssetMetadata_WarnedValidationRulesItem "CLICK_TAG_IN_GWD"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGHARDCODED :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGHARDCODED = CreativeAssetMetadata_WarnedValidationRulesItem "CLICK_TAG_HARD_CODED"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_SVGINVALID :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_SVGINVALID = CreativeAssetMetadata_WarnedValidationRulesItem "SVG_INVALID"

-- | 
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINRICHMEDIA :: CreativeAssetMetadata_WarnedValidationRulesItem
pattern CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINRICHMEDIA = CreativeAssetMetadata_WarnedValidationRulesItem "CLICK_TAG_IN_RICH_MEDIA"

{-# COMPLETE
  CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGNONTOPLEVEL,
  CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGMISSING,
  CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGMORETHANONE,
  CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINVALID,
  CreativeAssetMetadata_WarnedValidationRulesItem_ORPHANEDASSET,
  CreativeAssetMetadata_WarnedValidationRulesItem_PRIMARYHTMLMISSING,
  CreativeAssetMetadata_WarnedValidationRulesItem_EXTERNALFILEREFERENCED,
  CreativeAssetMetadata_WarnedValidationRulesItem_MRAIDREFERENCED,
  CreativeAssetMetadata_WarnedValidationRulesItem_ADMOBREFERENCED,
  CreativeAssetMetadata_WarnedValidationRulesItem_FILETYPEINVALID,
  CreativeAssetMetadata_WarnedValidationRulesItem_ZIPINVALID,
  CreativeAssetMetadata_WarnedValidationRulesItem_LINKEDFILENOTFOUND,
  CreativeAssetMetadata_WarnedValidationRulesItem_MAX_FLASH_VERSION_11,
  CreativeAssetMetadata_WarnedValidationRulesItem_NOTSSLCOMPLIANT,
  CreativeAssetMetadata_WarnedValidationRulesItem_FILEDETAILEMPTY,
  CreativeAssetMetadata_WarnedValidationRulesItem_ASSETINVALID,
  CreativeAssetMetadata_WarnedValidationRulesItem_GWDPROPERTIESINVALID,
  CreativeAssetMetadata_WarnedValidationRulesItem_ENABLERUNSUPPORTEDMETHODDCM,
  CreativeAssetMetadata_WarnedValidationRulesItem_ASSETFORMATUNSUPPORTEDDCM,
  CreativeAssetMetadata_WarnedValidationRulesItem_COMPONENTUNSUPPORTEDDCM,
  CreativeAssetMetadata_WarnedValidationRulesItem_HTML5FEATUREUNSUPPORTED,
  CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINGWD,
  CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGHARDCODED,
  CreativeAssetMetadata_WarnedValidationRulesItem_SVGINVALID,
  CreativeAssetMetadata_WarnedValidationRulesItem_CLICKTAGINRICHMEDIA,
  CreativeAssetMetadata_WarnedValidationRulesItem #-}

-- | Type of the event. This is a read-only field.
newtype CreativeCustomEvent_AdvertiserCustomEventType = CreativeCustomEvent_AdvertiserCustomEventType { fromCreativeCustomEvent_AdvertiserCustomEventType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTTIMER :: CreativeCustomEvent_AdvertiserCustomEventType
pattern CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTTIMER = CreativeCustomEvent_AdvertiserCustomEventType "ADVERTISER_EVENT_TIMER"

-- | 
pattern CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTEXIT :: CreativeCustomEvent_AdvertiserCustomEventType
pattern CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTEXIT = CreativeCustomEvent_AdvertiserCustomEventType "ADVERTISER_EVENT_EXIT"

-- | 
pattern CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTCOUNTER :: CreativeCustomEvent_AdvertiserCustomEventType
pattern CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTCOUNTER = CreativeCustomEvent_AdvertiserCustomEventType "ADVERTISER_EVENT_COUNTER"

{-# COMPLETE
  CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTTIMER,
  CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTEXIT,
  CreativeCustomEvent_AdvertiserCustomEventType_ADVERTISEREVENTCOUNTER,
  CreativeCustomEvent_AdvertiserCustomEventType #-}

-- | Artwork type used by the creative.This is a read-only field.
newtype CreativeCustomEvent_ArtworkType = CreativeCustomEvent_ArtworkType { fromCreativeCustomEvent_ArtworkType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeCustomEvent_ArtworkType_ARTWORKTYPEFLASH :: CreativeCustomEvent_ArtworkType
pattern CreativeCustomEvent_ArtworkType_ARTWORKTYPEFLASH = CreativeCustomEvent_ArtworkType "ARTWORK_TYPE_FLASH"

-- | 
pattern CreativeCustomEvent_ArtworkType_ARTWORK_TYPE_HTML5 :: CreativeCustomEvent_ArtworkType
pattern CreativeCustomEvent_ArtworkType_ARTWORK_TYPE_HTML5 = CreativeCustomEvent_ArtworkType "ARTWORK_TYPE_HTML5"

-- | 
pattern CreativeCustomEvent_ArtworkType_ARTWORKTYPEMIXED :: CreativeCustomEvent_ArtworkType
pattern CreativeCustomEvent_ArtworkType_ARTWORKTYPEMIXED = CreativeCustomEvent_ArtworkType "ARTWORK_TYPE_MIXED"

-- | 
pattern CreativeCustomEvent_ArtworkType_ARTWORKTYPEIMAGE :: CreativeCustomEvent_ArtworkType
pattern CreativeCustomEvent_ArtworkType_ARTWORKTYPEIMAGE = CreativeCustomEvent_ArtworkType "ARTWORK_TYPE_IMAGE"

{-# COMPLETE
  CreativeCustomEvent_ArtworkType_ARTWORKTYPEFLASH,
  CreativeCustomEvent_ArtworkType_ARTWORK_TYPE_HTML5,
  CreativeCustomEvent_ArtworkType_ARTWORKTYPEMIXED,
  CreativeCustomEvent_ArtworkType_ARTWORKTYPEIMAGE,
  CreativeCustomEvent_ArtworkType #-}

-- | Target type used by the event.
newtype CreativeCustomEvent_TargetType = CreativeCustomEvent_TargetType { fromCreativeCustomEvent_TargetType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeCustomEvent_TargetType_TARGETBLANK :: CreativeCustomEvent_TargetType
pattern CreativeCustomEvent_TargetType_TARGETBLANK = CreativeCustomEvent_TargetType "TARGET_BLANK"

-- | 
pattern CreativeCustomEvent_TargetType_TARGETTOP :: CreativeCustomEvent_TargetType
pattern CreativeCustomEvent_TargetType_TARGETTOP = CreativeCustomEvent_TargetType "TARGET_TOP"

-- | 
pattern CreativeCustomEvent_TargetType_TARGETSELF :: CreativeCustomEvent_TargetType
pattern CreativeCustomEvent_TargetType_TARGETSELF = CreativeCustomEvent_TargetType "TARGET_SELF"

-- | 
pattern CreativeCustomEvent_TargetType_TARGETPARENT :: CreativeCustomEvent_TargetType
pattern CreativeCustomEvent_TargetType_TARGETPARENT = CreativeCustomEvent_TargetType "TARGET_PARENT"

-- | 
pattern CreativeCustomEvent_TargetType_TARGETPOPUP :: CreativeCustomEvent_TargetType
pattern CreativeCustomEvent_TargetType_TARGETPOPUP = CreativeCustomEvent_TargetType "TARGET_POPUP"

{-# COMPLETE
  CreativeCustomEvent_TargetType_TARGETBLANK,
  CreativeCustomEvent_TargetType_TARGETTOP,
  CreativeCustomEvent_TargetType_TARGETSELF,
  CreativeCustomEvent_TargetType_TARGETPARENT,
  CreativeCustomEvent_TargetType_TARGETPOPUP,
  CreativeCustomEvent_TargetType #-}

-- | Creative group number of the creative group assignment.
newtype CreativeGroupAssignment_CreativeGroupNumber = CreativeGroupAssignment_CreativeGroupNumber { fromCreativeGroupAssignment_CreativeGroupNumber :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeGroupAssignment_CreativeGroupNumber_CREATIVEGROUPONE :: CreativeGroupAssignment_CreativeGroupNumber
pattern CreativeGroupAssignment_CreativeGroupNumber_CREATIVEGROUPONE = CreativeGroupAssignment_CreativeGroupNumber "CREATIVE_GROUP_ONE"

-- | 
pattern CreativeGroupAssignment_CreativeGroupNumber_CREATIVEGROUPTWO :: CreativeGroupAssignment_CreativeGroupNumber
pattern CreativeGroupAssignment_CreativeGroupNumber_CREATIVEGROUPTWO = CreativeGroupAssignment_CreativeGroupNumber "CREATIVE_GROUP_TWO"

{-# COMPLETE
  CreativeGroupAssignment_CreativeGroupNumber_CREATIVEGROUPONE,
  CreativeGroupAssignment_CreativeGroupNumber_CREATIVEGROUPTWO,
  CreativeGroupAssignment_CreativeGroupNumber #-}

-- | Optimization model for this configuration.
newtype CreativeOptimizationConfiguration_OptimizationModel = CreativeOptimizationConfiguration_OptimizationModel { fromCreativeOptimizationConfiguration_OptimizationModel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeOptimizationConfiguration_OptimizationModel_Click :: CreativeOptimizationConfiguration_OptimizationModel
pattern CreativeOptimizationConfiguration_OptimizationModel_Click = CreativeOptimizationConfiguration_OptimizationModel "CLICK"

-- | 
pattern CreativeOptimizationConfiguration_OptimizationModel_POSTCLICK :: CreativeOptimizationConfiguration_OptimizationModel
pattern CreativeOptimizationConfiguration_OptimizationModel_POSTCLICK = CreativeOptimizationConfiguration_OptimizationModel "POST_CLICK"

-- | 
pattern CreativeOptimizationConfiguration_OptimizationModel_POSTIMPRESSION :: CreativeOptimizationConfiguration_OptimizationModel
pattern CreativeOptimizationConfiguration_OptimizationModel_POSTIMPRESSION = CreativeOptimizationConfiguration_OptimizationModel "POST_IMPRESSION"

-- | 
pattern CreativeOptimizationConfiguration_OptimizationModel_POSTCLICKANDIMPRESSION :: CreativeOptimizationConfiguration_OptimizationModel
pattern CreativeOptimizationConfiguration_OptimizationModel_POSTCLICKANDIMPRESSION = CreativeOptimizationConfiguration_OptimizationModel "POST_CLICK_AND_IMPRESSION"

-- | 
pattern CreativeOptimizationConfiguration_OptimizationModel_VIDEOCOMPLETION :: CreativeOptimizationConfiguration_OptimizationModel
pattern CreativeOptimizationConfiguration_OptimizationModel_VIDEOCOMPLETION = CreativeOptimizationConfiguration_OptimizationModel "VIDEO_COMPLETION"

{-# COMPLETE
  CreativeOptimizationConfiguration_OptimizationModel_Click,
  CreativeOptimizationConfiguration_OptimizationModel_POSTCLICK,
  CreativeOptimizationConfiguration_OptimizationModel_POSTIMPRESSION,
  CreativeOptimizationConfiguration_OptimizationModel_POSTCLICKANDIMPRESSION,
  CreativeOptimizationConfiguration_OptimizationModel_VIDEOCOMPLETION,
  CreativeOptimizationConfiguration_OptimizationModel #-}

-- | Type of creative rotation. Can be used to specify whether to use sequential or random rotation.
newtype CreativeRotation_Type = CreativeRotation_Type { fromCreativeRotation_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeRotation_Type_CREATIVEROTATIONTYPESEQUENTIAL :: CreativeRotation_Type
pattern CreativeRotation_Type_CREATIVEROTATIONTYPESEQUENTIAL = CreativeRotation_Type "CREATIVE_ROTATION_TYPE_SEQUENTIAL"

-- | 
pattern CreativeRotation_Type_CREATIVEROTATIONTYPERANDOM :: CreativeRotation_Type
pattern CreativeRotation_Type_CREATIVEROTATIONTYPERANDOM = CreativeRotation_Type "CREATIVE_ROTATION_TYPE_RANDOM"

{-# COMPLETE
  CreativeRotation_Type_CREATIVEROTATIONTYPESEQUENTIAL,
  CreativeRotation_Type_CREATIVEROTATIONTYPERANDOM,
  CreativeRotation_Type #-}

-- | Strategy for calculating weights. Used with CREATIVE/ROTATION/TYPE_RANDOM.
newtype CreativeRotation_WeightCalculationStrategy = CreativeRotation_WeightCalculationStrategy { fromCreativeRotation_WeightCalculationStrategy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYEQUAL :: CreativeRotation_WeightCalculationStrategy
pattern CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYEQUAL = CreativeRotation_WeightCalculationStrategy "WEIGHT_STRATEGY_EQUAL"

-- | 
pattern CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYCUSTOM :: CreativeRotation_WeightCalculationStrategy
pattern CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYCUSTOM = CreativeRotation_WeightCalculationStrategy "WEIGHT_STRATEGY_CUSTOM"

-- | 
pattern CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYHIGHESTCTR :: CreativeRotation_WeightCalculationStrategy
pattern CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYHIGHESTCTR = CreativeRotation_WeightCalculationStrategy "WEIGHT_STRATEGY_HIGHEST_CTR"

-- | 
pattern CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYOPTIMIZED :: CreativeRotation_WeightCalculationStrategy
pattern CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYOPTIMIZED = CreativeRotation_WeightCalculationStrategy "WEIGHT_STRATEGY_OPTIMIZED"

{-# COMPLETE
  CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYEQUAL,
  CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYCUSTOM,
  CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYHIGHESTCTR,
  CreativeRotation_WeightCalculationStrategy_WEIGHTSTRATEGYOPTIMIZED,
  CreativeRotation_WeightCalculationStrategy #-}

-- | The type of custom floodlight variable to supply a value for. These map to the \"u[1-20]=\" in the tags.
newtype CustomFloodlightVariable_Type = CustomFloodlightVariable_Type { fromCustomFloodlightVariable_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CustomFloodlightVariable_Type_U1 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U1 = CustomFloodlightVariable_Type "U1"

-- | 
pattern CustomFloodlightVariable_Type_U2 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U2 = CustomFloodlightVariable_Type "U2"

-- | 
pattern CustomFloodlightVariable_Type_U3 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U3 = CustomFloodlightVariable_Type "U3"

-- | 
pattern CustomFloodlightVariable_Type_U4 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U4 = CustomFloodlightVariable_Type "U4"

-- | 
pattern CustomFloodlightVariable_Type_U5 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U5 = CustomFloodlightVariable_Type "U5"

-- | 
pattern CustomFloodlightVariable_Type_U6 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U6 = CustomFloodlightVariable_Type "U6"

-- | 
pattern CustomFloodlightVariable_Type_U7 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U7 = CustomFloodlightVariable_Type "U7"

-- | 
pattern CustomFloodlightVariable_Type_U8 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U8 = CustomFloodlightVariable_Type "U8"

-- | 
pattern CustomFloodlightVariable_Type_U9 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U9 = CustomFloodlightVariable_Type "U9"

-- | 
pattern CustomFloodlightVariable_Type_U10 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U10 = CustomFloodlightVariable_Type "U10"

-- | 
pattern CustomFloodlightVariable_Type_U11 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U11 = CustomFloodlightVariable_Type "U11"

-- | 
pattern CustomFloodlightVariable_Type_U12 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U12 = CustomFloodlightVariable_Type "U12"

-- | 
pattern CustomFloodlightVariable_Type_U13 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U13 = CustomFloodlightVariable_Type "U13"

-- | 
pattern CustomFloodlightVariable_Type_U14 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U14 = CustomFloodlightVariable_Type "U14"

-- | 
pattern CustomFloodlightVariable_Type_U15 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U15 = CustomFloodlightVariable_Type "U15"

-- | 
pattern CustomFloodlightVariable_Type_U16 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U16 = CustomFloodlightVariable_Type "U16"

-- | 
pattern CustomFloodlightVariable_Type_U17 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U17 = CustomFloodlightVariable_Type "U17"

-- | 
pattern CustomFloodlightVariable_Type_U18 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U18 = CustomFloodlightVariable_Type "U18"

-- | 
pattern CustomFloodlightVariable_Type_U19 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U19 = CustomFloodlightVariable_Type "U19"

-- | 
pattern CustomFloodlightVariable_Type_U20 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U20 = CustomFloodlightVariable_Type "U20"

-- | 
pattern CustomFloodlightVariable_Type_U21 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U21 = CustomFloodlightVariable_Type "U21"

-- | 
pattern CustomFloodlightVariable_Type_U22 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U22 = CustomFloodlightVariable_Type "U22"

-- | 
pattern CustomFloodlightVariable_Type_U23 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U23 = CustomFloodlightVariable_Type "U23"

-- | 
pattern CustomFloodlightVariable_Type_U24 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U24 = CustomFloodlightVariable_Type "U24"

-- | 
pattern CustomFloodlightVariable_Type_U25 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U25 = CustomFloodlightVariable_Type "U25"

-- | 
pattern CustomFloodlightVariable_Type_U26 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U26 = CustomFloodlightVariable_Type "U26"

-- | 
pattern CustomFloodlightVariable_Type_U27 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U27 = CustomFloodlightVariable_Type "U27"

-- | 
pattern CustomFloodlightVariable_Type_U28 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U28 = CustomFloodlightVariable_Type "U28"

-- | 
pattern CustomFloodlightVariable_Type_U29 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U29 = CustomFloodlightVariable_Type "U29"

-- | 
pattern CustomFloodlightVariable_Type_U30 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U30 = CustomFloodlightVariable_Type "U30"

-- | 
pattern CustomFloodlightVariable_Type_U31 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U31 = CustomFloodlightVariable_Type "U31"

-- | 
pattern CustomFloodlightVariable_Type_U32 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U32 = CustomFloodlightVariable_Type "U32"

-- | 
pattern CustomFloodlightVariable_Type_U33 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U33 = CustomFloodlightVariable_Type "U33"

-- | 
pattern CustomFloodlightVariable_Type_U34 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U34 = CustomFloodlightVariable_Type "U34"

-- | 
pattern CustomFloodlightVariable_Type_U35 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U35 = CustomFloodlightVariable_Type "U35"

-- | 
pattern CustomFloodlightVariable_Type_U36 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U36 = CustomFloodlightVariable_Type "U36"

-- | 
pattern CustomFloodlightVariable_Type_U37 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U37 = CustomFloodlightVariable_Type "U37"

-- | 
pattern CustomFloodlightVariable_Type_U38 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U38 = CustomFloodlightVariable_Type "U38"

-- | 
pattern CustomFloodlightVariable_Type_U39 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U39 = CustomFloodlightVariable_Type "U39"

-- | 
pattern CustomFloodlightVariable_Type_U40 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U40 = CustomFloodlightVariable_Type "U40"

-- | 
pattern CustomFloodlightVariable_Type_U41 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U41 = CustomFloodlightVariable_Type "U41"

-- | 
pattern CustomFloodlightVariable_Type_U42 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U42 = CustomFloodlightVariable_Type "U42"

-- | 
pattern CustomFloodlightVariable_Type_U43 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U43 = CustomFloodlightVariable_Type "U43"

-- | 
pattern CustomFloodlightVariable_Type_U44 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U44 = CustomFloodlightVariable_Type "U44"

-- | 
pattern CustomFloodlightVariable_Type_U45 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U45 = CustomFloodlightVariable_Type "U45"

-- | 
pattern CustomFloodlightVariable_Type_U46 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U46 = CustomFloodlightVariable_Type "U46"

-- | 
pattern CustomFloodlightVariable_Type_U47 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U47 = CustomFloodlightVariable_Type "U47"

-- | 
pattern CustomFloodlightVariable_Type_U48 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U48 = CustomFloodlightVariable_Type "U48"

-- | 
pattern CustomFloodlightVariable_Type_U49 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U49 = CustomFloodlightVariable_Type "U49"

-- | 
pattern CustomFloodlightVariable_Type_U50 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U50 = CustomFloodlightVariable_Type "U50"

-- | 
pattern CustomFloodlightVariable_Type_U51 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U51 = CustomFloodlightVariable_Type "U51"

-- | 
pattern CustomFloodlightVariable_Type_U52 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U52 = CustomFloodlightVariable_Type "U52"

-- | 
pattern CustomFloodlightVariable_Type_U53 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U53 = CustomFloodlightVariable_Type "U53"

-- | 
pattern CustomFloodlightVariable_Type_U54 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U54 = CustomFloodlightVariable_Type "U54"

-- | 
pattern CustomFloodlightVariable_Type_U55 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U55 = CustomFloodlightVariable_Type "U55"

-- | 
pattern CustomFloodlightVariable_Type_U56 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U56 = CustomFloodlightVariable_Type "U56"

-- | 
pattern CustomFloodlightVariable_Type_U57 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U57 = CustomFloodlightVariable_Type "U57"

-- | 
pattern CustomFloodlightVariable_Type_U58 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U58 = CustomFloodlightVariable_Type "U58"

-- | 
pattern CustomFloodlightVariable_Type_U59 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U59 = CustomFloodlightVariable_Type "U59"

-- | 
pattern CustomFloodlightVariable_Type_U60 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U60 = CustomFloodlightVariable_Type "U60"

-- | 
pattern CustomFloodlightVariable_Type_U61 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U61 = CustomFloodlightVariable_Type "U61"

-- | 
pattern CustomFloodlightVariable_Type_U62 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U62 = CustomFloodlightVariable_Type "U62"

-- | 
pattern CustomFloodlightVariable_Type_U63 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U63 = CustomFloodlightVariable_Type "U63"

-- | 
pattern CustomFloodlightVariable_Type_U64 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U64 = CustomFloodlightVariable_Type "U64"

-- | 
pattern CustomFloodlightVariable_Type_U65 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U65 = CustomFloodlightVariable_Type "U65"

-- | 
pattern CustomFloodlightVariable_Type_U66 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U66 = CustomFloodlightVariable_Type "U66"

-- | 
pattern CustomFloodlightVariable_Type_U67 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U67 = CustomFloodlightVariable_Type "U67"

-- | 
pattern CustomFloodlightVariable_Type_U68 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U68 = CustomFloodlightVariable_Type "U68"

-- | 
pattern CustomFloodlightVariable_Type_U69 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U69 = CustomFloodlightVariable_Type "U69"

-- | 
pattern CustomFloodlightVariable_Type_U70 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U70 = CustomFloodlightVariable_Type "U70"

-- | 
pattern CustomFloodlightVariable_Type_U71 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U71 = CustomFloodlightVariable_Type "U71"

-- | 
pattern CustomFloodlightVariable_Type_U72 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U72 = CustomFloodlightVariable_Type "U72"

-- | 
pattern CustomFloodlightVariable_Type_U73 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U73 = CustomFloodlightVariable_Type "U73"

-- | 
pattern CustomFloodlightVariable_Type_U74 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U74 = CustomFloodlightVariable_Type "U74"

-- | 
pattern CustomFloodlightVariable_Type_U75 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U75 = CustomFloodlightVariable_Type "U75"

-- | 
pattern CustomFloodlightVariable_Type_U76 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U76 = CustomFloodlightVariable_Type "U76"

-- | 
pattern CustomFloodlightVariable_Type_U77 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U77 = CustomFloodlightVariable_Type "U77"

-- | 
pattern CustomFloodlightVariable_Type_U78 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U78 = CustomFloodlightVariable_Type "U78"

-- | 
pattern CustomFloodlightVariable_Type_U79 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U79 = CustomFloodlightVariable_Type "U79"

-- | 
pattern CustomFloodlightVariable_Type_U80 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U80 = CustomFloodlightVariable_Type "U80"

-- | 
pattern CustomFloodlightVariable_Type_U81 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U81 = CustomFloodlightVariable_Type "U81"

-- | 
pattern CustomFloodlightVariable_Type_U82 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U82 = CustomFloodlightVariable_Type "U82"

-- | 
pattern CustomFloodlightVariable_Type_U83 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U83 = CustomFloodlightVariable_Type "U83"

-- | 
pattern CustomFloodlightVariable_Type_U84 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U84 = CustomFloodlightVariable_Type "U84"

-- | 
pattern CustomFloodlightVariable_Type_U85 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U85 = CustomFloodlightVariable_Type "U85"

-- | 
pattern CustomFloodlightVariable_Type_U86 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U86 = CustomFloodlightVariable_Type "U86"

-- | 
pattern CustomFloodlightVariable_Type_U87 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U87 = CustomFloodlightVariable_Type "U87"

-- | 
pattern CustomFloodlightVariable_Type_U88 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U88 = CustomFloodlightVariable_Type "U88"

-- | 
pattern CustomFloodlightVariable_Type_U89 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U89 = CustomFloodlightVariable_Type "U89"

-- | 
pattern CustomFloodlightVariable_Type_U90 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U90 = CustomFloodlightVariable_Type "U90"

-- | 
pattern CustomFloodlightVariable_Type_U91 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U91 = CustomFloodlightVariable_Type "U91"

-- | 
pattern CustomFloodlightVariable_Type_U92 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U92 = CustomFloodlightVariable_Type "U92"

-- | 
pattern CustomFloodlightVariable_Type_U93 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U93 = CustomFloodlightVariable_Type "U93"

-- | 
pattern CustomFloodlightVariable_Type_U94 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U94 = CustomFloodlightVariable_Type "U94"

-- | 
pattern CustomFloodlightVariable_Type_U95 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U95 = CustomFloodlightVariable_Type "U95"

-- | 
pattern CustomFloodlightVariable_Type_U96 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U96 = CustomFloodlightVariable_Type "U96"

-- | 
pattern CustomFloodlightVariable_Type_U97 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U97 = CustomFloodlightVariable_Type "U97"

-- | 
pattern CustomFloodlightVariable_Type_U98 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U98 = CustomFloodlightVariable_Type "U98"

-- | 
pattern CustomFloodlightVariable_Type_U99 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U99 = CustomFloodlightVariable_Type "U99"

-- | 
pattern CustomFloodlightVariable_Type_U100 :: CustomFloodlightVariable_Type
pattern CustomFloodlightVariable_Type_U100 = CustomFloodlightVariable_Type "U100"

{-# COMPLETE
  CustomFloodlightVariable_Type_U1,
  CustomFloodlightVariable_Type_U2,
  CustomFloodlightVariable_Type_U3,
  CustomFloodlightVariable_Type_U4,
  CustomFloodlightVariable_Type_U5,
  CustomFloodlightVariable_Type_U6,
  CustomFloodlightVariable_Type_U7,
  CustomFloodlightVariable_Type_U8,
  CustomFloodlightVariable_Type_U9,
  CustomFloodlightVariable_Type_U10,
  CustomFloodlightVariable_Type_U11,
  CustomFloodlightVariable_Type_U12,
  CustomFloodlightVariable_Type_U13,
  CustomFloodlightVariable_Type_U14,
  CustomFloodlightVariable_Type_U15,
  CustomFloodlightVariable_Type_U16,
  CustomFloodlightVariable_Type_U17,
  CustomFloodlightVariable_Type_U18,
  CustomFloodlightVariable_Type_U19,
  CustomFloodlightVariable_Type_U20,
  CustomFloodlightVariable_Type_U21,
  CustomFloodlightVariable_Type_U22,
  CustomFloodlightVariable_Type_U23,
  CustomFloodlightVariable_Type_U24,
  CustomFloodlightVariable_Type_U25,
  CustomFloodlightVariable_Type_U26,
  CustomFloodlightVariable_Type_U27,
  CustomFloodlightVariable_Type_U28,
  CustomFloodlightVariable_Type_U29,
  CustomFloodlightVariable_Type_U30,
  CustomFloodlightVariable_Type_U31,
  CustomFloodlightVariable_Type_U32,
  CustomFloodlightVariable_Type_U33,
  CustomFloodlightVariable_Type_U34,
  CustomFloodlightVariable_Type_U35,
  CustomFloodlightVariable_Type_U36,
  CustomFloodlightVariable_Type_U37,
  CustomFloodlightVariable_Type_U38,
  CustomFloodlightVariable_Type_U39,
  CustomFloodlightVariable_Type_U40,
  CustomFloodlightVariable_Type_U41,
  CustomFloodlightVariable_Type_U42,
  CustomFloodlightVariable_Type_U43,
  CustomFloodlightVariable_Type_U44,
  CustomFloodlightVariable_Type_U45,
  CustomFloodlightVariable_Type_U46,
  CustomFloodlightVariable_Type_U47,
  CustomFloodlightVariable_Type_U48,
  CustomFloodlightVariable_Type_U49,
  CustomFloodlightVariable_Type_U50,
  CustomFloodlightVariable_Type_U51,
  CustomFloodlightVariable_Type_U52,
  CustomFloodlightVariable_Type_U53,
  CustomFloodlightVariable_Type_U54,
  CustomFloodlightVariable_Type_U55,
  CustomFloodlightVariable_Type_U56,
  CustomFloodlightVariable_Type_U57,
  CustomFloodlightVariable_Type_U58,
  CustomFloodlightVariable_Type_U59,
  CustomFloodlightVariable_Type_U60,
  CustomFloodlightVariable_Type_U61,
  CustomFloodlightVariable_Type_U62,
  CustomFloodlightVariable_Type_U63,
  CustomFloodlightVariable_Type_U64,
  CustomFloodlightVariable_Type_U65,
  CustomFloodlightVariable_Type_U66,
  CustomFloodlightVariable_Type_U67,
  CustomFloodlightVariable_Type_U68,
  CustomFloodlightVariable_Type_U69,
  CustomFloodlightVariable_Type_U70,
  CustomFloodlightVariable_Type_U71,
  CustomFloodlightVariable_Type_U72,
  CustomFloodlightVariable_Type_U73,
  CustomFloodlightVariable_Type_U74,
  CustomFloodlightVariable_Type_U75,
  CustomFloodlightVariable_Type_U76,
  CustomFloodlightVariable_Type_U77,
  CustomFloodlightVariable_Type_U78,
  CustomFloodlightVariable_Type_U79,
  CustomFloodlightVariable_Type_U80,
  CustomFloodlightVariable_Type_U81,
  CustomFloodlightVariable_Type_U82,
  CustomFloodlightVariable_Type_U83,
  CustomFloodlightVariable_Type_U84,
  CustomFloodlightVariable_Type_U85,
  CustomFloodlightVariable_Type_U86,
  CustomFloodlightVariable_Type_U87,
  CustomFloodlightVariable_Type_U88,
  CustomFloodlightVariable_Type_U89,
  CustomFloodlightVariable_Type_U90,
  CustomFloodlightVariable_Type_U91,
  CustomFloodlightVariable_Type_U92,
  CustomFloodlightVariable_Type_U93,
  CustomFloodlightVariable_Type_U94,
  CustomFloodlightVariable_Type_U95,
  CustomFloodlightVariable_Type_U96,
  CustomFloodlightVariable_Type_U97,
  CustomFloodlightVariable_Type_U98,
  CustomFloodlightVariable_Type_U99,
  CustomFloodlightVariable_Type_U100,
  CustomFloodlightVariable_Type #-}

-- | The date range relative to the date of when the report is run.
newtype DateRange_RelativeDateRange = DateRange_RelativeDateRange { fromDateRange_RelativeDateRange :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DateRange_RelativeDateRange_Today :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_Today = DateRange_RelativeDateRange "TODAY"

-- | 
pattern DateRange_RelativeDateRange_Yesterday :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_Yesterday = DateRange_RelativeDateRange "YESTERDAY"

-- | 
pattern DateRange_RelativeDateRange_WEEKTODATE :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_WEEKTODATE = DateRange_RelativeDateRange "WEEK_TO_DATE"

-- | 
pattern DateRange_RelativeDateRange_MONTHTODATE :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_MONTHTODATE = DateRange_RelativeDateRange "MONTH_TO_DATE"

-- | 
pattern DateRange_RelativeDateRange_QUARTERTODATE :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_QUARTERTODATE = DateRange_RelativeDateRange "QUARTER_TO_DATE"

-- | 
pattern DateRange_RelativeDateRange_YEARTODATE :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_YEARTODATE = DateRange_RelativeDateRange "YEAR_TO_DATE"

-- | 
pattern DateRange_RelativeDateRange_PREVIOUSWEEK :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_PREVIOUSWEEK = DateRange_RelativeDateRange "PREVIOUS_WEEK"

-- | 
pattern DateRange_RelativeDateRange_PREVIOUSMONTH :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_PREVIOUSMONTH = DateRange_RelativeDateRange "PREVIOUS_MONTH"

-- | 
pattern DateRange_RelativeDateRange_PREVIOUSQUARTER :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_PREVIOUSQUARTER = DateRange_RelativeDateRange "PREVIOUS_QUARTER"

-- | 
pattern DateRange_RelativeDateRange_PREVIOUSYEAR :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_PREVIOUSYEAR = DateRange_RelativeDateRange "PREVIOUS_YEAR"

-- | 
pattern DateRange_RelativeDateRange_LAST7DAYS :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_LAST7DAYS = DateRange_RelativeDateRange "LAST_7_DAYS"

-- | 
pattern DateRange_RelativeDateRange_LAST30DAYS :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_LAST30DAYS = DateRange_RelativeDateRange "LAST_30_DAYS"

-- | 
pattern DateRange_RelativeDateRange_LAST90DAYS :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_LAST90DAYS = DateRange_RelativeDateRange "LAST_90_DAYS"

-- | 
pattern DateRange_RelativeDateRange_LAST365DAYS :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_LAST365DAYS = DateRange_RelativeDateRange "LAST_365_DAYS"

-- | 
pattern DateRange_RelativeDateRange_LAST24MONTHS :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_LAST24MONTHS = DateRange_RelativeDateRange "LAST_24_MONTHS"

-- | 
pattern DateRange_RelativeDateRange_LAST14DAYS :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_LAST14DAYS = DateRange_RelativeDateRange "LAST_14_DAYS"

-- | 
pattern DateRange_RelativeDateRange_LAST60DAYS :: DateRange_RelativeDateRange
pattern DateRange_RelativeDateRange_LAST60DAYS = DateRange_RelativeDateRange "LAST_60_DAYS"

{-# COMPLETE
  DateRange_RelativeDateRange_Today,
  DateRange_RelativeDateRange_Yesterday,
  DateRange_RelativeDateRange_WEEKTODATE,
  DateRange_RelativeDateRange_MONTHTODATE,
  DateRange_RelativeDateRange_QUARTERTODATE,
  DateRange_RelativeDateRange_YEARTODATE,
  DateRange_RelativeDateRange_PREVIOUSWEEK,
  DateRange_RelativeDateRange_PREVIOUSMONTH,
  DateRange_RelativeDateRange_PREVIOUSQUARTER,
  DateRange_RelativeDateRange_PREVIOUSYEAR,
  DateRange_RelativeDateRange_LAST7DAYS,
  DateRange_RelativeDateRange_LAST30DAYS,
  DateRange_RelativeDateRange_LAST90DAYS,
  DateRange_RelativeDateRange_LAST365DAYS,
  DateRange_RelativeDateRange_LAST24MONTHS,
  DateRange_RelativeDateRange_LAST14DAYS,
  DateRange_RelativeDateRange_LAST60DAYS,
  DateRange_RelativeDateRange #-}

newtype DayPartTargeting_DaysOfWeekItem = DayPartTargeting_DaysOfWeekItem { fromDayPartTargeting_DaysOfWeekItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DayPartTargeting_DaysOfWeekItem_Monday :: DayPartTargeting_DaysOfWeekItem
pattern DayPartTargeting_DaysOfWeekItem_Monday = DayPartTargeting_DaysOfWeekItem "MONDAY"

-- | 
pattern DayPartTargeting_DaysOfWeekItem_Tuesday :: DayPartTargeting_DaysOfWeekItem
pattern DayPartTargeting_DaysOfWeekItem_Tuesday = DayPartTargeting_DaysOfWeekItem "TUESDAY"

-- | 
pattern DayPartTargeting_DaysOfWeekItem_Wednesday :: DayPartTargeting_DaysOfWeekItem
pattern DayPartTargeting_DaysOfWeekItem_Wednesday = DayPartTargeting_DaysOfWeekItem "WEDNESDAY"

-- | 
pattern DayPartTargeting_DaysOfWeekItem_Thursday :: DayPartTargeting_DaysOfWeekItem
pattern DayPartTargeting_DaysOfWeekItem_Thursday = DayPartTargeting_DaysOfWeekItem "THURSDAY"

-- | 
pattern DayPartTargeting_DaysOfWeekItem_Friday :: DayPartTargeting_DaysOfWeekItem
pattern DayPartTargeting_DaysOfWeekItem_Friday = DayPartTargeting_DaysOfWeekItem "FRIDAY"

-- | 
pattern DayPartTargeting_DaysOfWeekItem_Saturday :: DayPartTargeting_DaysOfWeekItem
pattern DayPartTargeting_DaysOfWeekItem_Saturday = DayPartTargeting_DaysOfWeekItem "SATURDAY"

-- | 
pattern DayPartTargeting_DaysOfWeekItem_Sunday :: DayPartTargeting_DaysOfWeekItem
pattern DayPartTargeting_DaysOfWeekItem_Sunday = DayPartTargeting_DaysOfWeekItem "SUNDAY"

{-# COMPLETE
  DayPartTargeting_DaysOfWeekItem_Monday,
  DayPartTargeting_DaysOfWeekItem_Tuesday,
  DayPartTargeting_DaysOfWeekItem_Wednesday,
  DayPartTargeting_DaysOfWeekItem_Thursday,
  DayPartTargeting_DaysOfWeekItem_Friday,
  DayPartTargeting_DaysOfWeekItem_Saturday,
  DayPartTargeting_DaysOfWeekItem_Sunday,
  DayPartTargeting_DaysOfWeekItem #-}

-- | Serving priority of an ad, with respect to other ads. The lower the priority number, the greater the priority with which it is served.
newtype DeliverySchedule_Priority = DeliverySchedule_Priority { fromDeliverySchedule_Priority :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_01 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_01 = DeliverySchedule_Priority "AD_PRIORITY_01"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_02 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_02 = DeliverySchedule_Priority "AD_PRIORITY_02"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_03 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_03 = DeliverySchedule_Priority "AD_PRIORITY_03"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_04 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_04 = DeliverySchedule_Priority "AD_PRIORITY_04"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_05 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_05 = DeliverySchedule_Priority "AD_PRIORITY_05"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_06 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_06 = DeliverySchedule_Priority "AD_PRIORITY_06"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_07 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_07 = DeliverySchedule_Priority "AD_PRIORITY_07"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_08 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_08 = DeliverySchedule_Priority "AD_PRIORITY_08"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_09 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_09 = DeliverySchedule_Priority "AD_PRIORITY_09"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_10 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_10 = DeliverySchedule_Priority "AD_PRIORITY_10"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_11 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_11 = DeliverySchedule_Priority "AD_PRIORITY_11"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_12 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_12 = DeliverySchedule_Priority "AD_PRIORITY_12"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_13 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_13 = DeliverySchedule_Priority "AD_PRIORITY_13"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_14 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_14 = DeliverySchedule_Priority "AD_PRIORITY_14"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_15 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_15 = DeliverySchedule_Priority "AD_PRIORITY_15"

-- | 
pattern DeliverySchedule_Priority_AD_PRIORITY_16 :: DeliverySchedule_Priority
pattern DeliverySchedule_Priority_AD_PRIORITY_16 = DeliverySchedule_Priority "AD_PRIORITY_16"

{-# COMPLETE
  DeliverySchedule_Priority_AD_PRIORITY_01,
  DeliverySchedule_Priority_AD_PRIORITY_02,
  DeliverySchedule_Priority_AD_PRIORITY_03,
  DeliverySchedule_Priority_AD_PRIORITY_04,
  DeliverySchedule_Priority_AD_PRIORITY_05,
  DeliverySchedule_Priority_AD_PRIORITY_06,
  DeliverySchedule_Priority_AD_PRIORITY_07,
  DeliverySchedule_Priority_AD_PRIORITY_08,
  DeliverySchedule_Priority_AD_PRIORITY_09,
  DeliverySchedule_Priority_AD_PRIORITY_10,
  DeliverySchedule_Priority_AD_PRIORITY_11,
  DeliverySchedule_Priority_AD_PRIORITY_12,
  DeliverySchedule_Priority_AD_PRIORITY_13,
  DeliverySchedule_Priority_AD_PRIORITY_14,
  DeliverySchedule_Priority_AD_PRIORITY_15,
  DeliverySchedule_Priority_AD_PRIORITY_16,
  DeliverySchedule_Priority #-}

-- | Determines how the \'value\' field is matched when filtering. If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'/\' is allowed as a placeholder for variable length character sequences, and it can be escaped with a backslash. Note, only paid search dimensions (\'dfa:paidSearch/\') allow a matchType other than EXACT.
newtype DimensionValue_MatchType = DimensionValue_MatchType { fromDimensionValue_MatchType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DimensionValue_MatchType_Exact :: DimensionValue_MatchType
pattern DimensionValue_MatchType_Exact = DimensionValue_MatchType "EXACT"

-- | 
pattern DimensionValue_MatchType_BEGINSWITH :: DimensionValue_MatchType
pattern DimensionValue_MatchType_BEGINSWITH = DimensionValue_MatchType "BEGINS_WITH"

-- | 
pattern DimensionValue_MatchType_Contains :: DimensionValue_MatchType
pattern DimensionValue_MatchType_Contains = DimensionValue_MatchType "CONTAINS"

-- | 
pattern DimensionValue_MatchType_WILDCARDEXPRESSION :: DimensionValue_MatchType
pattern DimensionValue_MatchType_WILDCARDEXPRESSION = DimensionValue_MatchType "WILDCARD_EXPRESSION"

{-# COMPLETE
  DimensionValue_MatchType_Exact,
  DimensionValue_MatchType_BEGINSWITH,
  DimensionValue_MatchType_Contains,
  DimensionValue_MatchType_WILDCARDEXPRESSION,
  DimensionValue_MatchType #-}

newtype DirectorySite_InpageTagFormatsItem = DirectorySite_InpageTagFormatsItem { fromDirectorySite_InpageTagFormatsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DirectorySite_InpageTagFormatsItem_Standard :: DirectorySite_InpageTagFormatsItem
pattern DirectorySite_InpageTagFormatsItem_Standard = DirectorySite_InpageTagFormatsItem "STANDARD"

-- | 
pattern DirectorySite_InpageTagFormatsItem_IFRAMEJAVASCRIPTINPAGE :: DirectorySite_InpageTagFormatsItem
pattern DirectorySite_InpageTagFormatsItem_IFRAMEJAVASCRIPTINPAGE = DirectorySite_InpageTagFormatsItem "IFRAME_JAVASCRIPT_INPAGE"

-- | 
pattern DirectorySite_InpageTagFormatsItem_INTERNALREDIRECTINPAGE :: DirectorySite_InpageTagFormatsItem
pattern DirectorySite_InpageTagFormatsItem_INTERNALREDIRECTINPAGE = DirectorySite_InpageTagFormatsItem "INTERNAL_REDIRECT_INPAGE"

-- | 
pattern DirectorySite_InpageTagFormatsItem_JAVASCRIPTINPAGE :: DirectorySite_InpageTagFormatsItem
pattern DirectorySite_InpageTagFormatsItem_JAVASCRIPTINPAGE = DirectorySite_InpageTagFormatsItem "JAVASCRIPT_INPAGE"

{-# COMPLETE
  DirectorySite_InpageTagFormatsItem_Standard,
  DirectorySite_InpageTagFormatsItem_IFRAMEJAVASCRIPTINPAGE,
  DirectorySite_InpageTagFormatsItem_INTERNALREDIRECTINPAGE,
  DirectorySite_InpageTagFormatsItem_JAVASCRIPTINPAGE,
  DirectorySite_InpageTagFormatsItem #-}

newtype DirectorySite_InterstitialTagFormatsItem = DirectorySite_InterstitialTagFormatsItem { fromDirectorySite_InterstitialTagFormatsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DirectorySite_InterstitialTagFormatsItem_IFRAMEJAVASCRIPTINTERSTITIAL :: DirectorySite_InterstitialTagFormatsItem
pattern DirectorySite_InterstitialTagFormatsItem_IFRAMEJAVASCRIPTINTERSTITIAL = DirectorySite_InterstitialTagFormatsItem "IFRAME_JAVASCRIPT_INTERSTITIAL"

-- | 
pattern DirectorySite_InterstitialTagFormatsItem_INTERNALREDIRECTINTERSTITIAL :: DirectorySite_InterstitialTagFormatsItem
pattern DirectorySite_InterstitialTagFormatsItem_INTERNALREDIRECTINTERSTITIAL = DirectorySite_InterstitialTagFormatsItem "INTERNAL_REDIRECT_INTERSTITIAL"

-- | 
pattern DirectorySite_InterstitialTagFormatsItem_JAVASCRIPTINTERSTITIAL :: DirectorySite_InterstitialTagFormatsItem
pattern DirectorySite_InterstitialTagFormatsItem_JAVASCRIPTINTERSTITIAL = DirectorySite_InterstitialTagFormatsItem "JAVASCRIPT_INTERSTITIAL"

{-# COMPLETE
  DirectorySite_InterstitialTagFormatsItem_IFRAMEJAVASCRIPTINTERSTITIAL,
  DirectorySite_InterstitialTagFormatsItem_INTERNALREDIRECTINTERSTITIAL,
  DirectorySite_InterstitialTagFormatsItem_JAVASCRIPTINTERSTITIAL,
  DirectorySite_InterstitialTagFormatsItem #-}

-- | Type of the object of this dynamic targeting key. This is a required field.
newtype DynamicTargetingKey_ObjectType = DynamicTargetingKey_ObjectType { fromDynamicTargetingKey_ObjectType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DynamicTargetingKey_ObjectType_OBJECTADVERTISER :: DynamicTargetingKey_ObjectType
pattern DynamicTargetingKey_ObjectType_OBJECTADVERTISER = DynamicTargetingKey_ObjectType "OBJECT_ADVERTISER"

-- | 
pattern DynamicTargetingKey_ObjectType_OBJECTAD :: DynamicTargetingKey_ObjectType
pattern DynamicTargetingKey_ObjectType_OBJECTAD = DynamicTargetingKey_ObjectType "OBJECT_AD"

-- | 
pattern DynamicTargetingKey_ObjectType_OBJECTCREATIVE :: DynamicTargetingKey_ObjectType
pattern DynamicTargetingKey_ObjectType_OBJECTCREATIVE = DynamicTargetingKey_ObjectType "OBJECT_CREATIVE"

-- | 
pattern DynamicTargetingKey_ObjectType_OBJECTPLACEMENT :: DynamicTargetingKey_ObjectType
pattern DynamicTargetingKey_ObjectType_OBJECTPLACEMENT = DynamicTargetingKey_ObjectType "OBJECT_PLACEMENT"

{-# COMPLETE
  DynamicTargetingKey_ObjectType_OBJECTADVERTISER,
  DynamicTargetingKey_ObjectType_OBJECTAD,
  DynamicTargetingKey_ObjectType_OBJECTCREATIVE,
  DynamicTargetingKey_ObjectType_OBJECTPLACEMENT,
  DynamicTargetingKey_ObjectType #-}

-- | The encryption entity type. This should match the encryption configuration for ad serving or Data Transfer.
newtype EncryptionInfo_EncryptionEntityType = EncryptionInfo_EncryptionEntityType { fromEncryptionInfo_EncryptionEntityType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern EncryptionInfo_EncryptionEntityType_ENCRYPTIONENTITYTYPEUNKNOWN :: EncryptionInfo_EncryptionEntityType
pattern EncryptionInfo_EncryptionEntityType_ENCRYPTIONENTITYTYPEUNKNOWN = EncryptionInfo_EncryptionEntityType "ENCRYPTION_ENTITY_TYPE_UNKNOWN"

-- | 
pattern EncryptionInfo_EncryptionEntityType_DCMACCOUNT :: EncryptionInfo_EncryptionEntityType
pattern EncryptionInfo_EncryptionEntityType_DCMACCOUNT = EncryptionInfo_EncryptionEntityType "DCM_ACCOUNT"

-- | 
pattern EncryptionInfo_EncryptionEntityType_DCMADVERTISER :: EncryptionInfo_EncryptionEntityType
pattern EncryptionInfo_EncryptionEntityType_DCMADVERTISER = EncryptionInfo_EncryptionEntityType "DCM_ADVERTISER"

-- | 
pattern EncryptionInfo_EncryptionEntityType_DBMPARTNER :: EncryptionInfo_EncryptionEntityType
pattern EncryptionInfo_EncryptionEntityType_DBMPARTNER = EncryptionInfo_EncryptionEntityType "DBM_PARTNER"

-- | 
pattern EncryptionInfo_EncryptionEntityType_DBMADVERTISER :: EncryptionInfo_EncryptionEntityType
pattern EncryptionInfo_EncryptionEntityType_DBMADVERTISER = EncryptionInfo_EncryptionEntityType "DBM_ADVERTISER"

-- | 
pattern EncryptionInfo_EncryptionEntityType_ADWORDSCUSTOMER :: EncryptionInfo_EncryptionEntityType
pattern EncryptionInfo_EncryptionEntityType_ADWORDSCUSTOMER = EncryptionInfo_EncryptionEntityType "ADWORDS_CUSTOMER"

-- | 
pattern EncryptionInfo_EncryptionEntityType_DFPNETWORKCODE :: EncryptionInfo_EncryptionEntityType
pattern EncryptionInfo_EncryptionEntityType_DFPNETWORKCODE = EncryptionInfo_EncryptionEntityType "DFP_NETWORK_CODE"

{-# COMPLETE
  EncryptionInfo_EncryptionEntityType_ENCRYPTIONENTITYTYPEUNKNOWN,
  EncryptionInfo_EncryptionEntityType_DCMACCOUNT,
  EncryptionInfo_EncryptionEntityType_DCMADVERTISER,
  EncryptionInfo_EncryptionEntityType_DBMPARTNER,
  EncryptionInfo_EncryptionEntityType_DBMADVERTISER,
  EncryptionInfo_EncryptionEntityType_ADWORDSCUSTOMER,
  EncryptionInfo_EncryptionEntityType_DFPNETWORKCODE,
  EncryptionInfo_EncryptionEntityType #-}

-- | Describes whether the encrypted cookie was received from ad serving (the %m macro) or from Data Transfer.
newtype EncryptionInfo_EncryptionSource = EncryptionInfo_EncryptionSource { fromEncryptionInfo_EncryptionSource :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern EncryptionInfo_EncryptionSource_ENCRYPTIONSCOPEUNKNOWN :: EncryptionInfo_EncryptionSource
pattern EncryptionInfo_EncryptionSource_ENCRYPTIONSCOPEUNKNOWN = EncryptionInfo_EncryptionSource "ENCRYPTION_SCOPE_UNKNOWN"

-- | 
pattern EncryptionInfo_EncryptionSource_ADSERVING :: EncryptionInfo_EncryptionSource
pattern EncryptionInfo_EncryptionSource_ADSERVING = EncryptionInfo_EncryptionSource "AD_SERVING"

-- | 
pattern EncryptionInfo_EncryptionSource_DATATRANSFER :: EncryptionInfo_EncryptionSource
pattern EncryptionInfo_EncryptionSource_DATATRANSFER = EncryptionInfo_EncryptionSource "DATA_TRANSFER"

{-# COMPLETE
  EncryptionInfo_EncryptionSource_ENCRYPTIONSCOPEUNKNOWN,
  EncryptionInfo_EncryptionSource_ADSERVING,
  EncryptionInfo_EncryptionSource_DATATRANSFER,
  EncryptionInfo_EncryptionSource #-}

-- | Site filter type for this event tag. If no type is specified then the event tag will be applied to all sites.
newtype EventTag_SiteFilterType = EventTag_SiteFilterType { fromEventTag_SiteFilterType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern EventTag_SiteFilterType_Allowlist :: EventTag_SiteFilterType
pattern EventTag_SiteFilterType_Allowlist = EventTag_SiteFilterType "ALLOWLIST"

-- | 
pattern EventTag_SiteFilterType_Blocklist :: EventTag_SiteFilterType
pattern EventTag_SiteFilterType_Blocklist = EventTag_SiteFilterType "BLOCKLIST"

{-# COMPLETE
  EventTag_SiteFilterType_Allowlist,
  EventTag_SiteFilterType_Blocklist,
  EventTag_SiteFilterType #-}

-- | Status of this event tag. Must be ENABLED for this event tag to fire. This is a required field.
newtype EventTag_Status = EventTag_Status { fromEventTag_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern EventTag_Status_Enabled :: EventTag_Status
pattern EventTag_Status_Enabled = EventTag_Status "ENABLED"

-- | 
pattern EventTag_Status_Disabled :: EventTag_Status
pattern EventTag_Status_Disabled = EventTag_Status "DISABLED"

{-# COMPLETE
  EventTag_Status_Enabled,
  EventTag_Status_Disabled,
  EventTag_Status #-}

-- | Event tag type. Can be used to specify whether to use a third-party pixel, a third-party JavaScript URL, or a third-party click-through URL for either impression or click tracking. This is a required field.
newtype EventTag_Type = EventTag_Type { fromEventTag_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern EventTag_Type_IMPRESSIONIMAGEEVENTTAG :: EventTag_Type
pattern EventTag_Type_IMPRESSIONIMAGEEVENTTAG = EventTag_Type "IMPRESSION_IMAGE_EVENT_TAG"

-- | 
pattern EventTag_Type_IMPRESSIONJAVASCRIPTEVENTTAG :: EventTag_Type
pattern EventTag_Type_IMPRESSIONJAVASCRIPTEVENTTAG = EventTag_Type "IMPRESSION_JAVASCRIPT_EVENT_TAG"

-- | 
pattern EventTag_Type_CLICKTHROUGHEVENTTAG :: EventTag_Type
pattern EventTag_Type_CLICKTHROUGHEVENTTAG = EventTag_Type "CLICK_THROUGH_EVENT_TAG"

{-# COMPLETE
  EventTag_Type_IMPRESSIONIMAGEEVENTTAG,
  EventTag_Type_IMPRESSIONJAVASCRIPTEVENTTAG,
  EventTag_Type_CLICKTHROUGHEVENTTAG,
  EventTag_Type #-}

-- | The output format of the report. Only available once the file is available.
newtype File_Format = File_Format { fromFile_Format :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern File_Format_Csv :: File_Format
pattern File_Format_Csv = File_Format "CSV"

-- | 
pattern File_Format_Excel :: File_Format
pattern File_Format_Excel = File_Format "EXCEL"

{-# COMPLETE
  File_Format_Csv,
  File_Format_Excel,
  File_Format #-}

-- | The status of the report file.
newtype File_Status = File_Status { fromFile_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern File_Status_Processing :: File_Status
pattern File_Status_Processing = File_Status "PROCESSING"

-- | 
pattern File_Status_REPORTAVAILABLE :: File_Status
pattern File_Status_REPORTAVAILABLE = File_Status "REPORT_AVAILABLE"

-- | 
pattern File_Status_Failed :: File_Status
pattern File_Status_Failed = File_Status "FAILED"

-- | 
pattern File_Status_Cancelled :: File_Status
pattern File_Status_Cancelled = File_Status "CANCELLED"

{-# COMPLETE
  File_Status_Processing,
  File_Status_REPORTAVAILABLE,
  File_Status_Failed,
  File_Status_Cancelled,
  File_Status #-}

-- | Code type used for cache busting in the generated tag. Applicable only when floodlightActivityGroupType is COUNTER and countingMethod is STANDARD/COUNTING or UNIQUE/COUNTING.
newtype FloodlightActivity_CacheBustingType = FloodlightActivity_CacheBustingType { fromFloodlightActivity_CacheBustingType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivity_CacheBustingType_Javascript :: FloodlightActivity_CacheBustingType
pattern FloodlightActivity_CacheBustingType_Javascript = FloodlightActivity_CacheBustingType "JAVASCRIPT"

-- | 
pattern FloodlightActivity_CacheBustingType_ACTIVESERVERPAGE :: FloodlightActivity_CacheBustingType
pattern FloodlightActivity_CacheBustingType_ACTIVESERVERPAGE = FloodlightActivity_CacheBustingType "ACTIVE_SERVER_PAGE"

-- | 
pattern FloodlightActivity_CacheBustingType_Jsp :: FloodlightActivity_CacheBustingType
pattern FloodlightActivity_CacheBustingType_Jsp = FloodlightActivity_CacheBustingType "JSP"

-- | 
pattern FloodlightActivity_CacheBustingType_Php :: FloodlightActivity_CacheBustingType
pattern FloodlightActivity_CacheBustingType_Php = FloodlightActivity_CacheBustingType "PHP"

-- | 
pattern FloodlightActivity_CacheBustingType_COLDFUSION :: FloodlightActivity_CacheBustingType
pattern FloodlightActivity_CacheBustingType_COLDFUSION = FloodlightActivity_CacheBustingType "COLD_FUSION"

{-# COMPLETE
  FloodlightActivity_CacheBustingType_Javascript,
  FloodlightActivity_CacheBustingType_ACTIVESERVERPAGE,
  FloodlightActivity_CacheBustingType_Jsp,
  FloodlightActivity_CacheBustingType_Php,
  FloodlightActivity_CacheBustingType_COLDFUSION,
  FloodlightActivity_CacheBustingType #-}

-- | Counting method for conversions for this floodlight activity. This is a required field.
newtype FloodlightActivity_CountingMethod = FloodlightActivity_CountingMethod { fromFloodlightActivity_CountingMethod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivity_CountingMethod_STANDARDCOUNTING :: FloodlightActivity_CountingMethod
pattern FloodlightActivity_CountingMethod_STANDARDCOUNTING = FloodlightActivity_CountingMethod "STANDARD_COUNTING"

-- | 
pattern FloodlightActivity_CountingMethod_UNIQUECOUNTING :: FloodlightActivity_CountingMethod
pattern FloodlightActivity_CountingMethod_UNIQUECOUNTING = FloodlightActivity_CountingMethod "UNIQUE_COUNTING"

-- | 
pattern FloodlightActivity_CountingMethod_SESSIONCOUNTING :: FloodlightActivity_CountingMethod
pattern FloodlightActivity_CountingMethod_SESSIONCOUNTING = FloodlightActivity_CountingMethod "SESSION_COUNTING"

-- | 
pattern FloodlightActivity_CountingMethod_TRANSACTIONSCOUNTING :: FloodlightActivity_CountingMethod
pattern FloodlightActivity_CountingMethod_TRANSACTIONSCOUNTING = FloodlightActivity_CountingMethod "TRANSACTIONS_COUNTING"

-- | 
pattern FloodlightActivity_CountingMethod_ITEMSSOLDCOUNTING :: FloodlightActivity_CountingMethod
pattern FloodlightActivity_CountingMethod_ITEMSSOLDCOUNTING = FloodlightActivity_CountingMethod "ITEMS_SOLD_COUNTING"

{-# COMPLETE
  FloodlightActivity_CountingMethod_STANDARDCOUNTING,
  FloodlightActivity_CountingMethod_UNIQUECOUNTING,
  FloodlightActivity_CountingMethod_SESSIONCOUNTING,
  FloodlightActivity_CountingMethod_TRANSACTIONSCOUNTING,
  FloodlightActivity_CountingMethod_ITEMSSOLDCOUNTING,
  FloodlightActivity_CountingMethod #-}

-- | Type of the associated floodlight activity group. This is a read-only field.
newtype FloodlightActivity_FloodlightActivityGroupType = FloodlightActivity_FloodlightActivityGroupType { fromFloodlightActivity_FloodlightActivityGroupType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivity_FloodlightActivityGroupType_Counter :: FloodlightActivity_FloodlightActivityGroupType
pattern FloodlightActivity_FloodlightActivityGroupType_Counter = FloodlightActivity_FloodlightActivityGroupType "COUNTER"

-- | 
pattern FloodlightActivity_FloodlightActivityGroupType_Sale :: FloodlightActivity_FloodlightActivityGroupType
pattern FloodlightActivity_FloodlightActivityGroupType_Sale = FloodlightActivity_FloodlightActivityGroupType "SALE"

{-# COMPLETE
  FloodlightActivity_FloodlightActivityGroupType_Counter,
  FloodlightActivity_FloodlightActivityGroupType_Sale,
  FloodlightActivity_FloodlightActivityGroupType #-}

-- | The type of Floodlight tag this activity will generate. This is a required field.
newtype FloodlightActivity_FloodlightTagType = FloodlightActivity_FloodlightTagType { fromFloodlightActivity_FloodlightTagType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivity_FloodlightTagType_Iframe :: FloodlightActivity_FloodlightTagType
pattern FloodlightActivity_FloodlightTagType_Iframe = FloodlightActivity_FloodlightTagType "IFRAME"

-- | 
pattern FloodlightActivity_FloodlightTagType_Image :: FloodlightActivity_FloodlightTagType
pattern FloodlightActivity_FloodlightTagType_Image = FloodlightActivity_FloodlightTagType "IMAGE"

-- | 
pattern FloodlightActivity_FloodlightTagType_GLOBALSITETAG :: FloodlightActivity_FloodlightTagType
pattern FloodlightActivity_FloodlightTagType_GLOBALSITETAG = FloodlightActivity_FloodlightTagType "GLOBAL_SITE_TAG"

{-# COMPLETE
  FloodlightActivity_FloodlightTagType_Iframe,
  FloodlightActivity_FloodlightTagType_Image,
  FloodlightActivity_FloodlightTagType_GLOBALSITETAG,
  FloodlightActivity_FloodlightTagType #-}

-- | The status of the activity. This can only be set to ACTIVE or ARCHIVED/AND/DISABLED. The ARCHIVED status is no longer supported and cannot be set for Floodlight activities. The DISABLED_POLICY status indicates that a Floodlight activity is violating Google policy. Contact your account manager for more information.
newtype FloodlightActivity_Status = FloodlightActivity_Status { fromFloodlightActivity_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivity_Status_Active :: FloodlightActivity_Status
pattern FloodlightActivity_Status_Active = FloodlightActivity_Status "ACTIVE"

-- | 
pattern FloodlightActivity_Status_ARCHIVEDANDDISABLED :: FloodlightActivity_Status
pattern FloodlightActivity_Status_ARCHIVEDANDDISABLED = FloodlightActivity_Status "ARCHIVED_AND_DISABLED"

-- | 
pattern FloodlightActivity_Status_Archived :: FloodlightActivity_Status
pattern FloodlightActivity_Status_Archived = FloodlightActivity_Status "ARCHIVED"

-- | 
pattern FloodlightActivity_Status_DISABLEDPOLICY :: FloodlightActivity_Status
pattern FloodlightActivity_Status_DISABLEDPOLICY = FloodlightActivity_Status "DISABLED_POLICY"

{-# COMPLETE
  FloodlightActivity_Status_Active,
  FloodlightActivity_Status_ARCHIVEDANDDISABLED,
  FloodlightActivity_Status_Archived,
  FloodlightActivity_Status_DISABLEDPOLICY,
  FloodlightActivity_Status #-}

-- | Tag format type for the floodlight activity. If left blank, the tag format will default to HTML.
newtype FloodlightActivity_TagFormat = FloodlightActivity_TagFormat { fromFloodlightActivity_TagFormat :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivity_TagFormat_Html :: FloodlightActivity_TagFormat
pattern FloodlightActivity_TagFormat_Html = FloodlightActivity_TagFormat "HTML"

-- | 
pattern FloodlightActivity_TagFormat_Xhtml :: FloodlightActivity_TagFormat
pattern FloodlightActivity_TagFormat_Xhtml = FloodlightActivity_TagFormat "XHTML"

{-# COMPLETE
  FloodlightActivity_TagFormat_Html,
  FloodlightActivity_TagFormat_Xhtml,
  FloodlightActivity_TagFormat #-}

newtype FloodlightActivity_UserDefinedVariableTypesItem = FloodlightActivity_UserDefinedVariableTypesItem { fromFloodlightActivity_UserDefinedVariableTypesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U1 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U1 = FloodlightActivity_UserDefinedVariableTypesItem "U1"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U2 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U2 = FloodlightActivity_UserDefinedVariableTypesItem "U2"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U3 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U3 = FloodlightActivity_UserDefinedVariableTypesItem "U3"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U4 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U4 = FloodlightActivity_UserDefinedVariableTypesItem "U4"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U5 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U5 = FloodlightActivity_UserDefinedVariableTypesItem "U5"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U6 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U6 = FloodlightActivity_UserDefinedVariableTypesItem "U6"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U7 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U7 = FloodlightActivity_UserDefinedVariableTypesItem "U7"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U8 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U8 = FloodlightActivity_UserDefinedVariableTypesItem "U8"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U9 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U9 = FloodlightActivity_UserDefinedVariableTypesItem "U9"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U10 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U10 = FloodlightActivity_UserDefinedVariableTypesItem "U10"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U11 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U11 = FloodlightActivity_UserDefinedVariableTypesItem "U11"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U12 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U12 = FloodlightActivity_UserDefinedVariableTypesItem "U12"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U13 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U13 = FloodlightActivity_UserDefinedVariableTypesItem "U13"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U14 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U14 = FloodlightActivity_UserDefinedVariableTypesItem "U14"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U15 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U15 = FloodlightActivity_UserDefinedVariableTypesItem "U15"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U16 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U16 = FloodlightActivity_UserDefinedVariableTypesItem "U16"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U17 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U17 = FloodlightActivity_UserDefinedVariableTypesItem "U17"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U18 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U18 = FloodlightActivity_UserDefinedVariableTypesItem "U18"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U19 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U19 = FloodlightActivity_UserDefinedVariableTypesItem "U19"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U20 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U20 = FloodlightActivity_UserDefinedVariableTypesItem "U20"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U21 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U21 = FloodlightActivity_UserDefinedVariableTypesItem "U21"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U22 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U22 = FloodlightActivity_UserDefinedVariableTypesItem "U22"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U23 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U23 = FloodlightActivity_UserDefinedVariableTypesItem "U23"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U24 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U24 = FloodlightActivity_UserDefinedVariableTypesItem "U24"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U25 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U25 = FloodlightActivity_UserDefinedVariableTypesItem "U25"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U26 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U26 = FloodlightActivity_UserDefinedVariableTypesItem "U26"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U27 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U27 = FloodlightActivity_UserDefinedVariableTypesItem "U27"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U28 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U28 = FloodlightActivity_UserDefinedVariableTypesItem "U28"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U29 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U29 = FloodlightActivity_UserDefinedVariableTypesItem "U29"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U30 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U30 = FloodlightActivity_UserDefinedVariableTypesItem "U30"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U31 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U31 = FloodlightActivity_UserDefinedVariableTypesItem "U31"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U32 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U32 = FloodlightActivity_UserDefinedVariableTypesItem "U32"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U33 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U33 = FloodlightActivity_UserDefinedVariableTypesItem "U33"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U34 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U34 = FloodlightActivity_UserDefinedVariableTypesItem "U34"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U35 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U35 = FloodlightActivity_UserDefinedVariableTypesItem "U35"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U36 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U36 = FloodlightActivity_UserDefinedVariableTypesItem "U36"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U37 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U37 = FloodlightActivity_UserDefinedVariableTypesItem "U37"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U38 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U38 = FloodlightActivity_UserDefinedVariableTypesItem "U38"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U39 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U39 = FloodlightActivity_UserDefinedVariableTypesItem "U39"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U40 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U40 = FloodlightActivity_UserDefinedVariableTypesItem "U40"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U41 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U41 = FloodlightActivity_UserDefinedVariableTypesItem "U41"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U42 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U42 = FloodlightActivity_UserDefinedVariableTypesItem "U42"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U43 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U43 = FloodlightActivity_UserDefinedVariableTypesItem "U43"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U44 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U44 = FloodlightActivity_UserDefinedVariableTypesItem "U44"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U45 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U45 = FloodlightActivity_UserDefinedVariableTypesItem "U45"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U46 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U46 = FloodlightActivity_UserDefinedVariableTypesItem "U46"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U47 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U47 = FloodlightActivity_UserDefinedVariableTypesItem "U47"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U48 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U48 = FloodlightActivity_UserDefinedVariableTypesItem "U48"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U49 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U49 = FloodlightActivity_UserDefinedVariableTypesItem "U49"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U50 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U50 = FloodlightActivity_UserDefinedVariableTypesItem "U50"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U51 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U51 = FloodlightActivity_UserDefinedVariableTypesItem "U51"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U52 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U52 = FloodlightActivity_UserDefinedVariableTypesItem "U52"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U53 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U53 = FloodlightActivity_UserDefinedVariableTypesItem "U53"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U54 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U54 = FloodlightActivity_UserDefinedVariableTypesItem "U54"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U55 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U55 = FloodlightActivity_UserDefinedVariableTypesItem "U55"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U56 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U56 = FloodlightActivity_UserDefinedVariableTypesItem "U56"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U57 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U57 = FloodlightActivity_UserDefinedVariableTypesItem "U57"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U58 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U58 = FloodlightActivity_UserDefinedVariableTypesItem "U58"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U59 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U59 = FloodlightActivity_UserDefinedVariableTypesItem "U59"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U60 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U60 = FloodlightActivity_UserDefinedVariableTypesItem "U60"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U61 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U61 = FloodlightActivity_UserDefinedVariableTypesItem "U61"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U62 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U62 = FloodlightActivity_UserDefinedVariableTypesItem "U62"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U63 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U63 = FloodlightActivity_UserDefinedVariableTypesItem "U63"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U64 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U64 = FloodlightActivity_UserDefinedVariableTypesItem "U64"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U65 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U65 = FloodlightActivity_UserDefinedVariableTypesItem "U65"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U66 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U66 = FloodlightActivity_UserDefinedVariableTypesItem "U66"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U67 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U67 = FloodlightActivity_UserDefinedVariableTypesItem "U67"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U68 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U68 = FloodlightActivity_UserDefinedVariableTypesItem "U68"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U69 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U69 = FloodlightActivity_UserDefinedVariableTypesItem "U69"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U70 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U70 = FloodlightActivity_UserDefinedVariableTypesItem "U70"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U71 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U71 = FloodlightActivity_UserDefinedVariableTypesItem "U71"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U72 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U72 = FloodlightActivity_UserDefinedVariableTypesItem "U72"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U73 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U73 = FloodlightActivity_UserDefinedVariableTypesItem "U73"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U74 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U74 = FloodlightActivity_UserDefinedVariableTypesItem "U74"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U75 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U75 = FloodlightActivity_UserDefinedVariableTypesItem "U75"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U76 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U76 = FloodlightActivity_UserDefinedVariableTypesItem "U76"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U77 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U77 = FloodlightActivity_UserDefinedVariableTypesItem "U77"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U78 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U78 = FloodlightActivity_UserDefinedVariableTypesItem "U78"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U79 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U79 = FloodlightActivity_UserDefinedVariableTypesItem "U79"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U80 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U80 = FloodlightActivity_UserDefinedVariableTypesItem "U80"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U81 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U81 = FloodlightActivity_UserDefinedVariableTypesItem "U81"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U82 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U82 = FloodlightActivity_UserDefinedVariableTypesItem "U82"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U83 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U83 = FloodlightActivity_UserDefinedVariableTypesItem "U83"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U84 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U84 = FloodlightActivity_UserDefinedVariableTypesItem "U84"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U85 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U85 = FloodlightActivity_UserDefinedVariableTypesItem "U85"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U86 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U86 = FloodlightActivity_UserDefinedVariableTypesItem "U86"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U87 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U87 = FloodlightActivity_UserDefinedVariableTypesItem "U87"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U88 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U88 = FloodlightActivity_UserDefinedVariableTypesItem "U88"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U89 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U89 = FloodlightActivity_UserDefinedVariableTypesItem "U89"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U90 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U90 = FloodlightActivity_UserDefinedVariableTypesItem "U90"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U91 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U91 = FloodlightActivity_UserDefinedVariableTypesItem "U91"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U92 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U92 = FloodlightActivity_UserDefinedVariableTypesItem "U92"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U93 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U93 = FloodlightActivity_UserDefinedVariableTypesItem "U93"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U94 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U94 = FloodlightActivity_UserDefinedVariableTypesItem "U94"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U95 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U95 = FloodlightActivity_UserDefinedVariableTypesItem "U95"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U96 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U96 = FloodlightActivity_UserDefinedVariableTypesItem "U96"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U97 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U97 = FloodlightActivity_UserDefinedVariableTypesItem "U97"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U98 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U98 = FloodlightActivity_UserDefinedVariableTypesItem "U98"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U99 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U99 = FloodlightActivity_UserDefinedVariableTypesItem "U99"

-- | 
pattern FloodlightActivity_UserDefinedVariableTypesItem_U100 :: FloodlightActivity_UserDefinedVariableTypesItem
pattern FloodlightActivity_UserDefinedVariableTypesItem_U100 = FloodlightActivity_UserDefinedVariableTypesItem "U100"

{-# COMPLETE
  FloodlightActivity_UserDefinedVariableTypesItem_U1,
  FloodlightActivity_UserDefinedVariableTypesItem_U2,
  FloodlightActivity_UserDefinedVariableTypesItem_U3,
  FloodlightActivity_UserDefinedVariableTypesItem_U4,
  FloodlightActivity_UserDefinedVariableTypesItem_U5,
  FloodlightActivity_UserDefinedVariableTypesItem_U6,
  FloodlightActivity_UserDefinedVariableTypesItem_U7,
  FloodlightActivity_UserDefinedVariableTypesItem_U8,
  FloodlightActivity_UserDefinedVariableTypesItem_U9,
  FloodlightActivity_UserDefinedVariableTypesItem_U10,
  FloodlightActivity_UserDefinedVariableTypesItem_U11,
  FloodlightActivity_UserDefinedVariableTypesItem_U12,
  FloodlightActivity_UserDefinedVariableTypesItem_U13,
  FloodlightActivity_UserDefinedVariableTypesItem_U14,
  FloodlightActivity_UserDefinedVariableTypesItem_U15,
  FloodlightActivity_UserDefinedVariableTypesItem_U16,
  FloodlightActivity_UserDefinedVariableTypesItem_U17,
  FloodlightActivity_UserDefinedVariableTypesItem_U18,
  FloodlightActivity_UserDefinedVariableTypesItem_U19,
  FloodlightActivity_UserDefinedVariableTypesItem_U20,
  FloodlightActivity_UserDefinedVariableTypesItem_U21,
  FloodlightActivity_UserDefinedVariableTypesItem_U22,
  FloodlightActivity_UserDefinedVariableTypesItem_U23,
  FloodlightActivity_UserDefinedVariableTypesItem_U24,
  FloodlightActivity_UserDefinedVariableTypesItem_U25,
  FloodlightActivity_UserDefinedVariableTypesItem_U26,
  FloodlightActivity_UserDefinedVariableTypesItem_U27,
  FloodlightActivity_UserDefinedVariableTypesItem_U28,
  FloodlightActivity_UserDefinedVariableTypesItem_U29,
  FloodlightActivity_UserDefinedVariableTypesItem_U30,
  FloodlightActivity_UserDefinedVariableTypesItem_U31,
  FloodlightActivity_UserDefinedVariableTypesItem_U32,
  FloodlightActivity_UserDefinedVariableTypesItem_U33,
  FloodlightActivity_UserDefinedVariableTypesItem_U34,
  FloodlightActivity_UserDefinedVariableTypesItem_U35,
  FloodlightActivity_UserDefinedVariableTypesItem_U36,
  FloodlightActivity_UserDefinedVariableTypesItem_U37,
  FloodlightActivity_UserDefinedVariableTypesItem_U38,
  FloodlightActivity_UserDefinedVariableTypesItem_U39,
  FloodlightActivity_UserDefinedVariableTypesItem_U40,
  FloodlightActivity_UserDefinedVariableTypesItem_U41,
  FloodlightActivity_UserDefinedVariableTypesItem_U42,
  FloodlightActivity_UserDefinedVariableTypesItem_U43,
  FloodlightActivity_UserDefinedVariableTypesItem_U44,
  FloodlightActivity_UserDefinedVariableTypesItem_U45,
  FloodlightActivity_UserDefinedVariableTypesItem_U46,
  FloodlightActivity_UserDefinedVariableTypesItem_U47,
  FloodlightActivity_UserDefinedVariableTypesItem_U48,
  FloodlightActivity_UserDefinedVariableTypesItem_U49,
  FloodlightActivity_UserDefinedVariableTypesItem_U50,
  FloodlightActivity_UserDefinedVariableTypesItem_U51,
  FloodlightActivity_UserDefinedVariableTypesItem_U52,
  FloodlightActivity_UserDefinedVariableTypesItem_U53,
  FloodlightActivity_UserDefinedVariableTypesItem_U54,
  FloodlightActivity_UserDefinedVariableTypesItem_U55,
  FloodlightActivity_UserDefinedVariableTypesItem_U56,
  FloodlightActivity_UserDefinedVariableTypesItem_U57,
  FloodlightActivity_UserDefinedVariableTypesItem_U58,
  FloodlightActivity_UserDefinedVariableTypesItem_U59,
  FloodlightActivity_UserDefinedVariableTypesItem_U60,
  FloodlightActivity_UserDefinedVariableTypesItem_U61,
  FloodlightActivity_UserDefinedVariableTypesItem_U62,
  FloodlightActivity_UserDefinedVariableTypesItem_U63,
  FloodlightActivity_UserDefinedVariableTypesItem_U64,
  FloodlightActivity_UserDefinedVariableTypesItem_U65,
  FloodlightActivity_UserDefinedVariableTypesItem_U66,
  FloodlightActivity_UserDefinedVariableTypesItem_U67,
  FloodlightActivity_UserDefinedVariableTypesItem_U68,
  FloodlightActivity_UserDefinedVariableTypesItem_U69,
  FloodlightActivity_UserDefinedVariableTypesItem_U70,
  FloodlightActivity_UserDefinedVariableTypesItem_U71,
  FloodlightActivity_UserDefinedVariableTypesItem_U72,
  FloodlightActivity_UserDefinedVariableTypesItem_U73,
  FloodlightActivity_UserDefinedVariableTypesItem_U74,
  FloodlightActivity_UserDefinedVariableTypesItem_U75,
  FloodlightActivity_UserDefinedVariableTypesItem_U76,
  FloodlightActivity_UserDefinedVariableTypesItem_U77,
  FloodlightActivity_UserDefinedVariableTypesItem_U78,
  FloodlightActivity_UserDefinedVariableTypesItem_U79,
  FloodlightActivity_UserDefinedVariableTypesItem_U80,
  FloodlightActivity_UserDefinedVariableTypesItem_U81,
  FloodlightActivity_UserDefinedVariableTypesItem_U82,
  FloodlightActivity_UserDefinedVariableTypesItem_U83,
  FloodlightActivity_UserDefinedVariableTypesItem_U84,
  FloodlightActivity_UserDefinedVariableTypesItem_U85,
  FloodlightActivity_UserDefinedVariableTypesItem_U86,
  FloodlightActivity_UserDefinedVariableTypesItem_U87,
  FloodlightActivity_UserDefinedVariableTypesItem_U88,
  FloodlightActivity_UserDefinedVariableTypesItem_U89,
  FloodlightActivity_UserDefinedVariableTypesItem_U90,
  FloodlightActivity_UserDefinedVariableTypesItem_U91,
  FloodlightActivity_UserDefinedVariableTypesItem_U92,
  FloodlightActivity_UserDefinedVariableTypesItem_U93,
  FloodlightActivity_UserDefinedVariableTypesItem_U94,
  FloodlightActivity_UserDefinedVariableTypesItem_U95,
  FloodlightActivity_UserDefinedVariableTypesItem_U96,
  FloodlightActivity_UserDefinedVariableTypesItem_U97,
  FloodlightActivity_UserDefinedVariableTypesItem_U98,
  FloodlightActivity_UserDefinedVariableTypesItem_U99,
  FloodlightActivity_UserDefinedVariableTypesItem_U100,
  FloodlightActivity_UserDefinedVariableTypesItem #-}

-- | Type of the floodlight activity group. This is a required field that is read-only after insertion.
newtype FloodlightActivityGroup_Type = FloodlightActivityGroup_Type { fromFloodlightActivityGroup_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivityGroup_Type_Counter :: FloodlightActivityGroup_Type
pattern FloodlightActivityGroup_Type_Counter = FloodlightActivityGroup_Type "COUNTER"

-- | 
pattern FloodlightActivityGroup_Type_Sale :: FloodlightActivityGroup_Type
pattern FloodlightActivityGroup_Type_Sale = FloodlightActivityGroup_Type "SALE"

{-# COMPLETE
  FloodlightActivityGroup_Type_Counter,
  FloodlightActivityGroup_Type_Sale,
  FloodlightActivityGroup_Type #-}

-- | Day that will be counted as the first day of the week in reports. This is a required field.
newtype FloodlightConfiguration_FirstDayOfWeek = FloodlightConfiguration_FirstDayOfWeek { fromFloodlightConfiguration_FirstDayOfWeek :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightConfiguration_FirstDayOfWeek_Monday :: FloodlightConfiguration_FirstDayOfWeek
pattern FloodlightConfiguration_FirstDayOfWeek_Monday = FloodlightConfiguration_FirstDayOfWeek "MONDAY"

-- | 
pattern FloodlightConfiguration_FirstDayOfWeek_Sunday :: FloodlightConfiguration_FirstDayOfWeek
pattern FloodlightConfiguration_FirstDayOfWeek_Sunday = FloodlightConfiguration_FirstDayOfWeek "SUNDAY"

{-# COMPLETE
  FloodlightConfiguration_FirstDayOfWeek_Monday,
  FloodlightConfiguration_FirstDayOfWeek_Sunday,
  FloodlightConfiguration_FirstDayOfWeek #-}

-- | Types of attribution options for natural search conversions.
newtype FloodlightConfiguration_NaturalSearchConversionAttributionOption = FloodlightConfiguration_NaturalSearchConversionAttributionOption { fromFloodlightConfiguration_NaturalSearchConversionAttributionOption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightConfiguration_NaturalSearchConversionAttributionOption_EXCLUDENATURALSEARCHCONVERSIONATTRIBUTION :: FloodlightConfiguration_NaturalSearchConversionAttributionOption
pattern FloodlightConfiguration_NaturalSearchConversionAttributionOption_EXCLUDENATURALSEARCHCONVERSIONATTRIBUTION = FloodlightConfiguration_NaturalSearchConversionAttributionOption "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"

-- | 
pattern FloodlightConfiguration_NaturalSearchConversionAttributionOption_INCLUDENATURALSEARCHCONVERSIONATTRIBUTION :: FloodlightConfiguration_NaturalSearchConversionAttributionOption
pattern FloodlightConfiguration_NaturalSearchConversionAttributionOption_INCLUDENATURALSEARCHCONVERSIONATTRIBUTION = FloodlightConfiguration_NaturalSearchConversionAttributionOption "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"

-- | 
pattern FloodlightConfiguration_NaturalSearchConversionAttributionOption_INCLUDENATURALSEARCHTIEREDCONVERSIONATTRIBUTION :: FloodlightConfiguration_NaturalSearchConversionAttributionOption
pattern FloodlightConfiguration_NaturalSearchConversionAttributionOption_INCLUDENATURALSEARCHTIEREDCONVERSIONATTRIBUTION = FloodlightConfiguration_NaturalSearchConversionAttributionOption "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION"

{-# COMPLETE
  FloodlightConfiguration_NaturalSearchConversionAttributionOption_EXCLUDENATURALSEARCHCONVERSIONATTRIBUTION,
  FloodlightConfiguration_NaturalSearchConversionAttributionOption_INCLUDENATURALSEARCHCONVERSIONATTRIBUTION,
  FloodlightConfiguration_NaturalSearchConversionAttributionOption_INCLUDENATURALSEARCHTIEREDCONVERSIONATTRIBUTION,
  FloodlightConfiguration_NaturalSearchConversionAttributionOption #-}

-- | Position in the browser where the window will open.
newtype FsCommand_PositionOption = FsCommand_PositionOption { fromFsCommand_PositionOption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FsCommand_PositionOption_Centered :: FsCommand_PositionOption
pattern FsCommand_PositionOption_Centered = FsCommand_PositionOption "CENTERED"

-- | 
pattern FsCommand_PositionOption_DISTANCEFROMTOPLEFTCORNER :: FsCommand_PositionOption
pattern FsCommand_PositionOption_DISTANCEFROMTOPLEFTCORNER = FsCommand_PositionOption "DISTANCE_FROM_TOP_LEFT_CORNER"

{-# COMPLETE
  FsCommand_PositionOption_Centered,
  FsCommand_PositionOption_DISTANCEFROMTOPLEFTCORNER,
  FsCommand_PositionOption #-}

-- | Type of inventory item.
newtype InventoryItem_Type = InventoryItem_Type { fromInventoryItem_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern InventoryItem_Type_PLANNINGPLACEMENTTYPEREGULAR :: InventoryItem_Type
pattern InventoryItem_Type_PLANNINGPLACEMENTTYPEREGULAR = InventoryItem_Type "PLANNING_PLACEMENT_TYPE_REGULAR"

-- | 
pattern InventoryItem_Type_PLANNINGPLACEMENTTYPECREDIT :: InventoryItem_Type
pattern InventoryItem_Type_PLANNINGPLACEMENTTYPECREDIT = InventoryItem_Type "PLANNING_PLACEMENT_TYPE_CREDIT"

{-# COMPLETE
  InventoryItem_Type_PLANNINGPLACEMENTTYPEREGULAR,
  InventoryItem_Type_PLANNINGPLACEMENTTYPECREDIT,
  InventoryItem_Type #-}

-- | Comparison operator of this term. This field is only relevant when type is left unset or set to CUSTOM/VARIABLE/TERM or REFERRER_TERM.
newtype ListPopulationTerm_Operator = ListPopulationTerm_Operator { fromListPopulationTerm_Operator :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ListPopulationTerm_Operator_NUMEQUALS :: ListPopulationTerm_Operator
pattern ListPopulationTerm_Operator_NUMEQUALS = ListPopulationTerm_Operator "NUM_EQUALS"

-- | 
pattern ListPopulationTerm_Operator_NUMLESSTHAN :: ListPopulationTerm_Operator
pattern ListPopulationTerm_Operator_NUMLESSTHAN = ListPopulationTerm_Operator "NUM_LESS_THAN"

-- | 
pattern ListPopulationTerm_Operator_NUMLESSTHANEQUAL :: ListPopulationTerm_Operator
pattern ListPopulationTerm_Operator_NUMLESSTHANEQUAL = ListPopulationTerm_Operator "NUM_LESS_THAN_EQUAL"

-- | 
pattern ListPopulationTerm_Operator_NUMGREATERTHAN :: ListPopulationTerm_Operator
pattern ListPopulationTerm_Operator_NUMGREATERTHAN = ListPopulationTerm_Operator "NUM_GREATER_THAN"

-- | 
pattern ListPopulationTerm_Operator_NUMGREATERTHANEQUAL :: ListPopulationTerm_Operator
pattern ListPopulationTerm_Operator_NUMGREATERTHANEQUAL = ListPopulationTerm_Operator "NUM_GREATER_THAN_EQUAL"

-- | 
pattern ListPopulationTerm_Operator_STRINGEQUALS :: ListPopulationTerm_Operator
pattern ListPopulationTerm_Operator_STRINGEQUALS = ListPopulationTerm_Operator "STRING_EQUALS"

-- | 
pattern ListPopulationTerm_Operator_STRINGCONTAINS :: ListPopulationTerm_Operator
pattern ListPopulationTerm_Operator_STRINGCONTAINS = ListPopulationTerm_Operator "STRING_CONTAINS"

{-# COMPLETE
  ListPopulationTerm_Operator_NUMEQUALS,
  ListPopulationTerm_Operator_NUMLESSTHAN,
  ListPopulationTerm_Operator_NUMLESSTHANEQUAL,
  ListPopulationTerm_Operator_NUMGREATERTHAN,
  ListPopulationTerm_Operator_NUMGREATERTHANEQUAL,
  ListPopulationTerm_Operator_STRINGEQUALS,
  ListPopulationTerm_Operator_STRINGCONTAINS,
  ListPopulationTerm_Operator #-}

-- | List population term type determines the applicable fields in this object. If left unset or set to CUSTOM/VARIABLE/TERM, then variableName, variableFriendlyName, operator, value, and negation are applicable. If set to LIST/MEMBERSHIP/TERM then remarketingListId and contains are applicable. If set to REFERRER_TERM then operator, value, and negation are applicable.
newtype ListPopulationTerm_Type = ListPopulationTerm_Type { fromListPopulationTerm_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ListPopulationTerm_Type_CUSTOMVARIABLETERM :: ListPopulationTerm_Type
pattern ListPopulationTerm_Type_CUSTOMVARIABLETERM = ListPopulationTerm_Type "CUSTOM_VARIABLE_TERM"

-- | 
pattern ListPopulationTerm_Type_LISTMEMBERSHIPTERM :: ListPopulationTerm_Type
pattern ListPopulationTerm_Type_LISTMEMBERSHIPTERM = ListPopulationTerm_Type "LIST_MEMBERSHIP_TERM"

-- | 
pattern ListPopulationTerm_Type_REFERRERTERM :: ListPopulationTerm_Type
pattern ListPopulationTerm_Type_REFERRERTERM = ListPopulationTerm_Type "REFERRER_TERM"

{-# COMPLETE
  ListPopulationTerm_Type_CUSTOMVARIABLETERM,
  ListPopulationTerm_Type_LISTMEMBERSHIPTERM,
  ListPopulationTerm_Type_REFERRERTERM,
  ListPopulationTerm_Type #-}

-- | .
newtype MeasurementPartnerAdvertiserLink_LinkStatus = MeasurementPartnerAdvertiserLink_LinkStatus { fromMeasurementPartnerAdvertiserLink_LinkStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERUNLINKED :: MeasurementPartnerAdvertiserLink_LinkStatus
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERUNLINKED = MeasurementPartnerAdvertiserLink_LinkStatus "MEASUREMENT_PARTNER_UNLINKED"

-- | 
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKED :: MeasurementPartnerAdvertiserLink_LinkStatus
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKED = MeasurementPartnerAdvertiserLink_LinkStatus "MEASUREMENT_PARTNER_LINKED"

-- | 
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKPENDING :: MeasurementPartnerAdvertiserLink_LinkStatus
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKPENDING = MeasurementPartnerAdvertiserLink_LinkStatus "MEASUREMENT_PARTNER_LINK_PENDING"

-- | 
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKFAILURE :: MeasurementPartnerAdvertiserLink_LinkStatus
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKFAILURE = MeasurementPartnerAdvertiserLink_LinkStatus "MEASUREMENT_PARTNER_LINK_FAILURE"

-- | 
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT :: MeasurementPartnerAdvertiserLink_LinkStatus
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT = MeasurementPartnerAdvertiserLink_LinkStatus "MEASUREMENT_PARTNER_LINK_OPT_OUT"

-- | 
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING :: MeasurementPartnerAdvertiserLink_LinkStatus
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING = MeasurementPartnerAdvertiserLink_LinkStatus "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING"

-- | 
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING :: MeasurementPartnerAdvertiserLink_LinkStatus
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING = MeasurementPartnerAdvertiserLink_LinkStatus "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING"

-- | 
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING :: MeasurementPartnerAdvertiserLink_LinkStatus
pattern MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING = MeasurementPartnerAdvertiserLink_LinkStatus "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING"

{-# COMPLETE
  MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERUNLINKED,
  MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKED,
  MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKPENDING,
  MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKFAILURE,
  MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT,
  MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING,
  MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING,
  MeasurementPartnerAdvertiserLink_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING,
  MeasurementPartnerAdvertiserLink_LinkStatus #-}

-- | Measurement partner used for tag wrapping.
newtype MeasurementPartnerAdvertiserLink_MeasurementPartner = MeasurementPartnerAdvertiserLink_MeasurementPartner { fromMeasurementPartnerAdvertiserLink_MeasurementPartner :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MeasurementPartnerAdvertiserLink_MeasurementPartner_None :: MeasurementPartnerAdvertiserLink_MeasurementPartner
pattern MeasurementPartnerAdvertiserLink_MeasurementPartner_None = MeasurementPartnerAdvertiserLink_MeasurementPartner "NONE"

-- | 
pattern MeasurementPartnerAdvertiserLink_MeasurementPartner_INTEGRALADSCIENCE :: MeasurementPartnerAdvertiserLink_MeasurementPartner
pattern MeasurementPartnerAdvertiserLink_MeasurementPartner_INTEGRALADSCIENCE = MeasurementPartnerAdvertiserLink_MeasurementPartner "INTEGRAL_AD_SCIENCE"

{-# COMPLETE
  MeasurementPartnerAdvertiserLink_MeasurementPartner_None,
  MeasurementPartnerAdvertiserLink_MeasurementPartner_INTEGRALADSCIENCE,
  MeasurementPartnerAdvertiserLink_MeasurementPartner #-}

-- | .
newtype MeasurementPartnerCampaignLink_LinkStatus = MeasurementPartnerCampaignLink_LinkStatus { fromMeasurementPartnerCampaignLink_LinkStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERUNLINKED :: MeasurementPartnerCampaignLink_LinkStatus
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERUNLINKED = MeasurementPartnerCampaignLink_LinkStatus "MEASUREMENT_PARTNER_UNLINKED"

-- | 
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKED :: MeasurementPartnerCampaignLink_LinkStatus
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKED = MeasurementPartnerCampaignLink_LinkStatus "MEASUREMENT_PARTNER_LINKED"

-- | 
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKPENDING :: MeasurementPartnerCampaignLink_LinkStatus
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKPENDING = MeasurementPartnerCampaignLink_LinkStatus "MEASUREMENT_PARTNER_LINK_PENDING"

-- | 
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKFAILURE :: MeasurementPartnerCampaignLink_LinkStatus
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKFAILURE = MeasurementPartnerCampaignLink_LinkStatus "MEASUREMENT_PARTNER_LINK_FAILURE"

-- | 
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT :: MeasurementPartnerCampaignLink_LinkStatus
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT = MeasurementPartnerCampaignLink_LinkStatus "MEASUREMENT_PARTNER_LINK_OPT_OUT"

-- | 
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING :: MeasurementPartnerCampaignLink_LinkStatus
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING = MeasurementPartnerCampaignLink_LinkStatus "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING"

-- | 
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING :: MeasurementPartnerCampaignLink_LinkStatus
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING = MeasurementPartnerCampaignLink_LinkStatus "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING"

-- | 
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING :: MeasurementPartnerCampaignLink_LinkStatus
pattern MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING = MeasurementPartnerCampaignLink_LinkStatus "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING"

{-# COMPLETE
  MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERUNLINKED,
  MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKED,
  MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKPENDING,
  MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKFAILURE,
  MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT,
  MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING,
  MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING,
  MeasurementPartnerCampaignLink_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING,
  MeasurementPartnerCampaignLink_LinkStatus #-}

-- | Measurement partner used for tag wrapping.
newtype MeasurementPartnerCampaignLink_MeasurementPartner = MeasurementPartnerCampaignLink_MeasurementPartner { fromMeasurementPartnerCampaignLink_MeasurementPartner :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MeasurementPartnerCampaignLink_MeasurementPartner_None :: MeasurementPartnerCampaignLink_MeasurementPartner
pattern MeasurementPartnerCampaignLink_MeasurementPartner_None = MeasurementPartnerCampaignLink_MeasurementPartner "NONE"

-- | 
pattern MeasurementPartnerCampaignLink_MeasurementPartner_INTEGRALADSCIENCE :: MeasurementPartnerCampaignLink_MeasurementPartner
pattern MeasurementPartnerCampaignLink_MeasurementPartner_INTEGRALADSCIENCE = MeasurementPartnerCampaignLink_MeasurementPartner "INTEGRAL_AD_SCIENCE"

{-# COMPLETE
  MeasurementPartnerCampaignLink_MeasurementPartner_None,
  MeasurementPartnerCampaignLink_MeasurementPartner_INTEGRALADSCIENCE,
  MeasurementPartnerCampaignLink_MeasurementPartner #-}

-- | Placement wrapping status.
newtype MeasurementPartnerWrappingData_LinkStatus = MeasurementPartnerWrappingData_LinkStatus { fromMeasurementPartnerWrappingData_LinkStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERUNLINKED :: MeasurementPartnerWrappingData_LinkStatus
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERUNLINKED = MeasurementPartnerWrappingData_LinkStatus "MEASUREMENT_PARTNER_UNLINKED"

-- | 
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKED :: MeasurementPartnerWrappingData_LinkStatus
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKED = MeasurementPartnerWrappingData_LinkStatus "MEASUREMENT_PARTNER_LINKED"

-- | 
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKPENDING :: MeasurementPartnerWrappingData_LinkStatus
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKPENDING = MeasurementPartnerWrappingData_LinkStatus "MEASUREMENT_PARTNER_LINK_PENDING"

-- | 
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKFAILURE :: MeasurementPartnerWrappingData_LinkStatus
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKFAILURE = MeasurementPartnerWrappingData_LinkStatus "MEASUREMENT_PARTNER_LINK_FAILURE"

-- | 
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT :: MeasurementPartnerWrappingData_LinkStatus
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT = MeasurementPartnerWrappingData_LinkStatus "MEASUREMENT_PARTNER_LINK_OPT_OUT"

-- | 
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING :: MeasurementPartnerWrappingData_LinkStatus
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING = MeasurementPartnerWrappingData_LinkStatus "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING"

-- | 
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING :: MeasurementPartnerWrappingData_LinkStatus
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING = MeasurementPartnerWrappingData_LinkStatus "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING"

-- | 
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING :: MeasurementPartnerWrappingData_LinkStatus
pattern MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING = MeasurementPartnerWrappingData_LinkStatus "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING"

{-# COMPLETE
  MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERUNLINKED,
  MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKED,
  MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKPENDING,
  MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKFAILURE,
  MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKOPTOUT,
  MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKOPTOUTPENDING,
  MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERLINKWRAPPINGPENDING,
  MeasurementPartnerWrappingData_LinkStatus_MEASUREMENTPARTNERMODECHANGEPENDING,
  MeasurementPartnerWrappingData_LinkStatus #-}

-- | Measurement partner used for wrapping the placement.
newtype MeasurementPartnerWrappingData_MeasurementPartner = MeasurementPartnerWrappingData_MeasurementPartner { fromMeasurementPartnerWrappingData_MeasurementPartner :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MeasurementPartnerWrappingData_MeasurementPartner_None :: MeasurementPartnerWrappingData_MeasurementPartner
pattern MeasurementPartnerWrappingData_MeasurementPartner_None = MeasurementPartnerWrappingData_MeasurementPartner "NONE"

-- | 
pattern MeasurementPartnerWrappingData_MeasurementPartner_INTEGRALADSCIENCE :: MeasurementPartnerWrappingData_MeasurementPartner
pattern MeasurementPartnerWrappingData_MeasurementPartner_INTEGRALADSCIENCE = MeasurementPartnerWrappingData_MeasurementPartner "INTEGRAL_AD_SCIENCE"

{-# COMPLETE
  MeasurementPartnerWrappingData_MeasurementPartner_None,
  MeasurementPartnerWrappingData_MeasurementPartner_INTEGRALADSCIENCE,
  MeasurementPartnerWrappingData_MeasurementPartner #-}

-- | Measurement mode for the wrapped placement.
newtype MeasurementPartnerWrappingData_TagWrappingMode = MeasurementPartnerWrappingData_TagWrappingMode { fromMeasurementPartnerWrappingData_TagWrappingMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MeasurementPartnerWrappingData_TagWrappingMode_None :: MeasurementPartnerWrappingData_TagWrappingMode
pattern MeasurementPartnerWrappingData_TagWrappingMode_None = MeasurementPartnerWrappingData_TagWrappingMode "NONE"

-- | 
pattern MeasurementPartnerWrappingData_TagWrappingMode_Blocking :: MeasurementPartnerWrappingData_TagWrappingMode
pattern MeasurementPartnerWrappingData_TagWrappingMode_Blocking = MeasurementPartnerWrappingData_TagWrappingMode "BLOCKING"

-- | 
pattern MeasurementPartnerWrappingData_TagWrappingMode_Monitoring :: MeasurementPartnerWrappingData_TagWrappingMode
pattern MeasurementPartnerWrappingData_TagWrappingMode_Monitoring = MeasurementPartnerWrappingData_TagWrappingMode "MONITORING"

-- | 
pattern MeasurementPartnerWrappingData_TagWrappingMode_MONITORINGONLY :: MeasurementPartnerWrappingData_TagWrappingMode
pattern MeasurementPartnerWrappingData_TagWrappingMode_MONITORINGONLY = MeasurementPartnerWrappingData_TagWrappingMode "MONITORING_ONLY"

-- | 
pattern MeasurementPartnerWrappingData_TagWrappingMode_VIDEOPIXELMONITORING :: MeasurementPartnerWrappingData_TagWrappingMode
pattern MeasurementPartnerWrappingData_TagWrappingMode_VIDEOPIXELMONITORING = MeasurementPartnerWrappingData_TagWrappingMode "VIDEO_PIXEL_MONITORING"

-- | 
pattern MeasurementPartnerWrappingData_TagWrappingMode_Tracking :: MeasurementPartnerWrappingData_TagWrappingMode
pattern MeasurementPartnerWrappingData_TagWrappingMode_Tracking = MeasurementPartnerWrappingData_TagWrappingMode "TRACKING"

-- | 
pattern MeasurementPartnerWrappingData_TagWrappingMode_NONVPAIDMONITORING :: MeasurementPartnerWrappingData_TagWrappingMode
pattern MeasurementPartnerWrappingData_TagWrappingMode_NONVPAIDMONITORING = MeasurementPartnerWrappingData_TagWrappingMode "NON_VPAID_MONITORING"

{-# COMPLETE
  MeasurementPartnerWrappingData_TagWrappingMode_None,
  MeasurementPartnerWrappingData_TagWrappingMode_Blocking,
  MeasurementPartnerWrappingData_TagWrappingMode_Monitoring,
  MeasurementPartnerWrappingData_TagWrappingMode_MONITORINGONLY,
  MeasurementPartnerWrappingData_TagWrappingMode_VIDEOPIXELMONITORING,
  MeasurementPartnerWrappingData_TagWrappingMode_Tracking,
  MeasurementPartnerWrappingData_TagWrappingMode_NONVPAIDMONITORING,
  MeasurementPartnerWrappingData_TagWrappingMode #-}

-- | Mobile app directory.
newtype MobileApp_Directory = MobileApp_Directory { fromMobileApp_Directory :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MobileApp_Directory_Unknown :: MobileApp_Directory
pattern MobileApp_Directory_Unknown = MobileApp_Directory "UNKNOWN"

-- | 
pattern MobileApp_Directory_APPLEAPPSTORE :: MobileApp_Directory
pattern MobileApp_Directory_APPLEAPPSTORE = MobileApp_Directory "APPLE_APP_STORE"

-- | 
pattern MobileApp_Directory_GOOGLEPLAYSTORE :: MobileApp_Directory
pattern MobileApp_Directory_GOOGLEPLAYSTORE = MobileApp_Directory "GOOGLE_PLAY_STORE"

{-# COMPLETE
  MobileApp_Directory_Unknown,
  MobileApp_Directory_APPLEAPPSTORE,
  MobileApp_Directory_GOOGLEPLAYSTORE,
  MobileApp_Directory #-}

-- | Status of the filter. NONE means the user has access to none of the objects. ALL means the user has access to all objects. ASSIGNED means the user has access to the objects with IDs in the objectIds list.
newtype ObjectFilter_Status = ObjectFilter_Status { fromObjectFilter_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ObjectFilter_Status_None :: ObjectFilter_Status
pattern ObjectFilter_Status_None = ObjectFilter_Status "NONE"

-- | 
pattern ObjectFilter_Status_Assigned :: ObjectFilter_Status
pattern ObjectFilter_Status_Assigned = ObjectFilter_Status "ASSIGNED"

-- | 
pattern ObjectFilter_Status_All :: ObjectFilter_Status
pattern ObjectFilter_Status_All = ObjectFilter_Status "ALL"

{-# COMPLETE
  ObjectFilter_Status_None,
  ObjectFilter_Status_Assigned,
  ObjectFilter_Status_All,
  ObjectFilter_Status #-}

-- | Type of this contact.
newtype OrderContact_ContactType = OrderContact_ContactType { fromOrderContact_ContactType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern OrderContact_ContactType_PLANNINGORDERCONTACTBUYERCONTACT :: OrderContact_ContactType
pattern OrderContact_ContactType_PLANNINGORDERCONTACTBUYERCONTACT = OrderContact_ContactType "PLANNING_ORDER_CONTACT_BUYER_CONTACT"

-- | 
pattern OrderContact_ContactType_PLANNINGORDERCONTACTBUYERBILLINGCONTACT :: OrderContact_ContactType
pattern OrderContact_ContactType_PLANNINGORDERCONTACTBUYERBILLINGCONTACT = OrderContact_ContactType "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT"

-- | 
pattern OrderContact_ContactType_PLANNINGORDERCONTACTSELLERCONTACT :: OrderContact_ContactType
pattern OrderContact_ContactType_PLANNINGORDERCONTACTSELLERCONTACT = OrderContact_ContactType "PLANNING_ORDER_CONTACT_SELLER_CONTACT"

{-# COMPLETE
  OrderContact_ContactType_PLANNINGORDERCONTACTBUYERCONTACT,
  OrderContact_ContactType_PLANNINGORDERCONTACTBUYERBILLINGCONTACT,
  OrderContact_ContactType_PLANNINGORDERCONTACTSELLERCONTACT,
  OrderContact_ContactType #-}

-- | Type of this order document
newtype OrderDocument_Type = OrderDocument_Type { fromOrderDocument_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern OrderDocument_Type_PLANNINGORDERTYPEINSERTIONORDER :: OrderDocument_Type
pattern OrderDocument_Type_PLANNINGORDERTYPEINSERTIONORDER = OrderDocument_Type "PLANNING_ORDER_TYPE_INSERTION_ORDER"

-- | 
pattern OrderDocument_Type_PLANNINGORDERTYPECHANGEORDER :: OrderDocument_Type
pattern OrderDocument_Type_PLANNINGORDERTYPECHANGEORDER = OrderDocument_Type "PLANNING_ORDER_TYPE_CHANGE_ORDER"

{-# COMPLETE
  OrderDocument_Type_PLANNINGORDERTYPEINSERTIONORDER,
  OrderDocument_Type_PLANNINGORDERTYPECHANGEORDER,
  OrderDocument_Type #-}

-- | Determines how the \'value\' field is matched when filtering. If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'/\' is allowed as a placeholder for variable length character sequences, and it can be escaped with a backslash. Note, only paid search dimensions (\'dfa:paidSearch/\') allow a matchType other than EXACT.
newtype PathFilter_PathMatchPosition = PathFilter_PathMatchPosition { fromPathFilter_PathMatchPosition :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PathFilter_PathMatchPosition_PATHMATCHPOSITIONUNSPECIFIED :: PathFilter_PathMatchPosition
pattern PathFilter_PathMatchPosition_PATHMATCHPOSITIONUNSPECIFIED = PathFilter_PathMatchPosition "PATH_MATCH_POSITION_UNSPECIFIED"

-- | 
pattern PathFilter_PathMatchPosition_Any :: PathFilter_PathMatchPosition
pattern PathFilter_PathMatchPosition_Any = PathFilter_PathMatchPosition "ANY"

-- | 
pattern PathFilter_PathMatchPosition_First :: PathFilter_PathMatchPosition
pattern PathFilter_PathMatchPosition_First = PathFilter_PathMatchPosition "FIRST"

-- | 
pattern PathFilter_PathMatchPosition_Last :: PathFilter_PathMatchPosition
pattern PathFilter_PathMatchPosition_Last = PathFilter_PathMatchPosition "LAST"

{-# COMPLETE
  PathFilter_PathMatchPosition_PATHMATCHPOSITIONUNSPECIFIED,
  PathFilter_PathMatchPosition_Any,
  PathFilter_PathMatchPosition_First,
  PathFilter_PathMatchPosition_Last,
  PathFilter_PathMatchPosition #-}

-- | Determines how the \'value\' field is matched when filtering. If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'/\' is allowed as a placeholder for variable length character sequences, and it can be escaped with a backslash. Note, only paid search dimensions (\'dfa:paidSearch/\') allow a matchType other than EXACT.
newtype PathReportDimensionValue_MatchType = PathReportDimensionValue_MatchType { fromPathReportDimensionValue_MatchType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PathReportDimensionValue_MatchType_Exact :: PathReportDimensionValue_MatchType
pattern PathReportDimensionValue_MatchType_Exact = PathReportDimensionValue_MatchType "EXACT"

-- | 
pattern PathReportDimensionValue_MatchType_BEGINSWITH :: PathReportDimensionValue_MatchType
pattern PathReportDimensionValue_MatchType_BEGINSWITH = PathReportDimensionValue_MatchType "BEGINS_WITH"

-- | 
pattern PathReportDimensionValue_MatchType_Contains :: PathReportDimensionValue_MatchType
pattern PathReportDimensionValue_MatchType_Contains = PathReportDimensionValue_MatchType "CONTAINS"

-- | 
pattern PathReportDimensionValue_MatchType_WILDCARDEXPRESSION :: PathReportDimensionValue_MatchType
pattern PathReportDimensionValue_MatchType_WILDCARDEXPRESSION = PathReportDimensionValue_MatchType "WILDCARD_EXPRESSION"

{-# COMPLETE
  PathReportDimensionValue_MatchType_Exact,
  PathReportDimensionValue_MatchType_BEGINSWITH,
  PathReportDimensionValue_MatchType_Contains,
  PathReportDimensionValue_MatchType_WILDCARDEXPRESSION,
  PathReportDimensionValue_MatchType #-}

-- | Placement compatibility. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering on desktop, on mobile devices or in mobile apps for regular or interstitial ads respectively. APP and APP/INTERSTITIAL are no longer allowed for new placement insertions. Instead, use DISPLAY or DISPLAY/INTERSTITIAL. IN/STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard. This field is required on insertion.
newtype Placement_Compatibility = Placement_Compatibility { fromPlacement_Compatibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Placement_Compatibility_Display :: Placement_Compatibility
pattern Placement_Compatibility_Display = Placement_Compatibility "DISPLAY"

-- | 
pattern Placement_Compatibility_DISPLAYINTERSTITIAL :: Placement_Compatibility
pattern Placement_Compatibility_DISPLAYINTERSTITIAL = Placement_Compatibility "DISPLAY_INTERSTITIAL"

-- | 
pattern Placement_Compatibility_App :: Placement_Compatibility
pattern Placement_Compatibility_App = Placement_Compatibility "APP"

-- | 
pattern Placement_Compatibility_APPINTERSTITIAL :: Placement_Compatibility
pattern Placement_Compatibility_APPINTERSTITIAL = Placement_Compatibility "APP_INTERSTITIAL"

-- | 
pattern Placement_Compatibility_INSTREAMVIDEO :: Placement_Compatibility
pattern Placement_Compatibility_INSTREAMVIDEO = Placement_Compatibility "IN_STREAM_VIDEO"

-- | 
pattern Placement_Compatibility_INSTREAMAUDIO :: Placement_Compatibility
pattern Placement_Compatibility_INSTREAMAUDIO = Placement_Compatibility "IN_STREAM_AUDIO"

{-# COMPLETE
  Placement_Compatibility_Display,
  Placement_Compatibility_DISPLAYINTERSTITIAL,
  Placement_Compatibility_App,
  Placement_Compatibility_APPINTERSTITIAL,
  Placement_Compatibility_INSTREAMVIDEO,
  Placement_Compatibility_INSTREAMAUDIO,
  Placement_Compatibility #-}

-- | Payment source for this placement. This is a required field that is read-only after insertion.
newtype Placement_PaymentSource = Placement_PaymentSource { fromPlacement_PaymentSource :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Placement_PaymentSource_PLACEMENTAGENCYPAID :: Placement_PaymentSource
pattern Placement_PaymentSource_PLACEMENTAGENCYPAID = Placement_PaymentSource "PLACEMENT_AGENCY_PAID"

-- | 
pattern Placement_PaymentSource_PLACEMENTPUBLISHERPAID :: Placement_PaymentSource
pattern Placement_PaymentSource_PLACEMENTPUBLISHERPAID = Placement_PaymentSource "PLACEMENT_PUBLISHER_PAID"

{-# COMPLETE
  Placement_PaymentSource_PLACEMENTAGENCYPAID,
  Placement_PaymentSource_PLACEMENTPUBLISHERPAID,
  Placement_PaymentSource #-}

-- | Third-party placement status.
newtype Placement_Status = Placement_Status { fromPlacement_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Placement_Status_PENDINGREVIEW :: Placement_Status
pattern Placement_Status_PENDINGREVIEW = Placement_Status "PENDING_REVIEW"

-- | 
pattern Placement_Status_PAYMENTACCEPTED :: Placement_Status
pattern Placement_Status_PAYMENTACCEPTED = Placement_Status "PAYMENT_ACCEPTED"

-- | 
pattern Placement_Status_PAYMENTREJECTED :: Placement_Status
pattern Placement_Status_PAYMENTREJECTED = Placement_Status "PAYMENT_REJECTED"

-- | 
pattern Placement_Status_ACKNOWLEDGEREJECTION :: Placement_Status
pattern Placement_Status_ACKNOWLEDGEREJECTION = Placement_Status "ACKNOWLEDGE_REJECTION"

-- | 
pattern Placement_Status_ACKNOWLEDGEACCEPTANCE :: Placement_Status
pattern Placement_Status_ACKNOWLEDGEACCEPTANCE = Placement_Status "ACKNOWLEDGE_ACCEPTANCE"

-- | 
pattern Placement_Status_Draft :: Placement_Status
pattern Placement_Status_Draft = Placement_Status "DRAFT"

{-# COMPLETE
  Placement_Status_PENDINGREVIEW,
  Placement_Status_PAYMENTACCEPTED,
  Placement_Status_PAYMENTREJECTED,
  Placement_Status_ACKNOWLEDGEREJECTION,
  Placement_Status_ACKNOWLEDGEACCEPTANCE,
  Placement_Status_Draft,
  Placement_Status #-}

newtype Placement_TagFormatsItem = Placement_TagFormatsItem { fromPlacement_TagFormatsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGSTANDARD :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGSTANDARD = Placement_TagFormatsItem "PLACEMENT_TAG_STANDARD"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGIFRAMEJAVASCRIPT :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGIFRAMEJAVASCRIPT = Placement_TagFormatsItem "PLACEMENT_TAG_IFRAME_JAVASCRIPT"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGIFRAMEILAYER :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGIFRAMEILAYER = Placement_TagFormatsItem "PLACEMENT_TAG_IFRAME_ILAYER"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERNALREDIRECT :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERNALREDIRECT = Placement_TagFormatsItem "PLACEMENT_TAG_INTERNAL_REDIRECT"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGJAVASCRIPT :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGJAVASCRIPT = Placement_TagFormatsItem "PLACEMENT_TAG_JAVASCRIPT"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT = Placement_TagFormatsItem "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT = Placement_TagFormatsItem "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALJAVASCRIPT :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALJAVASCRIPT = Placement_TagFormatsItem "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGCLICKCOMMANDS :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGCLICKCOMMANDS = Placement_TagFormatsItem "PLACEMENT_TAG_CLICK_COMMANDS"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGINSTREAMVIDEOPREFETCH :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGINSTREAMVIDEOPREFETCH = Placement_TagFormatsItem "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGTRACKING :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGTRACKING = Placement_TagFormatsItem "PLACEMENT_TAG_TRACKING"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGTRACKINGIFRAME :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGTRACKINGIFRAME = Placement_TagFormatsItem "PLACEMENT_TAG_TRACKING_IFRAME"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGTRACKINGJAVASCRIPT :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGTRACKINGJAVASCRIPT = Placement_TagFormatsItem "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

-- | 
pattern Placement_TagFormatsItem_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3 :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3 = Placement_TagFormatsItem "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY = Placement_TagFormatsItem "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGJAVASCRIPTLEGACY :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGJAVASCRIPTLEGACY = Placement_TagFormatsItem "PLACEMENT_TAG_JAVASCRIPT_LEGACY"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY = Placement_TagFormatsItem "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY = Placement_TagFormatsItem "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"

-- | 
pattern Placement_TagFormatsItem_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4 :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4 = Placement_TagFormatsItem "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4"

-- | 
pattern Placement_TagFormatsItem_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT :: Placement_TagFormatsItem
pattern Placement_TagFormatsItem_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT = Placement_TagFormatsItem "PLACEMENT_TAG_TRACKING_THIRD_PARTY_MEASUREMENT"

{-# COMPLETE
  Placement_TagFormatsItem_PLACEMENTTAGSTANDARD,
  Placement_TagFormatsItem_PLACEMENTTAGIFRAMEJAVASCRIPT,
  Placement_TagFormatsItem_PLACEMENTTAGIFRAMEILAYER,
  Placement_TagFormatsItem_PLACEMENTTAGINTERNALREDIRECT,
  Placement_TagFormatsItem_PLACEMENTTAGJAVASCRIPT,
  Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT,
  Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT,
  Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALJAVASCRIPT,
  Placement_TagFormatsItem_PLACEMENTTAGCLICKCOMMANDS,
  Placement_TagFormatsItem_PLACEMENTTAGINSTREAMVIDEOPREFETCH,
  Placement_TagFormatsItem_PLACEMENTTAGTRACKING,
  Placement_TagFormatsItem_PLACEMENTTAGTRACKINGIFRAME,
  Placement_TagFormatsItem_PLACEMENTTAGTRACKINGJAVASCRIPT,
  Placement_TagFormatsItem_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3,
  Placement_TagFormatsItem_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY,
  Placement_TagFormatsItem_PLACEMENTTAGJAVASCRIPTLEGACY,
  Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY,
  Placement_TagFormatsItem_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY,
  Placement_TagFormatsItem_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4,
  Placement_TagFormatsItem_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT,
  Placement_TagFormatsItem #-}

-- | VPAID adapter setting for this placement. Controls which VPAID format the measurement adapter will use for in-stream video creatives assigned to this placement. /Note:/ Flash is no longer supported. This field now defaults to HTML5 when the following values are provided: FLASH, BOTH.
newtype Placement_VpaidAdapterChoice = Placement_VpaidAdapterChoice { fromPlacement_VpaidAdapterChoice :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Placement_VpaidAdapterChoice_Default :: Placement_VpaidAdapterChoice
pattern Placement_VpaidAdapterChoice_Default = Placement_VpaidAdapterChoice "DEFAULT"

-- | 
pattern Placement_VpaidAdapterChoice_Flash :: Placement_VpaidAdapterChoice
pattern Placement_VpaidAdapterChoice_Flash = Placement_VpaidAdapterChoice "FLASH"

-- | 
pattern Placement_VpaidAdapterChoice_HTML5 :: Placement_VpaidAdapterChoice
pattern Placement_VpaidAdapterChoice_HTML5 = Placement_VpaidAdapterChoice "HTML5"

-- | 
pattern Placement_VpaidAdapterChoice_Both :: Placement_VpaidAdapterChoice
pattern Placement_VpaidAdapterChoice_Both = Placement_VpaidAdapterChoice "BOTH"

{-# COMPLETE
  Placement_VpaidAdapterChoice_Default,
  Placement_VpaidAdapterChoice_Flash,
  Placement_VpaidAdapterChoice_HTML5,
  Placement_VpaidAdapterChoice_Both,
  Placement_VpaidAdapterChoice #-}

-- | Type of this placement group. A package is a simple group of placements that acts as a single pricing point for a group of tags. A roadblock is a group of placements that not only acts as a single pricing point, but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned placements to be marked as primary for reporting. This field is required on insertion.
newtype PlacementGroup_PlacementGroupType = PlacementGroup_PlacementGroupType { fromPlacementGroup_PlacementGroupType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementGroup_PlacementGroupType_PLACEMENTPACKAGE :: PlacementGroup_PlacementGroupType
pattern PlacementGroup_PlacementGroupType_PLACEMENTPACKAGE = PlacementGroup_PlacementGroupType "PLACEMENT_PACKAGE"

-- | 
pattern PlacementGroup_PlacementGroupType_PLACEMENTROADBLOCK :: PlacementGroup_PlacementGroupType
pattern PlacementGroup_PlacementGroupType_PLACEMENTROADBLOCK = PlacementGroup_PlacementGroupType "PLACEMENT_ROADBLOCK"

{-# COMPLETE
  PlacementGroup_PlacementGroupType_PLACEMENTPACKAGE,
  PlacementGroup_PlacementGroupType_PLACEMENTROADBLOCK,
  PlacementGroup_PlacementGroupType #-}

-- | Popup window position either centered or at specific coordinate.
newtype PopupWindowProperties_PositionType = PopupWindowProperties_PositionType { fromPopupWindowProperties_PositionType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PopupWindowProperties_PositionType_Center :: PopupWindowProperties_PositionType
pattern PopupWindowProperties_PositionType_Center = PopupWindowProperties_PositionType "CENTER"

-- | 
pattern PopupWindowProperties_PositionType_Coordinates :: PopupWindowProperties_PositionType
pattern PopupWindowProperties_PositionType_Coordinates = PopupWindowProperties_PositionType "COORDINATES"

{-# COMPLETE
  PopupWindowProperties_PositionType_Center,
  PopupWindowProperties_PositionType_Coordinates,
  PopupWindowProperties_PositionType #-}

-- | Cap cost type of this inventory item.
newtype Pricing_CapCostType = Pricing_CapCostType { fromPricing_CapCostType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPENONE :: Pricing_CapCostType
pattern Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPENONE = Pricing_CapCostType "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE"

-- | 
pattern Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPEMONTHLY :: Pricing_CapCostType
pattern Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPEMONTHLY = Pricing_CapCostType "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY"

-- | 
pattern Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPECUMULATIVE :: Pricing_CapCostType
pattern Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPECUMULATIVE = Pricing_CapCostType "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE"

{-# COMPLETE
  Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPENONE,
  Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPEMONTHLY,
  Pricing_CapCostType_PLANNINGPLACEMENTCAPCOSTTYPECUMULATIVE,
  Pricing_CapCostType #-}

-- | Group type of this inventory item if it represents a placement group. Is null otherwise. There are two type of placement groups: PLANNING/PLACEMENT/GROUP/TYPE/PACKAGE is a simple group of inventory items that acts as a single pricing point for a group of tags. PLANNING/PLACEMENT/GROUP/TYPE/ROADBLOCK is a group of inventory items that not only acts as a single pricing point, but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned inventory items to be marked as primary.
newtype Pricing_GroupType = Pricing_GroupType { fromPricing_GroupType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Pricing_GroupType_PLANNINGPLACEMENTGROUPTYPEPACKAGE :: Pricing_GroupType
pattern Pricing_GroupType_PLANNINGPLACEMENTGROUPTYPEPACKAGE = Pricing_GroupType "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE"

-- | 
pattern Pricing_GroupType_PLANNINGPLACEMENTGROUPTYPEROADBLOCK :: Pricing_GroupType
pattern Pricing_GroupType_PLANNINGPLACEMENTGROUPTYPEROADBLOCK = Pricing_GroupType "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK"

{-# COMPLETE
  Pricing_GroupType_PLANNINGPLACEMENTGROUPTYPEPACKAGE,
  Pricing_GroupType_PLANNINGPLACEMENTGROUPTYPEROADBLOCK,
  Pricing_GroupType #-}

-- | Pricing type of this inventory item.
newtype Pricing_PricingType = Pricing_PricingType { fromPricing_PricingType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEIMPRESSIONS :: Pricing_PricingType
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEIMPRESSIONS = Pricing_PricingType "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS"

-- | 
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPM :: Pricing_PricingType
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPM = Pricing_PricingType "PLANNING_PLACEMENT_PRICING_TYPE_CPM"

-- | 
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECLICKS :: Pricing_PricingType
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECLICKS = Pricing_PricingType "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS"

-- | 
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPC :: Pricing_PricingType
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPC = Pricing_PricingType "PLANNING_PLACEMENT_PRICING_TYPE_CPC"

-- | 
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPA :: Pricing_PricingType
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPA = Pricing_PricingType "PLANNING_PLACEMENT_PRICING_TYPE_CPA"

-- | 
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEFLATRATEIMPRESSIONS :: Pricing_PricingType
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEFLATRATEIMPRESSIONS = Pricing_PricingType "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

-- | 
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEFLATRATECLICKS :: Pricing_PricingType
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEFLATRATECLICKS = Pricing_PricingType "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS"

-- | 
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPMACTIVEVIEW :: Pricing_PricingType
pattern Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPMACTIVEVIEW = Pricing_PricingType "PLANNING_PLACEMENT_PRICING_TYPE_CPM_ACTIVEVIEW"

{-# COMPLETE
  Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEIMPRESSIONS,
  Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPM,
  Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECLICKS,
  Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPC,
  Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPA,
  Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEFLATRATEIMPRESSIONS,
  Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPEFLATRATECLICKS,
  Pricing_PricingType_PLANNINGPLACEMENTPRICINGTYPECPMACTIVEVIEW,
  Pricing_PricingType #-}

-- | Placement cap cost option.
newtype PricingSchedule_CapCostOption = PricingSchedule_CapCostOption { fromPricingSchedule_CapCostOption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PricingSchedule_CapCostOption_CAPCOSTNONE :: PricingSchedule_CapCostOption
pattern PricingSchedule_CapCostOption_CAPCOSTNONE = PricingSchedule_CapCostOption "CAP_COST_NONE"

-- | 
pattern PricingSchedule_CapCostOption_CAPCOSTMONTHLY :: PricingSchedule_CapCostOption
pattern PricingSchedule_CapCostOption_CAPCOSTMONTHLY = PricingSchedule_CapCostOption "CAP_COST_MONTHLY"

-- | 
pattern PricingSchedule_CapCostOption_CAPCOSTCUMULATIVE :: PricingSchedule_CapCostOption
pattern PricingSchedule_CapCostOption_CAPCOSTCUMULATIVE = PricingSchedule_CapCostOption "CAP_COST_CUMULATIVE"

{-# COMPLETE
  PricingSchedule_CapCostOption_CAPCOSTNONE,
  PricingSchedule_CapCostOption_CAPCOSTMONTHLY,
  PricingSchedule_CapCostOption_CAPCOSTCUMULATIVE,
  PricingSchedule_CapCostOption #-}

-- | Placement pricing type. This field is required on insertion.
newtype PricingSchedule_PricingType = PricingSchedule_PricingType { fromPricingSchedule_PricingType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PricingSchedule_PricingType_PRICINGTYPECPM :: PricingSchedule_PricingType
pattern PricingSchedule_PricingType_PRICINGTYPECPM = PricingSchedule_PricingType "PRICING_TYPE_CPM"

-- | 
pattern PricingSchedule_PricingType_PRICINGTYPECPC :: PricingSchedule_PricingType
pattern PricingSchedule_PricingType_PRICINGTYPECPC = PricingSchedule_PricingType "PRICING_TYPE_CPC"

-- | 
pattern PricingSchedule_PricingType_PRICINGTYPECPA :: PricingSchedule_PricingType
pattern PricingSchedule_PricingType_PRICINGTYPECPA = PricingSchedule_PricingType "PRICING_TYPE_CPA"

-- | 
pattern PricingSchedule_PricingType_PRICINGTYPEFLATRATEIMPRESSIONS :: PricingSchedule_PricingType
pattern PricingSchedule_PricingType_PRICINGTYPEFLATRATEIMPRESSIONS = PricingSchedule_PricingType "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

-- | 
pattern PricingSchedule_PricingType_PRICINGTYPEFLATRATECLICKS :: PricingSchedule_PricingType
pattern PricingSchedule_PricingType_PRICINGTYPEFLATRATECLICKS = PricingSchedule_PricingType "PRICING_TYPE_FLAT_RATE_CLICKS"

-- | 
pattern PricingSchedule_PricingType_PRICINGTYPECPMACTIVEVIEW :: PricingSchedule_PricingType
pattern PricingSchedule_PricingType_PRICINGTYPECPMACTIVEVIEW = PricingSchedule_PricingType "PRICING_TYPE_CPM_ACTIVEVIEW"

{-# COMPLETE
  PricingSchedule_PricingType_PRICINGTYPECPM,
  PricingSchedule_PricingType_PRICINGTYPECPC,
  PricingSchedule_PricingType_PRICINGTYPECPA,
  PricingSchedule_PricingType_PRICINGTYPEFLATRATEIMPRESSIONS,
  PricingSchedule_PricingType_PRICINGTYPEFLATRATECLICKS,
  PricingSchedule_PricingType_PRICINGTYPECPMACTIVEVIEW,
  PricingSchedule_PricingType #-}

-- | Audience age group of this project.
newtype Project_AudienceAgeGroup = Project_AudienceAgeGroup { fromProject_AudienceAgeGroup :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_18_24 :: Project_AudienceAgeGroup
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_18_24 = Project_AudienceAgeGroup "PLANNING_AUDIENCE_AGE_18_24"

-- | 
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_25_34 :: Project_AudienceAgeGroup
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_25_34 = Project_AudienceAgeGroup "PLANNING_AUDIENCE_AGE_25_34"

-- | 
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_35_44 :: Project_AudienceAgeGroup
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_35_44 = Project_AudienceAgeGroup "PLANNING_AUDIENCE_AGE_35_44"

-- | 
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_45_54 :: Project_AudienceAgeGroup
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_45_54 = Project_AudienceAgeGroup "PLANNING_AUDIENCE_AGE_45_54"

-- | 
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_55_64 :: Project_AudienceAgeGroup
pattern Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_55_64 = Project_AudienceAgeGroup "PLANNING_AUDIENCE_AGE_55_64"

-- | 
pattern Project_AudienceAgeGroup_PLANNINGAUDIENCEAGE65ORMORE :: Project_AudienceAgeGroup
pattern Project_AudienceAgeGroup_PLANNINGAUDIENCEAGE65ORMORE = Project_AudienceAgeGroup "PLANNING_AUDIENCE_AGE_65_OR_MORE"

-- | 
pattern Project_AudienceAgeGroup_PLANNINGAUDIENCEAGEUNKNOWN :: Project_AudienceAgeGroup
pattern Project_AudienceAgeGroup_PLANNINGAUDIENCEAGEUNKNOWN = Project_AudienceAgeGroup "PLANNING_AUDIENCE_AGE_UNKNOWN"

{-# COMPLETE
  Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_18_24,
  Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_25_34,
  Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_35_44,
  Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_45_54,
  Project_AudienceAgeGroup_PLANNING_AUDIENCE_AGE_55_64,
  Project_AudienceAgeGroup_PLANNINGAUDIENCEAGE65ORMORE,
  Project_AudienceAgeGroup_PLANNINGAUDIENCEAGEUNKNOWN,
  Project_AudienceAgeGroup #-}

-- | Audience gender of this project.
newtype Project_AudienceGender = Project_AudienceGender { fromProject_AudienceGender :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Project_AudienceGender_PLANNINGAUDIENCEGENDERMALE :: Project_AudienceGender
pattern Project_AudienceGender_PLANNINGAUDIENCEGENDERMALE = Project_AudienceGender "PLANNING_AUDIENCE_GENDER_MALE"

-- | 
pattern Project_AudienceGender_PLANNINGAUDIENCEGENDERFEMALE :: Project_AudienceGender
pattern Project_AudienceGender_PLANNINGAUDIENCEGENDERFEMALE = Project_AudienceGender "PLANNING_AUDIENCE_GENDER_FEMALE"

{-# COMPLETE
  Project_AudienceGender_PLANNINGAUDIENCEGENDERMALE,
  Project_AudienceGender_PLANNINGAUDIENCEGENDERFEMALE,
  Project_AudienceGender #-}

-- | The delivery type for the recipient.
newtype Recipient_DeliveryType = Recipient_DeliveryType { fromRecipient_DeliveryType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Recipient_DeliveryType_Link :: Recipient_DeliveryType
pattern Recipient_DeliveryType_Link = Recipient_DeliveryType "LINK"

-- | 
pattern Recipient_DeliveryType_Attachment :: Recipient_DeliveryType
pattern Recipient_DeliveryType_Attachment = Recipient_DeliveryType "ATTACHMENT"

{-# COMPLETE
  Recipient_DeliveryType_Link,
  Recipient_DeliveryType_Attachment,
  Recipient_DeliveryType #-}

-- | Product from which this remarketing list was originated.
newtype RemarketingList_ListSource = RemarketingList_ListSource { fromRemarketingList_ListSource :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEOTHER :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEOTHER = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_OTHER"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEADX :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEADX = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_ADX"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEDFP :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEDFP = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_DFP"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEXFP :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEXFP = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_XFP"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEDFA :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEDFA = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_DFA"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEGA :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEGA = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_GA"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEYOUTUBE :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEYOUTUBE = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_YOUTUBE"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEDBM :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEDBM = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_DBM"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEGPLUS :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEGPLUS = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_GPLUS"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEDMP :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEDMP = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_DMP"

-- | 
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEPLAYSTORE :: RemarketingList_ListSource
pattern RemarketingList_ListSource_REMARKETINGLISTSOURCEPLAYSTORE = RemarketingList_ListSource "REMARKETING_LIST_SOURCE_PLAY_STORE"

{-# COMPLETE
  RemarketingList_ListSource_REMARKETINGLISTSOURCEOTHER,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEADX,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEDFP,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEXFP,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEDFA,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEGA,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEYOUTUBE,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEDBM,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEGPLUS,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEDMP,
  RemarketingList_ListSource_REMARKETINGLISTSOURCEPLAYSTORE,
  RemarketingList_ListSource #-}

-- | The dimension option.
newtype Report_CrossDimensionReachCriteria_Dimension = Report_CrossDimensionReachCriteria_Dimension { fromReport_CrossDimensionReachCriteria_Dimension :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Report_CrossDimensionReachCriteria_Dimension_Advertiser :: Report_CrossDimensionReachCriteria_Dimension
pattern Report_CrossDimensionReachCriteria_Dimension_Advertiser = Report_CrossDimensionReachCriteria_Dimension "ADVERTISER"

-- | 
pattern Report_CrossDimensionReachCriteria_Dimension_Campaign :: Report_CrossDimensionReachCriteria_Dimension
pattern Report_CrossDimensionReachCriteria_Dimension_Campaign = Report_CrossDimensionReachCriteria_Dimension "CAMPAIGN"

-- | 
pattern Report_CrossDimensionReachCriteria_Dimension_SITEBYADVERTISER :: Report_CrossDimensionReachCriteria_Dimension
pattern Report_CrossDimensionReachCriteria_Dimension_SITEBYADVERTISER = Report_CrossDimensionReachCriteria_Dimension "SITE_BY_ADVERTISER"

-- | 
pattern Report_CrossDimensionReachCriteria_Dimension_SITEBYCAMPAIGN :: Report_CrossDimensionReachCriteria_Dimension
pattern Report_CrossDimensionReachCriteria_Dimension_SITEBYCAMPAIGN = Report_CrossDimensionReachCriteria_Dimension "SITE_BY_CAMPAIGN"

{-# COMPLETE
  Report_CrossDimensionReachCriteria_Dimension_Advertiser,
  Report_CrossDimensionReachCriteria_Dimension_Campaign,
  Report_CrossDimensionReachCriteria_Dimension_SITEBYADVERTISER,
  Report_CrossDimensionReachCriteria_Dimension_SITEBYCAMPAIGN,
  Report_CrossDimensionReachCriteria_Dimension #-}

-- | The type of delivery for the owner to receive, if enabled.
newtype Report_Delivery_EmailOwnerDeliveryType = Report_Delivery_EmailOwnerDeliveryType { fromReport_Delivery_EmailOwnerDeliveryType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Report_Delivery_EmailOwnerDeliveryType_Link :: Report_Delivery_EmailOwnerDeliveryType
pattern Report_Delivery_EmailOwnerDeliveryType_Link = Report_Delivery_EmailOwnerDeliveryType "LINK"

-- | 
pattern Report_Delivery_EmailOwnerDeliveryType_Attachment :: Report_Delivery_EmailOwnerDeliveryType
pattern Report_Delivery_EmailOwnerDeliveryType_Attachment = Report_Delivery_EmailOwnerDeliveryType "ATTACHMENT"

{-# COMPLETE
  Report_Delivery_EmailOwnerDeliveryType_Link,
  Report_Delivery_EmailOwnerDeliveryType_Attachment,
  Report_Delivery_EmailOwnerDeliveryType #-}

-- | The output format of the report. If not specified, default format is \"CSV\". Note that the actual format in the completed report file might differ if for instance the report\'s size exceeds the format\'s capabilities. \"CSV\" will then be the fallback format.
newtype Report_Format = Report_Format { fromReport_Format :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Report_Format_Csv :: Report_Format
pattern Report_Format_Csv = Report_Format "CSV"

-- | 
pattern Report_Format_Excel :: Report_Format
pattern Report_Format_Excel = Report_Format "EXCEL"

{-# COMPLETE
  Report_Format_Csv,
  Report_Format_Excel,
  Report_Format #-}

newtype Report_Schedule_RepeatsOnWeekDaysItem = Report_Schedule_RepeatsOnWeekDaysItem { fromReport_Schedule_RepeatsOnWeekDaysItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Report_Schedule_RepeatsOnWeekDaysItem_Sunday :: Report_Schedule_RepeatsOnWeekDaysItem
pattern Report_Schedule_RepeatsOnWeekDaysItem_Sunday = Report_Schedule_RepeatsOnWeekDaysItem "SUNDAY"

-- | 
pattern Report_Schedule_RepeatsOnWeekDaysItem_Monday :: Report_Schedule_RepeatsOnWeekDaysItem
pattern Report_Schedule_RepeatsOnWeekDaysItem_Monday = Report_Schedule_RepeatsOnWeekDaysItem "MONDAY"

-- | 
pattern Report_Schedule_RepeatsOnWeekDaysItem_Tuesday :: Report_Schedule_RepeatsOnWeekDaysItem
pattern Report_Schedule_RepeatsOnWeekDaysItem_Tuesday = Report_Schedule_RepeatsOnWeekDaysItem "TUESDAY"

-- | 
pattern Report_Schedule_RepeatsOnWeekDaysItem_Wednesday :: Report_Schedule_RepeatsOnWeekDaysItem
pattern Report_Schedule_RepeatsOnWeekDaysItem_Wednesday = Report_Schedule_RepeatsOnWeekDaysItem "WEDNESDAY"

-- | 
pattern Report_Schedule_RepeatsOnWeekDaysItem_Thursday :: Report_Schedule_RepeatsOnWeekDaysItem
pattern Report_Schedule_RepeatsOnWeekDaysItem_Thursday = Report_Schedule_RepeatsOnWeekDaysItem "THURSDAY"

-- | 
pattern Report_Schedule_RepeatsOnWeekDaysItem_Friday :: Report_Schedule_RepeatsOnWeekDaysItem
pattern Report_Schedule_RepeatsOnWeekDaysItem_Friday = Report_Schedule_RepeatsOnWeekDaysItem "FRIDAY"

-- | 
pattern Report_Schedule_RepeatsOnWeekDaysItem_Saturday :: Report_Schedule_RepeatsOnWeekDaysItem
pattern Report_Schedule_RepeatsOnWeekDaysItem_Saturday = Report_Schedule_RepeatsOnWeekDaysItem "SATURDAY"

{-# COMPLETE
  Report_Schedule_RepeatsOnWeekDaysItem_Sunday,
  Report_Schedule_RepeatsOnWeekDaysItem_Monday,
  Report_Schedule_RepeatsOnWeekDaysItem_Tuesday,
  Report_Schedule_RepeatsOnWeekDaysItem_Wednesday,
  Report_Schedule_RepeatsOnWeekDaysItem_Thursday,
  Report_Schedule_RepeatsOnWeekDaysItem_Friday,
  Report_Schedule_RepeatsOnWeekDaysItem_Saturday,
  Report_Schedule_RepeatsOnWeekDaysItem #-}

-- | Enum to define for \"MONTHLY\" scheduled reports whether reports should be repeated on the same day of the month as \"startDate\" or the same day of the week of the month. Example: If \'startDate\' is Monday, April 2nd 2012 (2012-04-02), \"DAY/OF/MONTH\" would run subsequent reports on the 2nd of every Month, and \"WEEK/OF/MONTH\" would run subsequent reports on the first Monday of the month.
newtype Report_Schedule_RunsOnDayOfMonth = Report_Schedule_RunsOnDayOfMonth { fromReport_Schedule_RunsOnDayOfMonth :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Report_Schedule_RunsOnDayOfMonth_DAYOFMONTH :: Report_Schedule_RunsOnDayOfMonth
pattern Report_Schedule_RunsOnDayOfMonth_DAYOFMONTH = Report_Schedule_RunsOnDayOfMonth "DAY_OF_MONTH"

-- | 
pattern Report_Schedule_RunsOnDayOfMonth_WEEKOFMONTH :: Report_Schedule_RunsOnDayOfMonth
pattern Report_Schedule_RunsOnDayOfMonth_WEEKOFMONTH = Report_Schedule_RunsOnDayOfMonth "WEEK_OF_MONTH"

{-# COMPLETE
  Report_Schedule_RunsOnDayOfMonth_DAYOFMONTH,
  Report_Schedule_RunsOnDayOfMonth_WEEKOFMONTH,
  Report_Schedule_RunsOnDayOfMonth #-}

-- | The type of the report.
newtype Report_Type = Report_Type { fromReport_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Report_Type_Standard :: Report_Type
pattern Report_Type_Standard = Report_Type "STANDARD"

-- | 
pattern Report_Type_Reach :: Report_Type
pattern Report_Type_Reach = Report_Type "REACH"

-- | 
pattern Report_Type_PATHTOCONVERSION :: Report_Type
pattern Report_Type_PATHTOCONVERSION = Report_Type "PATH_TO_CONVERSION"

-- | 
pattern Report_Type_CROSSDIMENSIONREACH :: Report_Type
pattern Report_Type_CROSSDIMENSIONREACH = Report_Type "CROSS_DIMENSION_REACH"

-- | 
pattern Report_Type_Floodlight :: Report_Type
pattern Report_Type_Floodlight = Report_Type "FLOODLIGHT"

-- | 
pattern Report_Type_Path :: Report_Type
pattern Report_Type_Path = Report_Type "PATH"

-- | 
pattern Report_Type_PATHATTRIBUTION :: Report_Type
pattern Report_Type_PATHATTRIBUTION = Report_Type "PATH_ATTRIBUTION"

{-# COMPLETE
  Report_Type_Standard,
  Report_Type_Reach,
  Report_Type_PATHTOCONVERSION,
  Report_Type_CROSSDIMENSIONREACH,
  Report_Type_Floodlight,
  Report_Type_Path,
  Report_Type_PATHATTRIBUTION,
  Report_Type #-}

-- | Site contact type.
newtype SiteContact_ContactType = SiteContact_ContactType { fromSiteContact_ContactType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SiteContact_ContactType_SALESPERSON :: SiteContact_ContactType
pattern SiteContact_ContactType_SALESPERSON = SiteContact_ContactType "SALES_PERSON"

-- | 
pattern SiteContact_ContactType_Trafficker :: SiteContact_ContactType
pattern SiteContact_ContactType_Trafficker = SiteContact_ContactType "TRAFFICKER"

{-# COMPLETE
  SiteContact_ContactType_SALESPERSON,
  SiteContact_ContactType_Trafficker,
  SiteContact_ContactType #-}

-- | Default VPAID adapter setting for new placements created under this site. This value will be used to populate the placements.vpaidAdapterChoice field, when no value is specified for the new placement. Controls which VPAID format the measurement adapter will use for in-stream video creatives assigned to the placement. The publisher\'s specifications will typically determine this setting. For VPAID creatives, the adapter format will match the VPAID format (HTML5 VPAID creatives use the HTML5 adapter). /Note:/ Flash is no longer supported. This field now defaults to HTML5 when the following values are provided: FLASH, BOTH.
newtype SiteSettings_VpaidAdapterChoiceTemplate = SiteSettings_VpaidAdapterChoiceTemplate { fromSiteSettings_VpaidAdapterChoiceTemplate :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SiteSettings_VpaidAdapterChoiceTemplate_Default :: SiteSettings_VpaidAdapterChoiceTemplate
pattern SiteSettings_VpaidAdapterChoiceTemplate_Default = SiteSettings_VpaidAdapterChoiceTemplate "DEFAULT"

-- | 
pattern SiteSettings_VpaidAdapterChoiceTemplate_Flash :: SiteSettings_VpaidAdapterChoiceTemplate
pattern SiteSettings_VpaidAdapterChoiceTemplate_Flash = SiteSettings_VpaidAdapterChoiceTemplate "FLASH"

-- | 
pattern SiteSettings_VpaidAdapterChoiceTemplate_HTML5 :: SiteSettings_VpaidAdapterChoiceTemplate
pattern SiteSettings_VpaidAdapterChoiceTemplate_HTML5 = SiteSettings_VpaidAdapterChoiceTemplate "HTML5"

-- | 
pattern SiteSettings_VpaidAdapterChoiceTemplate_Both :: SiteSettings_VpaidAdapterChoiceTemplate
pattern SiteSettings_VpaidAdapterChoiceTemplate_Both = SiteSettings_VpaidAdapterChoiceTemplate "BOTH"

{-# COMPLETE
  SiteSettings_VpaidAdapterChoiceTemplate_Default,
  SiteSettings_VpaidAdapterChoiceTemplate_Flash,
  SiteSettings_VpaidAdapterChoiceTemplate_HTML5,
  SiteSettings_VpaidAdapterChoiceTemplate_Both,
  SiteSettings_VpaidAdapterChoiceTemplate #-}

-- | Orientation of a site template used for video. This will act as default for new placements created under this site.
newtype SiteVideoSettings_Orientation = SiteVideoSettings_Orientation { fromSiteVideoSettings_Orientation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SiteVideoSettings_Orientation_Any :: SiteVideoSettings_Orientation
pattern SiteVideoSettings_Orientation_Any = SiteVideoSettings_Orientation "ANY"

-- | 
pattern SiteVideoSettings_Orientation_Landscape :: SiteVideoSettings_Orientation
pattern SiteVideoSettings_Orientation_Landscape = SiteVideoSettings_Orientation "LANDSCAPE"

-- | 
pattern SiteVideoSettings_Orientation_Portrait :: SiteVideoSettings_Orientation
pattern SiteVideoSettings_Orientation_Portrait = SiteVideoSettings_Orientation "PORTRAIT"

{-# COMPLETE
  SiteVideoSettings_Orientation_Any,
  SiteVideoSettings_Orientation_Landscape,
  SiteVideoSettings_Orientation_Portrait,
  SiteVideoSettings_Orientation #-}

-- | An optional sort order for the dimension column.
newtype SortedDimension_SortOrder = SortedDimension_SortOrder { fromSortedDimension_SortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SortedDimension_SortOrder_Ascending :: SortedDimension_SortOrder
pattern SortedDimension_SortOrder_Ascending = SortedDimension_SortOrder "ASCENDING"

-- | 
pattern SortedDimension_SortOrder_Descending :: SortedDimension_SortOrder
pattern SortedDimension_SortOrder_Descending = SortedDimension_SortOrder "DESCENDING"

{-# COMPLETE
  SortedDimension_SortOrder_Ascending,
  SortedDimension_SortOrder_Descending,
  SortedDimension_SortOrder #-}

-- | TagData tag format of this tag.
newtype TagData_Format = TagData_Format { fromTagData_Format :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TagData_Format_PLACEMENTTAGSTANDARD :: TagData_Format
pattern TagData_Format_PLACEMENTTAGSTANDARD = TagData_Format "PLACEMENT_TAG_STANDARD"

-- | 
pattern TagData_Format_PLACEMENTTAGIFRAMEJAVASCRIPT :: TagData_Format
pattern TagData_Format_PLACEMENTTAGIFRAMEJAVASCRIPT = TagData_Format "PLACEMENT_TAG_IFRAME_JAVASCRIPT"

-- | 
pattern TagData_Format_PLACEMENTTAGIFRAMEILAYER :: TagData_Format
pattern TagData_Format_PLACEMENTTAGIFRAMEILAYER = TagData_Format "PLACEMENT_TAG_IFRAME_ILAYER"

-- | 
pattern TagData_Format_PLACEMENTTAGINTERNALREDIRECT :: TagData_Format
pattern TagData_Format_PLACEMENTTAGINTERNALREDIRECT = TagData_Format "PLACEMENT_TAG_INTERNAL_REDIRECT"

-- | 
pattern TagData_Format_PLACEMENTTAGJAVASCRIPT :: TagData_Format
pattern TagData_Format_PLACEMENTTAGJAVASCRIPT = TagData_Format "PLACEMENT_TAG_JAVASCRIPT"

-- | 
pattern TagData_Format_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT :: TagData_Format
pattern TagData_Format_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT = TagData_Format "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"

-- | 
pattern TagData_Format_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT :: TagData_Format
pattern TagData_Format_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT = TagData_Format "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"

-- | 
pattern TagData_Format_PLACEMENTTAGINTERSTITIALJAVASCRIPT :: TagData_Format
pattern TagData_Format_PLACEMENTTAGINTERSTITIALJAVASCRIPT = TagData_Format "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"

-- | 
pattern TagData_Format_PLACEMENTTAGCLICKCOMMANDS :: TagData_Format
pattern TagData_Format_PLACEMENTTAGCLICKCOMMANDS = TagData_Format "PLACEMENT_TAG_CLICK_COMMANDS"

-- | 
pattern TagData_Format_PLACEMENTTAGINSTREAMVIDEOPREFETCH :: TagData_Format
pattern TagData_Format_PLACEMENTTAGINSTREAMVIDEOPREFETCH = TagData_Format "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"

-- | 
pattern TagData_Format_PLACEMENTTAGTRACKING :: TagData_Format
pattern TagData_Format_PLACEMENTTAGTRACKING = TagData_Format "PLACEMENT_TAG_TRACKING"

-- | 
pattern TagData_Format_PLACEMENTTAGTRACKINGIFRAME :: TagData_Format
pattern TagData_Format_PLACEMENTTAGTRACKINGIFRAME = TagData_Format "PLACEMENT_TAG_TRACKING_IFRAME"

-- | 
pattern TagData_Format_PLACEMENTTAGTRACKINGJAVASCRIPT :: TagData_Format
pattern TagData_Format_PLACEMENTTAGTRACKINGJAVASCRIPT = TagData_Format "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

-- | 
pattern TagData_Format_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3 :: TagData_Format
pattern TagData_Format_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3 = TagData_Format "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"

-- | 
pattern TagData_Format_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY :: TagData_Format
pattern TagData_Format_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY = TagData_Format "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"

-- | 
pattern TagData_Format_PLACEMENTTAGJAVASCRIPTLEGACY :: TagData_Format
pattern TagData_Format_PLACEMENTTAGJAVASCRIPTLEGACY = TagData_Format "PLACEMENT_TAG_JAVASCRIPT_LEGACY"

-- | 
pattern TagData_Format_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY :: TagData_Format
pattern TagData_Format_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY = TagData_Format "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"

-- | 
pattern TagData_Format_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY :: TagData_Format
pattern TagData_Format_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY = TagData_Format "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"

-- | 
pattern TagData_Format_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4 :: TagData_Format
pattern TagData_Format_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4 = TagData_Format "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4"

-- | 
pattern TagData_Format_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT :: TagData_Format
pattern TagData_Format_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT = TagData_Format "PLACEMENT_TAG_TRACKING_THIRD_PARTY_MEASUREMENT"

{-# COMPLETE
  TagData_Format_PLACEMENTTAGSTANDARD,
  TagData_Format_PLACEMENTTAGIFRAMEJAVASCRIPT,
  TagData_Format_PLACEMENTTAGIFRAMEILAYER,
  TagData_Format_PLACEMENTTAGINTERNALREDIRECT,
  TagData_Format_PLACEMENTTAGJAVASCRIPT,
  TagData_Format_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT,
  TagData_Format_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT,
  TagData_Format_PLACEMENTTAGINTERSTITIALJAVASCRIPT,
  TagData_Format_PLACEMENTTAGCLICKCOMMANDS,
  TagData_Format_PLACEMENTTAGINSTREAMVIDEOPREFETCH,
  TagData_Format_PLACEMENTTAGTRACKING,
  TagData_Format_PLACEMENTTAGTRACKINGIFRAME,
  TagData_Format_PLACEMENTTAGTRACKINGJAVASCRIPT,
  TagData_Format_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3,
  TagData_Format_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY,
  TagData_Format_PLACEMENTTAGJAVASCRIPTLEGACY,
  TagData_Format_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY,
  TagData_Format_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY,
  TagData_Format_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4,
  TagData_Format_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT,
  TagData_Format #-}

-- | Option specifying how keywords are embedded in ad tags. This setting can be used to specify whether keyword placeholders are inserted in placement tags for this site. Publishers can then add keywords to those placeholders.
newtype TagSetting_KeywordOption = TagSetting_KeywordOption { fromTagSetting_KeywordOption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TagSetting_KeywordOption_PLACEHOLDERWITHLISTOFKEYWORDS :: TagSetting_KeywordOption
pattern TagSetting_KeywordOption_PLACEHOLDERWITHLISTOFKEYWORDS = TagSetting_KeywordOption "PLACEHOLDER_WITH_LIST_OF_KEYWORDS"

-- | 
pattern TagSetting_KeywordOption_Ignore :: TagSetting_KeywordOption
pattern TagSetting_KeywordOption_Ignore = TagSetting_KeywordOption "IGNORE"

-- | 
pattern TagSetting_KeywordOption_GENERATESEPARATETAGFOREACHKEYWORD :: TagSetting_KeywordOption
pattern TagSetting_KeywordOption_GENERATESEPARATETAGFOREACHKEYWORD = TagSetting_KeywordOption "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD"

{-# COMPLETE
  TagSetting_KeywordOption_PLACEHOLDERWITHLISTOFKEYWORDS,
  TagSetting_KeywordOption_Ignore,
  TagSetting_KeywordOption_GENERATESEPARATETAGFOREACHKEYWORD,
  TagSetting_KeywordOption #-}

-- | Type of browser window for which the backup image of the flash creative can be displayed.
newtype TargetWindow_TargetWindowOption = TargetWindow_TargetWindowOption { fromTargetWindow_TargetWindowOption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TargetWindow_TargetWindowOption_NEWWINDOW :: TargetWindow_TargetWindowOption
pattern TargetWindow_TargetWindowOption_NEWWINDOW = TargetWindow_TargetWindowOption "NEW_WINDOW"

-- | 
pattern TargetWindow_TargetWindowOption_CURRENTWINDOW :: TargetWindow_TargetWindowOption
pattern TargetWindow_TargetWindowOption_CURRENTWINDOW = TargetWindow_TargetWindowOption "CURRENT_WINDOW"

-- | 
pattern TargetWindow_TargetWindowOption_Custom :: TargetWindow_TargetWindowOption
pattern TargetWindow_TargetWindowOption_Custom = TargetWindow_TargetWindowOption "CUSTOM"

{-# COMPLETE
  TargetWindow_TargetWindowOption_NEWWINDOW,
  TargetWindow_TargetWindowOption_CURRENTWINDOW,
  TargetWindow_TargetWindowOption_Custom,
  TargetWindow_TargetWindowOption #-}

-- | Product from which this targetable remarketing list was originated.
newtype TargetableRemarketingList_ListSource = TargetableRemarketingList_ListSource { fromTargetableRemarketingList_ListSource :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEOTHER :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEOTHER = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_OTHER"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEADX :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEADX = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_ADX"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDFP :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDFP = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_DFP"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEXFP :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEXFP = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_XFP"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDFA :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDFA = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_DFA"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEGA :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEGA = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_GA"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEYOUTUBE :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEYOUTUBE = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_YOUTUBE"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDBM :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDBM = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_DBM"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEGPLUS :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEGPLUS = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_GPLUS"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDMP :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDMP = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_DMP"

-- | 
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEPLAYSTORE :: TargetableRemarketingList_ListSource
pattern TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEPLAYSTORE = TargetableRemarketingList_ListSource "REMARKETING_LIST_SOURCE_PLAY_STORE"

{-# COMPLETE
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEOTHER,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEADX,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDFP,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEXFP,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDFA,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEGA,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEYOUTUBE,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDBM,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEGPLUS,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEDMP,
  TargetableRemarketingList_ListSource_REMARKETINGLISTSOURCEPLAYSTORE,
  TargetableRemarketingList_ListSource #-}

-- | Third-party URL type for in-stream video and in-stream audio creatives.
newtype ThirdPartyTrackingUrl_ThirdPartyUrlType = ThirdPartyTrackingUrl_ThirdPartyUrlType { fromThirdPartyTrackingUrl_ThirdPartyUrlType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_Impression :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_Impression = ThirdPartyTrackingUrl_ThirdPartyUrlType "IMPRESSION"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_CLICKTRACKING :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_CLICKTRACKING = ThirdPartyTrackingUrl_ThirdPartyUrlType "CLICK_TRACKING"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSTART :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSTART = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_START"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOFIRSTQUARTILE :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOFIRSTQUARTILE = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_FIRST_QUARTILE"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOMIDPOINT :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOMIDPOINT = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_MIDPOINT"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOTHIRDQUARTILE :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOTHIRDQUARTILE = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_THIRD_QUARTILE"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOCOMPLETE :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOCOMPLETE = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_COMPLETE"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOMUTE :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOMUTE = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_MUTE"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOPAUSE :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOPAUSE = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_PAUSE"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOREWIND :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOREWIND = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_REWIND"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOFULLSCREEN :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOFULLSCREEN = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_FULLSCREEN"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSTOP :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSTOP = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_STOP"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOCUSTOM :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOCUSTOM = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_CUSTOM"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_Survey :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_Survey = ThirdPartyTrackingUrl_ThirdPartyUrlType "SURVEY"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIAIMPRESSION :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIAIMPRESSION = ThirdPartyTrackingUrl_ThirdPartyUrlType "RICH_MEDIA_IMPRESSION"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIARMIMPRESSION :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIARMIMPRESSION = ThirdPartyTrackingUrl_ThirdPartyUrlType "RICH_MEDIA_RM_IMPRESSION"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIABACKUPIMPRESSION :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIABACKUPIMPRESSION = ThirdPartyTrackingUrl_ThirdPartyUrlType "RICH_MEDIA_BACKUP_IMPRESSION"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSKIP :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSKIP = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_SKIP"

-- | 
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOPROGRESS :: ThirdPartyTrackingUrl_ThirdPartyUrlType
pattern ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOPROGRESS = ThirdPartyTrackingUrl_ThirdPartyUrlType "VIDEO_PROGRESS"

{-# COMPLETE
  ThirdPartyTrackingUrl_ThirdPartyUrlType_Impression,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_CLICKTRACKING,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSTART,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOFIRSTQUARTILE,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOMIDPOINT,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOTHIRDQUARTILE,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOCOMPLETE,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOMUTE,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOPAUSE,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOREWIND,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOFULLSCREEN,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSTOP,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOCUSTOM,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_Survey,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIAIMPRESSION,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIARMIMPRESSION,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_RICHMEDIABACKUPIMPRESSION,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOSKIP,
  ThirdPartyTrackingUrl_ThirdPartyUrlType_VIDEOPROGRESS,
  ThirdPartyTrackingUrl_ThirdPartyUrlType #-}

-- | Registry used for the Ad ID value.
newtype UniversalAdId_Registry = UniversalAdId_Registry { fromUniversalAdId_Registry :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern UniversalAdId_Registry_Other :: UniversalAdId_Registry
pattern UniversalAdId_Registry_Other = UniversalAdId_Registry "OTHER"

-- | 
pattern UniversalAdId_Registry_ADIDOFFICIAL :: UniversalAdId_Registry
pattern UniversalAdId_Registry_ADIDOFFICIAL = UniversalAdId_Registry "AD_ID_OFFICIAL"

-- | 
pattern UniversalAdId_Registry_Clearcast :: UniversalAdId_Registry
pattern UniversalAdId_Registry_Clearcast = UniversalAdId_Registry "CLEARCAST"

-- | 
pattern UniversalAdId_Registry_Dcm :: UniversalAdId_Registry
pattern UniversalAdId_Registry_Dcm = UniversalAdId_Registry "DCM"

{-# COMPLETE
  UniversalAdId_Registry_Other,
  UniversalAdId_Registry_ADIDOFFICIAL,
  UniversalAdId_Registry_Clearcast,
  UniversalAdId_Registry_Dcm,
  UniversalAdId_Registry #-}

-- | Data type for the variable. This is a required field.
newtype UserDefinedVariableConfiguration_DataType = UserDefinedVariableConfiguration_DataType { fromUserDefinedVariableConfiguration_DataType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern UserDefinedVariableConfiguration_DataType_String :: UserDefinedVariableConfiguration_DataType
pattern UserDefinedVariableConfiguration_DataType_String = UserDefinedVariableConfiguration_DataType "STRING"

-- | 
pattern UserDefinedVariableConfiguration_DataType_Number :: UserDefinedVariableConfiguration_DataType
pattern UserDefinedVariableConfiguration_DataType_Number = UserDefinedVariableConfiguration_DataType "NUMBER"

{-# COMPLETE
  UserDefinedVariableConfiguration_DataType_String,
  UserDefinedVariableConfiguration_DataType_Number,
  UserDefinedVariableConfiguration_DataType #-}

-- | Variable name in the tag. This is a required field.
newtype UserDefinedVariableConfiguration_VariableType = UserDefinedVariableConfiguration_VariableType { fromUserDefinedVariableConfiguration_VariableType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U1 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U1 = UserDefinedVariableConfiguration_VariableType "U1"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U2 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U2 = UserDefinedVariableConfiguration_VariableType "U2"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U3 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U3 = UserDefinedVariableConfiguration_VariableType "U3"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U4 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U4 = UserDefinedVariableConfiguration_VariableType "U4"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U5 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U5 = UserDefinedVariableConfiguration_VariableType "U5"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U6 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U6 = UserDefinedVariableConfiguration_VariableType "U6"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U7 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U7 = UserDefinedVariableConfiguration_VariableType "U7"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U8 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U8 = UserDefinedVariableConfiguration_VariableType "U8"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U9 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U9 = UserDefinedVariableConfiguration_VariableType "U9"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U10 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U10 = UserDefinedVariableConfiguration_VariableType "U10"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U11 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U11 = UserDefinedVariableConfiguration_VariableType "U11"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U12 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U12 = UserDefinedVariableConfiguration_VariableType "U12"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U13 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U13 = UserDefinedVariableConfiguration_VariableType "U13"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U14 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U14 = UserDefinedVariableConfiguration_VariableType "U14"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U15 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U15 = UserDefinedVariableConfiguration_VariableType "U15"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U16 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U16 = UserDefinedVariableConfiguration_VariableType "U16"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U17 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U17 = UserDefinedVariableConfiguration_VariableType "U17"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U18 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U18 = UserDefinedVariableConfiguration_VariableType "U18"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U19 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U19 = UserDefinedVariableConfiguration_VariableType "U19"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U20 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U20 = UserDefinedVariableConfiguration_VariableType "U20"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U21 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U21 = UserDefinedVariableConfiguration_VariableType "U21"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U22 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U22 = UserDefinedVariableConfiguration_VariableType "U22"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U23 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U23 = UserDefinedVariableConfiguration_VariableType "U23"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U24 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U24 = UserDefinedVariableConfiguration_VariableType "U24"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U25 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U25 = UserDefinedVariableConfiguration_VariableType "U25"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U26 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U26 = UserDefinedVariableConfiguration_VariableType "U26"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U27 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U27 = UserDefinedVariableConfiguration_VariableType "U27"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U28 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U28 = UserDefinedVariableConfiguration_VariableType "U28"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U29 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U29 = UserDefinedVariableConfiguration_VariableType "U29"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U30 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U30 = UserDefinedVariableConfiguration_VariableType "U30"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U31 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U31 = UserDefinedVariableConfiguration_VariableType "U31"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U32 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U32 = UserDefinedVariableConfiguration_VariableType "U32"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U33 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U33 = UserDefinedVariableConfiguration_VariableType "U33"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U34 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U34 = UserDefinedVariableConfiguration_VariableType "U34"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U35 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U35 = UserDefinedVariableConfiguration_VariableType "U35"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U36 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U36 = UserDefinedVariableConfiguration_VariableType "U36"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U37 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U37 = UserDefinedVariableConfiguration_VariableType "U37"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U38 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U38 = UserDefinedVariableConfiguration_VariableType "U38"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U39 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U39 = UserDefinedVariableConfiguration_VariableType "U39"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U40 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U40 = UserDefinedVariableConfiguration_VariableType "U40"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U41 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U41 = UserDefinedVariableConfiguration_VariableType "U41"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U42 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U42 = UserDefinedVariableConfiguration_VariableType "U42"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U43 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U43 = UserDefinedVariableConfiguration_VariableType "U43"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U44 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U44 = UserDefinedVariableConfiguration_VariableType "U44"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U45 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U45 = UserDefinedVariableConfiguration_VariableType "U45"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U46 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U46 = UserDefinedVariableConfiguration_VariableType "U46"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U47 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U47 = UserDefinedVariableConfiguration_VariableType "U47"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U48 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U48 = UserDefinedVariableConfiguration_VariableType "U48"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U49 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U49 = UserDefinedVariableConfiguration_VariableType "U49"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U50 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U50 = UserDefinedVariableConfiguration_VariableType "U50"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U51 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U51 = UserDefinedVariableConfiguration_VariableType "U51"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U52 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U52 = UserDefinedVariableConfiguration_VariableType "U52"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U53 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U53 = UserDefinedVariableConfiguration_VariableType "U53"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U54 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U54 = UserDefinedVariableConfiguration_VariableType "U54"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U55 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U55 = UserDefinedVariableConfiguration_VariableType "U55"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U56 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U56 = UserDefinedVariableConfiguration_VariableType "U56"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U57 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U57 = UserDefinedVariableConfiguration_VariableType "U57"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U58 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U58 = UserDefinedVariableConfiguration_VariableType "U58"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U59 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U59 = UserDefinedVariableConfiguration_VariableType "U59"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U60 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U60 = UserDefinedVariableConfiguration_VariableType "U60"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U61 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U61 = UserDefinedVariableConfiguration_VariableType "U61"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U62 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U62 = UserDefinedVariableConfiguration_VariableType "U62"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U63 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U63 = UserDefinedVariableConfiguration_VariableType "U63"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U64 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U64 = UserDefinedVariableConfiguration_VariableType "U64"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U65 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U65 = UserDefinedVariableConfiguration_VariableType "U65"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U66 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U66 = UserDefinedVariableConfiguration_VariableType "U66"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U67 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U67 = UserDefinedVariableConfiguration_VariableType "U67"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U68 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U68 = UserDefinedVariableConfiguration_VariableType "U68"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U69 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U69 = UserDefinedVariableConfiguration_VariableType "U69"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U70 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U70 = UserDefinedVariableConfiguration_VariableType "U70"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U71 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U71 = UserDefinedVariableConfiguration_VariableType "U71"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U72 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U72 = UserDefinedVariableConfiguration_VariableType "U72"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U73 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U73 = UserDefinedVariableConfiguration_VariableType "U73"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U74 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U74 = UserDefinedVariableConfiguration_VariableType "U74"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U75 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U75 = UserDefinedVariableConfiguration_VariableType "U75"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U76 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U76 = UserDefinedVariableConfiguration_VariableType "U76"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U77 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U77 = UserDefinedVariableConfiguration_VariableType "U77"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U78 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U78 = UserDefinedVariableConfiguration_VariableType "U78"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U79 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U79 = UserDefinedVariableConfiguration_VariableType "U79"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U80 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U80 = UserDefinedVariableConfiguration_VariableType "U80"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U81 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U81 = UserDefinedVariableConfiguration_VariableType "U81"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U82 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U82 = UserDefinedVariableConfiguration_VariableType "U82"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U83 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U83 = UserDefinedVariableConfiguration_VariableType "U83"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U84 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U84 = UserDefinedVariableConfiguration_VariableType "U84"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U85 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U85 = UserDefinedVariableConfiguration_VariableType "U85"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U86 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U86 = UserDefinedVariableConfiguration_VariableType "U86"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U87 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U87 = UserDefinedVariableConfiguration_VariableType "U87"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U88 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U88 = UserDefinedVariableConfiguration_VariableType "U88"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U89 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U89 = UserDefinedVariableConfiguration_VariableType "U89"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U90 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U90 = UserDefinedVariableConfiguration_VariableType "U90"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U91 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U91 = UserDefinedVariableConfiguration_VariableType "U91"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U92 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U92 = UserDefinedVariableConfiguration_VariableType "U92"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U93 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U93 = UserDefinedVariableConfiguration_VariableType "U93"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U94 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U94 = UserDefinedVariableConfiguration_VariableType "U94"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U95 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U95 = UserDefinedVariableConfiguration_VariableType "U95"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U96 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U96 = UserDefinedVariableConfiguration_VariableType "U96"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U97 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U97 = UserDefinedVariableConfiguration_VariableType "U97"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U98 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U98 = UserDefinedVariableConfiguration_VariableType "U98"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U99 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U99 = UserDefinedVariableConfiguration_VariableType "U99"

-- | 
pattern UserDefinedVariableConfiguration_VariableType_U100 :: UserDefinedVariableConfiguration_VariableType
pattern UserDefinedVariableConfiguration_VariableType_U100 = UserDefinedVariableConfiguration_VariableType "U100"

{-# COMPLETE
  UserDefinedVariableConfiguration_VariableType_U1,
  UserDefinedVariableConfiguration_VariableType_U2,
  UserDefinedVariableConfiguration_VariableType_U3,
  UserDefinedVariableConfiguration_VariableType_U4,
  UserDefinedVariableConfiguration_VariableType_U5,
  UserDefinedVariableConfiguration_VariableType_U6,
  UserDefinedVariableConfiguration_VariableType_U7,
  UserDefinedVariableConfiguration_VariableType_U8,
  UserDefinedVariableConfiguration_VariableType_U9,
  UserDefinedVariableConfiguration_VariableType_U10,
  UserDefinedVariableConfiguration_VariableType_U11,
  UserDefinedVariableConfiguration_VariableType_U12,
  UserDefinedVariableConfiguration_VariableType_U13,
  UserDefinedVariableConfiguration_VariableType_U14,
  UserDefinedVariableConfiguration_VariableType_U15,
  UserDefinedVariableConfiguration_VariableType_U16,
  UserDefinedVariableConfiguration_VariableType_U17,
  UserDefinedVariableConfiguration_VariableType_U18,
  UserDefinedVariableConfiguration_VariableType_U19,
  UserDefinedVariableConfiguration_VariableType_U20,
  UserDefinedVariableConfiguration_VariableType_U21,
  UserDefinedVariableConfiguration_VariableType_U22,
  UserDefinedVariableConfiguration_VariableType_U23,
  UserDefinedVariableConfiguration_VariableType_U24,
  UserDefinedVariableConfiguration_VariableType_U25,
  UserDefinedVariableConfiguration_VariableType_U26,
  UserDefinedVariableConfiguration_VariableType_U27,
  UserDefinedVariableConfiguration_VariableType_U28,
  UserDefinedVariableConfiguration_VariableType_U29,
  UserDefinedVariableConfiguration_VariableType_U30,
  UserDefinedVariableConfiguration_VariableType_U31,
  UserDefinedVariableConfiguration_VariableType_U32,
  UserDefinedVariableConfiguration_VariableType_U33,
  UserDefinedVariableConfiguration_VariableType_U34,
  UserDefinedVariableConfiguration_VariableType_U35,
  UserDefinedVariableConfiguration_VariableType_U36,
  UserDefinedVariableConfiguration_VariableType_U37,
  UserDefinedVariableConfiguration_VariableType_U38,
  UserDefinedVariableConfiguration_VariableType_U39,
  UserDefinedVariableConfiguration_VariableType_U40,
  UserDefinedVariableConfiguration_VariableType_U41,
  UserDefinedVariableConfiguration_VariableType_U42,
  UserDefinedVariableConfiguration_VariableType_U43,
  UserDefinedVariableConfiguration_VariableType_U44,
  UserDefinedVariableConfiguration_VariableType_U45,
  UserDefinedVariableConfiguration_VariableType_U46,
  UserDefinedVariableConfiguration_VariableType_U47,
  UserDefinedVariableConfiguration_VariableType_U48,
  UserDefinedVariableConfiguration_VariableType_U49,
  UserDefinedVariableConfiguration_VariableType_U50,
  UserDefinedVariableConfiguration_VariableType_U51,
  UserDefinedVariableConfiguration_VariableType_U52,
  UserDefinedVariableConfiguration_VariableType_U53,
  UserDefinedVariableConfiguration_VariableType_U54,
  UserDefinedVariableConfiguration_VariableType_U55,
  UserDefinedVariableConfiguration_VariableType_U56,
  UserDefinedVariableConfiguration_VariableType_U57,
  UserDefinedVariableConfiguration_VariableType_U58,
  UserDefinedVariableConfiguration_VariableType_U59,
  UserDefinedVariableConfiguration_VariableType_U60,
  UserDefinedVariableConfiguration_VariableType_U61,
  UserDefinedVariableConfiguration_VariableType_U62,
  UserDefinedVariableConfiguration_VariableType_U63,
  UserDefinedVariableConfiguration_VariableType_U64,
  UserDefinedVariableConfiguration_VariableType_U65,
  UserDefinedVariableConfiguration_VariableType_U66,
  UserDefinedVariableConfiguration_VariableType_U67,
  UserDefinedVariableConfiguration_VariableType_U68,
  UserDefinedVariableConfiguration_VariableType_U69,
  UserDefinedVariableConfiguration_VariableType_U70,
  UserDefinedVariableConfiguration_VariableType_U71,
  UserDefinedVariableConfiguration_VariableType_U72,
  UserDefinedVariableConfiguration_VariableType_U73,
  UserDefinedVariableConfiguration_VariableType_U74,
  UserDefinedVariableConfiguration_VariableType_U75,
  UserDefinedVariableConfiguration_VariableType_U76,
  UserDefinedVariableConfiguration_VariableType_U77,
  UserDefinedVariableConfiguration_VariableType_U78,
  UserDefinedVariableConfiguration_VariableType_U79,
  UserDefinedVariableConfiguration_VariableType_U80,
  UserDefinedVariableConfiguration_VariableType_U81,
  UserDefinedVariableConfiguration_VariableType_U82,
  UserDefinedVariableConfiguration_VariableType_U83,
  UserDefinedVariableConfiguration_VariableType_U84,
  UserDefinedVariableConfiguration_VariableType_U85,
  UserDefinedVariableConfiguration_VariableType_U86,
  UserDefinedVariableConfiguration_VariableType_U87,
  UserDefinedVariableConfiguration_VariableType_U88,
  UserDefinedVariableConfiguration_VariableType_U89,
  UserDefinedVariableConfiguration_VariableType_U90,
  UserDefinedVariableConfiguration_VariableType_U91,
  UserDefinedVariableConfiguration_VariableType_U92,
  UserDefinedVariableConfiguration_VariableType_U93,
  UserDefinedVariableConfiguration_VariableType_U94,
  UserDefinedVariableConfiguration_VariableType_U95,
  UserDefinedVariableConfiguration_VariableType_U96,
  UserDefinedVariableConfiguration_VariableType_U97,
  UserDefinedVariableConfiguration_VariableType_U98,
  UserDefinedVariableConfiguration_VariableType_U99,
  UserDefinedVariableConfiguration_VariableType_U100,
  UserDefinedVariableConfiguration_VariableType #-}

-- | Levels of availability for a user role permission.
newtype UserRolePermission_Availability = UserRolePermission_Availability { fromUserRolePermission_Availability :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern UserRolePermission_Availability_NOTAVAILABLEBYDEFAULT :: UserRolePermission_Availability
pattern UserRolePermission_Availability_NOTAVAILABLEBYDEFAULT = UserRolePermission_Availability "NOT_AVAILABLE_BY_DEFAULT"

-- | 
pattern UserRolePermission_Availability_ACCOUNTBYDEFAULT :: UserRolePermission_Availability
pattern UserRolePermission_Availability_ACCOUNTBYDEFAULT = UserRolePermission_Availability "ACCOUNT_BY_DEFAULT"

-- | 
pattern UserRolePermission_Availability_SUBACCOUNTANDACCOUNTBYDEFAULT :: UserRolePermission_Availability
pattern UserRolePermission_Availability_SUBACCOUNTANDACCOUNTBYDEFAULT = UserRolePermission_Availability "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT"

-- | 
pattern UserRolePermission_Availability_ACCOUNTALWAYS :: UserRolePermission_Availability
pattern UserRolePermission_Availability_ACCOUNTALWAYS = UserRolePermission_Availability "ACCOUNT_ALWAYS"

-- | 
pattern UserRolePermission_Availability_SUBACCOUNTANDACCOUNTALWAYS :: UserRolePermission_Availability
pattern UserRolePermission_Availability_SUBACCOUNTANDACCOUNTALWAYS = UserRolePermission_Availability "SUBACCOUNT_AND_ACCOUNT_ALWAYS"

-- | 
pattern UserRolePermission_Availability_USERPROFILEONLY :: UserRolePermission_Availability
pattern UserRolePermission_Availability_USERPROFILEONLY = UserRolePermission_Availability "USER_PROFILE_ONLY"

{-# COMPLETE
  UserRolePermission_Availability_NOTAVAILABLEBYDEFAULT,
  UserRolePermission_Availability_ACCOUNTBYDEFAULT,
  UserRolePermission_Availability_SUBACCOUNTANDACCOUNTBYDEFAULT,
  UserRolePermission_Availability_ACCOUNTALWAYS,
  UserRolePermission_Availability_SUBACCOUNTANDACCOUNTALWAYS,
  UserRolePermission_Availability_USERPROFILEONLY,
  UserRolePermission_Availability #-}

-- | File type of the video format.
newtype VideoFormat_FileType = VideoFormat_FileType { fromVideoFormat_FileType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern VideoFormat_FileType_Flv :: VideoFormat_FileType
pattern VideoFormat_FileType_Flv = VideoFormat_FileType "FLV"

-- | 
pattern VideoFormat_FileType_Threegpp :: VideoFormat_FileType
pattern VideoFormat_FileType_Threegpp = VideoFormat_FileType "THREEGPP"

-- | 
pattern VideoFormat_FileType_MP4 :: VideoFormat_FileType
pattern VideoFormat_FileType_MP4 = VideoFormat_FileType "MP4"

-- | 
pattern VideoFormat_FileType_Webm :: VideoFormat_FileType
pattern VideoFormat_FileType_Webm = VideoFormat_FileType "WEBM"

-- | 
pattern VideoFormat_FileType_M3U8 :: VideoFormat_FileType
pattern VideoFormat_FileType_M3U8 = VideoFormat_FileType "M3U8"

{-# COMPLETE
  VideoFormat_FileType_Flv,
  VideoFormat_FileType_Threegpp,
  VideoFormat_FileType_MP4,
  VideoFormat_FileType_Webm,
  VideoFormat_FileType_M3U8,
  VideoFormat_FileType #-}

-- | Orientation of a video placement. If this value is set, placement will return assets matching the specified orientation.
newtype VideoSettings_Orientation = VideoSettings_Orientation { fromVideoSettings_Orientation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern VideoSettings_Orientation_Any :: VideoSettings_Orientation
pattern VideoSettings_Orientation_Any = VideoSettings_Orientation "ANY"

-- | 
pattern VideoSettings_Orientation_Landscape :: VideoSettings_Orientation
pattern VideoSettings_Orientation_Landscape = VideoSettings_Orientation "LANDSCAPE"

-- | 
pattern VideoSettings_Orientation_Portrait :: VideoSettings_Orientation
pattern VideoSettings_Orientation_Portrait = VideoSettings_Orientation "PORTRAIT"

{-# COMPLETE
  VideoSettings_Orientation_Any,
  VideoSettings_Orientation_Landscape,
  VideoSettings_Orientation_Portrait,
  VideoSettings_Orientation #-}

-- | Field by which to sort the list.
newtype AccountUserProfilesListSortField = AccountUserProfilesListSortField { fromAccountUserProfilesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountUserProfilesListSortField_ID :: AccountUserProfilesListSortField
pattern AccountUserProfilesListSortField_ID = AccountUserProfilesListSortField "ID"

-- | 
pattern AccountUserProfilesListSortField_Name :: AccountUserProfilesListSortField
pattern AccountUserProfilesListSortField_Name = AccountUserProfilesListSortField "NAME"

{-# COMPLETE
  AccountUserProfilesListSortField_ID,
  AccountUserProfilesListSortField_Name,
  AccountUserProfilesListSortField #-}

-- | Order of sorted results.
newtype AccountUserProfilesListSortOrder = AccountUserProfilesListSortOrder { fromAccountUserProfilesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountUserProfilesListSortOrder_Ascending :: AccountUserProfilesListSortOrder
pattern AccountUserProfilesListSortOrder_Ascending = AccountUserProfilesListSortOrder "ASCENDING"

-- | 
pattern AccountUserProfilesListSortOrder_Descending :: AccountUserProfilesListSortOrder
pattern AccountUserProfilesListSortOrder_Descending = AccountUserProfilesListSortOrder "DESCENDING"

{-# COMPLETE
  AccountUserProfilesListSortOrder_Ascending,
  AccountUserProfilesListSortOrder_Descending,
  AccountUserProfilesListSortOrder #-}

-- | Field by which to sort the list.
newtype AccountsListSortField = AccountsListSortField { fromAccountsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountsListSortField_ID :: AccountsListSortField
pattern AccountsListSortField_ID = AccountsListSortField "ID"

-- | 
pattern AccountsListSortField_Name :: AccountsListSortField
pattern AccountsListSortField_Name = AccountsListSortField "NAME"

{-# COMPLETE
  AccountsListSortField_ID,
  AccountsListSortField_Name,
  AccountsListSortField #-}

-- | Order of sorted results.
newtype AccountsListSortOrder = AccountsListSortOrder { fromAccountsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AccountsListSortOrder_Ascending :: AccountsListSortOrder
pattern AccountsListSortOrder_Ascending = AccountsListSortOrder "ASCENDING"

-- | 
pattern AccountsListSortOrder_Descending :: AccountsListSortOrder
pattern AccountsListSortOrder_Descending = AccountsListSortOrder "DESCENDING"

{-# COMPLETE
  AccountsListSortOrder_Ascending,
  AccountsListSortOrder_Descending,
  AccountsListSortOrder #-}

-- | Select default ads with the specified compatibility. Applicable when type is AD/SERVING/DEFAULT/AD. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering either on desktop or on mobile devices for regular or interstitial ads, respectively. APP and APP/INTERSTITIAL are for rendering in mobile apps. IN/STREAM_VIDEO refers to rendering an in-stream video ads developed with the VAST standard.
newtype AdsListCompatibility = AdsListCompatibility { fromAdsListCompatibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdsListCompatibility_Display :: AdsListCompatibility
pattern AdsListCompatibility_Display = AdsListCompatibility "DISPLAY"

-- | 
pattern AdsListCompatibility_DISPLAYINTERSTITIAL :: AdsListCompatibility
pattern AdsListCompatibility_DISPLAYINTERSTITIAL = AdsListCompatibility "DISPLAY_INTERSTITIAL"

-- | 
pattern AdsListCompatibility_App :: AdsListCompatibility
pattern AdsListCompatibility_App = AdsListCompatibility "APP"

-- | 
pattern AdsListCompatibility_APPINTERSTITIAL :: AdsListCompatibility
pattern AdsListCompatibility_APPINTERSTITIAL = AdsListCompatibility "APP_INTERSTITIAL"

-- | 
pattern AdsListCompatibility_INSTREAMVIDEO :: AdsListCompatibility
pattern AdsListCompatibility_INSTREAMVIDEO = AdsListCompatibility "IN_STREAM_VIDEO"

-- | 
pattern AdsListCompatibility_INSTREAMAUDIO :: AdsListCompatibility
pattern AdsListCompatibility_INSTREAMAUDIO = AdsListCompatibility "IN_STREAM_AUDIO"

{-# COMPLETE
  AdsListCompatibility_Display,
  AdsListCompatibility_DISPLAYINTERSTITIAL,
  AdsListCompatibility_App,
  AdsListCompatibility_APPINTERSTITIAL,
  AdsListCompatibility_INSTREAMVIDEO,
  AdsListCompatibility_INSTREAMAUDIO,
  AdsListCompatibility #-}

-- | Field by which to sort the list.
newtype AdsListSortField = AdsListSortField { fromAdsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdsListSortField_ID :: AdsListSortField
pattern AdsListSortField_ID = AdsListSortField "ID"

-- | 
pattern AdsListSortField_Name :: AdsListSortField
pattern AdsListSortField_Name = AdsListSortField "NAME"

{-# COMPLETE
  AdsListSortField_ID,
  AdsListSortField_Name,
  AdsListSortField #-}

-- | Order of sorted results.
newtype AdsListSortOrder = AdsListSortOrder { fromAdsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdsListSortOrder_Ascending :: AdsListSortOrder
pattern AdsListSortOrder_Ascending = AdsListSortOrder "ASCENDING"

-- | 
pattern AdsListSortOrder_Descending :: AdsListSortOrder
pattern AdsListSortOrder_Descending = AdsListSortOrder "DESCENDING"

{-# COMPLETE
  AdsListSortOrder_Ascending,
  AdsListSortOrder_Descending,
  AdsListSortOrder #-}

-- | Select only ads with these types.
newtype AdsListType = AdsListType { fromAdsListType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdsListType_ADSERVINGSTANDARDAD :: AdsListType
pattern AdsListType_ADSERVINGSTANDARDAD = AdsListType "AD_SERVING_STANDARD_AD"

-- | 
pattern AdsListType_ADSERVINGDEFAULTAD :: AdsListType
pattern AdsListType_ADSERVINGDEFAULTAD = AdsListType "AD_SERVING_DEFAULT_AD"

-- | 
pattern AdsListType_ADSERVINGCLICKTRACKER :: AdsListType
pattern AdsListType_ADSERVINGCLICKTRACKER = AdsListType "AD_SERVING_CLICK_TRACKER"

-- | 
pattern AdsListType_ADSERVINGTRACKING :: AdsListType
pattern AdsListType_ADSERVINGTRACKING = AdsListType "AD_SERVING_TRACKING"

-- | 
pattern AdsListType_ADSERVINGBRANDSAFEAD :: AdsListType
pattern AdsListType_ADSERVINGBRANDSAFEAD = AdsListType "AD_SERVING_BRAND_SAFE_AD"

{-# COMPLETE
  AdsListType_ADSERVINGSTANDARDAD,
  AdsListType_ADSERVINGDEFAULTAD,
  AdsListType_ADSERVINGCLICKTRACKER,
  AdsListType_ADSERVINGTRACKING,
  AdsListType_ADSERVINGBRANDSAFEAD,
  AdsListType #-}

-- | Field by which to sort the list.
newtype AdvertiserGroupsListSortField = AdvertiserGroupsListSortField { fromAdvertiserGroupsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdvertiserGroupsListSortField_ID :: AdvertiserGroupsListSortField
pattern AdvertiserGroupsListSortField_ID = AdvertiserGroupsListSortField "ID"

-- | 
pattern AdvertiserGroupsListSortField_Name :: AdvertiserGroupsListSortField
pattern AdvertiserGroupsListSortField_Name = AdvertiserGroupsListSortField "NAME"

{-# COMPLETE
  AdvertiserGroupsListSortField_ID,
  AdvertiserGroupsListSortField_Name,
  AdvertiserGroupsListSortField #-}

-- | Order of sorted results.
newtype AdvertiserGroupsListSortOrder = AdvertiserGroupsListSortOrder { fromAdvertiserGroupsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdvertiserGroupsListSortOrder_Ascending :: AdvertiserGroupsListSortOrder
pattern AdvertiserGroupsListSortOrder_Ascending = AdvertiserGroupsListSortOrder "ASCENDING"

-- | 
pattern AdvertiserGroupsListSortOrder_Descending :: AdvertiserGroupsListSortOrder
pattern AdvertiserGroupsListSortOrder_Descending = AdvertiserGroupsListSortOrder "DESCENDING"

{-# COMPLETE
  AdvertiserGroupsListSortOrder_Ascending,
  AdvertiserGroupsListSortOrder_Descending,
  AdvertiserGroupsListSortOrder #-}

-- | Field by which to sort the list.
newtype AdvertiserLandingPagesListSortField = AdvertiserLandingPagesListSortField { fromAdvertiserLandingPagesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdvertiserLandingPagesListSortField_ID :: AdvertiserLandingPagesListSortField
pattern AdvertiserLandingPagesListSortField_ID = AdvertiserLandingPagesListSortField "ID"

-- | 
pattern AdvertiserLandingPagesListSortField_Name :: AdvertiserLandingPagesListSortField
pattern AdvertiserLandingPagesListSortField_Name = AdvertiserLandingPagesListSortField "NAME"

{-# COMPLETE
  AdvertiserLandingPagesListSortField_ID,
  AdvertiserLandingPagesListSortField_Name,
  AdvertiserLandingPagesListSortField #-}

-- | Order of sorted results.
newtype AdvertiserLandingPagesListSortOrder = AdvertiserLandingPagesListSortOrder { fromAdvertiserLandingPagesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdvertiserLandingPagesListSortOrder_Ascending :: AdvertiserLandingPagesListSortOrder
pattern AdvertiserLandingPagesListSortOrder_Ascending = AdvertiserLandingPagesListSortOrder "ASCENDING"

-- | 
pattern AdvertiserLandingPagesListSortOrder_Descending :: AdvertiserLandingPagesListSortOrder
pattern AdvertiserLandingPagesListSortOrder_Descending = AdvertiserLandingPagesListSortOrder "DESCENDING"

{-# COMPLETE
  AdvertiserLandingPagesListSortOrder_Ascending,
  AdvertiserLandingPagesListSortOrder_Descending,
  AdvertiserLandingPagesListSortOrder #-}

-- | Field by which to sort the list.
newtype AdvertisersListSortField = AdvertisersListSortField { fromAdvertisersListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdvertisersListSortField_ID :: AdvertisersListSortField
pattern AdvertisersListSortField_ID = AdvertisersListSortField "ID"

-- | 
pattern AdvertisersListSortField_Name :: AdvertisersListSortField
pattern AdvertisersListSortField_Name = AdvertisersListSortField "NAME"

{-# COMPLETE
  AdvertisersListSortField_ID,
  AdvertisersListSortField_Name,
  AdvertisersListSortField #-}

-- | Order of sorted results.
newtype AdvertisersListSortOrder = AdvertisersListSortOrder { fromAdvertisersListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdvertisersListSortOrder_Ascending :: AdvertisersListSortOrder
pattern AdvertisersListSortOrder_Ascending = AdvertisersListSortOrder "ASCENDING"

-- | 
pattern AdvertisersListSortOrder_Descending :: AdvertisersListSortOrder
pattern AdvertisersListSortOrder_Descending = AdvertisersListSortOrder "DESCENDING"

{-# COMPLETE
  AdvertisersListSortOrder_Ascending,
  AdvertisersListSortOrder_Descending,
  AdvertisersListSortOrder #-}

-- | Select only advertisers with the specified status.
newtype AdvertisersListStatus = AdvertisersListStatus { fromAdvertisersListStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern AdvertisersListStatus_Approved :: AdvertisersListStatus
pattern AdvertisersListStatus_Approved = AdvertisersListStatus "APPROVED"

-- | 
pattern AdvertisersListStatus_ONHOLD :: AdvertisersListStatus
pattern AdvertisersListStatus_ONHOLD = AdvertisersListStatus "ON_HOLD"

{-# COMPLETE
  AdvertisersListStatus_Approved,
  AdvertisersListStatus_ONHOLD,
  AdvertisersListStatus #-}

-- | Order of sorted results.
newtype CampaignCreativeAssociationsListSortOrder = CampaignCreativeAssociationsListSortOrder { fromCampaignCreativeAssociationsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CampaignCreativeAssociationsListSortOrder_Ascending :: CampaignCreativeAssociationsListSortOrder
pattern CampaignCreativeAssociationsListSortOrder_Ascending = CampaignCreativeAssociationsListSortOrder "ASCENDING"

-- | 
pattern CampaignCreativeAssociationsListSortOrder_Descending :: CampaignCreativeAssociationsListSortOrder
pattern CampaignCreativeAssociationsListSortOrder_Descending = CampaignCreativeAssociationsListSortOrder "DESCENDING"

{-# COMPLETE
  CampaignCreativeAssociationsListSortOrder_Ascending,
  CampaignCreativeAssociationsListSortOrder_Descending,
  CampaignCreativeAssociationsListSortOrder #-}

-- | Field by which to sort the list.
newtype CampaignsListSortField = CampaignsListSortField { fromCampaignsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CampaignsListSortField_ID :: CampaignsListSortField
pattern CampaignsListSortField_ID = CampaignsListSortField "ID"

-- | 
pattern CampaignsListSortField_Name :: CampaignsListSortField
pattern CampaignsListSortField_Name = CampaignsListSortField "NAME"

{-# COMPLETE
  CampaignsListSortField_ID,
  CampaignsListSortField_Name,
  CampaignsListSortField #-}

-- | Order of sorted results.
newtype CampaignsListSortOrder = CampaignsListSortOrder { fromCampaignsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CampaignsListSortOrder_Ascending :: CampaignsListSortOrder
pattern CampaignsListSortOrder_Ascending = CampaignsListSortOrder "ASCENDING"

-- | 
pattern CampaignsListSortOrder_Descending :: CampaignsListSortOrder
pattern CampaignsListSortOrder_Descending = CampaignsListSortOrder "DESCENDING"

{-# COMPLETE
  CampaignsListSortOrder_Ascending,
  CampaignsListSortOrder_Descending,
  CampaignsListSortOrder #-}

-- | Select only change logs with the specified action.
newtype ChangeLogsListAction = ChangeLogsListAction { fromChangeLogsListAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ChangeLogsListAction_ACTIONCREATE :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONCREATE = ChangeLogsListAction "ACTION_CREATE"

-- | 
pattern ChangeLogsListAction_ACTIONUPDATE :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONUPDATE = ChangeLogsListAction "ACTION_UPDATE"

-- | 
pattern ChangeLogsListAction_ACTIONDELETE :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONDELETE = ChangeLogsListAction "ACTION_DELETE"

-- | 
pattern ChangeLogsListAction_ACTIONENABLE :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONENABLE = ChangeLogsListAction "ACTION_ENABLE"

-- | 
pattern ChangeLogsListAction_ACTIONDISABLE :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONDISABLE = ChangeLogsListAction "ACTION_DISABLE"

-- | 
pattern ChangeLogsListAction_ACTIONADD :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONADD = ChangeLogsListAction "ACTION_ADD"

-- | 
pattern ChangeLogsListAction_ACTIONREMOVE :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONREMOVE = ChangeLogsListAction "ACTION_REMOVE"

-- | 
pattern ChangeLogsListAction_ACTIONMARKASDEFAULT :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONMARKASDEFAULT = ChangeLogsListAction "ACTION_MARK_AS_DEFAULT"

-- | 
pattern ChangeLogsListAction_ACTIONASSOCIATE :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONASSOCIATE = ChangeLogsListAction "ACTION_ASSOCIATE"

-- | 
pattern ChangeLogsListAction_ACTIONASSIGN :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONASSIGN = ChangeLogsListAction "ACTION_ASSIGN"

-- | 
pattern ChangeLogsListAction_ACTIONUNASSIGN :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONUNASSIGN = ChangeLogsListAction "ACTION_UNASSIGN"

-- | 
pattern ChangeLogsListAction_ACTIONSEND :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONSEND = ChangeLogsListAction "ACTION_SEND"

-- | 
pattern ChangeLogsListAction_ACTIONLINK :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONLINK = ChangeLogsListAction "ACTION_LINK"

-- | 
pattern ChangeLogsListAction_ACTIONUNLINK :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONUNLINK = ChangeLogsListAction "ACTION_UNLINK"

-- | 
pattern ChangeLogsListAction_ACTIONPUSH :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONPUSH = ChangeLogsListAction "ACTION_PUSH"

-- | 
pattern ChangeLogsListAction_ACTIONEMAILTAGS :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONEMAILTAGS = ChangeLogsListAction "ACTION_EMAIL_TAGS"

-- | 
pattern ChangeLogsListAction_ACTIONSHARE :: ChangeLogsListAction
pattern ChangeLogsListAction_ACTIONSHARE = ChangeLogsListAction "ACTION_SHARE"

{-# COMPLETE
  ChangeLogsListAction_ACTIONCREATE,
  ChangeLogsListAction_ACTIONUPDATE,
  ChangeLogsListAction_ACTIONDELETE,
  ChangeLogsListAction_ACTIONENABLE,
  ChangeLogsListAction_ACTIONDISABLE,
  ChangeLogsListAction_ACTIONADD,
  ChangeLogsListAction_ACTIONREMOVE,
  ChangeLogsListAction_ACTIONMARKASDEFAULT,
  ChangeLogsListAction_ACTIONASSOCIATE,
  ChangeLogsListAction_ACTIONASSIGN,
  ChangeLogsListAction_ACTIONUNASSIGN,
  ChangeLogsListAction_ACTIONSEND,
  ChangeLogsListAction_ACTIONLINK,
  ChangeLogsListAction_ACTIONUNLINK,
  ChangeLogsListAction_ACTIONPUSH,
  ChangeLogsListAction_ACTIONEMAILTAGS,
  ChangeLogsListAction_ACTIONSHARE,
  ChangeLogsListAction #-}

-- | Select only change logs with the specified object type.
newtype ChangeLogsListObjectType = ChangeLogsListObjectType { fromChangeLogsListObjectType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ChangeLogsListObjectType_OBJECTADVERTISER :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTADVERTISER = ChangeLogsListObjectType "OBJECT_ADVERTISER"

-- | 
pattern ChangeLogsListObjectType_OBJECTFLOODLIGHTCONFIGURATION :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTFLOODLIGHTCONFIGURATION = ChangeLogsListObjectType "OBJECT_FLOODLIGHT_CONFIGURATION"

-- | 
pattern ChangeLogsListObjectType_OBJECTAD :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTAD = ChangeLogsListObjectType "OBJECT_AD"

-- | 
pattern ChangeLogsListObjectType_OBJECTFLOODLIGHTACTVITY :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTFLOODLIGHTACTVITY = ChangeLogsListObjectType "OBJECT_FLOODLIGHT_ACTVITY"

-- | 
pattern ChangeLogsListObjectType_OBJECTCAMPAIGN :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTCAMPAIGN = ChangeLogsListObjectType "OBJECT_CAMPAIGN"

-- | 
pattern ChangeLogsListObjectType_OBJECTFLOODLIGHTACTIVITYGROUP :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTFLOODLIGHTACTIVITYGROUP = ChangeLogsListObjectType "OBJECT_FLOODLIGHT_ACTIVITY_GROUP"

-- | 
pattern ChangeLogsListObjectType_OBJECTCREATIVE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTCREATIVE = ChangeLogsListObjectType "OBJECT_CREATIVE"

-- | 
pattern ChangeLogsListObjectType_OBJECTPLACEMENT :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTPLACEMENT = ChangeLogsListObjectType "OBJECT_PLACEMENT"

-- | 
pattern ChangeLogsListObjectType_OBJECTDFASITE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTDFASITE = ChangeLogsListObjectType "OBJECT_DFA_SITE"

-- | 
pattern ChangeLogsListObjectType_OBJECTUSERROLE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTUSERROLE = ChangeLogsListObjectType "OBJECT_USER_ROLE"

-- | 
pattern ChangeLogsListObjectType_OBJECTUSERPROFILE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTUSERPROFILE = ChangeLogsListObjectType "OBJECT_USER_PROFILE"

-- | 
pattern ChangeLogsListObjectType_OBJECTADVERTISERGROUP :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTADVERTISERGROUP = ChangeLogsListObjectType "OBJECT_ADVERTISER_GROUP"

-- | 
pattern ChangeLogsListObjectType_OBJECTACCOUNT :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTACCOUNT = ChangeLogsListObjectType "OBJECT_ACCOUNT"

-- | 
pattern ChangeLogsListObjectType_OBJECTSUBACCOUNT :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTSUBACCOUNT = ChangeLogsListObjectType "OBJECT_SUBACCOUNT"

-- | 
pattern ChangeLogsListObjectType_OBJECTRICHMEDIACREATIVE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTRICHMEDIACREATIVE = ChangeLogsListObjectType "OBJECT_RICHMEDIA_CREATIVE"

-- | 
pattern ChangeLogsListObjectType_OBJECTINSTREAMCREATIVE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTINSTREAMCREATIVE = ChangeLogsListObjectType "OBJECT_INSTREAM_CREATIVE"

-- | 
pattern ChangeLogsListObjectType_OBJECTMEDIAORDER :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTMEDIAORDER = ChangeLogsListObjectType "OBJECT_MEDIA_ORDER"

-- | 
pattern ChangeLogsListObjectType_OBJECTCONTENTCATEGORY :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTCONTENTCATEGORY = ChangeLogsListObjectType "OBJECT_CONTENT_CATEGORY"

-- | 
pattern ChangeLogsListObjectType_OBJECTPLACEMENTSTRATEGY :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTPLACEMENTSTRATEGY = ChangeLogsListObjectType "OBJECT_PLACEMENT_STRATEGY"

-- | 
pattern ChangeLogsListObjectType_OBJECTSDSITE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTSDSITE = ChangeLogsListObjectType "OBJECT_SD_SITE"

-- | 
pattern ChangeLogsListObjectType_OBJECTSIZE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTSIZE = ChangeLogsListObjectType "OBJECT_SIZE"

-- | 
pattern ChangeLogsListObjectType_OBJECTCREATIVEGROUP :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTCREATIVEGROUP = ChangeLogsListObjectType "OBJECT_CREATIVE_GROUP"

-- | 
pattern ChangeLogsListObjectType_OBJECTCREATIVEASSET :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTCREATIVEASSET = ChangeLogsListObjectType "OBJECT_CREATIVE_ASSET"

-- | 
pattern ChangeLogsListObjectType_OBJECTUSERPROFILEFILTER :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTUSERPROFILEFILTER = ChangeLogsListObjectType "OBJECT_USER_PROFILE_FILTER"

-- | 
pattern ChangeLogsListObjectType_OBJECTLANDINGPAGE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTLANDINGPAGE = ChangeLogsListObjectType "OBJECT_LANDING_PAGE"

-- | 
pattern ChangeLogsListObjectType_OBJECTCREATIVEFIELD :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTCREATIVEFIELD = ChangeLogsListObjectType "OBJECT_CREATIVE_FIELD"

-- | 
pattern ChangeLogsListObjectType_OBJECTREMARKETINGLIST :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTREMARKETINGLIST = ChangeLogsListObjectType "OBJECT_REMARKETING_LIST"

-- | 
pattern ChangeLogsListObjectType_OBJECTPROVIDEDLISTCLIENT :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTPROVIDEDLISTCLIENT = ChangeLogsListObjectType "OBJECT_PROVIDED_LIST_CLIENT"

-- | 
pattern ChangeLogsListObjectType_OBJECTEVENTTAG :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTEVENTTAG = ChangeLogsListObjectType "OBJECT_EVENT_TAG"

-- | 
pattern ChangeLogsListObjectType_OBJECTCREATIVEBUNDLE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTCREATIVEBUNDLE = ChangeLogsListObjectType "OBJECT_CREATIVE_BUNDLE"

-- | 
pattern ChangeLogsListObjectType_OBJECTBILLINGACCOUNTGROUP :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTBILLINGACCOUNTGROUP = ChangeLogsListObjectType "OBJECT_BILLING_ACCOUNT_GROUP"

-- | 
pattern ChangeLogsListObjectType_OBJECTBILLINGFEATURE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTBILLINGFEATURE = ChangeLogsListObjectType "OBJECT_BILLING_FEATURE"

-- | 
pattern ChangeLogsListObjectType_OBJECTRATECARD :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTRATECARD = ChangeLogsListObjectType "OBJECT_RATE_CARD"

-- | 
pattern ChangeLogsListObjectType_OBJECTACCOUNTBILLINGFEATURE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTACCOUNTBILLINGFEATURE = ChangeLogsListObjectType "OBJECT_ACCOUNT_BILLING_FEATURE"

-- | 
pattern ChangeLogsListObjectType_OBJECTBILLINGMINIMUMFEE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTBILLINGMINIMUMFEE = ChangeLogsListObjectType "OBJECT_BILLING_MINIMUM_FEE"

-- | 
pattern ChangeLogsListObjectType_OBJECTBILLINGPROFILE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTBILLINGPROFILE = ChangeLogsListObjectType "OBJECT_BILLING_PROFILE"

-- | 
pattern ChangeLogsListObjectType_OBJECTPLAYSTORELINK :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTPLAYSTORELINK = ChangeLogsListObjectType "OBJECT_PLAYSTORE_LINK"

-- | 
pattern ChangeLogsListObjectType_OBJECTTARGETINGTEMPLATE :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTTARGETINGTEMPLATE = ChangeLogsListObjectType "OBJECT_TARGETING_TEMPLATE"

-- | 
pattern ChangeLogsListObjectType_OBJECTSEARCHLIFTSTUDY :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTSEARCHLIFTSTUDY = ChangeLogsListObjectType "OBJECT_SEARCH_LIFT_STUDY"

-- | 
pattern ChangeLogsListObjectType_OBJECTFLOODLIGHTDV360LINK :: ChangeLogsListObjectType
pattern ChangeLogsListObjectType_OBJECTFLOODLIGHTDV360LINK = ChangeLogsListObjectType "OBJECT_FLOODLIGHT_DV360_LINK"

{-# COMPLETE
  ChangeLogsListObjectType_OBJECTADVERTISER,
  ChangeLogsListObjectType_OBJECTFLOODLIGHTCONFIGURATION,
  ChangeLogsListObjectType_OBJECTAD,
  ChangeLogsListObjectType_OBJECTFLOODLIGHTACTVITY,
  ChangeLogsListObjectType_OBJECTCAMPAIGN,
  ChangeLogsListObjectType_OBJECTFLOODLIGHTACTIVITYGROUP,
  ChangeLogsListObjectType_OBJECTCREATIVE,
  ChangeLogsListObjectType_OBJECTPLACEMENT,
  ChangeLogsListObjectType_OBJECTDFASITE,
  ChangeLogsListObjectType_OBJECTUSERROLE,
  ChangeLogsListObjectType_OBJECTUSERPROFILE,
  ChangeLogsListObjectType_OBJECTADVERTISERGROUP,
  ChangeLogsListObjectType_OBJECTACCOUNT,
  ChangeLogsListObjectType_OBJECTSUBACCOUNT,
  ChangeLogsListObjectType_OBJECTRICHMEDIACREATIVE,
  ChangeLogsListObjectType_OBJECTINSTREAMCREATIVE,
  ChangeLogsListObjectType_OBJECTMEDIAORDER,
  ChangeLogsListObjectType_OBJECTCONTENTCATEGORY,
  ChangeLogsListObjectType_OBJECTPLACEMENTSTRATEGY,
  ChangeLogsListObjectType_OBJECTSDSITE,
  ChangeLogsListObjectType_OBJECTSIZE,
  ChangeLogsListObjectType_OBJECTCREATIVEGROUP,
  ChangeLogsListObjectType_OBJECTCREATIVEASSET,
  ChangeLogsListObjectType_OBJECTUSERPROFILEFILTER,
  ChangeLogsListObjectType_OBJECTLANDINGPAGE,
  ChangeLogsListObjectType_OBJECTCREATIVEFIELD,
  ChangeLogsListObjectType_OBJECTREMARKETINGLIST,
  ChangeLogsListObjectType_OBJECTPROVIDEDLISTCLIENT,
  ChangeLogsListObjectType_OBJECTEVENTTAG,
  ChangeLogsListObjectType_OBJECTCREATIVEBUNDLE,
  ChangeLogsListObjectType_OBJECTBILLINGACCOUNTGROUP,
  ChangeLogsListObjectType_OBJECTBILLINGFEATURE,
  ChangeLogsListObjectType_OBJECTRATECARD,
  ChangeLogsListObjectType_OBJECTACCOUNTBILLINGFEATURE,
  ChangeLogsListObjectType_OBJECTBILLINGMINIMUMFEE,
  ChangeLogsListObjectType_OBJECTBILLINGPROFILE,
  ChangeLogsListObjectType_OBJECTPLAYSTORELINK,
  ChangeLogsListObjectType_OBJECTTARGETINGTEMPLATE,
  ChangeLogsListObjectType_OBJECTSEARCHLIFTSTUDY,
  ChangeLogsListObjectType_OBJECTFLOODLIGHTDV360LINK,
  ChangeLogsListObjectType #-}

-- | Field by which to sort the list.
newtype ContentCategoriesListSortField = ContentCategoriesListSortField { fromContentCategoriesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ContentCategoriesListSortField_ID :: ContentCategoriesListSortField
pattern ContentCategoriesListSortField_ID = ContentCategoriesListSortField "ID"

-- | 
pattern ContentCategoriesListSortField_Name :: ContentCategoriesListSortField
pattern ContentCategoriesListSortField_Name = ContentCategoriesListSortField "NAME"

{-# COMPLETE
  ContentCategoriesListSortField_ID,
  ContentCategoriesListSortField_Name,
  ContentCategoriesListSortField #-}

-- | Order of sorted results.
newtype ContentCategoriesListSortOrder = ContentCategoriesListSortOrder { fromContentCategoriesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ContentCategoriesListSortOrder_Ascending :: ContentCategoriesListSortOrder
pattern ContentCategoriesListSortOrder_Ascending = ContentCategoriesListSortOrder "ASCENDING"

-- | 
pattern ContentCategoriesListSortOrder_Descending :: ContentCategoriesListSortOrder
pattern ContentCategoriesListSortOrder_Descending = ContentCategoriesListSortOrder "DESCENDING"

{-# COMPLETE
  ContentCategoriesListSortOrder_Ascending,
  ContentCategoriesListSortOrder_Descending,
  ContentCategoriesListSortOrder #-}

-- | Field by which to sort the list.
newtype CreativeFieldValuesListSortField = CreativeFieldValuesListSortField { fromCreativeFieldValuesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeFieldValuesListSortField_ID :: CreativeFieldValuesListSortField
pattern CreativeFieldValuesListSortField_ID = CreativeFieldValuesListSortField "ID"

-- | 
pattern CreativeFieldValuesListSortField_Value :: CreativeFieldValuesListSortField
pattern CreativeFieldValuesListSortField_Value = CreativeFieldValuesListSortField "VALUE"

{-# COMPLETE
  CreativeFieldValuesListSortField_ID,
  CreativeFieldValuesListSortField_Value,
  CreativeFieldValuesListSortField #-}

-- | Order of sorted results.
newtype CreativeFieldValuesListSortOrder = CreativeFieldValuesListSortOrder { fromCreativeFieldValuesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeFieldValuesListSortOrder_Ascending :: CreativeFieldValuesListSortOrder
pattern CreativeFieldValuesListSortOrder_Ascending = CreativeFieldValuesListSortOrder "ASCENDING"

-- | 
pattern CreativeFieldValuesListSortOrder_Descending :: CreativeFieldValuesListSortOrder
pattern CreativeFieldValuesListSortOrder_Descending = CreativeFieldValuesListSortOrder "DESCENDING"

{-# COMPLETE
  CreativeFieldValuesListSortOrder_Ascending,
  CreativeFieldValuesListSortOrder_Descending,
  CreativeFieldValuesListSortOrder #-}

-- | Field by which to sort the list.
newtype CreativeFieldsListSortField = CreativeFieldsListSortField { fromCreativeFieldsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeFieldsListSortField_ID :: CreativeFieldsListSortField
pattern CreativeFieldsListSortField_ID = CreativeFieldsListSortField "ID"

-- | 
pattern CreativeFieldsListSortField_Name :: CreativeFieldsListSortField
pattern CreativeFieldsListSortField_Name = CreativeFieldsListSortField "NAME"

{-# COMPLETE
  CreativeFieldsListSortField_ID,
  CreativeFieldsListSortField_Name,
  CreativeFieldsListSortField #-}

-- | Order of sorted results.
newtype CreativeFieldsListSortOrder = CreativeFieldsListSortOrder { fromCreativeFieldsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeFieldsListSortOrder_Ascending :: CreativeFieldsListSortOrder
pattern CreativeFieldsListSortOrder_Ascending = CreativeFieldsListSortOrder "ASCENDING"

-- | 
pattern CreativeFieldsListSortOrder_Descending :: CreativeFieldsListSortOrder
pattern CreativeFieldsListSortOrder_Descending = CreativeFieldsListSortOrder "DESCENDING"

{-# COMPLETE
  CreativeFieldsListSortOrder_Ascending,
  CreativeFieldsListSortOrder_Descending,
  CreativeFieldsListSortOrder #-}

-- | Field by which to sort the list.
newtype CreativeGroupsListSortField = CreativeGroupsListSortField { fromCreativeGroupsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeGroupsListSortField_ID :: CreativeGroupsListSortField
pattern CreativeGroupsListSortField_ID = CreativeGroupsListSortField "ID"

-- | 
pattern CreativeGroupsListSortField_Name :: CreativeGroupsListSortField
pattern CreativeGroupsListSortField_Name = CreativeGroupsListSortField "NAME"

{-# COMPLETE
  CreativeGroupsListSortField_ID,
  CreativeGroupsListSortField_Name,
  CreativeGroupsListSortField #-}

-- | Order of sorted results.
newtype CreativeGroupsListSortOrder = CreativeGroupsListSortOrder { fromCreativeGroupsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativeGroupsListSortOrder_Ascending :: CreativeGroupsListSortOrder
pattern CreativeGroupsListSortOrder_Ascending = CreativeGroupsListSortOrder "ASCENDING"

-- | 
pattern CreativeGroupsListSortOrder_Descending :: CreativeGroupsListSortOrder
pattern CreativeGroupsListSortOrder_Descending = CreativeGroupsListSortOrder "DESCENDING"

{-# COMPLETE
  CreativeGroupsListSortOrder_Ascending,
  CreativeGroupsListSortOrder_Descending,
  CreativeGroupsListSortOrder #-}

-- | Field by which to sort the list.
newtype CreativesListSortField = CreativesListSortField { fromCreativesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativesListSortField_ID :: CreativesListSortField
pattern CreativesListSortField_ID = CreativesListSortField "ID"

-- | 
pattern CreativesListSortField_Name :: CreativesListSortField
pattern CreativesListSortField_Name = CreativesListSortField "NAME"

{-# COMPLETE
  CreativesListSortField_ID,
  CreativesListSortField_Name,
  CreativesListSortField #-}

-- | Order of sorted results.
newtype CreativesListSortOrder = CreativesListSortOrder { fromCreativesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativesListSortOrder_Ascending :: CreativesListSortOrder
pattern CreativesListSortOrder_Ascending = CreativesListSortOrder "ASCENDING"

-- | 
pattern CreativesListSortOrder_Descending :: CreativesListSortOrder
pattern CreativesListSortOrder_Descending = CreativesListSortOrder "DESCENDING"

{-# COMPLETE
  CreativesListSortOrder_Ascending,
  CreativesListSortOrder_Descending,
  CreativesListSortOrder #-}

-- | Select only creatives with these creative types.
newtype CreativesListTypes = CreativesListTypes { fromCreativesListTypes :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern CreativesListTypes_Image :: CreativesListTypes
pattern CreativesListTypes_Image = CreativesListTypes "IMAGE"

-- | 
pattern CreativesListTypes_DISPLAYREDIRECT :: CreativesListTypes
pattern CreativesListTypes_DISPLAYREDIRECT = CreativesListTypes "DISPLAY_REDIRECT"

-- | 
pattern CreativesListTypes_CUSTOMDISPLAY :: CreativesListTypes
pattern CreativesListTypes_CUSTOMDISPLAY = CreativesListTypes "CUSTOM_DISPLAY"

-- | 
pattern CreativesListTypes_INTERNALREDIRECT :: CreativesListTypes
pattern CreativesListTypes_INTERNALREDIRECT = CreativesListTypes "INTERNAL_REDIRECT"

-- | 
pattern CreativesListTypes_CUSTOMDISPLAYINTERSTITIAL :: CreativesListTypes
pattern CreativesListTypes_CUSTOMDISPLAYINTERSTITIAL = CreativesListTypes "CUSTOM_DISPLAY_INTERSTITIAL"

-- | 
pattern CreativesListTypes_INTERSTITIALINTERNALREDIRECT :: CreativesListTypes
pattern CreativesListTypes_INTERSTITIALINTERNALREDIRECT = CreativesListTypes "INTERSTITIAL_INTERNAL_REDIRECT"

-- | 
pattern CreativesListTypes_TRACKINGTEXT :: CreativesListTypes
pattern CreativesListTypes_TRACKINGTEXT = CreativesListTypes "TRACKING_TEXT"

-- | 
pattern CreativesListTypes_RICHMEDIADISPLAYBANNER :: CreativesListTypes
pattern CreativesListTypes_RICHMEDIADISPLAYBANNER = CreativesListTypes "RICH_MEDIA_DISPLAY_BANNER"

-- | 
pattern CreativesListTypes_RICHMEDIAINPAGEFLOATING :: CreativesListTypes
pattern CreativesListTypes_RICHMEDIAINPAGEFLOATING = CreativesListTypes "RICH_MEDIA_INPAGE_FLOATING"

-- | 
pattern CreativesListTypes_RICHMEDIAIMEXPAND :: CreativesListTypes
pattern CreativesListTypes_RICHMEDIAIMEXPAND = CreativesListTypes "RICH_MEDIA_IM_EXPAND"

-- | 
pattern CreativesListTypes_RICHMEDIADISPLAYEXPANDING :: CreativesListTypes
pattern CreativesListTypes_RICHMEDIADISPLAYEXPANDING = CreativesListTypes "RICH_MEDIA_DISPLAY_EXPANDING"

-- | 
pattern CreativesListTypes_RICHMEDIADISPLAYINTERSTITIAL :: CreativesListTypes
pattern CreativesListTypes_RICHMEDIADISPLAYINTERSTITIAL = CreativesListTypes "RICH_MEDIA_DISPLAY_INTERSTITIAL"

-- | 
pattern CreativesListTypes_RICHMEDIADISPLAYMULTIFLOATINGINTERSTITIAL :: CreativesListTypes
pattern CreativesListTypes_RICHMEDIADISPLAYMULTIFLOATINGINTERSTITIAL = CreativesListTypes "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL"

-- | 
pattern CreativesListTypes_RICHMEDIAMOBILEINAPP :: CreativesListTypes
pattern CreativesListTypes_RICHMEDIAMOBILEINAPP = CreativesListTypes "RICH_MEDIA_MOBILE_IN_APP"

-- | 
pattern CreativesListTypes_FLASHINPAGE :: CreativesListTypes
pattern CreativesListTypes_FLASHINPAGE = CreativesListTypes "FLASH_INPAGE"

-- | 
pattern CreativesListTypes_INSTREAMVIDEO :: CreativesListTypes
pattern CreativesListTypes_INSTREAMVIDEO = CreativesListTypes "INSTREAM_VIDEO"

-- | 
pattern CreativesListTypes_VPAIDLINEARVIDEO :: CreativesListTypes
pattern CreativesListTypes_VPAIDLINEARVIDEO = CreativesListTypes "VPAID_LINEAR_VIDEO"

-- | 
pattern CreativesListTypes_VPAIDNONLINEARVIDEO :: CreativesListTypes
pattern CreativesListTypes_VPAIDNONLINEARVIDEO = CreativesListTypes "VPAID_NON_LINEAR_VIDEO"

-- | 
pattern CreativesListTypes_INSTREAMVIDEOREDIRECT :: CreativesListTypes
pattern CreativesListTypes_INSTREAMVIDEOREDIRECT = CreativesListTypes "INSTREAM_VIDEO_REDIRECT"

-- | 
pattern CreativesListTypes_RICHMEDIAPEELDOWN :: CreativesListTypes
pattern CreativesListTypes_RICHMEDIAPEELDOWN = CreativesListTypes "RICH_MEDIA_PEEL_DOWN"

-- | 
pattern CreativesListTypes_HTML5BANNER :: CreativesListTypes
pattern CreativesListTypes_HTML5BANNER = CreativesListTypes "HTML5_BANNER"

-- | 
pattern CreativesListTypes_Display :: CreativesListTypes
pattern CreativesListTypes_Display = CreativesListTypes "DISPLAY"

-- | 
pattern CreativesListTypes_DISPLAYIMAGEGALLERY :: CreativesListTypes
pattern CreativesListTypes_DISPLAYIMAGEGALLERY = CreativesListTypes "DISPLAY_IMAGE_GALLERY"

-- | 
pattern CreativesListTypes_BRANDSAFEDEFAULTINSTREAMVIDEO :: CreativesListTypes
pattern CreativesListTypes_BRANDSAFEDEFAULTINSTREAMVIDEO = CreativesListTypes "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"

-- | 
pattern CreativesListTypes_INSTREAMAUDIO :: CreativesListTypes
pattern CreativesListTypes_INSTREAMAUDIO = CreativesListTypes "INSTREAM_AUDIO"

{-# COMPLETE
  CreativesListTypes_Image,
  CreativesListTypes_DISPLAYREDIRECT,
  CreativesListTypes_CUSTOMDISPLAY,
  CreativesListTypes_INTERNALREDIRECT,
  CreativesListTypes_CUSTOMDISPLAYINTERSTITIAL,
  CreativesListTypes_INTERSTITIALINTERNALREDIRECT,
  CreativesListTypes_TRACKINGTEXT,
  CreativesListTypes_RICHMEDIADISPLAYBANNER,
  CreativesListTypes_RICHMEDIAINPAGEFLOATING,
  CreativesListTypes_RICHMEDIAIMEXPAND,
  CreativesListTypes_RICHMEDIADISPLAYEXPANDING,
  CreativesListTypes_RICHMEDIADISPLAYINTERSTITIAL,
  CreativesListTypes_RICHMEDIADISPLAYMULTIFLOATINGINTERSTITIAL,
  CreativesListTypes_RICHMEDIAMOBILEINAPP,
  CreativesListTypes_FLASHINPAGE,
  CreativesListTypes_INSTREAMVIDEO,
  CreativesListTypes_VPAIDLINEARVIDEO,
  CreativesListTypes_VPAIDNONLINEARVIDEO,
  CreativesListTypes_INSTREAMVIDEOREDIRECT,
  CreativesListTypes_RICHMEDIAPEELDOWN,
  CreativesListTypes_HTML5BANNER,
  CreativesListTypes_Display,
  CreativesListTypes_DISPLAYIMAGEGALLERY,
  CreativesListTypes_BRANDSAFEDEFAULTINSTREAMVIDEO,
  CreativesListTypes_INSTREAMAUDIO,
  CreativesListTypes #-}

-- | Field by which to sort the list.
newtype DirectorySitesListSortField = DirectorySitesListSortField { fromDirectorySitesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DirectorySitesListSortField_ID :: DirectorySitesListSortField
pattern DirectorySitesListSortField_ID = DirectorySitesListSortField "ID"

-- | 
pattern DirectorySitesListSortField_Name :: DirectorySitesListSortField
pattern DirectorySitesListSortField_Name = DirectorySitesListSortField "NAME"

{-# COMPLETE
  DirectorySitesListSortField_ID,
  DirectorySitesListSortField_Name,
  DirectorySitesListSortField #-}

-- | Order of sorted results.
newtype DirectorySitesListSortOrder = DirectorySitesListSortOrder { fromDirectorySitesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DirectorySitesListSortOrder_Ascending :: DirectorySitesListSortOrder
pattern DirectorySitesListSortOrder_Ascending = DirectorySitesListSortOrder "ASCENDING"

-- | 
pattern DirectorySitesListSortOrder_Descending :: DirectorySitesListSortOrder
pattern DirectorySitesListSortOrder_Descending = DirectorySitesListSortOrder "DESCENDING"

{-# COMPLETE
  DirectorySitesListSortOrder_Ascending,
  DirectorySitesListSortOrder_Descending,
  DirectorySitesListSortOrder #-}

-- | Type of the object of this dynamic targeting key. This is a required field.
newtype DynamicTargetingKeysDeleteObjectType = DynamicTargetingKeysDeleteObjectType { fromDynamicTargetingKeysDeleteObjectType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DynamicTargetingKeysDeleteObjectType_OBJECTADVERTISER :: DynamicTargetingKeysDeleteObjectType
pattern DynamicTargetingKeysDeleteObjectType_OBJECTADVERTISER = DynamicTargetingKeysDeleteObjectType "OBJECT_ADVERTISER"

-- | 
pattern DynamicTargetingKeysDeleteObjectType_OBJECTAD :: DynamicTargetingKeysDeleteObjectType
pattern DynamicTargetingKeysDeleteObjectType_OBJECTAD = DynamicTargetingKeysDeleteObjectType "OBJECT_AD"

-- | 
pattern DynamicTargetingKeysDeleteObjectType_OBJECTCREATIVE :: DynamicTargetingKeysDeleteObjectType
pattern DynamicTargetingKeysDeleteObjectType_OBJECTCREATIVE = DynamicTargetingKeysDeleteObjectType "OBJECT_CREATIVE"

-- | 
pattern DynamicTargetingKeysDeleteObjectType_OBJECTPLACEMENT :: DynamicTargetingKeysDeleteObjectType
pattern DynamicTargetingKeysDeleteObjectType_OBJECTPLACEMENT = DynamicTargetingKeysDeleteObjectType "OBJECT_PLACEMENT"

{-# COMPLETE
  DynamicTargetingKeysDeleteObjectType_OBJECTADVERTISER,
  DynamicTargetingKeysDeleteObjectType_OBJECTAD,
  DynamicTargetingKeysDeleteObjectType_OBJECTCREATIVE,
  DynamicTargetingKeysDeleteObjectType_OBJECTPLACEMENT,
  DynamicTargetingKeysDeleteObjectType #-}

-- | Select only dynamic targeting keys with this object type.
newtype DynamicTargetingKeysListObjectType = DynamicTargetingKeysListObjectType { fromDynamicTargetingKeysListObjectType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern DynamicTargetingKeysListObjectType_OBJECTADVERTISER :: DynamicTargetingKeysListObjectType
pattern DynamicTargetingKeysListObjectType_OBJECTADVERTISER = DynamicTargetingKeysListObjectType "OBJECT_ADVERTISER"

-- | 
pattern DynamicTargetingKeysListObjectType_OBJECTAD :: DynamicTargetingKeysListObjectType
pattern DynamicTargetingKeysListObjectType_OBJECTAD = DynamicTargetingKeysListObjectType "OBJECT_AD"

-- | 
pattern DynamicTargetingKeysListObjectType_OBJECTCREATIVE :: DynamicTargetingKeysListObjectType
pattern DynamicTargetingKeysListObjectType_OBJECTCREATIVE = DynamicTargetingKeysListObjectType "OBJECT_CREATIVE"

-- | 
pattern DynamicTargetingKeysListObjectType_OBJECTPLACEMENT :: DynamicTargetingKeysListObjectType
pattern DynamicTargetingKeysListObjectType_OBJECTPLACEMENT = DynamicTargetingKeysListObjectType "OBJECT_PLACEMENT"

{-# COMPLETE
  DynamicTargetingKeysListObjectType_OBJECTADVERTISER,
  DynamicTargetingKeysListObjectType_OBJECTAD,
  DynamicTargetingKeysListObjectType_OBJECTCREATIVE,
  DynamicTargetingKeysListObjectType_OBJECTPLACEMENT,
  DynamicTargetingKeysListObjectType #-}

-- | Select only event tags with the specified event tag types. Event tag types can be used to specify whether to use a third-party pixel, a third-party JavaScript URL, or a third-party click-through URL for either impression or click tracking.
newtype EventTagsListEventTagTypes = EventTagsListEventTagTypes { fromEventTagsListEventTagTypes :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern EventTagsListEventTagTypes_IMPRESSIONIMAGEEVENTTAG :: EventTagsListEventTagTypes
pattern EventTagsListEventTagTypes_IMPRESSIONIMAGEEVENTTAG = EventTagsListEventTagTypes "IMPRESSION_IMAGE_EVENT_TAG"

-- | 
pattern EventTagsListEventTagTypes_IMPRESSIONJAVASCRIPTEVENTTAG :: EventTagsListEventTagTypes
pattern EventTagsListEventTagTypes_IMPRESSIONJAVASCRIPTEVENTTAG = EventTagsListEventTagTypes "IMPRESSION_JAVASCRIPT_EVENT_TAG"

-- | 
pattern EventTagsListEventTagTypes_CLICKTHROUGHEVENTTAG :: EventTagsListEventTagTypes
pattern EventTagsListEventTagTypes_CLICKTHROUGHEVENTTAG = EventTagsListEventTagTypes "CLICK_THROUGH_EVENT_TAG"

{-# COMPLETE
  EventTagsListEventTagTypes_IMPRESSIONIMAGEEVENTTAG,
  EventTagsListEventTagTypes_IMPRESSIONJAVASCRIPTEVENTTAG,
  EventTagsListEventTagTypes_CLICKTHROUGHEVENTTAG,
  EventTagsListEventTagTypes #-}

-- | Field by which to sort the list.
newtype EventTagsListSortField = EventTagsListSortField { fromEventTagsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern EventTagsListSortField_ID :: EventTagsListSortField
pattern EventTagsListSortField_ID = EventTagsListSortField "ID"

-- | 
pattern EventTagsListSortField_Name :: EventTagsListSortField
pattern EventTagsListSortField_Name = EventTagsListSortField "NAME"

{-# COMPLETE
  EventTagsListSortField_ID,
  EventTagsListSortField_Name,
  EventTagsListSortField #-}

-- | Order of sorted results.
newtype EventTagsListSortOrder = EventTagsListSortOrder { fromEventTagsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern EventTagsListSortOrder_Ascending :: EventTagsListSortOrder
pattern EventTagsListSortOrder_Ascending = EventTagsListSortOrder "ASCENDING"

-- | 
pattern EventTagsListSortOrder_Descending :: EventTagsListSortOrder
pattern EventTagsListSortOrder_Descending = EventTagsListSortOrder "DESCENDING"

{-# COMPLETE
  EventTagsListSortOrder_Ascending,
  EventTagsListSortOrder_Descending,
  EventTagsListSortOrder #-}

-- | The scope that defines which results are returned.
newtype FilesListScope = FilesListScope { fromFilesListScope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | All files in account.
pattern FilesListScope_All :: FilesListScope
pattern FilesListScope_All = FilesListScope "ALL"

-- | My files.
pattern FilesListScope_Mine :: FilesListScope
pattern FilesListScope_Mine = FilesListScope "MINE"

-- | Files shared with me.
pattern FilesListScope_SHAREDWITHME :: FilesListScope
pattern FilesListScope_SHAREDWITHME = FilesListScope "SHARED_WITH_ME"

{-# COMPLETE
  FilesListScope_All,
  FilesListScope_Mine,
  FilesListScope_SHAREDWITHME,
  FilesListScope #-}

-- | The field by which to sort the list.
newtype FilesListSortField = FilesListSortField { fromFilesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Sort by file ID.
pattern FilesListSortField_ID :: FilesListSortField
pattern FilesListSortField_ID = FilesListSortField "ID"

-- | Sort by \'lastmodifiedAt\' field.
pattern FilesListSortField_LASTMODIFIEDTIME :: FilesListSortField
pattern FilesListSortField_LASTMODIFIEDTIME = FilesListSortField "LAST_MODIFIED_TIME"

{-# COMPLETE
  FilesListSortField_ID,
  FilesListSortField_LASTMODIFIEDTIME,
  FilesListSortField #-}

-- | Order of sorted results.
newtype FilesListSortOrder = FilesListSortOrder { fromFilesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Ascending order.
pattern FilesListSortOrder_Ascending :: FilesListSortOrder
pattern FilesListSortOrder_Ascending = FilesListSortOrder "ASCENDING"

-- | Descending order.
pattern FilesListSortOrder_Descending :: FilesListSortOrder
pattern FilesListSortOrder_Descending = FilesListSortOrder "DESCENDING"

{-# COMPLETE
  FilesListSortOrder_Ascending,
  FilesListSortOrder_Descending,
  FilesListSortOrder #-}

-- | Select only floodlight activities with the specified floodlight activity group type.
newtype FloodlightActivitiesListFloodlightActivityGroupType = FloodlightActivitiesListFloodlightActivityGroupType { fromFloodlightActivitiesListFloodlightActivityGroupType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivitiesListFloodlightActivityGroupType_Counter :: FloodlightActivitiesListFloodlightActivityGroupType
pattern FloodlightActivitiesListFloodlightActivityGroupType_Counter = FloodlightActivitiesListFloodlightActivityGroupType "COUNTER"

-- | 
pattern FloodlightActivitiesListFloodlightActivityGroupType_Sale :: FloodlightActivitiesListFloodlightActivityGroupType
pattern FloodlightActivitiesListFloodlightActivityGroupType_Sale = FloodlightActivitiesListFloodlightActivityGroupType "SALE"

{-# COMPLETE
  FloodlightActivitiesListFloodlightActivityGroupType_Counter,
  FloodlightActivitiesListFloodlightActivityGroupType_Sale,
  FloodlightActivitiesListFloodlightActivityGroupType #-}

-- | Field by which to sort the list.
newtype FloodlightActivitiesListSortField = FloodlightActivitiesListSortField { fromFloodlightActivitiesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivitiesListSortField_ID :: FloodlightActivitiesListSortField
pattern FloodlightActivitiesListSortField_ID = FloodlightActivitiesListSortField "ID"

-- | 
pattern FloodlightActivitiesListSortField_Name :: FloodlightActivitiesListSortField
pattern FloodlightActivitiesListSortField_Name = FloodlightActivitiesListSortField "NAME"

{-# COMPLETE
  FloodlightActivitiesListSortField_ID,
  FloodlightActivitiesListSortField_Name,
  FloodlightActivitiesListSortField #-}

-- | Order of sorted results.
newtype FloodlightActivitiesListSortOrder = FloodlightActivitiesListSortOrder { fromFloodlightActivitiesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivitiesListSortOrder_Ascending :: FloodlightActivitiesListSortOrder
pattern FloodlightActivitiesListSortOrder_Ascending = FloodlightActivitiesListSortOrder "ASCENDING"

-- | 
pattern FloodlightActivitiesListSortOrder_Descending :: FloodlightActivitiesListSortOrder
pattern FloodlightActivitiesListSortOrder_Descending = FloodlightActivitiesListSortOrder "DESCENDING"

{-# COMPLETE
  FloodlightActivitiesListSortOrder_Ascending,
  FloodlightActivitiesListSortOrder_Descending,
  FloodlightActivitiesListSortOrder #-}

-- | Field by which to sort the list.
newtype FloodlightActivityGroupsListSortField = FloodlightActivityGroupsListSortField { fromFloodlightActivityGroupsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivityGroupsListSortField_ID :: FloodlightActivityGroupsListSortField
pattern FloodlightActivityGroupsListSortField_ID = FloodlightActivityGroupsListSortField "ID"

-- | 
pattern FloodlightActivityGroupsListSortField_Name :: FloodlightActivityGroupsListSortField
pattern FloodlightActivityGroupsListSortField_Name = FloodlightActivityGroupsListSortField "NAME"

{-# COMPLETE
  FloodlightActivityGroupsListSortField_ID,
  FloodlightActivityGroupsListSortField_Name,
  FloodlightActivityGroupsListSortField #-}

-- | Order of sorted results.
newtype FloodlightActivityGroupsListSortOrder = FloodlightActivityGroupsListSortOrder { fromFloodlightActivityGroupsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivityGroupsListSortOrder_Ascending :: FloodlightActivityGroupsListSortOrder
pattern FloodlightActivityGroupsListSortOrder_Ascending = FloodlightActivityGroupsListSortOrder "ASCENDING"

-- | 
pattern FloodlightActivityGroupsListSortOrder_Descending :: FloodlightActivityGroupsListSortOrder
pattern FloodlightActivityGroupsListSortOrder_Descending = FloodlightActivityGroupsListSortOrder "DESCENDING"

{-# COMPLETE
  FloodlightActivityGroupsListSortOrder_Ascending,
  FloodlightActivityGroupsListSortOrder_Descending,
  FloodlightActivityGroupsListSortOrder #-}

-- | Select only floodlight activity groups with the specified floodlight activity group type.
newtype FloodlightActivityGroupsListType = FloodlightActivityGroupsListType { fromFloodlightActivityGroupsListType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FloodlightActivityGroupsListType_Counter :: FloodlightActivityGroupsListType
pattern FloodlightActivityGroupsListType_Counter = FloodlightActivityGroupsListType "COUNTER"

-- | 
pattern FloodlightActivityGroupsListType_Sale :: FloodlightActivityGroupsListType
pattern FloodlightActivityGroupsListType_Sale = FloodlightActivityGroupsListType "SALE"

{-# COMPLETE
  FloodlightActivityGroupsListType_Counter,
  FloodlightActivityGroupsListType_Sale,
  FloodlightActivityGroupsListType #-}

-- | Field by which to sort the list.
newtype InventoryItemsListSortField = InventoryItemsListSortField { fromInventoryItemsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern InventoryItemsListSortField_ID :: InventoryItemsListSortField
pattern InventoryItemsListSortField_ID = InventoryItemsListSortField "ID"

-- | 
pattern InventoryItemsListSortField_Name :: InventoryItemsListSortField
pattern InventoryItemsListSortField_Name = InventoryItemsListSortField "NAME"

{-# COMPLETE
  InventoryItemsListSortField_ID,
  InventoryItemsListSortField_Name,
  InventoryItemsListSortField #-}

-- | Order of sorted results.
newtype InventoryItemsListSortOrder = InventoryItemsListSortOrder { fromInventoryItemsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern InventoryItemsListSortOrder_Ascending :: InventoryItemsListSortOrder
pattern InventoryItemsListSortOrder_Ascending = InventoryItemsListSortOrder "ASCENDING"

-- | 
pattern InventoryItemsListSortOrder_Descending :: InventoryItemsListSortOrder
pattern InventoryItemsListSortOrder_Descending = InventoryItemsListSortOrder "DESCENDING"

{-# COMPLETE
  InventoryItemsListSortOrder_Ascending,
  InventoryItemsListSortOrder_Descending,
  InventoryItemsListSortOrder #-}

-- | Select only inventory items with this type.
newtype InventoryItemsListType = InventoryItemsListType { fromInventoryItemsListType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern InventoryItemsListType_PLANNINGPLACEMENTTYPEREGULAR :: InventoryItemsListType
pattern InventoryItemsListType_PLANNINGPLACEMENTTYPEREGULAR = InventoryItemsListType "PLANNING_PLACEMENT_TYPE_REGULAR"

-- | 
pattern InventoryItemsListType_PLANNINGPLACEMENTTYPECREDIT :: InventoryItemsListType
pattern InventoryItemsListType_PLANNINGPLACEMENTTYPECREDIT = InventoryItemsListType "PLANNING_PLACEMENT_TYPE_CREDIT"

{-# COMPLETE
  InventoryItemsListType_PLANNINGPLACEMENTTYPEREGULAR,
  InventoryItemsListType_PLANNINGPLACEMENTTYPECREDIT,
  InventoryItemsListType #-}

-- | Select only apps from these directories.
newtype MobileAppsListDirectories = MobileAppsListDirectories { fromMobileAppsListDirectories :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern MobileAppsListDirectories_Unknown :: MobileAppsListDirectories
pattern MobileAppsListDirectories_Unknown = MobileAppsListDirectories "UNKNOWN"

-- | 
pattern MobileAppsListDirectories_APPLEAPPSTORE :: MobileAppsListDirectories
pattern MobileAppsListDirectories_APPLEAPPSTORE = MobileAppsListDirectories "APPLE_APP_STORE"

-- | 
pattern MobileAppsListDirectories_GOOGLEPLAYSTORE :: MobileAppsListDirectories
pattern MobileAppsListDirectories_GOOGLEPLAYSTORE = MobileAppsListDirectories "GOOGLE_PLAY_STORE"

{-# COMPLETE
  MobileAppsListDirectories_Unknown,
  MobileAppsListDirectories_APPLEAPPSTORE,
  MobileAppsListDirectories_GOOGLEPLAYSTORE,
  MobileAppsListDirectories #-}

-- | Field by which to sort the list.
newtype OrderDocumentsListSortField = OrderDocumentsListSortField { fromOrderDocumentsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern OrderDocumentsListSortField_ID :: OrderDocumentsListSortField
pattern OrderDocumentsListSortField_ID = OrderDocumentsListSortField "ID"

-- | 
pattern OrderDocumentsListSortField_Name :: OrderDocumentsListSortField
pattern OrderDocumentsListSortField_Name = OrderDocumentsListSortField "NAME"

{-# COMPLETE
  OrderDocumentsListSortField_ID,
  OrderDocumentsListSortField_Name,
  OrderDocumentsListSortField #-}

-- | Order of sorted results.
newtype OrderDocumentsListSortOrder = OrderDocumentsListSortOrder { fromOrderDocumentsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern OrderDocumentsListSortOrder_Ascending :: OrderDocumentsListSortOrder
pattern OrderDocumentsListSortOrder_Ascending = OrderDocumentsListSortOrder "ASCENDING"

-- | 
pattern OrderDocumentsListSortOrder_Descending :: OrderDocumentsListSortOrder
pattern OrderDocumentsListSortOrder_Descending = OrderDocumentsListSortOrder "DESCENDING"

{-# COMPLETE
  OrderDocumentsListSortOrder_Ascending,
  OrderDocumentsListSortOrder_Descending,
  OrderDocumentsListSortOrder #-}

-- | Field by which to sort the list.
newtype OrdersListSortField = OrdersListSortField { fromOrdersListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern OrdersListSortField_ID :: OrdersListSortField
pattern OrdersListSortField_ID = OrdersListSortField "ID"

-- | 
pattern OrdersListSortField_Name :: OrdersListSortField
pattern OrdersListSortField_Name = OrdersListSortField "NAME"

{-# COMPLETE
  OrdersListSortField_ID,
  OrdersListSortField_Name,
  OrdersListSortField #-}

-- | Order of sorted results.
newtype OrdersListSortOrder = OrdersListSortOrder { fromOrdersListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern OrdersListSortOrder_Ascending :: OrdersListSortOrder
pattern OrdersListSortOrder_Ascending = OrdersListSortOrder "ASCENDING"

-- | 
pattern OrdersListSortOrder_Descending :: OrdersListSortOrder
pattern OrdersListSortOrder_Descending = OrdersListSortOrder "DESCENDING"

{-# COMPLETE
  OrdersListSortOrder_Ascending,
  OrdersListSortOrder_Descending,
  OrdersListSortOrder #-}

-- | Select only placement groups belonging with this group type. A package is a simple group of placements that acts as a single pricing point for a group of tags. A roadblock is a group of placements that not only acts as a single pricing point but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned placements to be marked as primary for reporting.
newtype PlacementGroupsListPlacementGroupType = PlacementGroupsListPlacementGroupType { fromPlacementGroupsListPlacementGroupType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementGroupsListPlacementGroupType_PLACEMENTPACKAGE :: PlacementGroupsListPlacementGroupType
pattern PlacementGroupsListPlacementGroupType_PLACEMENTPACKAGE = PlacementGroupsListPlacementGroupType "PLACEMENT_PACKAGE"

-- | 
pattern PlacementGroupsListPlacementGroupType_PLACEMENTROADBLOCK :: PlacementGroupsListPlacementGroupType
pattern PlacementGroupsListPlacementGroupType_PLACEMENTROADBLOCK = PlacementGroupsListPlacementGroupType "PLACEMENT_ROADBLOCK"

{-# COMPLETE
  PlacementGroupsListPlacementGroupType_PLACEMENTPACKAGE,
  PlacementGroupsListPlacementGroupType_PLACEMENTROADBLOCK,
  PlacementGroupsListPlacementGroupType #-}

-- | Select only placement groups with these pricing types.
newtype PlacementGroupsListPricingTypes = PlacementGroupsListPricingTypes { fromPlacementGroupsListPricingTypes :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementGroupsListPricingTypes_PRICINGTYPECPM :: PlacementGroupsListPricingTypes
pattern PlacementGroupsListPricingTypes_PRICINGTYPECPM = PlacementGroupsListPricingTypes "PRICING_TYPE_CPM"

-- | 
pattern PlacementGroupsListPricingTypes_PRICINGTYPECPC :: PlacementGroupsListPricingTypes
pattern PlacementGroupsListPricingTypes_PRICINGTYPECPC = PlacementGroupsListPricingTypes "PRICING_TYPE_CPC"

-- | 
pattern PlacementGroupsListPricingTypes_PRICINGTYPECPA :: PlacementGroupsListPricingTypes
pattern PlacementGroupsListPricingTypes_PRICINGTYPECPA = PlacementGroupsListPricingTypes "PRICING_TYPE_CPA"

-- | 
pattern PlacementGroupsListPricingTypes_PRICINGTYPEFLATRATEIMPRESSIONS :: PlacementGroupsListPricingTypes
pattern PlacementGroupsListPricingTypes_PRICINGTYPEFLATRATEIMPRESSIONS = PlacementGroupsListPricingTypes "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

-- | 
pattern PlacementGroupsListPricingTypes_PRICINGTYPEFLATRATECLICKS :: PlacementGroupsListPricingTypes
pattern PlacementGroupsListPricingTypes_PRICINGTYPEFLATRATECLICKS = PlacementGroupsListPricingTypes "PRICING_TYPE_FLAT_RATE_CLICKS"

-- | 
pattern PlacementGroupsListPricingTypes_PRICINGTYPECPMACTIVEVIEW :: PlacementGroupsListPricingTypes
pattern PlacementGroupsListPricingTypes_PRICINGTYPECPMACTIVEVIEW = PlacementGroupsListPricingTypes "PRICING_TYPE_CPM_ACTIVEVIEW"

{-# COMPLETE
  PlacementGroupsListPricingTypes_PRICINGTYPECPM,
  PlacementGroupsListPricingTypes_PRICINGTYPECPC,
  PlacementGroupsListPricingTypes_PRICINGTYPECPA,
  PlacementGroupsListPricingTypes_PRICINGTYPEFLATRATEIMPRESSIONS,
  PlacementGroupsListPricingTypes_PRICINGTYPEFLATRATECLICKS,
  PlacementGroupsListPricingTypes_PRICINGTYPECPMACTIVEVIEW,
  PlacementGroupsListPricingTypes #-}

-- | Field by which to sort the list.
newtype PlacementGroupsListSortField = PlacementGroupsListSortField { fromPlacementGroupsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementGroupsListSortField_ID :: PlacementGroupsListSortField
pattern PlacementGroupsListSortField_ID = PlacementGroupsListSortField "ID"

-- | 
pattern PlacementGroupsListSortField_Name :: PlacementGroupsListSortField
pattern PlacementGroupsListSortField_Name = PlacementGroupsListSortField "NAME"

{-# COMPLETE
  PlacementGroupsListSortField_ID,
  PlacementGroupsListSortField_Name,
  PlacementGroupsListSortField #-}

-- | Order of sorted results.
newtype PlacementGroupsListSortOrder = PlacementGroupsListSortOrder { fromPlacementGroupsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementGroupsListSortOrder_Ascending :: PlacementGroupsListSortOrder
pattern PlacementGroupsListSortOrder_Ascending = PlacementGroupsListSortOrder "ASCENDING"

-- | 
pattern PlacementGroupsListSortOrder_Descending :: PlacementGroupsListSortOrder
pattern PlacementGroupsListSortOrder_Descending = PlacementGroupsListSortOrder "DESCENDING"

{-# COMPLETE
  PlacementGroupsListSortOrder_Ascending,
  PlacementGroupsListSortOrder_Descending,
  PlacementGroupsListSortOrder #-}

-- | Field by which to sort the list.
newtype PlacementStrategiesListSortField = PlacementStrategiesListSortField { fromPlacementStrategiesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementStrategiesListSortField_ID :: PlacementStrategiesListSortField
pattern PlacementStrategiesListSortField_ID = PlacementStrategiesListSortField "ID"

-- | 
pattern PlacementStrategiesListSortField_Name :: PlacementStrategiesListSortField
pattern PlacementStrategiesListSortField_Name = PlacementStrategiesListSortField "NAME"

{-# COMPLETE
  PlacementStrategiesListSortField_ID,
  PlacementStrategiesListSortField_Name,
  PlacementStrategiesListSortField #-}

-- | Order of sorted results.
newtype PlacementStrategiesListSortOrder = PlacementStrategiesListSortOrder { fromPlacementStrategiesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementStrategiesListSortOrder_Ascending :: PlacementStrategiesListSortOrder
pattern PlacementStrategiesListSortOrder_Ascending = PlacementStrategiesListSortOrder "ASCENDING"

-- | 
pattern PlacementStrategiesListSortOrder_Descending :: PlacementStrategiesListSortOrder
pattern PlacementStrategiesListSortOrder_Descending = PlacementStrategiesListSortOrder "DESCENDING"

{-# COMPLETE
  PlacementStrategiesListSortOrder_Ascending,
  PlacementStrategiesListSortOrder_Descending,
  PlacementStrategiesListSortOrder #-}

-- | Tag formats to generate for these placements. /Note:/ PLACEMENT/TAG/STANDARD can only be generated for 1x1 placements.
newtype PlacementsGeneratetagsTagFormats = PlacementsGeneratetagsTagFormats { fromPlacementsGeneratetagsTagFormats :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGSTANDARD :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGSTANDARD = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_STANDARD"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEJAVASCRIPT :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEJAVASCRIPT = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_IFRAME_JAVASCRIPT"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEILAYER :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEILAYER = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_IFRAME_ILAYER"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERNALREDIRECT :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERNALREDIRECT = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INTERNAL_REDIRECT"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGJAVASCRIPT :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGJAVASCRIPT = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_JAVASCRIPT"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALJAVASCRIPT :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALJAVASCRIPT = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGCLICKCOMMANDS :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGCLICKCOMMANDS = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_CLICK_COMMANDS"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINSTREAMVIDEOPREFETCH :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINSTREAMVIDEOPREFETCH = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKING :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKING = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_TRACKING"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGIFRAME :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGIFRAME = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_TRACKING_IFRAME"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGJAVASCRIPT :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGJAVASCRIPT = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3 :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3 = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGJAVASCRIPTLEGACY :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGJAVASCRIPTLEGACY = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_JAVASCRIPT_LEGACY"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4 :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4 = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4"

-- | 
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT :: PlacementsGeneratetagsTagFormats
pattern PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT = PlacementsGeneratetagsTagFormats "PLACEMENT_TAG_TRACKING_THIRD_PARTY_MEASUREMENT"

{-# COMPLETE
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGSTANDARD,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEJAVASCRIPT,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEILAYER,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERNALREDIRECT,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGJAVASCRIPT,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPT,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALINTERNALREDIRECT,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALJAVASCRIPT,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGCLICKCOMMANDS,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGINSTREAMVIDEOPREFETCH,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKING,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGIFRAME,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGJAVASCRIPT,
  PlacementsGeneratetagsTagFormats_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGIFRAMEJAVASCRIPTLEGACY,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGJAVASCRIPTLEGACY,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALIFRAMEJAVASCRIPTLEGACY,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGINTERSTITIALJAVASCRIPTLEGACY,
  PlacementsGeneratetagsTagFormats_PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4,
  PlacementsGeneratetagsTagFormats_PLACEMENTTAGTRACKINGTHIRDPARTYMEASUREMENT,
  PlacementsGeneratetagsTagFormats #-}

-- | Select only placements that are associated with these compatibilities. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering either on desktop or on mobile devices for regular or interstitial ads respectively. APP and APP/INTERSTITIAL are for rendering in mobile apps. IN/STREAM/VIDEO refers to rendering in in-stream video ads developed with the VAST standard.
newtype PlacementsListCompatibilities = PlacementsListCompatibilities { fromPlacementsListCompatibilities :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementsListCompatibilities_Display :: PlacementsListCompatibilities
pattern PlacementsListCompatibilities_Display = PlacementsListCompatibilities "DISPLAY"

-- | 
pattern PlacementsListCompatibilities_DISPLAYINTERSTITIAL :: PlacementsListCompatibilities
pattern PlacementsListCompatibilities_DISPLAYINTERSTITIAL = PlacementsListCompatibilities "DISPLAY_INTERSTITIAL"

-- | 
pattern PlacementsListCompatibilities_App :: PlacementsListCompatibilities
pattern PlacementsListCompatibilities_App = PlacementsListCompatibilities "APP"

-- | 
pattern PlacementsListCompatibilities_APPINTERSTITIAL :: PlacementsListCompatibilities
pattern PlacementsListCompatibilities_APPINTERSTITIAL = PlacementsListCompatibilities "APP_INTERSTITIAL"

-- | 
pattern PlacementsListCompatibilities_INSTREAMVIDEO :: PlacementsListCompatibilities
pattern PlacementsListCompatibilities_INSTREAMVIDEO = PlacementsListCompatibilities "IN_STREAM_VIDEO"

-- | 
pattern PlacementsListCompatibilities_INSTREAMAUDIO :: PlacementsListCompatibilities
pattern PlacementsListCompatibilities_INSTREAMAUDIO = PlacementsListCompatibilities "IN_STREAM_AUDIO"

{-# COMPLETE
  PlacementsListCompatibilities_Display,
  PlacementsListCompatibilities_DISPLAYINTERSTITIAL,
  PlacementsListCompatibilities_App,
  PlacementsListCompatibilities_APPINTERSTITIAL,
  PlacementsListCompatibilities_INSTREAMVIDEO,
  PlacementsListCompatibilities_INSTREAMAUDIO,
  PlacementsListCompatibilities #-}

-- | Select only placements with this payment source.
newtype PlacementsListPaymentSource = PlacementsListPaymentSource { fromPlacementsListPaymentSource :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementsListPaymentSource_PLACEMENTAGENCYPAID :: PlacementsListPaymentSource
pattern PlacementsListPaymentSource_PLACEMENTAGENCYPAID = PlacementsListPaymentSource "PLACEMENT_AGENCY_PAID"

-- | 
pattern PlacementsListPaymentSource_PLACEMENTPUBLISHERPAID :: PlacementsListPaymentSource
pattern PlacementsListPaymentSource_PLACEMENTPUBLISHERPAID = PlacementsListPaymentSource "PLACEMENT_PUBLISHER_PAID"

{-# COMPLETE
  PlacementsListPaymentSource_PLACEMENTAGENCYPAID,
  PlacementsListPaymentSource_PLACEMENTPUBLISHERPAID,
  PlacementsListPaymentSource #-}

-- | Select only placements with these pricing types.
newtype PlacementsListPricingTypes = PlacementsListPricingTypes { fromPlacementsListPricingTypes :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementsListPricingTypes_PRICINGTYPECPM :: PlacementsListPricingTypes
pattern PlacementsListPricingTypes_PRICINGTYPECPM = PlacementsListPricingTypes "PRICING_TYPE_CPM"

-- | 
pattern PlacementsListPricingTypes_PRICINGTYPECPC :: PlacementsListPricingTypes
pattern PlacementsListPricingTypes_PRICINGTYPECPC = PlacementsListPricingTypes "PRICING_TYPE_CPC"

-- | 
pattern PlacementsListPricingTypes_PRICINGTYPECPA :: PlacementsListPricingTypes
pattern PlacementsListPricingTypes_PRICINGTYPECPA = PlacementsListPricingTypes "PRICING_TYPE_CPA"

-- | 
pattern PlacementsListPricingTypes_PRICINGTYPEFLATRATEIMPRESSIONS :: PlacementsListPricingTypes
pattern PlacementsListPricingTypes_PRICINGTYPEFLATRATEIMPRESSIONS = PlacementsListPricingTypes "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

-- | 
pattern PlacementsListPricingTypes_PRICINGTYPEFLATRATECLICKS :: PlacementsListPricingTypes
pattern PlacementsListPricingTypes_PRICINGTYPEFLATRATECLICKS = PlacementsListPricingTypes "PRICING_TYPE_FLAT_RATE_CLICKS"

-- | 
pattern PlacementsListPricingTypes_PRICINGTYPECPMACTIVEVIEW :: PlacementsListPricingTypes
pattern PlacementsListPricingTypes_PRICINGTYPECPMACTIVEVIEW = PlacementsListPricingTypes "PRICING_TYPE_CPM_ACTIVEVIEW"

{-# COMPLETE
  PlacementsListPricingTypes_PRICINGTYPECPM,
  PlacementsListPricingTypes_PRICINGTYPECPC,
  PlacementsListPricingTypes_PRICINGTYPECPA,
  PlacementsListPricingTypes_PRICINGTYPEFLATRATEIMPRESSIONS,
  PlacementsListPricingTypes_PRICINGTYPEFLATRATECLICKS,
  PlacementsListPricingTypes_PRICINGTYPECPMACTIVEVIEW,
  PlacementsListPricingTypes #-}

-- | Field by which to sort the list.
newtype PlacementsListSortField = PlacementsListSortField { fromPlacementsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementsListSortField_ID :: PlacementsListSortField
pattern PlacementsListSortField_ID = PlacementsListSortField "ID"

-- | 
pattern PlacementsListSortField_Name :: PlacementsListSortField
pattern PlacementsListSortField_Name = PlacementsListSortField "NAME"

{-# COMPLETE
  PlacementsListSortField_ID,
  PlacementsListSortField_Name,
  PlacementsListSortField #-}

-- | Order of sorted results.
newtype PlacementsListSortOrder = PlacementsListSortOrder { fromPlacementsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PlacementsListSortOrder_Ascending :: PlacementsListSortOrder
pattern PlacementsListSortOrder_Ascending = PlacementsListSortOrder "ASCENDING"

-- | 
pattern PlacementsListSortOrder_Descending :: PlacementsListSortOrder
pattern PlacementsListSortOrder_Descending = PlacementsListSortOrder "DESCENDING"

{-# COMPLETE
  PlacementsListSortOrder_Ascending,
  PlacementsListSortOrder_Descending,
  PlacementsListSortOrder #-}

-- | Field by which to sort the list.
newtype ProjectsListSortField = ProjectsListSortField { fromProjectsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ProjectsListSortField_ID :: ProjectsListSortField
pattern ProjectsListSortField_ID = ProjectsListSortField "ID"

-- | 
pattern ProjectsListSortField_Name :: ProjectsListSortField
pattern ProjectsListSortField_Name = ProjectsListSortField "NAME"

{-# COMPLETE
  ProjectsListSortField_ID,
  ProjectsListSortField_Name,
  ProjectsListSortField #-}

-- | Order of sorted results.
newtype ProjectsListSortOrder = ProjectsListSortOrder { fromProjectsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ProjectsListSortOrder_Ascending :: ProjectsListSortOrder
pattern ProjectsListSortOrder_Ascending = ProjectsListSortOrder "ASCENDING"

-- | 
pattern ProjectsListSortOrder_Descending :: ProjectsListSortOrder
pattern ProjectsListSortOrder_Descending = ProjectsListSortOrder "DESCENDING"

{-# COMPLETE
  ProjectsListSortOrder_Ascending,
  ProjectsListSortOrder_Descending,
  ProjectsListSortOrder #-}

-- | Field by which to sort the list.
newtype RemarketingListsListSortField = RemarketingListsListSortField { fromRemarketingListsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern RemarketingListsListSortField_ID :: RemarketingListsListSortField
pattern RemarketingListsListSortField_ID = RemarketingListsListSortField "ID"

-- | 
pattern RemarketingListsListSortField_Name :: RemarketingListsListSortField
pattern RemarketingListsListSortField_Name = RemarketingListsListSortField "NAME"

{-# COMPLETE
  RemarketingListsListSortField_ID,
  RemarketingListsListSortField_Name,
  RemarketingListsListSortField #-}

-- | Order of sorted results.
newtype RemarketingListsListSortOrder = RemarketingListsListSortOrder { fromRemarketingListsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern RemarketingListsListSortOrder_Ascending :: RemarketingListsListSortOrder
pattern RemarketingListsListSortOrder_Ascending = RemarketingListsListSortOrder "ASCENDING"

-- | 
pattern RemarketingListsListSortOrder_Descending :: RemarketingListsListSortOrder
pattern RemarketingListsListSortOrder_Descending = RemarketingListsListSortOrder "DESCENDING"

{-# COMPLETE
  RemarketingListsListSortOrder_Ascending,
  RemarketingListsListSortOrder_Descending,
  RemarketingListsListSortOrder #-}

-- | The field by which to sort the list.
newtype ReportsFilesListSortField = ReportsFilesListSortField { fromReportsFilesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ReportsFilesListSortField_ID :: ReportsFilesListSortField
pattern ReportsFilesListSortField_ID = ReportsFilesListSortField "ID"

-- | 
pattern ReportsFilesListSortField_LASTMODIFIEDTIME :: ReportsFilesListSortField
pattern ReportsFilesListSortField_LASTMODIFIEDTIME = ReportsFilesListSortField "LAST_MODIFIED_TIME"

{-# COMPLETE
  ReportsFilesListSortField_ID,
  ReportsFilesListSortField_LASTMODIFIEDTIME,
  ReportsFilesListSortField #-}

-- | Order of sorted results.
newtype ReportsFilesListSortOrder = ReportsFilesListSortOrder { fromReportsFilesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ReportsFilesListSortOrder_Ascending :: ReportsFilesListSortOrder
pattern ReportsFilesListSortOrder_Ascending = ReportsFilesListSortOrder "ASCENDING"

-- | 
pattern ReportsFilesListSortOrder_Descending :: ReportsFilesListSortOrder
pattern ReportsFilesListSortOrder_Descending = ReportsFilesListSortOrder "DESCENDING"

{-# COMPLETE
  ReportsFilesListSortOrder_Ascending,
  ReportsFilesListSortOrder_Descending,
  ReportsFilesListSortOrder #-}

-- | The scope that defines which results are returned.
newtype ReportsListScope = ReportsListScope { fromReportsListScope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | All reports in account.
pattern ReportsListScope_All :: ReportsListScope
pattern ReportsListScope_All = ReportsListScope "ALL"

-- | My reports.
pattern ReportsListScope_Mine :: ReportsListScope
pattern ReportsListScope_Mine = ReportsListScope "MINE"

{-# COMPLETE
  ReportsListScope_All,
  ReportsListScope_Mine,
  ReportsListScope #-}

-- | The field by which to sort the list.
newtype ReportsListSortField = ReportsListSortField { fromReportsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Sort by report ID.
pattern ReportsListSortField_ID :: ReportsListSortField
pattern ReportsListSortField_ID = ReportsListSortField "ID"

-- | Sort by \'lastModifiedTime\' field.
pattern ReportsListSortField_LASTMODIFIEDTIME :: ReportsListSortField
pattern ReportsListSortField_LASTMODIFIEDTIME = ReportsListSortField "LAST_MODIFIED_TIME"

-- | Sort by name of reports.
pattern ReportsListSortField_Name :: ReportsListSortField
pattern ReportsListSortField_Name = ReportsListSortField "NAME"

{-# COMPLETE
  ReportsListSortField_ID,
  ReportsListSortField_LASTMODIFIEDTIME,
  ReportsListSortField_Name,
  ReportsListSortField #-}

-- | Order of sorted results.
newtype ReportsListSortOrder = ReportsListSortOrder { fromReportsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Ascending order.
pattern ReportsListSortOrder_Ascending :: ReportsListSortOrder
pattern ReportsListSortOrder_Ascending = ReportsListSortOrder "ASCENDING"

-- | Descending order.
pattern ReportsListSortOrder_Descending :: ReportsListSortOrder
pattern ReportsListSortOrder_Descending = ReportsListSortOrder "DESCENDING"

{-# COMPLETE
  ReportsListSortOrder_Ascending,
  ReportsListSortOrder_Descending,
  ReportsListSortOrder #-}

-- | Field by which to sort the list.
newtype SitesListSortField = SitesListSortField { fromSitesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SitesListSortField_ID :: SitesListSortField
pattern SitesListSortField_ID = SitesListSortField "ID"

-- | 
pattern SitesListSortField_Name :: SitesListSortField
pattern SitesListSortField_Name = SitesListSortField "NAME"

{-# COMPLETE
  SitesListSortField_ID,
  SitesListSortField_Name,
  SitesListSortField #-}

-- | Order of sorted results.
newtype SitesListSortOrder = SitesListSortOrder { fromSitesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SitesListSortOrder_Ascending :: SitesListSortOrder
pattern SitesListSortOrder_Ascending = SitesListSortOrder "ASCENDING"

-- | 
pattern SitesListSortOrder_Descending :: SitesListSortOrder
pattern SitesListSortOrder_Descending = SitesListSortOrder "DESCENDING"

{-# COMPLETE
  SitesListSortOrder_Ascending,
  SitesListSortOrder_Descending,
  SitesListSortOrder #-}

-- | Field by which to sort the list.
newtype SubaccountsListSortField = SubaccountsListSortField { fromSubaccountsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SubaccountsListSortField_ID :: SubaccountsListSortField
pattern SubaccountsListSortField_ID = SubaccountsListSortField "ID"

-- | 
pattern SubaccountsListSortField_Name :: SubaccountsListSortField
pattern SubaccountsListSortField_Name = SubaccountsListSortField "NAME"

{-# COMPLETE
  SubaccountsListSortField_ID,
  SubaccountsListSortField_Name,
  SubaccountsListSortField #-}

-- | Order of sorted results.
newtype SubaccountsListSortOrder = SubaccountsListSortOrder { fromSubaccountsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SubaccountsListSortOrder_Ascending :: SubaccountsListSortOrder
pattern SubaccountsListSortOrder_Ascending = SubaccountsListSortOrder "ASCENDING"

-- | 
pattern SubaccountsListSortOrder_Descending :: SubaccountsListSortOrder
pattern SubaccountsListSortOrder_Descending = SubaccountsListSortOrder "DESCENDING"

{-# COMPLETE
  SubaccountsListSortOrder_Ascending,
  SubaccountsListSortOrder_Descending,
  SubaccountsListSortOrder #-}

-- | Field by which to sort the list.
newtype TargetableRemarketingListsListSortField = TargetableRemarketingListsListSortField { fromTargetableRemarketingListsListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TargetableRemarketingListsListSortField_ID :: TargetableRemarketingListsListSortField
pattern TargetableRemarketingListsListSortField_ID = TargetableRemarketingListsListSortField "ID"

-- | 
pattern TargetableRemarketingListsListSortField_Name :: TargetableRemarketingListsListSortField
pattern TargetableRemarketingListsListSortField_Name = TargetableRemarketingListsListSortField "NAME"

{-# COMPLETE
  TargetableRemarketingListsListSortField_ID,
  TargetableRemarketingListsListSortField_Name,
  TargetableRemarketingListsListSortField #-}

-- | Order of sorted results.
newtype TargetableRemarketingListsListSortOrder = TargetableRemarketingListsListSortOrder { fromTargetableRemarketingListsListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TargetableRemarketingListsListSortOrder_Ascending :: TargetableRemarketingListsListSortOrder
pattern TargetableRemarketingListsListSortOrder_Ascending = TargetableRemarketingListsListSortOrder "ASCENDING"

-- | 
pattern TargetableRemarketingListsListSortOrder_Descending :: TargetableRemarketingListsListSortOrder
pattern TargetableRemarketingListsListSortOrder_Descending = TargetableRemarketingListsListSortOrder "DESCENDING"

{-# COMPLETE
  TargetableRemarketingListsListSortOrder_Ascending,
  TargetableRemarketingListsListSortOrder_Descending,
  TargetableRemarketingListsListSortOrder #-}

-- | Field by which to sort the list.
newtype TargetingTemplatesListSortField = TargetingTemplatesListSortField { fromTargetingTemplatesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TargetingTemplatesListSortField_ID :: TargetingTemplatesListSortField
pattern TargetingTemplatesListSortField_ID = TargetingTemplatesListSortField "ID"

-- | 
pattern TargetingTemplatesListSortField_Name :: TargetingTemplatesListSortField
pattern TargetingTemplatesListSortField_Name = TargetingTemplatesListSortField "NAME"

{-# COMPLETE
  TargetingTemplatesListSortField_ID,
  TargetingTemplatesListSortField_Name,
  TargetingTemplatesListSortField #-}

-- | Order of sorted results.
newtype TargetingTemplatesListSortOrder = TargetingTemplatesListSortOrder { fromTargetingTemplatesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TargetingTemplatesListSortOrder_Ascending :: TargetingTemplatesListSortOrder
pattern TargetingTemplatesListSortOrder_Ascending = TargetingTemplatesListSortOrder "ASCENDING"

-- | 
pattern TargetingTemplatesListSortOrder_Descending :: TargetingTemplatesListSortOrder
pattern TargetingTemplatesListSortOrder_Descending = TargetingTemplatesListSortOrder "DESCENDING"

{-# COMPLETE
  TargetingTemplatesListSortOrder_Ascending,
  TargetingTemplatesListSortOrder_Descending,
  TargetingTemplatesListSortOrder #-}

-- | Field by which to sort the list.
newtype UserRolesListSortField = UserRolesListSortField { fromUserRolesListSortField :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern UserRolesListSortField_ID :: UserRolesListSortField
pattern UserRolesListSortField_ID = UserRolesListSortField "ID"

-- | 
pattern UserRolesListSortField_Name :: UserRolesListSortField
pattern UserRolesListSortField_Name = UserRolesListSortField "NAME"

{-# COMPLETE
  UserRolesListSortField_ID,
  UserRolesListSortField_Name,
  UserRolesListSortField #-}

-- | Order of sorted results.
newtype UserRolesListSortOrder = UserRolesListSortOrder { fromUserRolesListSortOrder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern UserRolesListSortOrder_Ascending :: UserRolesListSortOrder
pattern UserRolesListSortOrder_Ascending = UserRolesListSortOrder "ASCENDING"

-- | 
pattern UserRolesListSortOrder_Descending :: UserRolesListSortOrder
pattern UserRolesListSortOrder_Descending = UserRolesListSortOrder "DESCENDING"

{-# COMPLETE
  UserRolesListSortOrder_Ascending,
  UserRolesListSortOrder_Descending,
  UserRolesListSortOrder #-}
