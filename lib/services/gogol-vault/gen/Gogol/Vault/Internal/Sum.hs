{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Vault.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Vault.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AccountCountError_ErrorType
    AccountCountError_ErrorType
      (
        AccountCountError_ErrorType_ERRORTYPEUNSPECIFIED,
        AccountCountError_ErrorType_WILDCARDTOOBROAD,
        AccountCountError_ErrorType_TOOMANYTERMS,
        AccountCountError_ErrorType_LOCATIONUNAVAILABLE,
        AccountCountError_ErrorType_Unknown,
        AccountCountError_ErrorType_DEADLINEEXCEEDED,
        ..
      ),

    -- * CalendarExportOptions_ExportFormat
    CalendarExportOptions_ExportFormat
      (
        CalendarExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
        CalendarExportOptions_ExportFormat_Mbox,
        CalendarExportOptions_ExportFormat_Pst,
        CalendarExportOptions_ExportFormat_Ics,
        ..
      ),

    -- * CalendarOptions_ResponseStatusesItem
    CalendarOptions_ResponseStatusesItem
      (
        CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEUNSPECIFIED,
        CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSENEEDSACTION,
        CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEACCEPTED,
        CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEDECLINED,
        CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSETENTATIVE,
        ..
      ),

    -- * CountArtifactsRequest_View
    CountArtifactsRequest_View
      (
        CountArtifactsRequest_View_COUNTRESULTVIEWUNSPECIFIED,
        CountArtifactsRequest_View_TOTALCOUNT,
        CountArtifactsRequest_View_All,
        ..
      ),

    -- * DriveOptions_ClientSideEncryptedOption
    DriveOptions_ClientSideEncryptedOption
      (
        DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNSPECIFIED,
        DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONANY,
        DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONENCRYPTED,
        DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNENCRYPTED,
        ..
      ),

    -- * Export_Status
    Export_Status
      (
        Export_Status_EXPORTSTATUSUNSPECIFIED,
        Export_Status_Completed,
        Export_Status_Failed,
        Export_Status_INPROGRESS,
        ..
      ),

    -- * ExportOptions_Region
    ExportOptions_Region
      (
        ExportOptions_Region_EXPORTREGIONUNSPECIFIED,
        ExportOptions_Region_Any,
        ExportOptions_Region_US,
        ExportOptions_Region_Europe,
        ..
      ),

    -- * GroupsExportOptions_ExportFormat
    GroupsExportOptions_ExportFormat
      (
        GroupsExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
        GroupsExportOptions_ExportFormat_Mbox,
        GroupsExportOptions_ExportFormat_Pst,
        GroupsExportOptions_ExportFormat_Ics,
        ..
      ),

    -- * HangoutsChatExportOptions_ExportFormat
    HangoutsChatExportOptions_ExportFormat
      (
        HangoutsChatExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
        HangoutsChatExportOptions_ExportFormat_Mbox,
        HangoutsChatExportOptions_ExportFormat_Pst,
        HangoutsChatExportOptions_ExportFormat_Ics,
        ..
      ),

    -- * HeldVoiceQuery_CoveredDataItem
    HeldVoiceQuery_CoveredDataItem
      (
        HeldVoiceQuery_CoveredDataItem_COVEREDDATAUNSPECIFIED,
        HeldVoiceQuery_CoveredDataItem_TEXTMESSAGES,
        HeldVoiceQuery_CoveredDataItem_Voicemails,
        HeldVoiceQuery_CoveredDataItem_CALLLOGS,
        ..
      ),

    -- * Hold_Corpus
    Hold_Corpus
      (
        Hold_Corpus_CORPUSTYPEUNSPECIFIED,
        Hold_Corpus_Drive,
        Hold_Corpus_Mail,
        Hold_Corpus_Groups,
        Hold_Corpus_HANGOUTSCHAT,
        Hold_Corpus_Voice,
        Hold_Corpus_Calendar,
        ..
      ),

    -- * MailExportOptions_ExportFormat
    MailExportOptions_ExportFormat
      (
        MailExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
        MailExportOptions_ExportFormat_Mbox,
        MailExportOptions_ExportFormat_Pst,
        MailExportOptions_ExportFormat_Ics,
        ..
      ),

    -- * MailOptions_ClientSideEncryptedOption
    MailOptions_ClientSideEncryptedOption
      (
        MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNSPECIFIED,
        MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONANY,
        MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONENCRYPTED,
        MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNENCRYPTED,
        ..
      ),

    -- * Matter_MatterRegion
    Matter_MatterRegion
      (
        Matter_MatterRegion_MATTERREGIONUNSPECIFIED,
        Matter_MatterRegion_Any,
        Matter_MatterRegion_US,
        Matter_MatterRegion_Europe,
        ..
      ),

    -- * Matter_State
    Matter_State
      (
        Matter_State_STATEUNSPECIFIED,
        Matter_State_Open,
        Matter_State_Closed,
        Matter_State_Deleted,
        ..
      ),

    -- * MatterPermission_Role
    MatterPermission_Role
      (
        MatterPermission_Role_ROLEUNSPECIFIED,
        MatterPermission_Role_Collaborator,
        MatterPermission_Role_Owner,
        ..
      ),

    -- * Query_Corpus
    Query_Corpus
      (
        Query_Corpus_CORPUSTYPEUNSPECIFIED,
        Query_Corpus_Drive,
        Query_Corpus_Mail,
        Query_Corpus_Groups,
        Query_Corpus_HANGOUTSCHAT,
        Query_Corpus_Voice,
        Query_Corpus_Calendar,
        ..
      ),

    -- * Query_DataScope
    Query_DataScope
      (
        Query_DataScope_DATASCOPEUNSPECIFIED,
        Query_DataScope_ALLDATA,
        Query_DataScope_HELDDATA,
        Query_DataScope_UNPROCESSEDDATA,
        ..
      ),

    -- * Query_Method
    Query_Method
      (
        Query_Method_SEARCHMETHODUNSPECIFIED,
        Query_Method_Account,
        Query_Method_ORGUNIT,
        Query_Method_TEAMDRIVE,
        Query_Method_ENTIREORG,
        Query_Method_Room,
        Query_Method_SITESURL,
        Query_Method_SHAREDDRIVE,
        ..
      ),

    -- * Query_SearchMethod
    Query_SearchMethod
      (
        Query_SearchMethod_SEARCHMETHODUNSPECIFIED,
        Query_SearchMethod_Account,
        Query_SearchMethod_ORGUNIT,
        Query_SearchMethod_TEAMDRIVE,
        Query_SearchMethod_ENTIREORG,
        Query_SearchMethod_Room,
        Query_SearchMethod_SITESURL,
        Query_SearchMethod_SHAREDDRIVE,
        ..
      ),

    -- * VoiceExportOptions_ExportFormat
    VoiceExportOptions_ExportFormat
      (
        VoiceExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
        VoiceExportOptions_ExportFormat_Mbox,
        VoiceExportOptions_ExportFormat_Pst,
        VoiceExportOptions_ExportFormat_Ics,
        ..
      ),

    -- * VoiceOptions_CoveredDataItem
    VoiceOptions_CoveredDataItem
      (
        VoiceOptions_CoveredDataItem_COVEREDDATAUNSPECIFIED,
        VoiceOptions_CoveredDataItem_TEXTMESSAGES,
        VoiceOptions_CoveredDataItem_Voicemails,
        VoiceOptions_CoveredDataItem_CALLLOGS,
        ..
      ),

    -- * MattersGetView
    MattersGetView
      (
        MattersGetView_VIEWUNSPECIFIED,
        MattersGetView_Basic,
        MattersGetView_Full,
        ..
      ),

    -- * MattersHoldsGetView
    MattersHoldsGetView
      (
        MattersHoldsGetView_HOLDVIEWUNSPECIFIED,
        MattersHoldsGetView_BASICHOLD,
        MattersHoldsGetView_FULLHOLD,
        ..
      ),

    -- * MattersHoldsListView
    MattersHoldsListView
      (
        MattersHoldsListView_HOLDVIEWUNSPECIFIED,
        MattersHoldsListView_BASICHOLD,
        MattersHoldsListView_FULLHOLD,
        ..
      ),

    -- * MattersListState
    MattersListState
      (
        MattersListState_STATEUNSPECIFIED,
        MattersListState_Open,
        MattersListState_Closed,
        MattersListState_Deleted,
        ..
      ),

    -- * MattersListView
    MattersListView
      (
        MattersListView_VIEWUNSPECIFIED,
        MattersListView_Basic,
        MattersListView_Full,
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

-- | Account query error.
newtype AccountCountError_ErrorType = AccountCountError_ErrorType { fromAccountCountError_ErrorType :: Core.Text }
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

-- | Default.
pattern AccountCountError_ErrorType_ERRORTYPEUNSPECIFIED :: AccountCountError_ErrorType
pattern AccountCountError_ErrorType_ERRORTYPEUNSPECIFIED = AccountCountError_ErrorType "ERROR_TYPE_UNSPECIFIED"

-- | Permanent - prefix terms expanded to too many query terms.
pattern AccountCountError_ErrorType_WILDCARDTOOBROAD :: AccountCountError_ErrorType
pattern AccountCountError_ErrorType_WILDCARDTOOBROAD = AccountCountError_ErrorType "WILDCARD_TOO_BROAD"

-- | Permanent - query contains too many terms.
pattern AccountCountError_ErrorType_TOOMANYTERMS :: AccountCountError_ErrorType
pattern AccountCountError_ErrorType_TOOMANYTERMS = AccountCountError_ErrorType "TOO_MANY_TERMS"

-- | Transient - data in transit between storage replicas, temporarily unavailable.
pattern AccountCountError_ErrorType_LOCATIONUNAVAILABLE :: AccountCountError_ErrorType
pattern AccountCountError_ErrorType_LOCATIONUNAVAILABLE = AccountCountError_ErrorType "LOCATION_UNAVAILABLE"

-- | Unrecognized error.
pattern AccountCountError_ErrorType_Unknown :: AccountCountError_ErrorType
pattern AccountCountError_ErrorType_Unknown = AccountCountError_ErrorType "UNKNOWN"

-- | Deadline exceeded when querying the account.
pattern AccountCountError_ErrorType_DEADLINEEXCEEDED :: AccountCountError_ErrorType
pattern AccountCountError_ErrorType_DEADLINEEXCEEDED = AccountCountError_ErrorType "DEADLINE_EXCEEDED"

{-# COMPLETE
  AccountCountError_ErrorType_ERRORTYPEUNSPECIFIED,
  AccountCountError_ErrorType_WILDCARDTOOBROAD,
  AccountCountError_ErrorType_TOOMANYTERMS,
  AccountCountError_ErrorType_LOCATIONUNAVAILABLE,
  AccountCountError_ErrorType_Unknown,
  AccountCountError_ErrorType_DEADLINEEXCEEDED,
  AccountCountError_ErrorType #-}

-- | The file format for exported text messages.
newtype CalendarExportOptions_ExportFormat = CalendarExportOptions_ExportFormat { fromCalendarExportOptions_ExportFormat :: Core.Text }
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

-- | No export format specified.
pattern CalendarExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED :: CalendarExportOptions_ExportFormat
pattern CalendarExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED = CalendarExportOptions_ExportFormat "EXPORT_FORMAT_UNSPECIFIED"

-- | Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.
pattern CalendarExportOptions_ExportFormat_Mbox :: CalendarExportOptions_ExportFormat
pattern CalendarExportOptions_ExportFormat_Mbox = CalendarExportOptions_ExportFormat "MBOX"

-- | Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.
pattern CalendarExportOptions_ExportFormat_Pst :: CalendarExportOptions_ExportFormat
pattern CalendarExportOptions_ExportFormat_Pst = CalendarExportOptions_ExportFormat "PST"

-- | Export as ICS. Only available for Calendar.
pattern CalendarExportOptions_ExportFormat_Ics :: CalendarExportOptions_ExportFormat
pattern CalendarExportOptions_ExportFormat_Ics = CalendarExportOptions_ExportFormat "ICS"

{-# COMPLETE
  CalendarExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
  CalendarExportOptions_ExportFormat_Mbox,
  CalendarExportOptions_ExportFormat_Pst,
  CalendarExportOptions_ExportFormat_Ics,
  CalendarExportOptions_ExportFormat #-}

newtype CalendarOptions_ResponseStatusesItem = CalendarOptions_ResponseStatusesItem { fromCalendarOptions_ResponseStatusesItem :: Core.Text }
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

-- | Attendee response unspecified. If this is set no filtering on responses will be done, all other attendee responses that are part of the query options are ignored.
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEUNSPECIFIED :: CalendarOptions_ResponseStatusesItem
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEUNSPECIFIED = CalendarOptions_ResponseStatusesItem "ATTENDEE_RESPONSE_UNSPECIFIED"

-- | The participant has been invited but has not responded yet.
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSENEEDSACTION :: CalendarOptions_ResponseStatusesItem
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSENEEDSACTION = CalendarOptions_ResponseStatusesItem "ATTENDEE_RESPONSE_NEEDS_ACTION"

-- | The participant plans to attend.
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEACCEPTED :: CalendarOptions_ResponseStatusesItem
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEACCEPTED = CalendarOptions_ResponseStatusesItem "ATTENDEE_RESPONSE_ACCEPTED"

-- | The participant does not plan to attend.
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEDECLINED :: CalendarOptions_ResponseStatusesItem
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEDECLINED = CalendarOptions_ResponseStatusesItem "ATTENDEE_RESPONSE_DECLINED"

-- | The participant expects to possibly attend.
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSETENTATIVE :: CalendarOptions_ResponseStatusesItem
pattern CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSETENTATIVE = CalendarOptions_ResponseStatusesItem "ATTENDEE_RESPONSE_TENTATIVE"

{-# COMPLETE
  CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEUNSPECIFIED,
  CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSENEEDSACTION,
  CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEACCEPTED,
  CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSEDECLINED,
  CalendarOptions_ResponseStatusesItem_ATTENDEERESPONSETENTATIVE,
  CalendarOptions_ResponseStatusesItem #-}

-- | Sets the granularity of the count results.
newtype CountArtifactsRequest_View = CountArtifactsRequest_View { fromCountArtifactsRequest_View :: Core.Text }
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

-- | Default. Same as **TOTAL_COUNT**.
pattern CountArtifactsRequest_View_COUNTRESULTVIEWUNSPECIFIED :: CountArtifactsRequest_View
pattern CountArtifactsRequest_View_COUNTRESULTVIEWUNSPECIFIED = CountArtifactsRequest_View "COUNT_RESULT_VIEW_UNSPECIFIED"

-- | Response includes counts of the total accounts, queried accounts, matching accounts, non-queryable accounts, and queried account errors.
pattern CountArtifactsRequest_View_TOTALCOUNT :: CountArtifactsRequest_View
pattern CountArtifactsRequest_View_TOTALCOUNT = CountArtifactsRequest_View "TOTAL_COUNT"

-- | Response includes the same details as **TOTAL_COUNT**, plus additional account breakdown.
pattern CountArtifactsRequest_View_All :: CountArtifactsRequest_View
pattern CountArtifactsRequest_View_All = CountArtifactsRequest_View "ALL"

{-# COMPLETE
  CountArtifactsRequest_View_COUNTRESULTVIEWUNSPECIFIED,
  CountArtifactsRequest_View_TOTALCOUNT,
  CountArtifactsRequest_View_All,
  CountArtifactsRequest_View #-}

-- | Set whether the results include only content encrypted with <https://support.google.com/a?p=cse_ov Google Workspace Client-side encryption> content, only unencrypted content, or both. Defaults to both. Currently supported for Drive.
newtype DriveOptions_ClientSideEncryptedOption = DriveOptions_ClientSideEncryptedOption { fromDriveOptions_ClientSideEncryptedOption :: Core.Text }
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

-- | Encryption status unspecified. Results include both client-side encrypted and non-encrypted content.
pattern DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNSPECIFIED :: DriveOptions_ClientSideEncryptedOption
pattern DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNSPECIFIED = DriveOptions_ClientSideEncryptedOption "CLIENT_SIDE_ENCRYPTED_OPTION_UNSPECIFIED"

-- | Include both client-side encrypted and unencrypted content in results.
pattern DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONANY :: DriveOptions_ClientSideEncryptedOption
pattern DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONANY = DriveOptions_ClientSideEncryptedOption "CLIENT_SIDE_ENCRYPTED_OPTION_ANY"

-- | Include client-side encrypted content only.
pattern DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONENCRYPTED :: DriveOptions_ClientSideEncryptedOption
pattern DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONENCRYPTED = DriveOptions_ClientSideEncryptedOption "CLIENT_SIDE_ENCRYPTED_OPTION_ENCRYPTED"

-- | Include unencrypted content only.
pattern DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNENCRYPTED :: DriveOptions_ClientSideEncryptedOption
pattern DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNENCRYPTED = DriveOptions_ClientSideEncryptedOption "CLIENT_SIDE_ENCRYPTED_OPTION_UNENCRYPTED"

{-# COMPLETE
  DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNSPECIFIED,
  DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONANY,
  DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONENCRYPTED,
  DriveOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNENCRYPTED,
  DriveOptions_ClientSideEncryptedOption #-}

-- | Output only. The status of the export.
newtype Export_Status = Export_Status { fromExport_Status :: Core.Text }
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

-- | The status is unspecified.
pattern Export_Status_EXPORTSTATUSUNSPECIFIED :: Export_Status
pattern Export_Status_EXPORTSTATUSUNSPECIFIED = Export_Status "EXPORT_STATUS_UNSPECIFIED"

-- | The export completed.
pattern Export_Status_Completed :: Export_Status
pattern Export_Status_Completed = Export_Status "COMPLETED"

-- | The export failed.
pattern Export_Status_Failed :: Export_Status
pattern Export_Status_Failed = Export_Status "FAILED"

-- | The export is in progress.
pattern Export_Status_INPROGRESS :: Export_Status
pattern Export_Status_INPROGRESS = Export_Status "IN_PROGRESS"

{-# COMPLETE
  Export_Status_EXPORTSTATUSUNSPECIFIED,
  Export_Status_Completed,
  Export_Status_Failed,
  Export_Status_INPROGRESS,
  Export_Status #-}

-- | The requested data region for the export.
newtype ExportOptions_Region = ExportOptions_Region { fromExportOptions_Region :: Core.Text }
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

-- | The region is unspecified. Defaults to ANY.
pattern ExportOptions_Region_EXPORTREGIONUNSPECIFIED :: ExportOptions_Region
pattern ExportOptions_Region_EXPORTREGIONUNSPECIFIED = ExportOptions_Region "EXPORT_REGION_UNSPECIFIED"

-- | Any region.
pattern ExportOptions_Region_Any :: ExportOptions_Region
pattern ExportOptions_Region_Any = ExportOptions_Region "ANY"

-- | United States region.
pattern ExportOptions_Region_US :: ExportOptions_Region
pattern ExportOptions_Region_US = ExportOptions_Region "US"

-- | Europe region.
pattern ExportOptions_Region_Europe :: ExportOptions_Region
pattern ExportOptions_Region_Europe = ExportOptions_Region "EUROPE"

{-# COMPLETE
  ExportOptions_Region_EXPORTREGIONUNSPECIFIED,
  ExportOptions_Region_Any,
  ExportOptions_Region_US,
  ExportOptions_Region_Europe,
  ExportOptions_Region #-}

-- | The file format for exported messages.
newtype GroupsExportOptions_ExportFormat = GroupsExportOptions_ExportFormat { fromGroupsExportOptions_ExportFormat :: Core.Text }
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

-- | No export format specified.
pattern GroupsExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED :: GroupsExportOptions_ExportFormat
pattern GroupsExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED = GroupsExportOptions_ExportFormat "EXPORT_FORMAT_UNSPECIFIED"

-- | Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.
pattern GroupsExportOptions_ExportFormat_Mbox :: GroupsExportOptions_ExportFormat
pattern GroupsExportOptions_ExportFormat_Mbox = GroupsExportOptions_ExportFormat "MBOX"

-- | Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.
pattern GroupsExportOptions_ExportFormat_Pst :: GroupsExportOptions_ExportFormat
pattern GroupsExportOptions_ExportFormat_Pst = GroupsExportOptions_ExportFormat "PST"

-- | Export as ICS. Only available for Calendar.
pattern GroupsExportOptions_ExportFormat_Ics :: GroupsExportOptions_ExportFormat
pattern GroupsExportOptions_ExportFormat_Ics = GroupsExportOptions_ExportFormat "ICS"

{-# COMPLETE
  GroupsExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
  GroupsExportOptions_ExportFormat_Mbox,
  GroupsExportOptions_ExportFormat_Pst,
  GroupsExportOptions_ExportFormat_Ics,
  GroupsExportOptions_ExportFormat #-}

-- | The file format for exported messages.
newtype HangoutsChatExportOptions_ExportFormat = HangoutsChatExportOptions_ExportFormat { fromHangoutsChatExportOptions_ExportFormat :: Core.Text }
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

-- | No export format specified.
pattern HangoutsChatExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED :: HangoutsChatExportOptions_ExportFormat
pattern HangoutsChatExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED = HangoutsChatExportOptions_ExportFormat "EXPORT_FORMAT_UNSPECIFIED"

-- | Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.
pattern HangoutsChatExportOptions_ExportFormat_Mbox :: HangoutsChatExportOptions_ExportFormat
pattern HangoutsChatExportOptions_ExportFormat_Mbox = HangoutsChatExportOptions_ExportFormat "MBOX"

-- | Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.
pattern HangoutsChatExportOptions_ExportFormat_Pst :: HangoutsChatExportOptions_ExportFormat
pattern HangoutsChatExportOptions_ExportFormat_Pst = HangoutsChatExportOptions_ExportFormat "PST"

-- | Export as ICS. Only available for Calendar.
pattern HangoutsChatExportOptions_ExportFormat_Ics :: HangoutsChatExportOptions_ExportFormat
pattern HangoutsChatExportOptions_ExportFormat_Ics = HangoutsChatExportOptions_ExportFormat "ICS"

{-# COMPLETE
  HangoutsChatExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
  HangoutsChatExportOptions_ExportFormat_Mbox,
  HangoutsChatExportOptions_ExportFormat_Pst,
  HangoutsChatExportOptions_ExportFormat_Ics,
  HangoutsChatExportOptions_ExportFormat #-}

newtype HeldVoiceQuery_CoveredDataItem = HeldVoiceQuery_CoveredDataItem { fromHeldVoiceQuery_CoveredDataItem :: Core.Text }
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

-- | Covered data unspecified.
pattern HeldVoiceQuery_CoveredDataItem_COVEREDDATAUNSPECIFIED :: HeldVoiceQuery_CoveredDataItem
pattern HeldVoiceQuery_CoveredDataItem_COVEREDDATAUNSPECIFIED = HeldVoiceQuery_CoveredDataItem "COVERED_DATA_UNSPECIFIED"

-- | Voice text messages.
pattern HeldVoiceQuery_CoveredDataItem_TEXTMESSAGES :: HeldVoiceQuery_CoveredDataItem
pattern HeldVoiceQuery_CoveredDataItem_TEXTMESSAGES = HeldVoiceQuery_CoveredDataItem "TEXT_MESSAGES"

-- | Voicemails and their transcripts.
pattern HeldVoiceQuery_CoveredDataItem_Voicemails :: HeldVoiceQuery_CoveredDataItem
pattern HeldVoiceQuery_CoveredDataItem_Voicemails = HeldVoiceQuery_CoveredDataItem "VOICEMAILS"

-- | Call logs.
pattern HeldVoiceQuery_CoveredDataItem_CALLLOGS :: HeldVoiceQuery_CoveredDataItem
pattern HeldVoiceQuery_CoveredDataItem_CALLLOGS = HeldVoiceQuery_CoveredDataItem "CALL_LOGS"

{-# COMPLETE
  HeldVoiceQuery_CoveredDataItem_COVEREDDATAUNSPECIFIED,
  HeldVoiceQuery_CoveredDataItem_TEXTMESSAGES,
  HeldVoiceQuery_CoveredDataItem_Voicemails,
  HeldVoiceQuery_CoveredDataItem_CALLLOGS,
  HeldVoiceQuery_CoveredDataItem #-}

-- | The service to be searched.
newtype Hold_Corpus = Hold_Corpus { fromHold_Corpus :: Core.Text }
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

-- | No service specified.
pattern Hold_Corpus_CORPUSTYPEUNSPECIFIED :: Hold_Corpus
pattern Hold_Corpus_CORPUSTYPEUNSPECIFIED = Hold_Corpus "CORPUS_TYPE_UNSPECIFIED"

-- | Drive, including Meet and Sites.
pattern Hold_Corpus_Drive :: Hold_Corpus
pattern Hold_Corpus_Drive = Hold_Corpus "DRIVE"

-- | For search, Gmail and classic Hangouts. For holds, Gmail only.
pattern Hold_Corpus_Mail :: Hold_Corpus
pattern Hold_Corpus_Mail = Hold_Corpus "MAIL"

-- | Groups.
pattern Hold_Corpus_Groups :: Hold_Corpus
pattern Hold_Corpus_Groups = Hold_Corpus "GROUPS"

-- | For export, Google Chat only. For holds, Google Chat and classic Hangouts.
pattern Hold_Corpus_HANGOUTSCHAT :: Hold_Corpus
pattern Hold_Corpus_HANGOUTSCHAT = Hold_Corpus "HANGOUTS_CHAT"

-- | Google Voice.
pattern Hold_Corpus_Voice :: Hold_Corpus
pattern Hold_Corpus_Voice = Hold_Corpus "VOICE"

-- | Calendar.
pattern Hold_Corpus_Calendar :: Hold_Corpus
pattern Hold_Corpus_Calendar = Hold_Corpus "CALENDAR"

{-# COMPLETE
  Hold_Corpus_CORPUSTYPEUNSPECIFIED,
  Hold_Corpus_Drive,
  Hold_Corpus_Mail,
  Hold_Corpus_Groups,
  Hold_Corpus_HANGOUTSCHAT,
  Hold_Corpus_Voice,
  Hold_Corpus_Calendar,
  Hold_Corpus #-}

-- | The file format for exported messages.
newtype MailExportOptions_ExportFormat = MailExportOptions_ExportFormat { fromMailExportOptions_ExportFormat :: Core.Text }
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

-- | No export format specified.
pattern MailExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED :: MailExportOptions_ExportFormat
pattern MailExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED = MailExportOptions_ExportFormat "EXPORT_FORMAT_UNSPECIFIED"

-- | Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.
pattern MailExportOptions_ExportFormat_Mbox :: MailExportOptions_ExportFormat
pattern MailExportOptions_ExportFormat_Mbox = MailExportOptions_ExportFormat "MBOX"

-- | Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.
pattern MailExportOptions_ExportFormat_Pst :: MailExportOptions_ExportFormat
pattern MailExportOptions_ExportFormat_Pst = MailExportOptions_ExportFormat "PST"

-- | Export as ICS. Only available for Calendar.
pattern MailExportOptions_ExportFormat_Ics :: MailExportOptions_ExportFormat
pattern MailExportOptions_ExportFormat_Ics = MailExportOptions_ExportFormat "ICS"

{-# COMPLETE
  MailExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
  MailExportOptions_ExportFormat_Mbox,
  MailExportOptions_ExportFormat_Pst,
  MailExportOptions_ExportFormat_Ics,
  MailExportOptions_ExportFormat #-}

-- | Specifies whether the results should include encrypted content, unencrypted content, or both. Defaults to including both.
newtype MailOptions_ClientSideEncryptedOption = MailOptions_ClientSideEncryptedOption { fromMailOptions_ClientSideEncryptedOption :: Core.Text }
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

-- | Encryption status unspecified. Results include both client-side encrypted and non-encrypted content.
pattern MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNSPECIFIED :: MailOptions_ClientSideEncryptedOption
pattern MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNSPECIFIED = MailOptions_ClientSideEncryptedOption "CLIENT_SIDE_ENCRYPTED_OPTION_UNSPECIFIED"

-- | Include both client-side encrypted and unencrypted content in results.
pattern MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONANY :: MailOptions_ClientSideEncryptedOption
pattern MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONANY = MailOptions_ClientSideEncryptedOption "CLIENT_SIDE_ENCRYPTED_OPTION_ANY"

-- | Include client-side encrypted content only.
pattern MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONENCRYPTED :: MailOptions_ClientSideEncryptedOption
pattern MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONENCRYPTED = MailOptions_ClientSideEncryptedOption "CLIENT_SIDE_ENCRYPTED_OPTION_ENCRYPTED"

-- | Include unencrypted content only.
pattern MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNENCRYPTED :: MailOptions_ClientSideEncryptedOption
pattern MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNENCRYPTED = MailOptions_ClientSideEncryptedOption "CLIENT_SIDE_ENCRYPTED_OPTION_UNENCRYPTED"

{-# COMPLETE
  MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNSPECIFIED,
  MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONANY,
  MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONENCRYPTED,
  MailOptions_ClientSideEncryptedOption_CLIENTSIDEENCRYPTEDOPTIONUNENCRYPTED,
  MailOptions_ClientSideEncryptedOption #-}

-- | Optional. The requested data region for the matter.
newtype Matter_MatterRegion = Matter_MatterRegion { fromMatter_MatterRegion :: Core.Text }
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

-- | The region is unspecified. Defaults to ANY.
pattern Matter_MatterRegion_MATTERREGIONUNSPECIFIED :: Matter_MatterRegion
pattern Matter_MatterRegion_MATTERREGIONUNSPECIFIED = Matter_MatterRegion "MATTER_REGION_UNSPECIFIED"

-- | Any region.
pattern Matter_MatterRegion_Any :: Matter_MatterRegion
pattern Matter_MatterRegion_Any = Matter_MatterRegion "ANY"

-- | United States region.
pattern Matter_MatterRegion_US :: Matter_MatterRegion
pattern Matter_MatterRegion_US = Matter_MatterRegion "US"

-- | Europe region.
pattern Matter_MatterRegion_Europe :: Matter_MatterRegion
pattern Matter_MatterRegion_Europe = Matter_MatterRegion "EUROPE"

{-# COMPLETE
  Matter_MatterRegion_MATTERREGIONUNSPECIFIED,
  Matter_MatterRegion_Any,
  Matter_MatterRegion_US,
  Matter_MatterRegion_Europe,
  Matter_MatterRegion #-}

-- | The state of the matter.
newtype Matter_State = Matter_State { fromMatter_State :: Core.Text }
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

-- | The matter has no specified state.
pattern Matter_State_STATEUNSPECIFIED :: Matter_State
pattern Matter_State_STATEUNSPECIFIED = Matter_State "STATE_UNSPECIFIED"

-- | The matter is open.
pattern Matter_State_Open :: Matter_State
pattern Matter_State_Open = Matter_State "OPEN"

-- | The matter is closed.
pattern Matter_State_Closed :: Matter_State
pattern Matter_State_Closed = Matter_State "CLOSED"

-- | The matter is deleted.
pattern Matter_State_Deleted :: Matter_State
pattern Matter_State_Deleted = Matter_State "DELETED"

{-# COMPLETE
  Matter_State_STATEUNSPECIFIED,
  Matter_State_Open,
  Matter_State_Closed,
  Matter_State_Deleted,
  Matter_State #-}

-- | The user\'s role for the matter.
newtype MatterPermission_Role = MatterPermission_Role { fromMatterPermission_Role :: Core.Text }
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

-- | No role assigned.
pattern MatterPermission_Role_ROLEUNSPECIFIED :: MatterPermission_Role
pattern MatterPermission_Role_ROLEUNSPECIFIED = MatterPermission_Role "ROLE_UNSPECIFIED"

-- | A collaborator on the matter.
pattern MatterPermission_Role_Collaborator :: MatterPermission_Role
pattern MatterPermission_Role_Collaborator = MatterPermission_Role "COLLABORATOR"

-- | The owner of the matter.
pattern MatterPermission_Role_Owner :: MatterPermission_Role
pattern MatterPermission_Role_Owner = MatterPermission_Role "OWNER"

{-# COMPLETE
  MatterPermission_Role_ROLEUNSPECIFIED,
  MatterPermission_Role_Collaborator,
  MatterPermission_Role_Owner,
  MatterPermission_Role #-}

-- | The Google Workspace service to search.
newtype Query_Corpus = Query_Corpus { fromQuery_Corpus :: Core.Text }
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

-- | No service specified.
pattern Query_Corpus_CORPUSTYPEUNSPECIFIED :: Query_Corpus
pattern Query_Corpus_CORPUSTYPEUNSPECIFIED = Query_Corpus "CORPUS_TYPE_UNSPECIFIED"

-- | Drive, including Meet and Sites.
pattern Query_Corpus_Drive :: Query_Corpus
pattern Query_Corpus_Drive = Query_Corpus "DRIVE"

-- | For search, Gmail and classic Hangouts. For holds, Gmail only.
pattern Query_Corpus_Mail :: Query_Corpus
pattern Query_Corpus_Mail = Query_Corpus "MAIL"

-- | Groups.
pattern Query_Corpus_Groups :: Query_Corpus
pattern Query_Corpus_Groups = Query_Corpus "GROUPS"

-- | For export, Google Chat only. For holds, Google Chat and classic Hangouts.
pattern Query_Corpus_HANGOUTSCHAT :: Query_Corpus
pattern Query_Corpus_HANGOUTSCHAT = Query_Corpus "HANGOUTS_CHAT"

-- | Google Voice.
pattern Query_Corpus_Voice :: Query_Corpus
pattern Query_Corpus_Voice = Query_Corpus "VOICE"

-- | Calendar.
pattern Query_Corpus_Calendar :: Query_Corpus
pattern Query_Corpus_Calendar = Query_Corpus "CALENDAR"

{-# COMPLETE
  Query_Corpus_CORPUSTYPEUNSPECIFIED,
  Query_Corpus_Drive,
  Query_Corpus_Mail,
  Query_Corpus_Groups,
  Query_Corpus_HANGOUTSCHAT,
  Query_Corpus_Voice,
  Query_Corpus_Calendar,
  Query_Corpus #-}

-- | The data source to search.
newtype Query_DataScope = Query_DataScope { fromQuery_DataScope :: Core.Text }
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

-- | No data source specified.
pattern Query_DataScope_DATASCOPEUNSPECIFIED :: Query_DataScope
pattern Query_DataScope_DATASCOPEUNSPECIFIED = Query_DataScope "DATA_SCOPE_UNSPECIFIED"

-- | All available data.
pattern Query_DataScope_ALLDATA :: Query_DataScope
pattern Query_DataScope_ALLDATA = Query_DataScope "ALL_DATA"

-- | Only data on hold.
pattern Query_DataScope_HELDDATA :: Query_DataScope
pattern Query_DataScope_HELDDATA = Query_DataScope "HELD_DATA"

-- | Only data not yet processed by Vault. (Gmail and Groups only)
pattern Query_DataScope_UNPROCESSEDDATA :: Query_DataScope
pattern Query_DataScope_UNPROCESSEDDATA = Query_DataScope "UNPROCESSED_DATA"

{-# COMPLETE
  Query_DataScope_DATASCOPEUNSPECIFIED,
  Query_DataScope_ALLDATA,
  Query_DataScope_HELDDATA,
  Query_DataScope_UNPROCESSEDDATA,
  Query_DataScope #-}

-- | The entity to search. This field replaces __searchMethod__ to support shared drives. When __searchMethod__ is __TEAM/DRIVE__, the response of this field is __SHARED/DRIVE__.
newtype Query_Method = Query_Method { fromQuery_Method :: Core.Text }
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

-- | A search method must be specified or else it is rejected.
pattern Query_Method_SEARCHMETHODUNSPECIFIED :: Query_Method
pattern Query_Method_SEARCHMETHODUNSPECIFIED = Query_Method "SEARCH_METHOD_UNSPECIFIED"

-- | Search the data of the accounts specified in <https://developers.google.com/vault/reference/rest/v1/Query#accountinfo AccountInfo>.
pattern Query_Method_Account :: Query_Method
pattern Query_Method_Account = Query_Method "ACCOUNT"

-- | Search the data of all accounts in the organizational unit specified in <https://developers.google.com/vault/reference/rest/v1/Query#orgunitinfo OrgUnitInfo>.
pattern Query_Method_ORGUNIT :: Query_Method
pattern Query_Method_ORGUNIT = Query_Method "ORG_UNIT"

-- | Search the data in the Team Drive specified in __team/drive/info__.
pattern Query_Method_TEAMDRIVE :: Query_Method
pattern Query_Method_TEAMDRIVE = Query_Method "TEAM_DRIVE"

-- | Search the data of all accounts in the organization. Supported only for Gmail. When specified, you don\'t need to specify __AccountInfo__ or __OrgUnitInfo__.
pattern Query_Method_ENTIREORG :: Query_Method
pattern Query_Method_ENTIREORG = Query_Method "ENTIRE_ORG"

-- | Search messages in the Chat spaces specified in <https://developers.google.com/vault/reference/rest/v1/Query#hangoutschatinfo HangoutsChatInfo>.
pattern Query_Method_Room :: Query_Method
pattern Query_Method_Room = Query_Method "ROOM"

-- | Search for sites by the published site URLs specified in <https://developers.google.com/vault/reference/rest/v1/Query#sitesurlinfo SitesUrlInfo>.
pattern Query_Method_SITESURL :: Query_Method
pattern Query_Method_SITESURL = Query_Method "SITES_URL"

-- | Search the files in the shared drives specified in <https://developers.google.com/vault/reference/rest/v1/Query#shareddriveinfo SharedDriveInfo>.
pattern Query_Method_SHAREDDRIVE :: Query_Method
pattern Query_Method_SHAREDDRIVE = Query_Method "SHARED_DRIVE"

{-# COMPLETE
  Query_Method_SEARCHMETHODUNSPECIFIED,
  Query_Method_Account,
  Query_Method_ORGUNIT,
  Query_Method_TEAMDRIVE,
  Query_Method_ENTIREORG,
  Query_Method_Room,
  Query_Method_SITESURL,
  Query_Method_SHAREDDRIVE,
  Query_Method #-}

-- | The search method to use.
newtype Query_SearchMethod = Query_SearchMethod { fromQuery_SearchMethod :: Core.Text }
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

-- | A search method must be specified or else it is rejected.
pattern Query_SearchMethod_SEARCHMETHODUNSPECIFIED :: Query_SearchMethod
pattern Query_SearchMethod_SEARCHMETHODUNSPECIFIED = Query_SearchMethod "SEARCH_METHOD_UNSPECIFIED"

-- | Search the data of the accounts specified in <https://developers.google.com/vault/reference/rest/v1/Query#accountinfo AccountInfo>.
pattern Query_SearchMethod_Account :: Query_SearchMethod
pattern Query_SearchMethod_Account = Query_SearchMethod "ACCOUNT"

-- | Search the data of all accounts in the organizational unit specified in <https://developers.google.com/vault/reference/rest/v1/Query#orgunitinfo OrgUnitInfo>.
pattern Query_SearchMethod_ORGUNIT :: Query_SearchMethod
pattern Query_SearchMethod_ORGUNIT = Query_SearchMethod "ORG_UNIT"

-- | Search the data in the Team Drive specified in __team/drive/info__.
pattern Query_SearchMethod_TEAMDRIVE :: Query_SearchMethod
pattern Query_SearchMethod_TEAMDRIVE = Query_SearchMethod "TEAM_DRIVE"

-- | Search the data of all accounts in the organization. Supported only for Gmail. When specified, you don\'t need to specify __AccountInfo__ or __OrgUnitInfo__.
pattern Query_SearchMethod_ENTIREORG :: Query_SearchMethod
pattern Query_SearchMethod_ENTIREORG = Query_SearchMethod "ENTIRE_ORG"

-- | Search messages in the Chat spaces specified in <https://developers.google.com/vault/reference/rest/v1/Query#hangoutschatinfo HangoutsChatInfo>.
pattern Query_SearchMethod_Room :: Query_SearchMethod
pattern Query_SearchMethod_Room = Query_SearchMethod "ROOM"

-- | Search for sites by the published site URLs specified in <https://developers.google.com/vault/reference/rest/v1/Query#sitesurlinfo SitesUrlInfo>.
pattern Query_SearchMethod_SITESURL :: Query_SearchMethod
pattern Query_SearchMethod_SITESURL = Query_SearchMethod "SITES_URL"

-- | Search the files in the shared drives specified in <https://developers.google.com/vault/reference/rest/v1/Query#shareddriveinfo SharedDriveInfo>.
pattern Query_SearchMethod_SHAREDDRIVE :: Query_SearchMethod
pattern Query_SearchMethod_SHAREDDRIVE = Query_SearchMethod "SHARED_DRIVE"

{-# COMPLETE
  Query_SearchMethod_SEARCHMETHODUNSPECIFIED,
  Query_SearchMethod_Account,
  Query_SearchMethod_ORGUNIT,
  Query_SearchMethod_TEAMDRIVE,
  Query_SearchMethod_ENTIREORG,
  Query_SearchMethod_Room,
  Query_SearchMethod_SITESURL,
  Query_SearchMethod_SHAREDDRIVE,
  Query_SearchMethod #-}

-- | The file format for exported text messages.
newtype VoiceExportOptions_ExportFormat = VoiceExportOptions_ExportFormat { fromVoiceExportOptions_ExportFormat :: Core.Text }
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

-- | No export format specified.
pattern VoiceExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED :: VoiceExportOptions_ExportFormat
pattern VoiceExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED = VoiceExportOptions_ExportFormat "EXPORT_FORMAT_UNSPECIFIED"

-- | Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.
pattern VoiceExportOptions_ExportFormat_Mbox :: VoiceExportOptions_ExportFormat
pattern VoiceExportOptions_ExportFormat_Mbox = VoiceExportOptions_ExportFormat "MBOX"

-- | Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.
pattern VoiceExportOptions_ExportFormat_Pst :: VoiceExportOptions_ExportFormat
pattern VoiceExportOptions_ExportFormat_Pst = VoiceExportOptions_ExportFormat "PST"

-- | Export as ICS. Only available for Calendar.
pattern VoiceExportOptions_ExportFormat_Ics :: VoiceExportOptions_ExportFormat
pattern VoiceExportOptions_ExportFormat_Ics = VoiceExportOptions_ExportFormat "ICS"

{-# COMPLETE
  VoiceExportOptions_ExportFormat_EXPORTFORMATUNSPECIFIED,
  VoiceExportOptions_ExportFormat_Mbox,
  VoiceExportOptions_ExportFormat_Pst,
  VoiceExportOptions_ExportFormat_Ics,
  VoiceExportOptions_ExportFormat #-}

newtype VoiceOptions_CoveredDataItem = VoiceOptions_CoveredDataItem { fromVoiceOptions_CoveredDataItem :: Core.Text }
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

-- | Covered data unspecified.
pattern VoiceOptions_CoveredDataItem_COVEREDDATAUNSPECIFIED :: VoiceOptions_CoveredDataItem
pattern VoiceOptions_CoveredDataItem_COVEREDDATAUNSPECIFIED = VoiceOptions_CoveredDataItem "COVERED_DATA_UNSPECIFIED"

-- | Voice text messages.
pattern VoiceOptions_CoveredDataItem_TEXTMESSAGES :: VoiceOptions_CoveredDataItem
pattern VoiceOptions_CoveredDataItem_TEXTMESSAGES = VoiceOptions_CoveredDataItem "TEXT_MESSAGES"

-- | Voicemails and their transcripts.
pattern VoiceOptions_CoveredDataItem_Voicemails :: VoiceOptions_CoveredDataItem
pattern VoiceOptions_CoveredDataItem_Voicemails = VoiceOptions_CoveredDataItem "VOICEMAILS"

-- | Call logs.
pattern VoiceOptions_CoveredDataItem_CALLLOGS :: VoiceOptions_CoveredDataItem
pattern VoiceOptions_CoveredDataItem_CALLLOGS = VoiceOptions_CoveredDataItem "CALL_LOGS"

{-# COMPLETE
  VoiceOptions_CoveredDataItem_COVEREDDATAUNSPECIFIED,
  VoiceOptions_CoveredDataItem_TEXTMESSAGES,
  VoiceOptions_CoveredDataItem_Voicemails,
  VoiceOptions_CoveredDataItem_CALLLOGS,
  VoiceOptions_CoveredDataItem #-}

-- | Specifies how much information about the matter to return in the response.
newtype MattersGetView = MattersGetView { fromMattersGetView :: Core.Text }
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

-- | The amount of detail is unspecified. Same as __BASIC__.
pattern MattersGetView_VIEWUNSPECIFIED :: MattersGetView
pattern MattersGetView_VIEWUNSPECIFIED = MattersGetView "VIEW_UNSPECIFIED"

-- | Returns the matter ID, name, description, and state. Default choice.
pattern MattersGetView_Basic :: MattersGetView
pattern MattersGetView_Basic = MattersGetView "BASIC"

-- | Returns the basic details and a list of matter owners and collaborators (see <https://developers.google.com/vault/reference/rest/v1/matters#matterpermission MatterPermissions>).
pattern MattersGetView_Full :: MattersGetView
pattern MattersGetView_Full = MattersGetView "FULL"

{-# COMPLETE
  MattersGetView_VIEWUNSPECIFIED,
  MattersGetView_Basic,
  MattersGetView_Full,
  MattersGetView #-}

-- | The amount of detail to return for a hold.
newtype MattersHoldsGetView = MattersHoldsGetView { fromMattersHoldsGetView :: Core.Text }
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

-- | Not specified. Defaults to **FULL_HOLD**.
pattern MattersHoldsGetView_HOLDVIEWUNSPECIFIED :: MattersHoldsGetView
pattern MattersHoldsGetView_HOLDVIEWUNSPECIFIED = MattersHoldsGetView "HOLD_VIEW_UNSPECIFIED"

-- | Returns the hold ID, name, update time, service, and query.
pattern MattersHoldsGetView_BASICHOLD :: MattersHoldsGetView
pattern MattersHoldsGetView_BASICHOLD = MattersHoldsGetView "BASIC_HOLD"

-- | Returns all details of **BASIC_HOLD** and the entities the hold applies to, such as accounts or organizational unit.
pattern MattersHoldsGetView_FULLHOLD :: MattersHoldsGetView
pattern MattersHoldsGetView_FULLHOLD = MattersHoldsGetView "FULL_HOLD"

{-# COMPLETE
  MattersHoldsGetView_HOLDVIEWUNSPECIFIED,
  MattersHoldsGetView_BASICHOLD,
  MattersHoldsGetView_FULLHOLD,
  MattersHoldsGetView #-}

-- | The amount of detail to return for a hold.
newtype MattersHoldsListView = MattersHoldsListView { fromMattersHoldsListView :: Core.Text }
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

-- | Not specified. Defaults to **FULL_HOLD**.
pattern MattersHoldsListView_HOLDVIEWUNSPECIFIED :: MattersHoldsListView
pattern MattersHoldsListView_HOLDVIEWUNSPECIFIED = MattersHoldsListView "HOLD_VIEW_UNSPECIFIED"

-- | Returns the hold ID, name, update time, service, and query.
pattern MattersHoldsListView_BASICHOLD :: MattersHoldsListView
pattern MattersHoldsListView_BASICHOLD = MattersHoldsListView "BASIC_HOLD"

-- | Returns all details of **BASIC_HOLD** and the entities the hold applies to, such as accounts or organizational unit.
pattern MattersHoldsListView_FULLHOLD :: MattersHoldsListView
pattern MattersHoldsListView_FULLHOLD = MattersHoldsListView "FULL_HOLD"

{-# COMPLETE
  MattersHoldsListView_HOLDVIEWUNSPECIFIED,
  MattersHoldsListView_BASICHOLD,
  MattersHoldsListView_FULLHOLD,
  MattersHoldsListView #-}

-- | If set, lists only matters with the specified state. The default lists matters of all states.
newtype MattersListState = MattersListState { fromMattersListState :: Core.Text }
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

-- | The matter has no specified state.
pattern MattersListState_STATEUNSPECIFIED :: MattersListState
pattern MattersListState_STATEUNSPECIFIED = MattersListState "STATE_UNSPECIFIED"

-- | The matter is open.
pattern MattersListState_Open :: MattersListState
pattern MattersListState_Open = MattersListState "OPEN"

-- | The matter is closed.
pattern MattersListState_Closed :: MattersListState
pattern MattersListState_Closed = MattersListState "CLOSED"

-- | The matter is deleted.
pattern MattersListState_Deleted :: MattersListState
pattern MattersListState_Deleted = MattersListState "DELETED"

{-# COMPLETE
  MattersListState_STATEUNSPECIFIED,
  MattersListState_Open,
  MattersListState_Closed,
  MattersListState_Deleted,
  MattersListState #-}

-- | Specifies how much information about the matter to return in response.
newtype MattersListView = MattersListView { fromMattersListView :: Core.Text }
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

-- | The amount of detail is unspecified. Same as __BASIC__.
pattern MattersListView_VIEWUNSPECIFIED :: MattersListView
pattern MattersListView_VIEWUNSPECIFIED = MattersListView "VIEW_UNSPECIFIED"

-- | Returns the matter ID, name, description, and state. Default choice.
pattern MattersListView_Basic :: MattersListView
pattern MattersListView_Basic = MattersListView "BASIC"

-- | Returns the basic details and a list of matter owners and collaborators (see <https://developers.google.com/vault/reference/rest/v1/matters#matterpermission MatterPermissions>).
pattern MattersListView_Full :: MattersListView
pattern MattersListView_Full = MattersListView "FULL"

{-# COMPLETE
  MattersListView_VIEWUNSPECIFIED,
  MattersListView_Basic,
  MattersListView_Full,
  MattersListView #-}
