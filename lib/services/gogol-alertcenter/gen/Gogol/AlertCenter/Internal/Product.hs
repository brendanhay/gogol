{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AlertCenter.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AlertCenter.Internal.Product
  ( -- * AbuseDetected
    AbuseDetected (..),
    newAbuseDetected,

    -- * AccessApproval
    AccessApproval (..),
    newAccessApproval,

    -- * AccountSuspensionDetails
    AccountSuspensionDetails (..),
    newAccountSuspensionDetails,

    -- * AccountSuspensionWarning
    AccountSuspensionWarning (..),
    newAccountSuspensionWarning,

    -- * AccountWarning
    AccountWarning (..),
    newAccountWarning,

    -- * ActionInfo
    ActionInfo (..),
    newActionInfo,

    -- * ActivityRule
    ActivityRule (..),
    newActivityRule,

    -- * Alert
    Alert (..),
    newAlert,

    -- * Alert_Data
    Alert_Data (..),
    newAlert_Data,

    -- * AlertFeedback
    AlertFeedback (..),
    newAlertFeedback,

    -- * AlertMetadata
    AlertMetadata (..),
    newAlertMetadata,

    -- * ApnsCertificateExpirationInfo
    ApnsCertificateExpirationInfo (..),
    newApnsCertificateExpirationInfo,

    -- * AppMakerSqlSetupNotification
    AppMakerSqlSetupNotification (..),
    newAppMakerSqlSetupNotification,

    -- * AppSettingsChanged
    AppSettingsChanged (..),
    newAppSettingsChanged,

    -- * AppsOutage
    AppsOutage (..),
    newAppsOutage,

    -- * Attachment
    Attachment (..),
    newAttachment,

    -- * BadWhitelist
    BadWhitelist (..),
    newBadWhitelist,

    -- * BatchDeleteAlertsRequest
    BatchDeleteAlertsRequest (..),
    newBatchDeleteAlertsRequest,

    -- * BatchDeleteAlertsResponse
    BatchDeleteAlertsResponse (..),
    newBatchDeleteAlertsResponse,

    -- * BatchDeleteAlertsResponse_FailedAlertStatus
    BatchDeleteAlertsResponse_FailedAlertStatus (..),
    newBatchDeleteAlertsResponse_FailedAlertStatus,

    -- * BatchUndeleteAlertsRequest
    BatchUndeleteAlertsRequest (..),
    newBatchUndeleteAlertsRequest,

    -- * BatchUndeleteAlertsResponse
    BatchUndeleteAlertsResponse (..),
    newBatchUndeleteAlertsResponse,

    -- * BatchUndeleteAlertsResponse_FailedAlertStatus
    BatchUndeleteAlertsResponse_FailedAlertStatus (..),
    newBatchUndeleteAlertsResponse_FailedAlertStatus,

    -- * CloudPubsubTopic
    CloudPubsubTopic (..),
    newCloudPubsubTopic,

    -- * Csv
    Csv (..),
    newCsv,

    -- * CsvRow
    CsvRow (..),
    newCsvRow,

    -- * DeviceCompromised
    DeviceCompromised (..),
    newDeviceCompromised,

    -- * DeviceCompromisedSecurityDetail
    DeviceCompromisedSecurityDetail (..),
    newDeviceCompromisedSecurityDetail,

    -- * DeviceManagementRule
    DeviceManagementRule (..),
    newDeviceManagementRule,

    -- * DlpRuleViolation
    DlpRuleViolation (..),
    newDlpRuleViolation,

    -- * DomainId
    DomainId (..),
    newDomainId,

    -- * DomainWideTakeoutInitiated
    DomainWideTakeoutInitiated (..),
    newDomainWideTakeoutInitiated,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Entity
    Entity (..),
    newEntity,

    -- * EntityList
    EntityList (..),
    newEntityList,

    -- * GmailMessageInfo
    GmailMessageInfo (..),
    newGmailMessageInfo,

    -- * GoogleOperations
    GoogleOperations (..),
    newGoogleOperations,

    -- * ListAlertFeedbackResponse
    ListAlertFeedbackResponse (..),
    newListAlertFeedbackResponse,

    -- * ListAlertsResponse
    ListAlertsResponse (..),
    newListAlertsResponse,

    -- * LoginDetails
    LoginDetails (..),
    newLoginDetails,

    -- * MailPhishing
    MailPhishing (..),
    newMailPhishing,

    -- * MaliciousEntity
    MaliciousEntity (..),
    newMaliciousEntity,

    -- * MandatoryServiceAnnouncement
    MandatoryServiceAnnouncement (..),
    newMandatoryServiceAnnouncement,

    -- * MatchInfo
    MatchInfo (..),
    newMatchInfo,

    -- * MergeInfo
    MergeInfo (..),
    newMergeInfo,

    -- * Notification
    Notification (..),
    newNotification,

    -- * PhishingSpike
    PhishingSpike (..),
    newPhishingSpike,

    -- * PredefinedDetectorInfo
    PredefinedDetectorInfo (..),
    newPredefinedDetectorInfo,

    -- * PrimaryAdminChangedEvent
    PrimaryAdminChangedEvent (..),
    newPrimaryAdminChangedEvent,

    -- * ReportingRule
    ReportingRule (..),
    newReportingRule,

    -- * RequestInfo
    RequestInfo (..),
    newRequestInfo,

    -- * ResourceInfo
    ResourceInfo (..),
    newResourceInfo,

    -- * RuleInfo
    RuleInfo (..),
    newRuleInfo,

    -- * RuleViolationInfo
    RuleViolationInfo (..),
    newRuleViolationInfo,

    -- * SSOProfileCreatedEvent
    SSOProfileCreatedEvent (..),
    newSSOProfileCreatedEvent,

    -- * SSOProfileDeletedEvent
    SSOProfileDeletedEvent (..),
    newSSOProfileDeletedEvent,

    -- * SSOProfileUpdatedEvent
    SSOProfileUpdatedEvent (..),
    newSSOProfileUpdatedEvent,

    -- * SensitiveAdminAction
    SensitiveAdminAction (..),
    newSensitiveAdminAction,

    -- * Settings
    Settings (..),
    newSettings,

    -- * StateSponsoredAttack
    StateSponsoredAttack (..),
    newStateSponsoredAttack,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * SuperAdminPasswordResetEvent
    SuperAdminPasswordResetEvent (..),
    newSuperAdminPasswordResetEvent,

    -- * SupportTicket
    SupportTicket (..),
    newSupportTicket,

    -- * SuspiciousActivity
    SuspiciousActivity (..),
    newSuspiciousActivity,

    -- * SuspiciousActivitySecurityDetail
    SuspiciousActivitySecurityDetail (..),
    newSuspiciousActivitySecurityDetail,

    -- * TransferError
    TransferError (..),
    newTransferError,

    -- * TransferMisconfiguration
    TransferMisconfiguration (..),
    newTransferMisconfiguration,

    -- * UndeleteAlertRequest
    UndeleteAlertRequest (..),
    newUndeleteAlertRequest,

    -- * User
    User (..),
    newUser,

    -- * UserChanges
    UserChanges (..),
    newUserChanges,

    -- * UserDefinedDetectorInfo
    UserDefinedDetectorInfo (..),
    newUserDefinedDetectorInfo,

    -- * VoiceMisconfiguration
    VoiceMisconfiguration (..),
    newVoiceMisconfiguration,

    -- * VoicemailMisconfiguration
    VoicemailMisconfiguration (..),
    newVoicemailMisconfiguration,

    -- * VoicemailRecipientError
    VoicemailRecipientError (..),
    newVoicemailRecipientError,
  )
where

import Gogol.AlertCenter.Internal.Sum
import Gogol.Prelude qualified as Core

-- | A generic alert for abusive user activity occurring with a customer.
--
-- /See:/ 'newAbuseDetected' smart constructor.
data AbuseDetected = AbuseDetected
  { -- | List of abusive users\/entities to be displayed in a table in the alert.
    additionalDetails :: (Core.Maybe EntityList),
    -- | Product that the abuse is originating from.
    product :: (Core.Maybe Core.Text),
    -- | Unique identifier of each sub alert that is onboarded.
    subAlertId :: (Core.Maybe Core.Text),
    -- | Variation of AbuseDetected alerts. The variation/type determines the texts displayed the alert details. This differs from sub/alert/id because each sub alert can have multiple variation/types, representing different stages of the alert.
    variationType :: (Core.Maybe AbuseDetected_VariationType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AbuseDetected' with the minimum fields required to make a request.
newAbuseDetected ::
  AbuseDetected
newAbuseDetected =
  AbuseDetected
    { additionalDetails = Core.Nothing,
      product = Core.Nothing,
      subAlertId = Core.Nothing,
      variationType = Core.Nothing
    }

instance Core.FromJSON AbuseDetected where
  parseJSON =
    Core.withObject
      "AbuseDetected"
      ( \o ->
          AbuseDetected
            Core.<$> (o Core..:? "additionalDetails")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "subAlertId")
            Core.<*> (o Core..:? "variationType")
      )

instance Core.ToJSON AbuseDetected where
  toJSON AbuseDetected {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalDetails" Core..=) Core.<$> additionalDetails,
            ("product" Core..=) Core.<$> product,
            ("subAlertId" Core..=) Core.<$> subAlertId,
            ("variationType" Core..=) Core.<$> variationType
          ]
      )

-- | Alert that is triggered when Google support requests to access customer data.
--
-- /See:/ 'newAccessApproval' smart constructor.
data AccessApproval = AccessApproval
  { -- | Justification for data access based on justification enums.
    justificationReason :: (Core.Maybe [AccessApproval_JustificationReasonItem]),
    -- | Office location of Google staff requesting access such as \"US\".
    officeLocation :: (Core.Maybe Core.Text),
    -- | Products within scope of the Access Approvals request.
    products :: (Core.Maybe [Core.Text]),
    -- | ID of the Access Approvals request. This is a helpful field when requesting support from Google.
    requestId :: (Core.Maybe Core.Text),
    -- | Scope of access, also known as a resource. This is further narrowed down by the product field.
    scope :: (Core.Maybe Core.Text),
    -- | Support tickets related to this Access Approvals request. Populated if there is an associated case number.
    tickets :: (Core.Maybe [SupportTicket])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApproval' with the minimum fields required to make a request.
newAccessApproval ::
  AccessApproval
newAccessApproval =
  AccessApproval
    { justificationReason = Core.Nothing,
      officeLocation = Core.Nothing,
      products = Core.Nothing,
      requestId = Core.Nothing,
      scope = Core.Nothing,
      tickets = Core.Nothing
    }

instance Core.FromJSON AccessApproval where
  parseJSON =
    Core.withObject
      "AccessApproval"
      ( \o ->
          AccessApproval
            Core.<$> (o Core..:? "justificationReason")
            Core.<*> (o Core..:? "officeLocation")
            Core.<*> (o Core..:? "products")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "scope")
            Core.<*> (o Core..:? "tickets")
      )

instance Core.ToJSON AccessApproval where
  toJSON AccessApproval {..} =
    Core.object
      ( Core.catMaybes
          [ ("justificationReason" Core..=) Core.<$> justificationReason,
            ("officeLocation" Core..=) Core.<$> officeLocation,
            ("products" Core..=) Core.<$> products,
            ("requestId" Core..=) Core.<$> requestId,
            ("scope" Core..=) Core.<$> scope,
            ("tickets" Core..=) Core.<$> tickets
          ]
      )

-- | Details about why an account is receiving an account suspension warning.
--
-- /See:/ 'newAccountSuspensionDetails' smart constructor.
data AccountSuspensionDetails = AccountSuspensionDetails
  { -- | The reason why this account is receiving an account suspension warning.
    abuseReason :: (Core.Maybe AccountSuspensionDetails_AbuseReason),
    -- | The name of the product being abused. This is restricted to only the following values: \"Gmail\" \"Google Workspace\" \"Payments\" \"Voice\" \"YouTube\" \"Other\"
    productName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountSuspensionDetails' with the minimum fields required to make a request.
newAccountSuspensionDetails ::
  AccountSuspensionDetails
newAccountSuspensionDetails =
  AccountSuspensionDetails
    { abuseReason = Core.Nothing,
      productName = Core.Nothing
    }

instance Core.FromJSON AccountSuspensionDetails where
  parseJSON =
    Core.withObject
      "AccountSuspensionDetails"
      ( \o ->
          AccountSuspensionDetails
            Core.<$> (o Core..:? "abuseReason")
            Core.<*> (o Core..:? "productName")
      )

instance Core.ToJSON AccountSuspensionDetails where
  toJSON AccountSuspensionDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("abuseReason" Core..=) Core.<$> abuseReason,
            ("productName" Core..=) Core.<$> productName
          ]
      )

-- | A warning that the customer\'s account is about to be suspended.
--
-- /See:/ 'newAccountSuspensionWarning' smart constructor.
data AccountSuspensionWarning = AccountSuspensionWarning
  { -- | The amount of time remaining to appeal an imminent suspension. After this window has elapsed, the account will be suspended. Only populated if the account suspension is in WARNING state.
    appealWindow :: (Core.Maybe Core.Duration),
    -- | Account suspension warning state.
    state :: (Core.Maybe AccountSuspensionWarning_State),
    -- | Details about why an account is being suspended.
    suspensionDetails :: (Core.Maybe [AccountSuspensionDetails])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountSuspensionWarning' with the minimum fields required to make a request.
newAccountSuspensionWarning ::
  AccountSuspensionWarning
newAccountSuspensionWarning =
  AccountSuspensionWarning
    { appealWindow = Core.Nothing,
      state = Core.Nothing,
      suspensionDetails = Core.Nothing
    }

instance Core.FromJSON AccountSuspensionWarning where
  parseJSON =
    Core.withObject
      "AccountSuspensionWarning"
      ( \o ->
          AccountSuspensionWarning
            Core.<$> (o Core..:? "appealWindow")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "suspensionDetails")
      )

instance Core.ToJSON AccountSuspensionWarning where
  toJSON AccountSuspensionWarning {..} =
    Core.object
      ( Core.catMaybes
          [ ("appealWindow" Core..=) Core.<$> appealWindow,
            ("state" Core..=) Core.<$> state,
            ("suspensionDetails" Core..=) Core.<$> suspensionDetails
          ]
      )

-- | Alerts for user account warning events.
--
-- /See:/ 'newAccountWarning' smart constructor.
data AccountWarning = AccountWarning
  { -- | Required. The email of the user that this event belongs to.
    email :: (Core.Maybe Core.Text),
    -- | Optional. Details of the login action associated with the warning event. This is only available for: * Suspicious login * Suspicious login (less secure app) * Suspicious programmatic login * User suspended (suspicious activity)
    loginDetails :: (Core.Maybe LoginDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountWarning' with the minimum fields required to make a request.
newAccountWarning ::
  AccountWarning
newAccountWarning =
  AccountWarning {email = Core.Nothing, loginDetails = Core.Nothing}

instance Core.FromJSON AccountWarning where
  parseJSON =
    Core.withObject
      "AccountWarning"
      ( \o ->
          AccountWarning
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "loginDetails")
      )

instance Core.ToJSON AccountWarning where
  toJSON AccountWarning {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("loginDetails" Core..=) Core.<$> loginDetails
          ]
      )

-- | Metadata related to the action.
--
-- /See:/ 'newActionInfo' smart constructor.
data ActionInfo = ActionInfo
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionInfo' with the minimum fields required to make a request.
newActionInfo ::
  ActionInfo
newActionInfo = ActionInfo

instance Core.FromJSON ActionInfo where
  parseJSON =
    Core.withObject "ActionInfo" (\o -> Core.pure ActionInfo)

instance Core.ToJSON ActionInfo where
  toJSON = Core.const Core.emptyObject

-- | Alerts from Google Workspace Security Center rules service configured by an admin.
--
-- /See:/ 'newActivityRule' smart constructor.
data ActivityRule = ActivityRule
  { -- | List of action names associated with the rule threshold.
    actionNames :: (Core.Maybe [Core.Text]),
    -- | Rule create timestamp.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Description of the rule.
    description :: (Core.Maybe Core.Text),
    -- | Alert display name.
    displayName :: (Core.Maybe Core.Text),
    -- | Rule name.
    name :: (Core.Maybe Core.Text),
    -- | Query that is used to get the data from the associated source.
    query :: (Core.Maybe Core.Text),
    -- | List of alert IDs superseded by this alert. It is used to indicate that this alert is essentially extension of superseded alerts and we found the relationship after creating these alerts.
    supersededAlerts :: (Core.Maybe [Core.Text]),
    -- | Alert ID superseding this alert. It is used to indicate that superseding alert is essentially extension of this alert and we found the relationship after creating both alerts.
    supersedingAlert :: (Core.Maybe Core.Text),
    -- | Alert threshold is for example “COUNT > 5”.
    threshold :: (Core.Maybe Core.Text),
    -- | The trigger sources for this rule. * GMAIL/EVENTS * DEVICE/EVENTS * USER_EVENTS
    triggerSource :: (Core.Maybe Core.Text),
    -- | The timestamp of the last update to the rule.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Rule window size. Possible values are 1 hour or 24 hours.
    windowSize :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityRule' with the minimum fields required to make a request.
newActivityRule ::
  ActivityRule
newActivityRule =
  ActivityRule
    { actionNames = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      query = Core.Nothing,
      supersededAlerts = Core.Nothing,
      supersedingAlert = Core.Nothing,
      threshold = Core.Nothing,
      triggerSource = Core.Nothing,
      updateTime = Core.Nothing,
      windowSize = Core.Nothing
    }

instance Core.FromJSON ActivityRule where
  parseJSON =
    Core.withObject
      "ActivityRule"
      ( \o ->
          ActivityRule
            Core.<$> (o Core..:? "actionNames")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "supersededAlerts")
            Core.<*> (o Core..:? "supersedingAlert")
            Core.<*> (o Core..:? "threshold")
            Core.<*> (o Core..:? "triggerSource")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "windowSize")
      )

instance Core.ToJSON ActivityRule where
  toJSON ActivityRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionNames" Core..=) Core.<$> actionNames,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("query" Core..=) Core.<$> query,
            ("supersededAlerts" Core..=) Core.<$> supersededAlerts,
            ("supersedingAlert" Core..=) Core.<$> supersedingAlert,
            ("threshold" Core..=) Core.<$> threshold,
            ("triggerSource" Core..=) Core.<$> triggerSource,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("windowSize" Core..=) Core.<$> windowSize
          ]
      )

-- | An alert affecting a customer.
--
-- /See:/ 'newAlert' smart constructor.
data Alert = Alert
  { -- | Output only. The unique identifier for the alert.
    alertId :: (Core.Maybe Core.Text),
    -- | Output only. The time this alert was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The unique identifier of the Google Workspace account of the customer.
    customerId :: (Core.Maybe Core.Text),
    -- | Optional. The data associated with this alert, for example google.apps.alertcenter.type.DeviceCompromised.
    data' :: (Core.Maybe Alert_Data),
    -- | Output only. @True@ if this alert is marked for deletion.
    deleted :: (Core.Maybe Core.Bool),
    -- | Optional. The time the event that caused this alert ceased being active. If provided, the end time must not be earlier than the start time. If not provided, it indicates an ongoing alert.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Optional. @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of an alert from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform alert updates in order to avoid race conditions: An @etag@ is returned in the response which contains alerts, and systems are expected to put that etag in the request to update alert to ensure that their change will be applied to the same version of the alert. If no @etag@ is provided in the call to update alert, then the existing alert is overwritten blindly.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. The metadata associated with this alert.
    metadata :: (Core.Maybe AlertMetadata),
    -- | Output only. An optional <https://support.google.com/a/answer/7575955 Security Investigation Tool> query for this alert.
    securityInvestigationToolLink :: (Core.Maybe Core.Text),
    -- | Required. A unique identifier for the system that reported the alert. This is output only after alert is created. Supported sources are any of the following: * Google Operations * Mobile device management * Gmail phishing * Data Loss Prevention * Domain wide takeout * State sponsored attack * Google identity * Apps outage
    source :: (Core.Maybe Core.Text),
    -- | Required. The time the event that caused this alert was started or detected.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Required. The type of the alert. This is output only after alert is created. For a list of available alert types see <https://developers.google.com/admin-sdk/alertcenter/reference/alert-types Google Workspace Alert types>.
    type' :: (Core.Maybe Core.Text),
    -- | Output only. The time this alert was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Alert' with the minimum fields required to make a request.
newAlert ::
  Alert
newAlert =
  Alert
    { alertId = Core.Nothing,
      createTime = Core.Nothing,
      customerId = Core.Nothing,
      data' = Core.Nothing,
      deleted = Core.Nothing,
      endTime = Core.Nothing,
      etag = Core.Nothing,
      metadata = Core.Nothing,
      securityInvestigationToolLink = Core.Nothing,
      source = Core.Nothing,
      startTime = Core.Nothing,
      type' = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Alert where
  parseJSON =
    Core.withObject
      "Alert"
      ( \o ->
          Alert
            Core.<$> (o Core..:? "alertId")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "customerId")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "deleted")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "securityInvestigationToolLink")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Alert where
  toJSON Alert {..} =
    Core.object
      ( Core.catMaybes
          [ ("alertId" Core..=) Core.<$> alertId,
            ("createTime" Core..=) Core.<$> createTime,
            ("customerId" Core..=) Core.<$> customerId,
            ("data" Core..=) Core.<$> data',
            ("deleted" Core..=) Core.<$> deleted,
            ("endTime" Core..=) Core.<$> endTime,
            ("etag" Core..=) Core.<$> etag,
            ("metadata" Core..=) Core.<$> metadata,
            ("securityInvestigationToolLink" Core..=)
              Core.<$> securityInvestigationToolLink,
            ("source" Core..=) Core.<$> source,
            ("startTime" Core..=) Core.<$> startTime,
            ("type" Core..=) Core.<$> type',
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Optional. The data associated with this alert, for example google.apps.alertcenter.type.DeviceCompromised.
--
-- /See:/ 'newAlert_Data' smart constructor.
newtype Alert_Data = Alert_Data
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Alert_Data' with the minimum fields required to make a request.
newAlert_Data ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Alert_Data
newAlert_Data additional = Alert_Data {additional = additional}

instance Core.FromJSON Alert_Data where
  parseJSON =
    Core.withObject
      "Alert_Data"
      (\o -> Alert_Data Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Alert_Data where
  toJSON Alert_Data {..} = Core.toJSON additional

-- | A customer feedback about an alert.
--
-- /See:/ 'newAlertFeedback' smart constructor.
data AlertFeedback = AlertFeedback
  { -- | Output only. The alert identifier.
    alertId :: (Core.Maybe Core.Text),
    -- | Output only. The time this feedback was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The unique identifier of the Google Workspace account of the customer.
    customerId :: (Core.Maybe Core.Text),
    -- | Output only. The email of the user that provided the feedback.
    email :: (Core.Maybe Core.Text),
    -- | Output only. The unique identifier for the feedback.
    feedbackId :: (Core.Maybe Core.Text),
    -- | Required. The type of the feedback.
    type' :: (Core.Maybe AlertFeedback_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertFeedback' with the minimum fields required to make a request.
newAlertFeedback ::
  AlertFeedback
newAlertFeedback =
  AlertFeedback
    { alertId = Core.Nothing,
      createTime = Core.Nothing,
      customerId = Core.Nothing,
      email = Core.Nothing,
      feedbackId = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON AlertFeedback where
  parseJSON =
    Core.withObject
      "AlertFeedback"
      ( \o ->
          AlertFeedback
            Core.<$> (o Core..:? "alertId")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "customerId")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "feedbackId")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AlertFeedback where
  toJSON AlertFeedback {..} =
    Core.object
      ( Core.catMaybes
          [ ("alertId" Core..=) Core.<$> alertId,
            ("createTime" Core..=) Core.<$> createTime,
            ("customerId" Core..=) Core.<$> customerId,
            ("email" Core..=) Core.<$> email,
            ("feedbackId" Core..=) Core.<$> feedbackId,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | An alert metadata.
--
-- /See:/ 'newAlertMetadata' smart constructor.
data AlertMetadata = AlertMetadata
  { -- | Output only. The alert identifier.
    alertId :: (Core.Maybe Core.Text),
    -- | The email address of the user assigned to the alert.
    assignee :: (Core.Maybe Core.Text),
    -- | Output only. The unique identifier of the Google Workspace account of the customer.
    customerId :: (Core.Maybe Core.Text),
    -- | Optional. @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of an alert metadata from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform metadata updates in order to avoid race conditions: An @etag@ is returned in the response which contains alert metadata, and systems are expected to put that etag in the request to update alert metadata to ensure that their change will be applied to the same version of the alert metadata. If no @etag@ is provided in the call to update alert metadata, then the existing alert metadata is overwritten blindly.
    etag :: (Core.Maybe Core.Text),
    -- | The severity value of the alert. Alert Center will set this field at alert creation time, default\'s to an empty string when it could not be determined. The supported values for update actions on this field are the following: * HIGH * MEDIUM * LOW
    severity :: (Core.Maybe Core.Text),
    -- | The current status of the alert. The supported values are the following: * NOT/STARTED * IN/PROGRESS * CLOSED
    status :: (Core.Maybe Core.Text),
    -- | Output only. The time this metadata was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertMetadata' with the minimum fields required to make a request.
newAlertMetadata ::
  AlertMetadata
newAlertMetadata =
  AlertMetadata
    { alertId = Core.Nothing,
      assignee = Core.Nothing,
      customerId = Core.Nothing,
      etag = Core.Nothing,
      severity = Core.Nothing,
      status = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON AlertMetadata where
  parseJSON =
    Core.withObject
      "AlertMetadata"
      ( \o ->
          AlertMetadata
            Core.<$> (o Core..:? "alertId")
            Core.<*> (o Core..:? "assignee")
            Core.<*> (o Core..:? "customerId")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON AlertMetadata where
  toJSON AlertMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("alertId" Core..=) Core.<$> alertId,
            ("assignee" Core..=) Core.<$> assignee,
            ("customerId" Core..=) Core.<$> customerId,
            ("etag" Core..=) Core.<$> etag,
            ("severity" Core..=) Core.<$> severity,
            ("status" Core..=) Core.<$> status,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The explanation message associated with \"APNS certificate is expiring soon\" and \"APNS certificate has expired\" alerts.
--
-- /See:/ 'newApnsCertificateExpirationInfo' smart constructor.
data ApnsCertificateExpirationInfo = ApnsCertificateExpirationInfo
  { -- | The Apple ID used to create the certificate. It may be blank if admins didn\'t enter it.
    appleId :: (Core.Maybe Core.Text),
    -- | The expiration date of the APNS certificate.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | The UID of the certificate.
    uid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApnsCertificateExpirationInfo' with the minimum fields required to make a request.
newApnsCertificateExpirationInfo ::
  ApnsCertificateExpirationInfo
newApnsCertificateExpirationInfo =
  ApnsCertificateExpirationInfo
    { appleId = Core.Nothing,
      expirationTime = Core.Nothing,
      uid = Core.Nothing
    }

instance Core.FromJSON ApnsCertificateExpirationInfo where
  parseJSON =
    Core.withObject
      "ApnsCertificateExpirationInfo"
      ( \o ->
          ApnsCertificateExpirationInfo
            Core.<$> (o Core..:? "appleId")
            Core.<*> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "uid")
      )

instance Core.ToJSON ApnsCertificateExpirationInfo where
  toJSON ApnsCertificateExpirationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("appleId" Core..=) Core.<$> appleId,
            ("expirationTime" Core..=) Core.<$> expirationTime,
            ("uid" Core..=) Core.<$> uid
          ]
      )

-- | Alerts from App Maker to notify admins to set up default SQL instance.
--
-- /See:/ 'newAppMakerSqlSetupNotification' smart constructor.
newtype AppMakerSqlSetupNotification = AppMakerSqlSetupNotification
  { -- | List of applications with requests for default SQL set up.
    requestInfo :: (Core.Maybe [RequestInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppMakerSqlSetupNotification' with the minimum fields required to make a request.
newAppMakerSqlSetupNotification ::
  AppMakerSqlSetupNotification
newAppMakerSqlSetupNotification =
  AppMakerSqlSetupNotification {requestInfo = Core.Nothing}

instance Core.FromJSON AppMakerSqlSetupNotification where
  parseJSON =
    Core.withObject
      "AppMakerSqlSetupNotification"
      ( \o ->
          AppMakerSqlSetupNotification Core.<$> (o Core..:? "requestInfo")
      )

instance Core.ToJSON AppMakerSqlSetupNotification where
  toJSON AppMakerSqlSetupNotification {..} =
    Core.object
      (Core.catMaybes [("requestInfo" Core..=) Core.<$> requestInfo])

-- | -   Alerts from AppSettingsChanged bucket Rules configured by Admin which contain the below rules. Calendar settings changed Drive settings changed Email settings changed Mobile settings changed
--
-- /See:/ 'newAppSettingsChanged' smart constructor.
data AppSettingsChanged = AppSettingsChanged
  { -- | Any other associated alert details, for example, AlertConfiguration.
    alertDetails :: (Core.Maybe Core.Base64),
    -- | Rule name
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppSettingsChanged' with the minimum fields required to make a request.
newAppSettingsChanged ::
  AppSettingsChanged
newAppSettingsChanged =
  AppSettingsChanged
    { alertDetails = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON AppSettingsChanged where
  parseJSON =
    Core.withObject
      "AppSettingsChanged"
      ( \o ->
          AppSettingsChanged
            Core.<$> (o Core..:? "alertDetails")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AppSettingsChanged where
  toJSON AppSettingsChanged {..} =
    Core.object
      ( Core.catMaybes
          [ ("alertDetails" Core..=) Core.<$> alertDetails,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | An outage incident reported for a Google Workspace service.
--
-- /See:/ 'newAppsOutage' smart constructor.
data AppsOutage = AppsOutage
  { -- | Link to the outage event in Google Workspace Status Dashboard
    dashboardUri :: (Core.Maybe Core.Text),
    -- | Incident tracking ID.
    incidentTrackingId :: (Core.Maybe Core.Text),
    -- | Indicates new alert details under which the outage is communicated. Only populated when Status is MERGED.
    mergeInfo :: (Core.Maybe MergeInfo),
    -- | Timestamp by which the next update is expected to arrive.
    nextUpdateTime :: (Core.Maybe Core.DateTime),
    -- | List of products impacted by the outage.
    products :: (Core.Maybe [Core.Text]),
    -- | Timestamp when the outage is expected to be resolved, or has confirmed resolution. Provided only when known.
    resolutionTime :: (Core.Maybe Core.DateTime),
    -- | Current outage status.
    status :: (Core.Maybe AppsOutage_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppsOutage' with the minimum fields required to make a request.
newAppsOutage ::
  AppsOutage
newAppsOutage =
  AppsOutage
    { dashboardUri = Core.Nothing,
      incidentTrackingId = Core.Nothing,
      mergeInfo = Core.Nothing,
      nextUpdateTime = Core.Nothing,
      products = Core.Nothing,
      resolutionTime = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON AppsOutage where
  parseJSON =
    Core.withObject
      "AppsOutage"
      ( \o ->
          AppsOutage
            Core.<$> (o Core..:? "dashboardUri")
            Core.<*> (o Core..:? "incidentTrackingId")
            Core.<*> (o Core..:? "mergeInfo")
            Core.<*> (o Core..:? "nextUpdateTime")
            Core.<*> (o Core..:? "products")
            Core.<*> (o Core..:? "resolutionTime")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON AppsOutage where
  toJSON AppsOutage {..} =
    Core.object
      ( Core.catMaybes
          [ ("dashboardUri" Core..=) Core.<$> dashboardUri,
            ("incidentTrackingId" Core..=) Core.<$> incidentTrackingId,
            ("mergeInfo" Core..=) Core.<$> mergeInfo,
            ("nextUpdateTime" Core..=) Core.<$> nextUpdateTime,
            ("products" Core..=) Core.<$> products,
            ("resolutionTime" Core..=) Core.<$> resolutionTime,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Attachment with application-specific information about an alert.
--
-- /See:/ 'newAttachment' smart constructor.
newtype Attachment = Attachment
  { -- | A CSV file attachment.
    csv :: (Core.Maybe Csv)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
newAttachment ::
  Attachment
newAttachment = Attachment {csv = Core.Nothing}

instance Core.FromJSON Attachment where
  parseJSON =
    Core.withObject
      "Attachment"
      (\o -> Attachment Core.<$> (o Core..:? "csv"))

instance Core.ToJSON Attachment where
  toJSON Attachment {..} =
    Core.object (Core.catMaybes [("csv" Core..=) Core.<$> csv])

-- | Alert for setting the domain or IP that malicious email comes from as whitelisted domain or IP in Gmail advanced settings.
--
-- /See:/ 'newBadWhitelist' smart constructor.
data BadWhitelist = BadWhitelist
  { -- | The domain ID.
    domainId :: (Core.Maybe DomainId),
    -- | The entity whose actions triggered a Gmail phishing alert.
    maliciousEntity :: (Core.Maybe MaliciousEntity),
    -- | The list of messages contained by this alert.
    messages :: (Core.Maybe [GmailMessageInfo]),
    -- | The source IP address of the malicious email, for example, @127.0.0.1@.
    sourceIp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BadWhitelist' with the minimum fields required to make a request.
newBadWhitelist ::
  BadWhitelist
newBadWhitelist =
  BadWhitelist
    { domainId = Core.Nothing,
      maliciousEntity = Core.Nothing,
      messages = Core.Nothing,
      sourceIp = Core.Nothing
    }

instance Core.FromJSON BadWhitelist where
  parseJSON =
    Core.withObject
      "BadWhitelist"
      ( \o ->
          BadWhitelist
            Core.<$> (o Core..:? "domainId")
            Core.<*> (o Core..:? "maliciousEntity")
            Core.<*> (o Core..:? "messages")
            Core.<*> (o Core..:? "sourceIp")
      )

instance Core.ToJSON BadWhitelist where
  toJSON BadWhitelist {..} =
    Core.object
      ( Core.catMaybes
          [ ("domainId" Core..=) Core.<$> domainId,
            ("maliciousEntity" Core..=) Core.<$> maliciousEntity,
            ("messages" Core..=) Core.<$> messages,
            ("sourceIp" Core..=) Core.<$> sourceIp
          ]
      )

-- | A request to perform batch delete on alerts.
--
-- /See:/ 'newBatchDeleteAlertsRequest' smart constructor.
data BatchDeleteAlertsRequest = BatchDeleteAlertsRequest
  { -- | Required. The list of alert IDs to delete.
    alertId :: (Core.Maybe [Core.Text]),
    -- | Optional. The unique identifier of the Google Workspace account of the customer the alerts are associated with. The @customer_id@ must have the initial \"C\" stripped (for example, @046psxkn@). Inferred from the caller identity if not provided. <https://support.google.com/cloudidentity/answer/10070793 Find your customer ID>.
    customerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeleteAlertsRequest' with the minimum fields required to make a request.
newBatchDeleteAlertsRequest ::
  BatchDeleteAlertsRequest
newBatchDeleteAlertsRequest =
  BatchDeleteAlertsRequest
    { alertId = Core.Nothing,
      customerId = Core.Nothing
    }

instance Core.FromJSON BatchDeleteAlertsRequest where
  parseJSON =
    Core.withObject
      "BatchDeleteAlertsRequest"
      ( \o ->
          BatchDeleteAlertsRequest
            Core.<$> (o Core..:? "alertId")
            Core.<*> (o Core..:? "customerId")
      )

instance Core.ToJSON BatchDeleteAlertsRequest where
  toJSON BatchDeleteAlertsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("alertId" Core..=) Core.<$> alertId,
            ("customerId" Core..=) Core.<$> customerId
          ]
      )

-- | Response to batch delete operation on alerts.
--
-- /See:/ 'newBatchDeleteAlertsResponse' smart constructor.
data BatchDeleteAlertsResponse = BatchDeleteAlertsResponse
  { -- | The status details for each failed @alert_id@.
    failedAlertStatus :: (Core.Maybe BatchDeleteAlertsResponse_FailedAlertStatus),
    -- | The successful list of alert IDs.
    successAlertIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeleteAlertsResponse' with the minimum fields required to make a request.
newBatchDeleteAlertsResponse ::
  BatchDeleteAlertsResponse
newBatchDeleteAlertsResponse =
  BatchDeleteAlertsResponse
    { failedAlertStatus = Core.Nothing,
      successAlertIds = Core.Nothing
    }

instance Core.FromJSON BatchDeleteAlertsResponse where
  parseJSON =
    Core.withObject
      "BatchDeleteAlertsResponse"
      ( \o ->
          BatchDeleteAlertsResponse
            Core.<$> (o Core..:? "failedAlertStatus")
            Core.<*> (o Core..:? "successAlertIds")
      )

instance Core.ToJSON BatchDeleteAlertsResponse where
  toJSON BatchDeleteAlertsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("failedAlertStatus" Core..=) Core.<$> failedAlertStatus,
            ("successAlertIds" Core..=) Core.<$> successAlertIds
          ]
      )

-- | The status details for each failed @alert_id@.
--
-- /See:/ 'newBatchDeleteAlertsResponse_FailedAlertStatus' smart constructor.
newtype BatchDeleteAlertsResponse_FailedAlertStatus = BatchDeleteAlertsResponse_FailedAlertStatus
  { additional :: (Core.HashMap Core.Text Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeleteAlertsResponse_FailedAlertStatus' with the minimum fields required to make a request.
newBatchDeleteAlertsResponse_FailedAlertStatus ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Status ->
  BatchDeleteAlertsResponse_FailedAlertStatus
newBatchDeleteAlertsResponse_FailedAlertStatus additional =
  BatchDeleteAlertsResponse_FailedAlertStatus
    { additional =
        additional
    }

instance Core.FromJSON BatchDeleteAlertsResponse_FailedAlertStatus where
  parseJSON =
    Core.withObject
      "BatchDeleteAlertsResponse_FailedAlertStatus"
      ( \o ->
          BatchDeleteAlertsResponse_FailedAlertStatus
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BatchDeleteAlertsResponse_FailedAlertStatus where
  toJSON BatchDeleteAlertsResponse_FailedAlertStatus {..} =
    Core.toJSON additional

-- | A request to perform batch undelete on alerts.
--
-- /See:/ 'newBatchUndeleteAlertsRequest' smart constructor.
data BatchUndeleteAlertsRequest = BatchUndeleteAlertsRequest
  { -- | Required. The list of alert IDs to undelete.
    alertId :: (Core.Maybe [Core.Text]),
    -- | Optional. The unique identifier of the Google Workspace account of the customer the alerts are associated with. The @customer_id@ must have the initial \"C\" stripped (for example, @046psxkn@). Inferred from the caller identity if not provided. <https://support.google.com/cloudidentity/answer/10070793 Find your customer ID>.
    customerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUndeleteAlertsRequest' with the minimum fields required to make a request.
newBatchUndeleteAlertsRequest ::
  BatchUndeleteAlertsRequest
newBatchUndeleteAlertsRequest =
  BatchUndeleteAlertsRequest
    { alertId = Core.Nothing,
      customerId = Core.Nothing
    }

instance Core.FromJSON BatchUndeleteAlertsRequest where
  parseJSON =
    Core.withObject
      "BatchUndeleteAlertsRequest"
      ( \o ->
          BatchUndeleteAlertsRequest
            Core.<$> (o Core..:? "alertId")
            Core.<*> (o Core..:? "customerId")
      )

instance Core.ToJSON BatchUndeleteAlertsRequest where
  toJSON BatchUndeleteAlertsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("alertId" Core..=) Core.<$> alertId,
            ("customerId" Core..=) Core.<$> customerId
          ]
      )

-- | Response to batch undelete operation on alerts.
--
-- /See:/ 'newBatchUndeleteAlertsResponse' smart constructor.
data BatchUndeleteAlertsResponse = BatchUndeleteAlertsResponse
  { -- | The status details for each failed @alert_id@.
    failedAlertStatus :: (Core.Maybe BatchUndeleteAlertsResponse_FailedAlertStatus),
    -- | The successful list of alert IDs.
    successAlertIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUndeleteAlertsResponse' with the minimum fields required to make a request.
newBatchUndeleteAlertsResponse ::
  BatchUndeleteAlertsResponse
newBatchUndeleteAlertsResponse =
  BatchUndeleteAlertsResponse
    { failedAlertStatus = Core.Nothing,
      successAlertIds = Core.Nothing
    }

instance Core.FromJSON BatchUndeleteAlertsResponse where
  parseJSON =
    Core.withObject
      "BatchUndeleteAlertsResponse"
      ( \o ->
          BatchUndeleteAlertsResponse
            Core.<$> (o Core..:? "failedAlertStatus")
            Core.<*> (o Core..:? "successAlertIds")
      )

instance Core.ToJSON BatchUndeleteAlertsResponse where
  toJSON BatchUndeleteAlertsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("failedAlertStatus" Core..=) Core.<$> failedAlertStatus,
            ("successAlertIds" Core..=) Core.<$> successAlertIds
          ]
      )

-- | The status details for each failed @alert_id@.
--
-- /See:/ 'newBatchUndeleteAlertsResponse_FailedAlertStatus' smart constructor.
newtype BatchUndeleteAlertsResponse_FailedAlertStatus = BatchUndeleteAlertsResponse_FailedAlertStatus
  { additional :: (Core.HashMap Core.Text Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUndeleteAlertsResponse_FailedAlertStatus' with the minimum fields required to make a request.
newBatchUndeleteAlertsResponse_FailedAlertStatus ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Status ->
  BatchUndeleteAlertsResponse_FailedAlertStatus
newBatchUndeleteAlertsResponse_FailedAlertStatus additional =
  BatchUndeleteAlertsResponse_FailedAlertStatus
    { additional =
        additional
    }

instance
  Core.FromJSON
    BatchUndeleteAlertsResponse_FailedAlertStatus
  where
  parseJSON =
    Core.withObject
      "BatchUndeleteAlertsResponse_FailedAlertStatus"
      ( \o ->
          BatchUndeleteAlertsResponse_FailedAlertStatus
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BatchUndeleteAlertsResponse_FailedAlertStatus where
  toJSON BatchUndeleteAlertsResponse_FailedAlertStatus {..} =
    Core.toJSON additional

-- | A reference to a Cloud Pubsub topic. To register for notifications, the owner of the topic must grant @alerts-api-push-notifications\@system.gserviceaccount.com@ the @projects.topics.publish@ permission.
--
-- /See:/ 'newCloudPubsubTopic' smart constructor.
data CloudPubsubTopic = CloudPubsubTopic
  { -- | Optional. The format of the payload that would be sent. If not specified the format will be JSON.
    payloadFormat :: (Core.Maybe CloudPubsubTopic_PayloadFormat),
    -- | The @name@ field of a Cloud Pubsub [Topic] (https:\/\/cloud.google.com\/pubsub\/docs\/reference\/rest\/v1\/projects.topics#Topic).
    topicName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPubsubTopic' with the minimum fields required to make a request.
newCloudPubsubTopic ::
  CloudPubsubTopic
newCloudPubsubTopic =
  CloudPubsubTopic
    { payloadFormat = Core.Nothing,
      topicName = Core.Nothing
    }

instance Core.FromJSON CloudPubsubTopic where
  parseJSON =
    Core.withObject
      "CloudPubsubTopic"
      ( \o ->
          CloudPubsubTopic
            Core.<$> (o Core..:? "payloadFormat")
            Core.<*> (o Core..:? "topicName")
      )

instance Core.ToJSON CloudPubsubTopic where
  toJSON CloudPubsubTopic {..} =
    Core.object
      ( Core.catMaybes
          [ ("payloadFormat" Core..=) Core.<$> payloadFormat,
            ("topicName" Core..=) Core.<$> topicName
          ]
      )

-- | A representation of a CSV file attachment, as a list of column headers and a list of data rows.
--
-- /See:/ 'newCsv' smart constructor.
data Csv = Csv
  { -- | The list of data rows in a CSV file, as string arrays rather than as a single comma-separated string.
    dataRows :: (Core.Maybe [CsvRow]),
    -- | The list of headers for data columns in a CSV file.
    headers :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Csv' with the minimum fields required to make a request.
newCsv ::
  Csv
newCsv = Csv {dataRows = Core.Nothing, headers = Core.Nothing}

instance Core.FromJSON Csv where
  parseJSON =
    Core.withObject
      "Csv"
      ( \o ->
          Csv
            Core.<$> (o Core..:? "dataRows")
            Core.<*> (o Core..:? "headers")
      )

instance Core.ToJSON Csv where
  toJSON Csv {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataRows" Core..=) Core.<$> dataRows,
            ("headers" Core..=) Core.<$> headers
          ]
      )

-- | A representation of a single data row in a CSV file.
--
-- /See:/ 'newCsvRow' smart constructor.
newtype CsvRow = CsvRow
  { -- | The data entries in a CSV file row, as a string array rather than a single comma-separated string.
    entries :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CsvRow' with the minimum fields required to make a request.
newCsvRow ::
  CsvRow
newCsvRow = CsvRow {entries = Core.Nothing}

instance Core.FromJSON CsvRow where
  parseJSON =
    Core.withObject
      "CsvRow"
      (\o -> CsvRow Core.<$> (o Core..:? "entries"))

instance Core.ToJSON CsvRow where
  toJSON CsvRow {..} =
    Core.object
      (Core.catMaybes [("entries" Core..=) Core.<$> entries])

-- | A mobile device compromised alert. Derived from audit logs.
--
-- /See:/ 'newDeviceCompromised' smart constructor.
data DeviceCompromised = DeviceCompromised
  { -- | The email of the user this alert was created for.
    email :: (Core.Maybe Core.Text),
    -- | Required. The list of security events.
    events :: (Core.Maybe [DeviceCompromisedSecurityDetail])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceCompromised' with the minimum fields required to make a request.
newDeviceCompromised ::
  DeviceCompromised
newDeviceCompromised =
  DeviceCompromised {email = Core.Nothing, events = Core.Nothing}

instance Core.FromJSON DeviceCompromised where
  parseJSON =
    Core.withObject
      "DeviceCompromised"
      ( \o ->
          DeviceCompromised
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "events")
      )

instance Core.ToJSON DeviceCompromised where
  toJSON DeviceCompromised {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("events" Core..=) Core.<$> events
          ]
      )

-- | Detailed information of a single MDM device compromised event.
--
-- /See:/ 'newDeviceCompromisedSecurityDetail' smart constructor.
data DeviceCompromisedSecurityDetail = DeviceCompromisedSecurityDetail
  { -- | The device compromised state. Possible values are \"@Compromised@\" or \"@Not Compromised@\".
    deviceCompromisedState :: (Core.Maybe Core.Text),
    -- | Required. The device ID.
    deviceId :: (Core.Maybe Core.Text),
    -- | The model of the device.
    deviceModel :: (Core.Maybe Core.Text),
    -- | The type of the device.
    deviceType :: (Core.Maybe Core.Text),
    -- | Required for iOS, empty for others.
    iosVendorId :: (Core.Maybe Core.Text),
    -- | The device resource ID.
    resourceId :: (Core.Maybe Core.Text),
    -- | The serial number of the device.
    serialNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceCompromisedSecurityDetail' with the minimum fields required to make a request.
newDeviceCompromisedSecurityDetail ::
  DeviceCompromisedSecurityDetail
newDeviceCompromisedSecurityDetail =
  DeviceCompromisedSecurityDetail
    { deviceCompromisedState =
        Core.Nothing,
      deviceId = Core.Nothing,
      deviceModel = Core.Nothing,
      deviceType = Core.Nothing,
      iosVendorId = Core.Nothing,
      resourceId = Core.Nothing,
      serialNumber = Core.Nothing
    }

instance Core.FromJSON DeviceCompromisedSecurityDetail where
  parseJSON =
    Core.withObject
      "DeviceCompromisedSecurityDetail"
      ( \o ->
          DeviceCompromisedSecurityDetail
            Core.<$> (o Core..:? "deviceCompromisedState")
            Core.<*> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceModel")
            Core.<*> (o Core..:? "deviceType")
            Core.<*> (o Core..:? "iosVendorId")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "serialNumber")
      )

instance Core.ToJSON DeviceCompromisedSecurityDetail where
  toJSON DeviceCompromisedSecurityDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceCompromisedState" Core..=)
              Core.<$> deviceCompromisedState,
            ("deviceId" Core..=) Core.<$> deviceId,
            ("deviceModel" Core..=) Core.<$> deviceModel,
            ("deviceType" Core..=) Core.<$> deviceType,
            ("iosVendorId" Core..=) Core.<$> iosVendorId,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("serialNumber" Core..=) Core.<$> serialNumber
          ]
      )

-- | Alerts from Device Management Rules configured by Admin.
--
-- /See:/ 'newDeviceManagementRule' smart constructor.
data DeviceManagementRule = DeviceManagementRule
  { -- | Required. The device ID.
    deviceId :: (Core.Maybe Core.Text),
    -- | The model of the device.
    deviceModel :: (Core.Maybe Core.Text),
    -- | The type of the device.
    deviceType :: (Core.Maybe Core.Text),
    -- | The email of the user this alert was created for.
    email :: (Core.Maybe Core.Text),
    -- | ID of the rule that triggered the alert
    id :: (Core.Maybe Core.Text),
    -- | Required for iOS, empty for others.
    iosVendorId :: (Core.Maybe Core.Text),
    -- | Obfuscated ID of the owner of the device
    ownerId :: (Core.Maybe Core.Text),
    -- | The device resource ID.
    resourceId :: (Core.Maybe Core.Text),
    -- | Action taken as result of the rule
    ruleAction :: (Core.Maybe Core.Text),
    -- | The serial number of the device.
    serialNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceManagementRule' with the minimum fields required to make a request.
newDeviceManagementRule ::
  DeviceManagementRule
newDeviceManagementRule =
  DeviceManagementRule
    { deviceId = Core.Nothing,
      deviceModel = Core.Nothing,
      deviceType = Core.Nothing,
      email = Core.Nothing,
      id = Core.Nothing,
      iosVendorId = Core.Nothing,
      ownerId = Core.Nothing,
      resourceId = Core.Nothing,
      ruleAction = Core.Nothing,
      serialNumber = Core.Nothing
    }

instance Core.FromJSON DeviceManagementRule where
  parseJSON =
    Core.withObject
      "DeviceManagementRule"
      ( \o ->
          DeviceManagementRule
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceModel")
            Core.<*> (o Core..:? "deviceType")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "iosVendorId")
            Core.<*> (o Core..:? "ownerId")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "ruleAction")
            Core.<*> (o Core..:? "serialNumber")
      )

instance Core.ToJSON DeviceManagementRule where
  toJSON DeviceManagementRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.<$> deviceId,
            ("deviceModel" Core..=) Core.<$> deviceModel,
            ("deviceType" Core..=) Core.<$> deviceType,
            ("email" Core..=) Core.<$> email,
            ("id" Core..=) Core.<$> id,
            ("iosVendorId" Core..=) Core.<$> iosVendorId,
            ("ownerId" Core..=) Core.<$> ownerId,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("ruleAction" Core..=) Core.<$> ruleAction,
            ("serialNumber" Core..=) Core.<$> serialNumber
          ]
      )

-- | Alerts that get triggered on violations of Data Loss Prevention (DLP) rules.
--
-- /See:/ 'newDlpRuleViolation' smart constructor.
newtype DlpRuleViolation = DlpRuleViolation
  { -- | Details about the violated DLP rule. Admins can use the predefined detectors provided by Google Cloud DLP https:\/\/cloud.google.com\/dlp\/ when setting up a DLP rule. Matched Cloud DLP detectors in this violation if any will be captured in the MatchInfo.predefined_detector.
    ruleViolationInfo :: (Core.Maybe RuleViolationInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DlpRuleViolation' with the minimum fields required to make a request.
newDlpRuleViolation ::
  DlpRuleViolation
newDlpRuleViolation =
  DlpRuleViolation {ruleViolationInfo = Core.Nothing}

instance Core.FromJSON DlpRuleViolation where
  parseJSON =
    Core.withObject
      "DlpRuleViolation"
      (\o -> DlpRuleViolation Core.<$> (o Core..:? "ruleViolationInfo"))

instance Core.ToJSON DlpRuleViolation where
  toJSON DlpRuleViolation {..} =
    Core.object
      ( Core.catMaybes
          [("ruleViolationInfo" Core..=) Core.<$> ruleViolationInfo]
      )

-- | Domain ID of Gmail phishing alerts.
--
-- /See:/ 'newDomainId' smart constructor.
newtype DomainId = DomainId
  { -- | The primary domain for the customer.
    customerPrimaryDomain :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DomainId' with the minimum fields required to make a request.
newDomainId ::
  DomainId
newDomainId = DomainId {customerPrimaryDomain = Core.Nothing}

instance Core.FromJSON DomainId where
  parseJSON =
    Core.withObject
      "DomainId"
      (\o -> DomainId Core.<$> (o Core..:? "customerPrimaryDomain"))

instance Core.ToJSON DomainId where
  toJSON DomainId {..} =
    Core.object
      ( Core.catMaybes
          [("customerPrimaryDomain" Core..=) Core.<$> customerPrimaryDomain]
      )

-- | A takeout operation for the entire domain was initiated by an admin. Derived from audit logs.
--
-- /See:/ 'newDomainWideTakeoutInitiated' smart constructor.
data DomainWideTakeoutInitiated = DomainWideTakeoutInitiated
  { -- | The email of the admin who initiated the takeout.
    email :: (Core.Maybe Core.Text),
    -- | The takeout request ID.
    takeoutRequestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DomainWideTakeoutInitiated' with the minimum fields required to make a request.
newDomainWideTakeoutInitiated ::
  DomainWideTakeoutInitiated
newDomainWideTakeoutInitiated =
  DomainWideTakeoutInitiated
    { email = Core.Nothing,
      takeoutRequestId = Core.Nothing
    }

instance Core.FromJSON DomainWideTakeoutInitiated where
  parseJSON =
    Core.withObject
      "DomainWideTakeoutInitiated"
      ( \o ->
          DomainWideTakeoutInitiated
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "takeoutRequestId")
      )

instance Core.ToJSON DomainWideTakeoutInitiated where
  toJSON DomainWideTakeoutInitiated {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("takeoutRequestId" Core..=) Core.<$> takeoutRequestId
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Individual entity affected by, or related to, an alert.
--
-- /See:/ 'newEntity' smart constructor.
data Entity = Entity
  { -- | Link to a Security Investigation Tool search based on this entity, if available.
    link :: (Core.Maybe Core.Text),
    -- | Human-readable name of this entity, such as an email address, file ID, or device name.
    name :: (Core.Maybe Core.Text),
    -- | Extra values beyond name. The order of values should align with headers in EntityList.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
newEntity ::
  Entity
newEntity =
  Entity
    { link = Core.Nothing,
      name = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON Entity where
  parseJSON =
    Core.withObject
      "Entity"
      ( \o ->
          Entity
            Core.<$> (o Core..:? "link")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON Entity where
  toJSON Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("link" Core..=) Core.<$> link,
            ("name" Core..=) Core.<$> name,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | EntityList stores entities in a format that can be translated to a table in the Alert Center UI.
--
-- /See:/ 'newEntityList' smart constructor.
data EntityList = EntityList
  { -- | List of entities affected by the alert.
    entities :: (Core.Maybe [Entity]),
    -- | Headers of the values in entities. If no value is defined in Entity, this field should be empty.
    headers :: (Core.Maybe [Core.Text]),
    -- | Name of the key detail used to display this entity list.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityList' with the minimum fields required to make a request.
newEntityList ::
  EntityList
newEntityList =
  EntityList
    { entities = Core.Nothing,
      headers = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON EntityList where
  parseJSON =
    Core.withObject
      "EntityList"
      ( \o ->
          EntityList
            Core.<$> (o Core..:? "entities")
            Core.<*> (o Core..:? "headers")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON EntityList where
  toJSON EntityList {..} =
    Core.object
      ( Core.catMaybes
          [ ("entities" Core..=) Core.<$> entities,
            ("headers" Core..=) Core.<$> headers,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Details of a message in phishing spike alert.
--
-- /See:/ 'newGmailMessageInfo' smart constructor.
data GmailMessageInfo = GmailMessageInfo
  { -- | The @SHA256@ hash of email\'s attachment and all MIME parts.
    attachmentsSha256Hash :: (Core.Maybe [Core.Text]),
    -- | The date of the event related to this email.
    date :: (Core.Maybe Core.DateTime),
    -- | The hash of the message body text.
    md5HashMessageBody :: (Core.Maybe Core.Text),
    -- | The MD5 Hash of email\'s subject (only available for reported emails).
    md5HashSubject :: (Core.Maybe Core.Text),
    -- | The snippet of the message body text (only available for reported emails).
    messageBodySnippet :: (Core.Maybe Core.Text),
    -- | The message ID.
    messageId :: (Core.Maybe Core.Text),
    -- | The recipient of this email.
    recipient :: (Core.Maybe Core.Text),
    -- | The sent time of the email.
    sentTime :: (Core.Maybe Core.DateTime),
    -- | The email subject text (only available for reported emails).
    subjectText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailMessageInfo' with the minimum fields required to make a request.
newGmailMessageInfo ::
  GmailMessageInfo
newGmailMessageInfo =
  GmailMessageInfo
    { attachmentsSha256Hash = Core.Nothing,
      date = Core.Nothing,
      md5HashMessageBody = Core.Nothing,
      md5HashSubject = Core.Nothing,
      messageBodySnippet = Core.Nothing,
      messageId = Core.Nothing,
      recipient = Core.Nothing,
      sentTime = Core.Nothing,
      subjectText = Core.Nothing
    }

instance Core.FromJSON GmailMessageInfo where
  parseJSON =
    Core.withObject
      "GmailMessageInfo"
      ( \o ->
          GmailMessageInfo
            Core.<$> (o Core..:? "attachmentsSha256Hash")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "md5HashMessageBody")
            Core.<*> (o Core..:? "md5HashSubject")
            Core.<*> (o Core..:? "messageBodySnippet")
            Core.<*> (o Core..:? "messageId")
            Core.<*> (o Core..:? "recipient")
            Core.<*> (o Core..:? "sentTime")
            Core.<*> (o Core..:? "subjectText")
      )

instance Core.ToJSON GmailMessageInfo where
  toJSON GmailMessageInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachmentsSha256Hash" Core..=) Core.<$> attachmentsSha256Hash,
            ("date" Core..=) Core.<$> date,
            ("md5HashMessageBody" Core..=) Core.<$> md5HashMessageBody,
            ("md5HashSubject" Core..=) Core.<$> md5HashSubject,
            ("messageBodySnippet" Core..=) Core.<$> messageBodySnippet,
            ("messageId" Core..=) Core.<$> messageId,
            ("recipient" Core..=) Core.<$> recipient,
            ("sentTime" Core..=) Core.<$> sentTime,
            ("subjectText" Core..=) Core.<$> subjectText
          ]
      )

-- | An incident reported by Google Operations for a Google Workspace application.
--
-- /See:/ 'newGoogleOperations' smart constructor.
data GoogleOperations = GoogleOperations
  { -- | The list of emails which correspond to the users directly affected by the incident.
    affectedUserEmails :: (Core.Maybe [Core.Text]),
    -- | Optional. Application-specific data for an incident, provided when the Google Workspace application which reported the incident cannot be completely restored to a valid state.
    attachmentData :: (Core.Maybe Attachment),
    -- | A detailed, freeform incident description.
    description :: (Core.Maybe Core.Text),
    -- | Customer domain for email template personalization.
    domain :: (Core.Maybe Core.Text),
    -- | A header to display above the incident message. Typically used to attach a localized notice on the timeline for followup comms translations.
    header :: (Core.Maybe Core.Text),
    -- | A one-line incident description.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleOperations' with the minimum fields required to make a request.
newGoogleOperations ::
  GoogleOperations
newGoogleOperations =
  GoogleOperations
    { affectedUserEmails = Core.Nothing,
      attachmentData = Core.Nothing,
      description = Core.Nothing,
      domain = Core.Nothing,
      header = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON GoogleOperations where
  parseJSON =
    Core.withObject
      "GoogleOperations"
      ( \o ->
          GoogleOperations
            Core.<$> (o Core..:? "affectedUserEmails")
            Core.<*> (o Core..:? "attachmentData")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "header")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON GoogleOperations where
  toJSON GoogleOperations {..} =
    Core.object
      ( Core.catMaybes
          [ ("affectedUserEmails" Core..=) Core.<$> affectedUserEmails,
            ("attachmentData" Core..=) Core.<$> attachmentData,
            ("description" Core..=) Core.<$> description,
            ("domain" Core..=) Core.<$> domain,
            ("header" Core..=) Core.<$> header,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Response message for an alert feedback listing request.
--
-- /See:/ 'newListAlertFeedbackResponse' smart constructor.
newtype ListAlertFeedbackResponse = ListAlertFeedbackResponse
  { -- | The list of alert feedback. Feedback entries for each alert are ordered by creation time descending.
    feedback :: (Core.Maybe [AlertFeedback])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAlertFeedbackResponse' with the minimum fields required to make a request.
newListAlertFeedbackResponse ::
  ListAlertFeedbackResponse
newListAlertFeedbackResponse =
  ListAlertFeedbackResponse {feedback = Core.Nothing}

instance Core.FromJSON ListAlertFeedbackResponse where
  parseJSON =
    Core.withObject
      "ListAlertFeedbackResponse"
      (\o -> ListAlertFeedbackResponse Core.<$> (o Core..:? "feedback"))

instance Core.ToJSON ListAlertFeedbackResponse where
  toJSON ListAlertFeedbackResponse {..} =
    Core.object
      (Core.catMaybes [("feedback" Core..=) Core.<$> feedback])

-- | Response message for an alert listing request.
--
-- /See:/ 'newListAlertsResponse' smart constructor.
data ListAlertsResponse = ListAlertsResponse
  { -- | The list of alerts.
    alerts :: (Core.Maybe [Alert]),
    -- | The token for the next page. If not empty, indicates that there may be more alerts that match the listing request; this value can be used in a subsequent ListAlertsRequest to get alerts continuing from last result of the current list call.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAlertsResponse' with the minimum fields required to make a request.
newListAlertsResponse ::
  ListAlertsResponse
newListAlertsResponse =
  ListAlertsResponse
    { alerts = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAlertsResponse where
  parseJSON =
    Core.withObject
      "ListAlertsResponse"
      ( \o ->
          ListAlertsResponse
            Core.<$> (o Core..:? "alerts")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAlertsResponse where
  toJSON ListAlertsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("alerts" Core..=) Core.<$> alerts,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The details of the login action.
--
-- /See:/ 'newLoginDetails' smart constructor.
data LoginDetails = LoginDetails
  { -- | Optional. The human-readable IP address (for example, @11.22.33.44@) that is associated with the warning event.
    ipAddress :: (Core.Maybe Core.Text),
    -- | Optional. The successful login time that is associated with the warning event. This isn\'t present for blocked login attempts.
    loginTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoginDetails' with the minimum fields required to make a request.
newLoginDetails ::
  LoginDetails
newLoginDetails =
  LoginDetails {ipAddress = Core.Nothing, loginTime = Core.Nothing}

instance Core.FromJSON LoginDetails where
  parseJSON =
    Core.withObject
      "LoginDetails"
      ( \o ->
          LoginDetails
            Core.<$> (o Core..:? "ipAddress")
            Core.<*> (o Core..:? "loginTime")
      )

instance Core.ToJSON LoginDetails where
  toJSON LoginDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("ipAddress" Core..=) Core.<$> ipAddress,
            ("loginTime" Core..=) Core.<$> loginTime
          ]
      )

-- | Proto for all phishing alerts with common payload. Supported types are any of the following: * User reported phishing * User reported spam spike * Suspicious message reported * Phishing reclassification * Malware reclassification * Gmail potential employee spoofing
--
-- /See:/ 'newMailPhishing' smart constructor.
data MailPhishing = MailPhishing
  { -- | The domain ID.
    domainId :: (Core.Maybe DomainId),
    -- | If @true@, the email originated from within the organization.
    isInternal :: (Core.Maybe Core.Bool),
    -- | The entity whose actions triggered a Gmail phishing alert.
    maliciousEntity :: (Core.Maybe MaliciousEntity),
    -- | The list of messages contained by this alert.
    messages :: (Core.Maybe [GmailMessageInfo]),
    -- | System actions on the messages.
    systemActionType :: (Core.Maybe MailPhishing_SystemActionType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MailPhishing' with the minimum fields required to make a request.
newMailPhishing ::
  MailPhishing
newMailPhishing =
  MailPhishing
    { domainId = Core.Nothing,
      isInternal = Core.Nothing,
      maliciousEntity = Core.Nothing,
      messages = Core.Nothing,
      systemActionType = Core.Nothing
    }

instance Core.FromJSON MailPhishing where
  parseJSON =
    Core.withObject
      "MailPhishing"
      ( \o ->
          MailPhishing
            Core.<$> (o Core..:? "domainId")
            Core.<*> (o Core..:? "isInternal")
            Core.<*> (o Core..:? "maliciousEntity")
            Core.<*> (o Core..:? "messages")
            Core.<*> (o Core..:? "systemActionType")
      )

instance Core.ToJSON MailPhishing where
  toJSON MailPhishing {..} =
    Core.object
      ( Core.catMaybes
          [ ("domainId" Core..=) Core.<$> domainId,
            ("isInternal" Core..=) Core.<$> isInternal,
            ("maliciousEntity" Core..=) Core.<$> maliciousEntity,
            ("messages" Core..=) Core.<$> messages,
            ("systemActionType" Core..=) Core.<$> systemActionType
          ]
      )

-- | Entity whose actions triggered a Gmail phishing alert.
--
-- /See:/ 'newMaliciousEntity' smart constructor.
data MaliciousEntity = MaliciousEntity
  { -- | The header from display name.
    displayName :: (Core.Maybe Core.Text),
    -- | The actor who triggered a gmail phishing alert.
    entity :: (Core.Maybe User),
    -- | The sender email address.
    fromHeader :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaliciousEntity' with the minimum fields required to make a request.
newMaliciousEntity ::
  MaliciousEntity
newMaliciousEntity =
  MaliciousEntity
    { displayName = Core.Nothing,
      entity = Core.Nothing,
      fromHeader = Core.Nothing
    }

instance Core.FromJSON MaliciousEntity where
  parseJSON =
    Core.withObject
      "MaliciousEntity"
      ( \o ->
          MaliciousEntity
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "entity")
            Core.<*> (o Core..:? "fromHeader")
      )

instance Core.ToJSON MaliciousEntity where
  toJSON MaliciousEntity {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("entity" Core..=) Core.<$> entity,
            ("fromHeader" Core..=) Core.<$> fromHeader
          ]
      )

-- | Alert Created by the MSA team for communications necessary for continued use of Google Workspace Products.
--
-- /See:/ 'newMandatoryServiceAnnouncement' smart constructor.
data MandatoryServiceAnnouncement = MandatoryServiceAnnouncement
  { -- | Detailed, freeform text describing the announcement
    description :: (Core.Maybe Core.Text),
    -- | One line summary of the announcement
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MandatoryServiceAnnouncement' with the minimum fields required to make a request.
newMandatoryServiceAnnouncement ::
  MandatoryServiceAnnouncement
newMandatoryServiceAnnouncement =
  MandatoryServiceAnnouncement
    { description = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON MandatoryServiceAnnouncement where
  parseJSON =
    Core.withObject
      "MandatoryServiceAnnouncement"
      ( \o ->
          MandatoryServiceAnnouncement
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON MandatoryServiceAnnouncement where
  toJSON MandatoryServiceAnnouncement {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Proto that contains match information from the condition part of the rule.
--
-- /See:/ 'newMatchInfo' smart constructor.
data MatchInfo = MatchInfo
  { -- | For matched detector predefined by Google.
    predefinedDetector :: (Core.Maybe PredefinedDetectorInfo),
    -- | For matched detector defined by administrators.
    userDefinedDetector :: (Core.Maybe UserDefinedDetectorInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MatchInfo' with the minimum fields required to make a request.
newMatchInfo ::
  MatchInfo
newMatchInfo =
  MatchInfo
    { predefinedDetector = Core.Nothing,
      userDefinedDetector = Core.Nothing
    }

instance Core.FromJSON MatchInfo where
  parseJSON =
    Core.withObject
      "MatchInfo"
      ( \o ->
          MatchInfo
            Core.<$> (o Core..:? "predefinedDetector")
            Core.<*> (o Core..:? "userDefinedDetector")
      )

instance Core.ToJSON MatchInfo where
  toJSON MatchInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("predefinedDetector" Core..=) Core.<$> predefinedDetector,
            ("userDefinedDetector" Core..=) Core.<$> userDefinedDetector
          ]
      )

-- | New alert tracking numbers.
--
-- /See:/ 'newMergeInfo' smart constructor.
data MergeInfo = MergeInfo
  { -- | Optional. New alert ID. Reference the [google.apps.alertcenter.Alert] with this ID for the current state.
    newAlertId' :: (Core.Maybe Core.Text),
    -- | The new tracking ID from the parent incident.
    newIncidentTrackingId' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MergeInfo' with the minimum fields required to make a request.
newMergeInfo ::
  MergeInfo
newMergeInfo =
  MergeInfo
    { newAlertId' = Core.Nothing,
      newIncidentTrackingId' = Core.Nothing
    }

instance Core.FromJSON MergeInfo where
  parseJSON =
    Core.withObject
      "MergeInfo"
      ( \o ->
          MergeInfo
            Core.<$> (o Core..:? "newAlertId")
            Core.<*> (o Core..:? "newIncidentTrackingId")
      )

instance Core.ToJSON MergeInfo where
  toJSON MergeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("newAlertId" Core..=) Core.<$> newAlertId',
            ("newIncidentTrackingId" Core..=) Core.<$> newIncidentTrackingId'
          ]
      )

-- | Settings for callback notifications. For more details see <https://developers.google.com/admin-sdk/alertcenter/guides/notifications Google Workspace Alert Notification>.
--
-- /See:/ 'newNotification' smart constructor.
newtype Notification = Notification
  { -- | A Google Cloud Pub\/sub topic destination.
    cloudPubsubTopic :: (Core.Maybe CloudPubsubTopic)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
newNotification ::
  Notification
newNotification = Notification {cloudPubsubTopic = Core.Nothing}

instance Core.FromJSON Notification where
  parseJSON =
    Core.withObject
      "Notification"
      (\o -> Notification Core.<$> (o Core..:? "cloudPubsubTopic"))

instance Core.ToJSON Notification where
  toJSON Notification {..} =
    Core.object
      ( Core.catMaybes
          [("cloudPubsubTopic" Core..=) Core.<$> cloudPubsubTopic]
      )

-- | Alert for a spike in user reported phishing. /Warning/: This type has been deprecated. Use </admin-sdk/alertcenter/reference/rest/v1beta1/MailPhishing MailPhishing> instead.
--
-- /See:/ 'newPhishingSpike' smart constructor.
data PhishingSpike = PhishingSpike
  { -- | The domain ID.
    domainId :: (Core.Maybe DomainId),
    -- | If @true@, the email originated from within the organization.
    isInternal :: (Core.Maybe Core.Bool),
    -- | The entity whose actions triggered a Gmail phishing alert.
    maliciousEntity :: (Core.Maybe MaliciousEntity),
    -- | The list of messages contained by this alert.
    messages :: (Core.Maybe [GmailMessageInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhishingSpike' with the minimum fields required to make a request.
newPhishingSpike ::
  PhishingSpike
newPhishingSpike =
  PhishingSpike
    { domainId = Core.Nothing,
      isInternal = Core.Nothing,
      maliciousEntity = Core.Nothing,
      messages = Core.Nothing
    }

instance Core.FromJSON PhishingSpike where
  parseJSON =
    Core.withObject
      "PhishingSpike"
      ( \o ->
          PhishingSpike
            Core.<$> (o Core..:? "domainId")
            Core.<*> (o Core..:? "isInternal")
            Core.<*> (o Core..:? "maliciousEntity")
            Core.<*> (o Core..:? "messages")
      )

instance Core.ToJSON PhishingSpike where
  toJSON PhishingSpike {..} =
    Core.object
      ( Core.catMaybes
          [ ("domainId" Core..=) Core.<$> domainId,
            ("isInternal" Core..=) Core.<$> isInternal,
            ("maliciousEntity" Core..=) Core.<$> maliciousEntity,
            ("messages" Core..=) Core.<$> messages
          ]
      )

-- | Detector provided by Google.
--
-- /See:/ 'newPredefinedDetectorInfo' smart constructor.
newtype PredefinedDetectorInfo = PredefinedDetectorInfo
  { -- | Name that uniquely identifies the detector.
    detectorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PredefinedDetectorInfo' with the minimum fields required to make a request.
newPredefinedDetectorInfo ::
  PredefinedDetectorInfo
newPredefinedDetectorInfo =
  PredefinedDetectorInfo {detectorName = Core.Nothing}

instance Core.FromJSON PredefinedDetectorInfo where
  parseJSON =
    Core.withObject
      "PredefinedDetectorInfo"
      ( \o ->
          PredefinedDetectorInfo Core.<$> (o Core..:? "detectorName")
      )

instance Core.ToJSON PredefinedDetectorInfo where
  toJSON PredefinedDetectorInfo {..} =
    Core.object
      (Core.catMaybes [("detectorName" Core..=) Core.<$> detectorName])

-- | -   Event occurred when primary admin changed in customer\'s account. The event are being received from insight forwarder
--
-- /See:/ 'newPrimaryAdminChangedEvent' smart constructor.
data PrimaryAdminChangedEvent = PrimaryAdminChangedEvent
  { -- | domain in which actioned occurred
    domain :: (Core.Maybe Core.Text),
    -- | Email of person who was the primary admin before the action
    previousAdminEmail :: (Core.Maybe Core.Text),
    -- | Email of person who is the primary admin after the action
    updatedAdminEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrimaryAdminChangedEvent' with the minimum fields required to make a request.
newPrimaryAdminChangedEvent ::
  PrimaryAdminChangedEvent
newPrimaryAdminChangedEvent =
  PrimaryAdminChangedEvent
    { domain = Core.Nothing,
      previousAdminEmail = Core.Nothing,
      updatedAdminEmail = Core.Nothing
    }

instance Core.FromJSON PrimaryAdminChangedEvent where
  parseJSON =
    Core.withObject
      "PrimaryAdminChangedEvent"
      ( \o ->
          PrimaryAdminChangedEvent
            Core.<$> (o Core..:? "domain")
            Core.<*> (o Core..:? "previousAdminEmail")
            Core.<*> (o Core..:? "updatedAdminEmail")
      )

instance Core.ToJSON PrimaryAdminChangedEvent where
  toJSON PrimaryAdminChangedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("previousAdminEmail" Core..=) Core.<$> previousAdminEmail,
            ("updatedAdminEmail" Core..=) Core.<$> updatedAdminEmail
          ]
      )

-- | Alerts from Reporting Rules configured by Admin.
--
-- /See:/ 'newReportingRule' smart constructor.
data ReportingRule = ReportingRule
  { -- | Any other associated alert details, for example, AlertConfiguration.
    alertDetails :: (Core.Maybe Core.Base64),
    -- | Rule name
    name :: (Core.Maybe Core.Text),
    -- | Alert Rule query Sample Query query { condition { filter { expected/application/id: 777491262838 expected/event/name: \"indexable/content/change\" filter/op: IN } } conjunction/operator: OR }
    query :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportingRule' with the minimum fields required to make a request.
newReportingRule ::
  ReportingRule
newReportingRule =
  ReportingRule
    { alertDetails = Core.Nothing,
      name = Core.Nothing,
      query = Core.Nothing
    }

instance Core.FromJSON ReportingRule where
  parseJSON =
    Core.withObject
      "ReportingRule"
      ( \o ->
          ReportingRule
            Core.<$> (o Core..:? "alertDetails")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "query")
      )

instance Core.ToJSON ReportingRule where
  toJSON ReportingRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("alertDetails" Core..=) Core.<$> alertDetails,
            ("name" Core..=) Core.<$> name,
            ("query" Core..=) Core.<$> query
          ]
      )

-- | Requests for one application that needs default SQL setup.
--
-- /See:/ 'newRequestInfo' smart constructor.
data RequestInfo = RequestInfo
  { -- | List of app developers who triggered notifications for above application.
    appDeveloperEmail :: (Core.Maybe [Core.Text]),
    -- | Required. The application that requires the SQL setup.
    appKey :: (Core.Maybe Core.Text),
    -- | Required. Number of requests sent for this application to set up default SQL instance.
    numberOfRequests :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestInfo' with the minimum fields required to make a request.
newRequestInfo ::
  RequestInfo
newRequestInfo =
  RequestInfo
    { appDeveloperEmail = Core.Nothing,
      appKey = Core.Nothing,
      numberOfRequests = Core.Nothing
    }

instance Core.FromJSON RequestInfo where
  parseJSON =
    Core.withObject
      "RequestInfo"
      ( \o ->
          RequestInfo
            Core.<$> (o Core..:? "appDeveloperEmail")
            Core.<*> (o Core..:? "appKey")
            Core.<*> (o Core..:? "numberOfRequests" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON RequestInfo where
  toJSON RequestInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("appDeveloperEmail" Core..=) Core.<$> appDeveloperEmail,
            ("appKey" Core..=) Core.<$> appKey,
            ("numberOfRequests" Core..=)
              Core.. Core.AsText
              Core.<$> numberOfRequests
          ]
      )

-- | Proto that contains resource information.
--
-- /See:/ 'newResourceInfo' smart constructor.
data ResourceInfo = ResourceInfo
  { -- | Chat attachment ID.
    chatAttachmentId :: (Core.Maybe Core.Text),
    -- | Chat message ID.
    chatMessageId :: (Core.Maybe Core.Text),
    -- | Id to identify a device. For example, for Android devices, this is the \"Android Device Id\" and for Chrome OS devices, it\'s the \"Device Virtual Id\".
    deviceId :: (Core.Maybe Core.Text),
    -- | Drive file ID.
    documentId :: (Core.Maybe Core.Text),
    -- | Title of the resource, for example email subject, or document title.
    resourceTitle :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceInfo' with the minimum fields required to make a request.
newResourceInfo ::
  ResourceInfo
newResourceInfo =
  ResourceInfo
    { chatAttachmentId = Core.Nothing,
      chatMessageId = Core.Nothing,
      deviceId = Core.Nothing,
      documentId = Core.Nothing,
      resourceTitle = Core.Nothing
    }

instance Core.FromJSON ResourceInfo where
  parseJSON =
    Core.withObject
      "ResourceInfo"
      ( \o ->
          ResourceInfo
            Core.<$> (o Core..:? "chatAttachmentId")
            Core.<*> (o Core..:? "chatMessageId")
            Core.<*> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "documentId")
            Core.<*> (o Core..:? "resourceTitle")
      )

instance Core.ToJSON ResourceInfo where
  toJSON ResourceInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("chatAttachmentId" Core..=) Core.<$> chatAttachmentId,
            ("chatMessageId" Core..=) Core.<$> chatMessageId,
            ("deviceId" Core..=) Core.<$> deviceId,
            ("documentId" Core..=) Core.<$> documentId,
            ("resourceTitle" Core..=) Core.<$> resourceTitle
          ]
      )

-- | Proto that contains rule information.
--
-- /See:/ 'newRuleInfo' smart constructor.
data RuleInfo = RuleInfo
  { -- | User provided name of the rule.
    displayName :: (Core.Maybe Core.Text),
    -- | Resource name that uniquely identifies the rule.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuleInfo' with the minimum fields required to make a request.
newRuleInfo ::
  RuleInfo
newRuleInfo =
  RuleInfo {displayName = Core.Nothing, resourceName = Core.Nothing}

instance Core.FromJSON RuleInfo where
  parseJSON =
    Core.withObject
      "RuleInfo"
      ( \o ->
          RuleInfo
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "resourceName")
      )

instance Core.ToJSON RuleInfo where
  toJSON RuleInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("resourceName" Core..=) Core.<$> resourceName
          ]
      )

-- | Common alert information about violated rules that are configured by Google Workspace administrators.
--
-- /See:/ 'newRuleViolationInfo' smart constructor.
data RuleViolationInfo = RuleViolationInfo
  { -- | Source of the data.
    dataSource :: (Core.Maybe RuleViolationInfo_DataSource),
    -- | Event associated with this alert after applying the rule.
    eventType :: (Core.Maybe RuleViolationInfo_EventType),
    -- | List of matches that were found in the resource content.
    matchInfo :: (Core.Maybe [MatchInfo]),
    -- | Resource recipients. For Drive, they are grantees that the Drive file was shared with at the time of rule triggering. Valid values include user emails, group emails, domains, or \'anyone\' if the file was publicly accessible. If the file was private the recipients list will be empty. For Gmail, they are emails of the users or groups that the Gmail message was sent to.
    recipients :: (Core.Maybe [Core.Text]),
    -- | Details of the resource which violated the rule.
    resourceInfo :: (Core.Maybe ResourceInfo),
    -- | Details of the violated rule.
    ruleInfo :: (Core.Maybe RuleInfo),
    -- | Actions suppressed due to other actions with higher priority.
    suppressedActionTypes :: (Core.Maybe [RuleViolationInfo_SuppressedActionTypesItem]),
    -- | Trigger of the rule.
    trigger :: (Core.Maybe RuleViolationInfo_Trigger),
    -- | Metadata related to the triggered actions.
    triggeredActionInfo :: (Core.Maybe [ActionInfo]),
    -- | Actions applied as a consequence of the rule being triggered.
    triggeredActionTypes :: (Core.Maybe [RuleViolationInfo_TriggeredActionTypesItem]),
    -- | Email of the user who caused the violation. Value could be empty if not applicable, for example, a violation found by drive continuous scan.
    triggeringUserEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuleViolationInfo' with the minimum fields required to make a request.
newRuleViolationInfo ::
  RuleViolationInfo
newRuleViolationInfo =
  RuleViolationInfo
    { dataSource = Core.Nothing,
      eventType = Core.Nothing,
      matchInfo = Core.Nothing,
      recipients = Core.Nothing,
      resourceInfo = Core.Nothing,
      ruleInfo = Core.Nothing,
      suppressedActionTypes = Core.Nothing,
      trigger = Core.Nothing,
      triggeredActionInfo = Core.Nothing,
      triggeredActionTypes = Core.Nothing,
      triggeringUserEmail = Core.Nothing
    }

instance Core.FromJSON RuleViolationInfo where
  parseJSON =
    Core.withObject
      "RuleViolationInfo"
      ( \o ->
          RuleViolationInfo
            Core.<$> (o Core..:? "dataSource")
            Core.<*> (o Core..:? "eventType")
            Core.<*> (o Core..:? "matchInfo")
            Core.<*> (o Core..:? "recipients")
            Core.<*> (o Core..:? "resourceInfo")
            Core.<*> (o Core..:? "ruleInfo")
            Core.<*> (o Core..:? "suppressedActionTypes")
            Core.<*> (o Core..:? "trigger")
            Core.<*> (o Core..:? "triggeredActionInfo")
            Core.<*> (o Core..:? "triggeredActionTypes")
            Core.<*> (o Core..:? "triggeringUserEmail")
      )

instance Core.ToJSON RuleViolationInfo where
  toJSON RuleViolationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSource" Core..=) Core.<$> dataSource,
            ("eventType" Core..=) Core.<$> eventType,
            ("matchInfo" Core..=) Core.<$> matchInfo,
            ("recipients" Core..=) Core.<$> recipients,
            ("resourceInfo" Core..=) Core.<$> resourceInfo,
            ("ruleInfo" Core..=) Core.<$> ruleInfo,
            ("suppressedActionTypes" Core..=) Core.<$> suppressedActionTypes,
            ("trigger" Core..=) Core.<$> trigger,
            ("triggeredActionInfo" Core..=) Core.<$> triggeredActionInfo,
            ("triggeredActionTypes" Core..=) Core.<$> triggeredActionTypes,
            ("triggeringUserEmail" Core..=) Core.<$> triggeringUserEmail
          ]
      )

-- | -   Event occurred when SSO Profile created in customer\'s account. The event are being received from insight forwarder
--
-- /See:/ 'newSSOProfileCreatedEvent' smart constructor.
newtype SSOProfileCreatedEvent = SSOProfileCreatedEvent
  { -- | sso profile name which got created
    inboundSsoProfileName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SSOProfileCreatedEvent' with the minimum fields required to make a request.
newSSOProfileCreatedEvent ::
  SSOProfileCreatedEvent
newSSOProfileCreatedEvent =
  SSOProfileCreatedEvent {inboundSsoProfileName = Core.Nothing}

instance Core.FromJSON SSOProfileCreatedEvent where
  parseJSON =
    Core.withObject
      "SSOProfileCreatedEvent"
      ( \o ->
          SSOProfileCreatedEvent
            Core.<$> (o Core..:? "inboundSsoProfileName")
      )

instance Core.ToJSON SSOProfileCreatedEvent where
  toJSON SSOProfileCreatedEvent {..} =
    Core.object
      ( Core.catMaybes
          [("inboundSsoProfileName" Core..=) Core.<$> inboundSsoProfileName]
      )

-- | -   Event occurred when SSO Profile deleted in customer\'s account. The event are being received from insight forwarder
--
-- /See:/ 'newSSOProfileDeletedEvent' smart constructor.
newtype SSOProfileDeletedEvent = SSOProfileDeletedEvent
  { -- | sso profile name which got deleted
    inboundSsoProfileName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SSOProfileDeletedEvent' with the minimum fields required to make a request.
newSSOProfileDeletedEvent ::
  SSOProfileDeletedEvent
newSSOProfileDeletedEvent =
  SSOProfileDeletedEvent {inboundSsoProfileName = Core.Nothing}

instance Core.FromJSON SSOProfileDeletedEvent where
  parseJSON =
    Core.withObject
      "SSOProfileDeletedEvent"
      ( \o ->
          SSOProfileDeletedEvent
            Core.<$> (o Core..:? "inboundSsoProfileName")
      )

instance Core.ToJSON SSOProfileDeletedEvent where
  toJSON SSOProfileDeletedEvent {..} =
    Core.object
      ( Core.catMaybes
          [("inboundSsoProfileName" Core..=) Core.<$> inboundSsoProfileName]
      )

-- | -   Event occurred when SSO Profile updated in customer\'s account. The event are being received from insight forwarder
--
-- /See:/ 'newSSOProfileUpdatedEvent' smart constructor.
data SSOProfileUpdatedEvent = SSOProfileUpdatedEvent
  { -- | changes made to sso profile
    inboundSsoProfileChanges :: (Core.Maybe Core.Text),
    -- | sso profile name which got updated
    inboundSsoProfileName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SSOProfileUpdatedEvent' with the minimum fields required to make a request.
newSSOProfileUpdatedEvent ::
  SSOProfileUpdatedEvent
newSSOProfileUpdatedEvent =
  SSOProfileUpdatedEvent
    { inboundSsoProfileChanges = Core.Nothing,
      inboundSsoProfileName = Core.Nothing
    }

instance Core.FromJSON SSOProfileUpdatedEvent where
  parseJSON =
    Core.withObject
      "SSOProfileUpdatedEvent"
      ( \o ->
          SSOProfileUpdatedEvent
            Core.<$> (o Core..:? "inboundSsoProfileChanges")
            Core.<*> (o Core..:? "inboundSsoProfileName")
      )

instance Core.ToJSON SSOProfileUpdatedEvent where
  toJSON SSOProfileUpdatedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("inboundSsoProfileChanges" Core..=)
              Core.<$> inboundSsoProfileChanges,
            ("inboundSsoProfileName" Core..=) Core.<$> inboundSsoProfileName
          ]
      )

-- | Alert that is triggered when Sensitive Admin Action occur in customer account.
--
-- /See:/ 'newSensitiveAdminAction' smart constructor.
data SensitiveAdminAction = SensitiveAdminAction
  { -- | Email of person who performed the action
    actorEmail :: (Core.Maybe Core.Text),
    -- | The time at which event occurred
    eventTime :: (Core.Maybe Core.DateTime),
    -- | Event occurred when primary admin changed in customer\'s account
    primaryAdminChangedEvent :: (Core.Maybe PrimaryAdminChangedEvent),
    -- | Event occurred when SSO Profile created in customer\'s account
    ssoProfileCreatedEvent :: (Core.Maybe SSOProfileCreatedEvent),
    -- | Event occurred when SSO Profile deleted in customer\'s account
    ssoProfileDeletedEvent :: (Core.Maybe SSOProfileDeletedEvent),
    -- | Event occurred when SSO Profile updated in customer\'s account
    ssoProfileUpdatedEvent :: (Core.Maybe SSOProfileUpdatedEvent),
    -- | Event occurred when password was reset for super admin in customer\'s account
    superAdminPasswordResetEvent :: (Core.Maybe SuperAdminPasswordResetEvent)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SensitiveAdminAction' with the minimum fields required to make a request.
newSensitiveAdminAction ::
  SensitiveAdminAction
newSensitiveAdminAction =
  SensitiveAdminAction
    { actorEmail = Core.Nothing,
      eventTime = Core.Nothing,
      primaryAdminChangedEvent = Core.Nothing,
      ssoProfileCreatedEvent = Core.Nothing,
      ssoProfileDeletedEvent = Core.Nothing,
      ssoProfileUpdatedEvent = Core.Nothing,
      superAdminPasswordResetEvent = Core.Nothing
    }

instance Core.FromJSON SensitiveAdminAction where
  parseJSON =
    Core.withObject
      "SensitiveAdminAction"
      ( \o ->
          SensitiveAdminAction
            Core.<$> (o Core..:? "actorEmail")
            Core.<*> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "primaryAdminChangedEvent")
            Core.<*> (o Core..:? "ssoProfileCreatedEvent")
            Core.<*> (o Core..:? "ssoProfileDeletedEvent")
            Core.<*> (o Core..:? "ssoProfileUpdatedEvent")
            Core.<*> (o Core..:? "superAdminPasswordResetEvent")
      )

instance Core.ToJSON SensitiveAdminAction where
  toJSON SensitiveAdminAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("actorEmail" Core..=) Core.<$> actorEmail,
            ("eventTime" Core..=) Core.<$> eventTime,
            ("primaryAdminChangedEvent" Core..=)
              Core.<$> primaryAdminChangedEvent,
            ("ssoProfileCreatedEvent" Core..=) Core.<$> ssoProfileCreatedEvent,
            ("ssoProfileDeletedEvent" Core..=) Core.<$> ssoProfileDeletedEvent,
            ("ssoProfileUpdatedEvent" Core..=) Core.<$> ssoProfileUpdatedEvent,
            ("superAdminPasswordResetEvent" Core..=)
              Core.<$> superAdminPasswordResetEvent
          ]
      )

-- | Customer-level settings.
--
-- /See:/ 'newSettings' smart constructor.
newtype Settings = Settings
  { -- | The list of notifications.
    notifications :: (Core.Maybe [Notification])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
newSettings ::
  Settings
newSettings = Settings {notifications = Core.Nothing}

instance Core.FromJSON Settings where
  parseJSON =
    Core.withObject
      "Settings"
      (\o -> Settings Core.<$> (o Core..:? "notifications"))

instance Core.ToJSON Settings where
  toJSON Settings {..} =
    Core.object
      (Core.catMaybes [("notifications" Core..=) Core.<$> notifications])

-- | A state-sponsored attack alert. Derived from audit logs.
--
-- /See:/ 'newStateSponsoredAttack' smart constructor.
newtype StateSponsoredAttack = StateSponsoredAttack
  { -- | The email of the user this incident was created for.
    email :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StateSponsoredAttack' with the minimum fields required to make a request.
newStateSponsoredAttack ::
  StateSponsoredAttack
newStateSponsoredAttack =
  StateSponsoredAttack {email = Core.Nothing}

instance Core.FromJSON StateSponsoredAttack where
  parseJSON =
    Core.withObject
      "StateSponsoredAttack"
      (\o -> StateSponsoredAttack Core.<$> (o Core..:? "email"))

instance Core.ToJSON StateSponsoredAttack where
  toJSON StateSponsoredAttack {..} =
    Core.object (Core.catMaybes [("email" Core..=) Core.<$> email])

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | -   Event occurred when password was reset for super admin in customer\'s account. The event are being received from insight forwarder
--
-- /See:/ 'newSuperAdminPasswordResetEvent' smart constructor.
newtype SuperAdminPasswordResetEvent = SuperAdminPasswordResetEvent
  { -- | email of person whose password was reset
    userEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuperAdminPasswordResetEvent' with the minimum fields required to make a request.
newSuperAdminPasswordResetEvent ::
  SuperAdminPasswordResetEvent
newSuperAdminPasswordResetEvent =
  SuperAdminPasswordResetEvent {userEmail = Core.Nothing}

instance Core.FromJSON SuperAdminPasswordResetEvent where
  parseJSON =
    Core.withObject
      "SuperAdminPasswordResetEvent"
      ( \o ->
          SuperAdminPasswordResetEvent Core.<$> (o Core..:? "userEmail")
      )

instance Core.ToJSON SuperAdminPasswordResetEvent where
  toJSON SuperAdminPasswordResetEvent {..} =
    Core.object
      (Core.catMaybes [("userEmail" Core..=) Core.<$> userEmail])

-- | Support ticket related to Access Approvals request
--
-- /See:/ 'newSupportTicket' smart constructor.
data SupportTicket = SupportTicket
  { -- | Support ticket ID
    ticketId :: (Core.Maybe Core.Text),
    -- | Link to support ticket
    ticketUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SupportTicket' with the minimum fields required to make a request.
newSupportTicket ::
  SupportTicket
newSupportTicket =
  SupportTicket {ticketId = Core.Nothing, ticketUrl = Core.Nothing}

instance Core.FromJSON SupportTicket where
  parseJSON =
    Core.withObject
      "SupportTicket"
      ( \o ->
          SupportTicket
            Core.<$> (o Core..:? "ticketId")
            Core.<*> (o Core..:? "ticketUrl")
      )

instance Core.ToJSON SupportTicket where
  toJSON SupportTicket {..} =
    Core.object
      ( Core.catMaybes
          [ ("ticketId" Core..=) Core.<$> ticketId,
            ("ticketUrl" Core..=) Core.<$> ticketUrl
          ]
      )

-- | A mobile suspicious activity alert. Derived from audit logs.
--
-- /See:/ 'newSuspiciousActivity' smart constructor.
data SuspiciousActivity = SuspiciousActivity
  { -- | The email of the user this alert was created for.
    email :: (Core.Maybe Core.Text),
    -- | Required. The list of security events.
    events :: (Core.Maybe [SuspiciousActivitySecurityDetail])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuspiciousActivity' with the minimum fields required to make a request.
newSuspiciousActivity ::
  SuspiciousActivity
newSuspiciousActivity =
  SuspiciousActivity {email = Core.Nothing, events = Core.Nothing}

instance Core.FromJSON SuspiciousActivity where
  parseJSON =
    Core.withObject
      "SuspiciousActivity"
      ( \o ->
          SuspiciousActivity
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "events")
      )

instance Core.ToJSON SuspiciousActivity where
  toJSON SuspiciousActivity {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("events" Core..=) Core.<$> events
          ]
      )

-- | Detailed information of a single MDM suspicious activity event.
--
-- /See:/ 'newSuspiciousActivitySecurityDetail' smart constructor.
data SuspiciousActivitySecurityDetail = SuspiciousActivitySecurityDetail
  { -- | Required. The device ID.
    deviceId :: (Core.Maybe Core.Text),
    -- | The model of the device.
    deviceModel :: (Core.Maybe Core.Text),
    -- | The device property which was changed.
    deviceProperty :: (Core.Maybe Core.Text),
    -- | The type of the device.
    deviceType :: (Core.Maybe Core.Text),
    -- | Required for iOS, empty for others.
    iosVendorId :: (Core.Maybe Core.Text),
    -- | The new value of the device property after the change.
    newValue' :: (Core.Maybe Core.Text),
    -- | The old value of the device property before the change.
    oldValue :: (Core.Maybe Core.Text),
    -- | The device resource ID.
    resourceId :: (Core.Maybe Core.Text),
    -- | The serial number of the device.
    serialNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuspiciousActivitySecurityDetail' with the minimum fields required to make a request.
newSuspiciousActivitySecurityDetail ::
  SuspiciousActivitySecurityDetail
newSuspiciousActivitySecurityDetail =
  SuspiciousActivitySecurityDetail
    { deviceId = Core.Nothing,
      deviceModel = Core.Nothing,
      deviceProperty = Core.Nothing,
      deviceType = Core.Nothing,
      iosVendorId = Core.Nothing,
      newValue' = Core.Nothing,
      oldValue = Core.Nothing,
      resourceId = Core.Nothing,
      serialNumber = Core.Nothing
    }

instance Core.FromJSON SuspiciousActivitySecurityDetail where
  parseJSON =
    Core.withObject
      "SuspiciousActivitySecurityDetail"
      ( \o ->
          SuspiciousActivitySecurityDetail
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceModel")
            Core.<*> (o Core..:? "deviceProperty")
            Core.<*> (o Core..:? "deviceType")
            Core.<*> (o Core..:? "iosVendorId")
            Core.<*> (o Core..:? "newValue")
            Core.<*> (o Core..:? "oldValue")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "serialNumber")
      )

instance Core.ToJSON SuspiciousActivitySecurityDetail where
  toJSON SuspiciousActivitySecurityDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.<$> deviceId,
            ("deviceModel" Core..=) Core.<$> deviceModel,
            ("deviceProperty" Core..=) Core.<$> deviceProperty,
            ("deviceType" Core..=) Core.<$> deviceType,
            ("iosVendorId" Core..=) Core.<$> iosVendorId,
            ("newValue" Core..=) Core.<$> newValue',
            ("oldValue" Core..=) Core.<$> oldValue,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("serialNumber" Core..=) Core.<$> serialNumber
          ]
      )

-- | Details for an invalid transfer or forward.
--
-- /See:/ 'newTransferError' smart constructor.
data TransferError = TransferError
  { -- | User\'s email address. This may be unavailable if the entity was deleted.
    email :: (Core.Maybe Core.Text),
    -- | Type of entity being transferred to. For ring group members, this should always be USER.
    entityType :: (Core.Maybe TransferError_EntityType),
    -- | Ring group or auto attendant ID. Not set for users.
    id :: (Core.Maybe Core.Text),
    -- | Reason for the error.
    invalidReason :: (Core.Maybe TransferError_InvalidReason),
    -- | User\'s full name, or the ring group \/ auto attendant name. This may be unavailable if the entity was deleted.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferError' with the minimum fields required to make a request.
newTransferError ::
  TransferError
newTransferError =
  TransferError
    { email = Core.Nothing,
      entityType = Core.Nothing,
      id = Core.Nothing,
      invalidReason = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON TransferError where
  parseJSON =
    Core.withObject
      "TransferError"
      ( \o ->
          TransferError
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "entityType")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "invalidReason")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON TransferError where
  toJSON TransferError {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("entityType" Core..=) Core.<$> entityType,
            ("id" Core..=) Core.<$> id,
            ("invalidReason" Core..=) Core.<$> invalidReason,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Error related to transferring or forwarding a phone call.
--
-- /See:/ 'newTransferMisconfiguration' smart constructor.
newtype TransferMisconfiguration = TransferMisconfiguration
  { -- | Details for each invalid transfer or forward.
    errors :: (Core.Maybe [TransferError])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferMisconfiguration' with the minimum fields required to make a request.
newTransferMisconfiguration ::
  TransferMisconfiguration
newTransferMisconfiguration =
  TransferMisconfiguration {errors = Core.Nothing}

instance Core.FromJSON TransferMisconfiguration where
  parseJSON =
    Core.withObject
      "TransferMisconfiguration"
      (\o -> TransferMisconfiguration Core.<$> (o Core..:? "errors"))

instance Core.ToJSON TransferMisconfiguration where
  toJSON TransferMisconfiguration {..} =
    Core.object (Core.catMaybes [("errors" Core..=) Core.<$> errors])

-- | A request to undelete a specific alert that was marked for deletion.
--
-- /See:/ 'newUndeleteAlertRequest' smart constructor.
newtype UndeleteAlertRequest = UndeleteAlertRequest
  { -- | Optional. The unique identifier of the Google Workspace account of the customer the alert is associated with. The @customer_id@ must have the initial \"C\" stripped (for example, @046psxkn@). Inferred from the caller identity if not provided. <https://support.google.com/cloudidentity/answer/10070793 Find your customer ID>.
    customerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteAlertRequest' with the minimum fields required to make a request.
newUndeleteAlertRequest ::
  UndeleteAlertRequest
newUndeleteAlertRequest =
  UndeleteAlertRequest {customerId = Core.Nothing}

instance Core.FromJSON UndeleteAlertRequest where
  parseJSON =
    Core.withObject
      "UndeleteAlertRequest"
      (\o -> UndeleteAlertRequest Core.<$> (o Core..:? "customerId"))

instance Core.ToJSON UndeleteAlertRequest where
  toJSON UndeleteAlertRequest {..} =
    Core.object
      (Core.catMaybes [("customerId" Core..=) Core.<$> customerId])

-- | A user.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | Display name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | Email address of the user.
    emailAddress :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User {displayName = Core.Nothing, emailAddress = Core.Nothing}

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "emailAddress")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("emailAddress" Core..=) Core.<$> emailAddress
          ]
      )

-- | -   Alerts from UserChanges bucket Rules for predefined rules which contain the below rules. Suspended user made active New user Added User suspended (by admin) User granted admin privileges User admin privileges revoked User deleted Users password changed
--
-- /See:/ 'newUserChanges' smart constructor.
newtype UserChanges = UserChanges
  { -- | Rule name
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserChanges' with the minimum fields required to make a request.
newUserChanges ::
  UserChanges
newUserChanges = UserChanges {name = Core.Nothing}

instance Core.FromJSON UserChanges where
  parseJSON =
    Core.withObject
      "UserChanges"
      (\o -> UserChanges Core.<$> (o Core..:? "name"))

instance Core.ToJSON UserChanges where
  toJSON UserChanges {..} =
    Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Detector defined by administrators.
--
-- /See:/ 'newUserDefinedDetectorInfo' smart constructor.
data UserDefinedDetectorInfo = UserDefinedDetectorInfo
  { -- | Display name of the detector.
    displayName :: (Core.Maybe Core.Text),
    -- | Resource name that uniquely identifies the detector.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserDefinedDetectorInfo' with the minimum fields required to make a request.
newUserDefinedDetectorInfo ::
  UserDefinedDetectorInfo
newUserDefinedDetectorInfo =
  UserDefinedDetectorInfo
    { displayName = Core.Nothing,
      resourceName = Core.Nothing
    }

instance Core.FromJSON UserDefinedDetectorInfo where
  parseJSON =
    Core.withObject
      "UserDefinedDetectorInfo"
      ( \o ->
          UserDefinedDetectorInfo
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "resourceName")
      )

instance Core.ToJSON UserDefinedDetectorInfo where
  toJSON UserDefinedDetectorInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("resourceName" Core..=) Core.<$> resourceName
          ]
      )

-- | An alert triggered when Google Voice configuration becomes invalid, generally due to an external entity being modified or deleted.
--
-- /See:/ 'newVoiceMisconfiguration' smart constructor.
data VoiceMisconfiguration = VoiceMisconfiguration
  { -- | Name of the entity whose configuration is now invalid.
    entityName :: (Core.Maybe Core.Text),
    -- | Type of the entity whose configuration is now invalid.
    entityType :: (Core.Maybe VoiceMisconfiguration_EntityType),
    -- | Link that the admin can follow to fix the issue.
    fixUri :: (Core.Maybe Core.Text),
    -- | Issue(s) with members of a ring group.
    membersMisconfiguration :: (Core.Maybe TransferMisconfiguration),
    -- | Issue(s) with transferring or forwarding to an external entity.
    transferMisconfiguration :: (Core.Maybe TransferMisconfiguration),
    -- | Issue(s) with sending to voicemail.
    voicemailMisconfiguration :: (Core.Maybe VoicemailMisconfiguration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoiceMisconfiguration' with the minimum fields required to make a request.
newVoiceMisconfiguration ::
  VoiceMisconfiguration
newVoiceMisconfiguration =
  VoiceMisconfiguration
    { entityName = Core.Nothing,
      entityType = Core.Nothing,
      fixUri = Core.Nothing,
      membersMisconfiguration = Core.Nothing,
      transferMisconfiguration = Core.Nothing,
      voicemailMisconfiguration = Core.Nothing
    }

instance Core.FromJSON VoiceMisconfiguration where
  parseJSON =
    Core.withObject
      "VoiceMisconfiguration"
      ( \o ->
          VoiceMisconfiguration
            Core.<$> (o Core..:? "entityName")
            Core.<*> (o Core..:? "entityType")
            Core.<*> (o Core..:? "fixUri")
            Core.<*> (o Core..:? "membersMisconfiguration")
            Core.<*> (o Core..:? "transferMisconfiguration")
            Core.<*> (o Core..:? "voicemailMisconfiguration")
      )

instance Core.ToJSON VoiceMisconfiguration where
  toJSON VoiceMisconfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("entityName" Core..=) Core.<$> entityName,
            ("entityType" Core..=) Core.<$> entityType,
            ("fixUri" Core..=) Core.<$> fixUri,
            ("membersMisconfiguration" Core..=)
              Core.<$> membersMisconfiguration,
            ("transferMisconfiguration" Core..=)
              Core.<$> transferMisconfiguration,
            ("voicemailMisconfiguration" Core..=)
              Core.<$> voicemailMisconfiguration
          ]
      )

-- | Issue(s) with sending to voicemail.
--
-- /See:/ 'newVoicemailMisconfiguration' smart constructor.
newtype VoicemailMisconfiguration = VoicemailMisconfiguration
  { -- | Issue(s) with voicemail recipients.
    errors :: (Core.Maybe [VoicemailRecipientError])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoicemailMisconfiguration' with the minimum fields required to make a request.
newVoicemailMisconfiguration ::
  VoicemailMisconfiguration
newVoicemailMisconfiguration =
  VoicemailMisconfiguration {errors = Core.Nothing}

instance Core.FromJSON VoicemailMisconfiguration where
  parseJSON =
    Core.withObject
      "VoicemailMisconfiguration"
      (\o -> VoicemailMisconfiguration Core.<$> (o Core..:? "errors"))

instance Core.ToJSON VoicemailMisconfiguration where
  toJSON VoicemailMisconfiguration {..} =
    Core.object (Core.catMaybes [("errors" Core..=) Core.<$> errors])

-- | Issue(s) with a voicemail recipient.
--
-- /See:/ 'newVoicemailRecipientError' smart constructor.
data VoicemailRecipientError = VoicemailRecipientError
  { -- | Email address of the invalid recipient. This may be unavailable if the recipient was deleted.
    email :: (Core.Maybe Core.Text),
    -- | Reason for the error.
    invalidReason :: (Core.Maybe VoicemailRecipientError_InvalidReason)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoicemailRecipientError' with the minimum fields required to make a request.
newVoicemailRecipientError ::
  VoicemailRecipientError
newVoicemailRecipientError =
  VoicemailRecipientError
    { email = Core.Nothing,
      invalidReason = Core.Nothing
    }

instance Core.FromJSON VoicemailRecipientError where
  parseJSON =
    Core.withObject
      "VoicemailRecipientError"
      ( \o ->
          VoicemailRecipientError
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "invalidReason")
      )

instance Core.ToJSON VoicemailRecipientError where
  toJSON VoicemailRecipientError {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("invalidReason" Core..=) Core.<$> invalidReason
          ]
      )
