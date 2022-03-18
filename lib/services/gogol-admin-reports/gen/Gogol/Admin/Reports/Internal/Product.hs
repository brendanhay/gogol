{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Reports.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Admin.Reports.Internal.Product
  ( -- * Activities
    Activities (..),
    newActivities,

    -- * Activity
    Activity (..),
    newActivity,

    -- * Activity_Actor
    Activity_Actor (..),
    newActivity_Actor,

    -- * Activity_EventsItem
    Activity_EventsItem (..),
    newActivity_EventsItem,

    -- * Activity_EventsItem_ParametersItem
    Activity_EventsItem_ParametersItem (..),
    newActivity_EventsItem_ParametersItem,

    -- * Activity_EventsItem_ParametersItem_MessageValue
    Activity_EventsItem_ParametersItem_MessageValue (..),
    newActivity_EventsItem_ParametersItem_MessageValue,

    -- * Activity_EventsItem_ParametersItem_MultiMessageValueItem
    Activity_EventsItem_ParametersItem_MultiMessageValueItem (..),
    newActivity_EventsItem_ParametersItem_MultiMessageValueItem,

    -- * Activity_Id
    Activity_Id (..),
    newActivity_Id,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- * NestedParameter
    NestedParameter (..),
    newNestedParameter,

    -- * UsageReport
    UsageReport (..),
    newUsageReport,

    -- * UsageReport_Entity
    UsageReport_Entity (..),
    newUsageReport_Entity,

    -- * UsageReport_ParametersItem
    UsageReport_ParametersItem (..),
    newUsageReport_ParametersItem,

    -- * UsageReport_ParametersItem_MsgValueItem
    UsageReport_ParametersItem_MsgValueItem (..),
    newUsageReport_ParametersItem_MsgValueItem,

    -- * UsageReports
    UsageReports (..),
    newUsageReports,

    -- * UsageReports_WarningsItem
    UsageReports_WarningsItem (..),
    newUsageReports_WarningsItem,

    -- * UsageReports_WarningsItem_DataItem
    UsageReports_WarningsItem_DataItem (..),
    newUsageReports_WarningsItem_DataItem,
  )
where

import Gogol.Admin.Reports.Internal.Sum
import qualified Gogol.Prelude as Core

-- | JSON template for a collection of activities.
--
-- /See:/ 'newActivities' smart constructor.
data Activities = Activities
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Each activity record in the response.
    items :: (Core.Maybe [Activity]),
    -- | The type of API resource. For an activity report, the value is @reports#activities@.
    kind :: Core.Text,
    -- | Token for retrieving the follow-on next page of the report. The @nextPageToken@ value is used in the request\'s @pageToken@ query string.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activities' with the minimum fields required to make a request.
newActivities ::
  Activities
newActivities =
  Activities
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "admin#reports#activities",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Activities where
  parseJSON =
    Core.withObject
      "Activities"
      ( \o ->
          Activities
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#reports#activities"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Activities where
  toJSON Activities {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | JSON template for the activity resource.
--
-- /See:/ 'newActivity' smart constructor.
data Activity = Activity
  { -- | User doing the action.
    actor :: (Core.Maybe Activity_Actor),
    -- | ETag of the entry.
    etag :: (Core.Maybe Core.Text),
    -- | Activity events in the report.
    events :: (Core.Maybe [Activity_EventsItem]),
    -- | Unique identifier for each activity record.
    id :: (Core.Maybe Activity_Id),
    -- | IP address of the user doing the action. This is the Internet Protocol (IP) address of the user when logging into Google Workspace, which may or may not reflect the user\'s physical location. For example, the IP address can be the user\'s proxy server\'s address or a virtual private network (VPN) address. The API supports IPv4 and IPv6.
    ipAddress :: (Core.Maybe Core.Text),
    -- | The type of API resource. For an activity report, the value is @audit#activity@.
    kind :: Core.Text,
    -- | This is the domain that is affected by the report\'s event. For example domain of Admin console or the Drive application\'s document owner.
    ownerDomain :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
newActivity ::
  Activity
newActivity =
  Activity
    { actor = Core.Nothing,
      etag = Core.Nothing,
      events = Core.Nothing,
      id = Core.Nothing,
      ipAddress = Core.Nothing,
      kind = "admin#reports#activity",
      ownerDomain = Core.Nothing
    }

instance Core.FromJSON Activity where
  parseJSON =
    Core.withObject
      "Activity"
      ( \o ->
          Activity
            Core.<$> (o Core..:? "actor")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "events" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "ipAddress")
            Core.<*> (o Core..:? "kind" Core..!= "admin#reports#activity")
            Core.<*> (o Core..:? "ownerDomain")
      )

instance Core.ToJSON Activity where
  toJSON Activity {..} =
    Core.object
      ( Core.catMaybes
          [ ("actor" Core..=) Core.<$> actor,
            ("etag" Core..=) Core.<$> etag,
            ("events" Core..=) Core.<$> events,
            ("id" Core..=) Core.<$> id,
            ("ipAddress" Core..=) Core.<$> ipAddress,
            Core.Just ("kind" Core..= kind),
            ("ownerDomain" Core..=) Core.<$> ownerDomain
          ]
      )

-- | User doing the action.
--
-- /See:/ 'newActivity_Actor' smart constructor.
data Activity_Actor = Activity_Actor
  { -- | The type of actor.
    callerType :: (Core.Maybe Core.Text),
    -- | The primary email address of the actor. May be absent if there is no email address associated with the actor.
    email :: (Core.Maybe Core.Text),
    -- | Only present when @callerType@ is @KEY@. Can be the @consumer_key@ of the requestor for OAuth 2LO API requests or an identifier for robot accounts.
    key :: (Core.Maybe Core.Text),
    -- | The unique Google Workspace profile ID of the actor. This value might be absent if the actor is not a Google Workspace user, or may be the number 105250506097979753968 which acts as a placeholder ID.
    profileId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor' with the minimum fields required to make a request.
newActivity_Actor ::
  Activity_Actor
newActivity_Actor =
  Activity_Actor
    { callerType = Core.Nothing,
      email = Core.Nothing,
      key = Core.Nothing,
      profileId = Core.Nothing
    }

instance Core.FromJSON Activity_Actor where
  parseJSON =
    Core.withObject
      "Activity_Actor"
      ( \o ->
          Activity_Actor
            Core.<$> (o Core..:? "callerType")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "profileId")
      )

instance Core.ToJSON Activity_Actor where
  toJSON Activity_Actor {..} =
    Core.object
      ( Core.catMaybes
          [ ("callerType" Core..=) Core.<$> callerType,
            ("email" Core..=) Core.<$> email,
            ("key" Core..=) Core.<$> key,
            ("profileId" Core..=) Core.<$> profileId
          ]
      )

--
-- /See:/ 'newActivity_EventsItem' smart constructor.
data Activity_EventsItem = Activity_EventsItem
  { -- | Name of the event. This is the specific name of the activity reported by the API. And each @eventName@ is related to a specific Google Workspace service or feature which the API organizes into types of events. For @eventName@ request parameters in general: - If no @eventName@ is given, the report returns all possible instances of an @eventName@. - When you request an @eventName@, the API\'s response returns all activities which contain that @eventName@. It is possible that the returned activities will have other @eventName@ properties in addition to the one requested. For more information about @eventName@ properties, see the list of event names for various applications above in @applicationName@.
    name :: (Core.Maybe Core.Text),
    -- | Parameter value pairs for various applications. For more information about @eventName@ parameters, see the list of event names for various applications above in @applicationName@.
    parameters :: (Core.Maybe [Activity_EventsItem_ParametersItem]),
    -- | Type of event. The Google Workspace service or feature that an administrator changes is identified in the @type@ property which identifies an event using the @eventName@ property. For a full list of the API\'s @type@ categories, see the list of event names for various applications above in @applicationName@.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_EventsItem' with the minimum fields required to make a request.
newActivity_EventsItem ::
  Activity_EventsItem
newActivity_EventsItem =
  Activity_EventsItem
    { name = Core.Nothing,
      parameters = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Activity_EventsItem where
  parseJSON =
    Core.withObject
      "Activity_EventsItem"
      ( \o ->
          Activity_EventsItem
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "parameters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Activity_EventsItem where
  toJSON Activity_EventsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("parameters" Core..=) Core.<$> parameters,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newActivity_EventsItem_ParametersItem' smart constructor.
data Activity_EventsItem_ParametersItem = Activity_EventsItem_ParametersItem
  { -- | Boolean value of the parameter.
    boolValue :: (Core.Maybe Core.Bool),
    -- | Integer value of the parameter.
    intValue :: (Core.Maybe Core.Int64),
    -- | Nested parameter value pairs associated with this parameter. Complex value type for a parameter are returned as a list of parameter values. For example, the address parameter may have a value as @[{parameter: [{name: city, value: abc}]}]@
    messageValue :: (Core.Maybe Activity_EventsItem_ParametersItem_MessageValue),
    -- | Integer values of the parameter.
    multiIntValue :: (Core.Maybe [Core.Int64]),
    -- | List of @messageValue@ objects.
    multiMessageValue ::
      ( Core.Maybe
          [Activity_EventsItem_ParametersItem_MultiMessageValueItem]
      ),
    -- | String values of the parameter.
    multiValue :: (Core.Maybe [Core.Text]),
    -- | The name of the parameter.
    name :: (Core.Maybe Core.Text),
    -- | String value of the parameter.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_EventsItem_ParametersItem' with the minimum fields required to make a request.
newActivity_EventsItem_ParametersItem ::
  Activity_EventsItem_ParametersItem
newActivity_EventsItem_ParametersItem =
  Activity_EventsItem_ParametersItem
    { boolValue = Core.Nothing,
      intValue = Core.Nothing,
      messageValue = Core.Nothing,
      multiIntValue = Core.Nothing,
      multiMessageValue = Core.Nothing,
      multiValue = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    Activity_EventsItem_ParametersItem
  where
  parseJSON =
    Core.withObject
      "Activity_EventsItem_ParametersItem"
      ( \o ->
          Activity_EventsItem_ParametersItem
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "intValue")
            Core.<*> (o Core..:? "messageValue")
            Core.<*> (o Core..:? "multiIntValue" Core..!= Core.mempty)
            Core.<*> (o Core..:? "multiMessageValue" Core..!= Core.mempty)
            Core.<*> (o Core..:? "multiValue" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    Activity_EventsItem_ParametersItem
  where
  toJSON Activity_EventsItem_ParametersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("intValue" Core..=) Core.. Core.AsText
              Core.<$> intValue,
            ("messageValue" Core..=) Core.<$> messageValue,
            ("multiIntValue" Core..=) Core.<$> multiIntValue,
            ("multiMessageValue" Core..=)
              Core.<$> multiMessageValue,
            ("multiValue" Core..=) Core.<$> multiValue,
            ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Nested parameter value pairs associated with this parameter. Complex value type for a parameter are returned as a list of parameter values. For example, the address parameter may have a value as @[{parameter: [{name: city, value: abc}]}]@
--
-- /See:/ 'newActivity_EventsItem_ParametersItem_MessageValue' smart constructor.
newtype Activity_EventsItem_ParametersItem_MessageValue = Activity_EventsItem_ParametersItem_MessageValue
  { -- | Parameter values
    parameter :: (Core.Maybe [NestedParameter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_EventsItem_ParametersItem_MessageValue' with the minimum fields required to make a request.
newActivity_EventsItem_ParametersItem_MessageValue ::
  Activity_EventsItem_ParametersItem_MessageValue
newActivity_EventsItem_ParametersItem_MessageValue =
  Activity_EventsItem_ParametersItem_MessageValue {parameter = Core.Nothing}

instance
  Core.FromJSON
    Activity_EventsItem_ParametersItem_MessageValue
  where
  parseJSON =
    Core.withObject
      "Activity_EventsItem_ParametersItem_MessageValue"
      ( \o ->
          Activity_EventsItem_ParametersItem_MessageValue
            Core.<$> (o Core..:? "parameter" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    Activity_EventsItem_ParametersItem_MessageValue
  where
  toJSON
    Activity_EventsItem_ParametersItem_MessageValue {..} =
      Core.object
        ( Core.catMaybes
            [("parameter" Core..=) Core.<$> parameter]
        )

--
-- /See:/ 'newActivity_EventsItem_ParametersItem_MultiMessageValueItem' smart constructor.
newtype Activity_EventsItem_ParametersItem_MultiMessageValueItem = Activity_EventsItem_ParametersItem_MultiMessageValueItem
  { -- | Parameter values
    parameter :: (Core.Maybe [NestedParameter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_EventsItem_ParametersItem_MultiMessageValueItem' with the minimum fields required to make a request.
newActivity_EventsItem_ParametersItem_MultiMessageValueItem ::
  Activity_EventsItem_ParametersItem_MultiMessageValueItem
newActivity_EventsItem_ParametersItem_MultiMessageValueItem =
  Activity_EventsItem_ParametersItem_MultiMessageValueItem
    { parameter = Core.Nothing
    }

instance
  Core.FromJSON
    Activity_EventsItem_ParametersItem_MultiMessageValueItem
  where
  parseJSON =
    Core.withObject
      "Activity_EventsItem_ParametersItem_MultiMessageValueItem"
      ( \o ->
          Activity_EventsItem_ParametersItem_MultiMessageValueItem
            Core.<$> (o Core..:? "parameter" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    Activity_EventsItem_ParametersItem_MultiMessageValueItem
  where
  toJSON
    Activity_EventsItem_ParametersItem_MultiMessageValueItem {..} =
      Core.object
        ( Core.catMaybes
            [("parameter" Core..=) Core.<$> parameter]
        )

-- | Unique identifier for each activity record.
--
-- /See:/ 'newActivity_Id' smart constructor.
data Activity_Id = Activity_Id
  { -- | Application name to which the event belongs. For possible values see the list of applications above in @applicationName@.
    applicationName :: (Core.Maybe Core.Text),
    -- | The unique identifier for a Google Workspace account.
    customerId :: (Core.Maybe Core.Text),
    -- | Time of occurrence of the activity. This is in UNIX epoch time in seconds.
    time :: (Core.Maybe Core.DateTime'),
    -- | Unique qualifier if multiple events have the same time.
    uniqueQualifier :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Id' with the minimum fields required to make a request.
newActivity_Id ::
  Activity_Id
newActivity_Id =
  Activity_Id
    { applicationName = Core.Nothing,
      customerId = Core.Nothing,
      time = Core.Nothing,
      uniqueQualifier = Core.Nothing
    }

instance Core.FromJSON Activity_Id where
  parseJSON =
    Core.withObject
      "Activity_Id"
      ( \o ->
          Activity_Id
            Core.<$> (o Core..:? "applicationName")
            Core.<*> (o Core..:? "customerId")
            Core.<*> (o Core..:? "time")
            Core.<*> (o Core..:? "uniqueQualifier")
      )

instance Core.ToJSON Activity_Id where
  toJSON Activity_Id {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationName" Core..=)
              Core.<$> applicationName,
            ("customerId" Core..=) Core.<$> customerId,
            ("time" Core..=) Core.<$> time,
            ("uniqueQualifier" Core..=) Core.. Core.AsText
              Core.<$> uniqueQualifier
          ]
      )

-- | A notification channel used to watch for resource changes.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
  { -- | The address where notifications are delivered for this channel.
    address :: (Core.Maybe Core.Text),
    -- | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    expiration :: (Core.Maybe Core.Int64),
    -- | A UUID or similar unique string that identifies this channel.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a notification channel used to watch for changes to a resource, which is \"@api#channel@\".
    kind :: Core.Text,
    -- | Additional parameters controlling delivery channel behavior. Optional.
    params :: (Core.Maybe Channel_Params),
    -- | A Boolean value to indicate whether payload is wanted. Optional.
    payload :: (Core.Maybe Core.Bool),
    -- | An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    resourceId :: (Core.Maybe Core.Text),
    -- | A version-specific identifier for the watched resource.
    resourceUri :: (Core.Maybe Core.Text),
    -- | An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    token :: (Core.Maybe Core.Text),
    -- | The type of delivery mechanism used for this channel. The value should be set to @\"web_hook\"@.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel ::
  Channel
newChannel =
  Channel
    { address = Core.Nothing,
      expiration = Core.Nothing,
      id = Core.Nothing,
      kind = "api#channel",
      params = Core.Nothing,
      payload = Core.Nothing,
      resourceId = Core.Nothing,
      resourceUri = Core.Nothing,
      token = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \o ->
          Channel
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "expiration")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "api#channel")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "resourceUri")
            Core.<*> (o Core..:? "token")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Channel where
  toJSON Channel {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("expiration" Core..=) Core.. Core.AsText
              Core.<$> expiration,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("params" Core..=) Core.<$> params,
            ("payload" Core..=) Core.<$> payload,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("resourceUri" Core..=) Core.<$> resourceUri,
            ("token" Core..=) Core.<$> token,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'newChannel_Params' smart constructor.
newtype Channel_Params = Channel_Params
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel_Params' with the minimum fields required to make a request.
newChannel_Params ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Channel_Params
newChannel_Params addtional = Channel_Params {addtional = addtional}

instance Core.FromJSON Channel_Params where
  parseJSON =
    Core.withObject
      "Channel_Params"
      ( \o ->
          Channel_Params Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Channel_Params where
  toJSON Channel_Params {..} = Core.toJSON addtional

-- | JSON template for a parameter used in various reports.
--
-- /See:/ 'newNestedParameter' smart constructor.
data NestedParameter = NestedParameter
  { -- | Boolean value of the parameter.
    boolValue :: (Core.Maybe Core.Bool),
    -- | Integer value of the parameter.
    intValue :: (Core.Maybe Core.Int64),
    -- | Multiple boolean values of the parameter.
    multiBoolValue :: (Core.Maybe [Core.Bool]),
    -- | Multiple integer values of the parameter.
    multiIntValue :: (Core.Maybe [Core.Int64]),
    -- | Multiple string values of the parameter.
    multiValue :: (Core.Maybe [Core.Text]),
    -- | The name of the parameter.
    name :: (Core.Maybe Core.Text),
    -- | String value of the parameter.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NestedParameter' with the minimum fields required to make a request.
newNestedParameter ::
  NestedParameter
newNestedParameter =
  NestedParameter
    { boolValue = Core.Nothing,
      intValue = Core.Nothing,
      multiBoolValue = Core.Nothing,
      multiIntValue = Core.Nothing,
      multiValue = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON NestedParameter where
  parseJSON =
    Core.withObject
      "NestedParameter"
      ( \o ->
          NestedParameter
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "intValue")
            Core.<*> (o Core..:? "multiBoolValue" Core..!= Core.mempty)
            Core.<*> (o Core..:? "multiIntValue" Core..!= Core.mempty)
            Core.<*> (o Core..:? "multiValue" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON NestedParameter where
  toJSON NestedParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("intValue" Core..=) Core.. Core.AsText
              Core.<$> intValue,
            ("multiBoolValue" Core..=) Core.<$> multiBoolValue,
            ("multiIntValue" Core..=) Core.<$> multiIntValue,
            ("multiValue" Core..=) Core.<$> multiValue,
            ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | JSON template for a usage report.
--
-- /See:/ 'newUsageReport' smart constructor.
data UsageReport = UsageReport
  { -- | Output only. The date of the report request.
    date :: (Core.Maybe Core.Text),
    -- | Output only. Information about the type of the item.
    entity :: (Core.Maybe UsageReport_Entity),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The type of API resource. For a usage report, the value is @admin#reports#usageReport@.
    kind :: Core.Text,
    -- | Output only. Parameter value pairs for various applications. For the Entity Usage Report parameters and values, see </admin-sdk/reports/v1/reference/usage-ref-appendix-a/entities the Entity Usage parameters reference>.
    parameters :: (Core.Maybe [UsageReport_ParametersItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReport' with the minimum fields required to make a request.
newUsageReport ::
  UsageReport
newUsageReport =
  UsageReport
    { date = Core.Nothing,
      entity = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#reports#usageReport",
      parameters = Core.Nothing
    }

instance Core.FromJSON UsageReport where
  parseJSON =
    Core.withObject
      "UsageReport"
      ( \o ->
          UsageReport
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "entity")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#reports#usageReport"
                     )
            Core.<*> (o Core..:? "parameters" Core..!= Core.mempty)
      )

instance Core.ToJSON UsageReport where
  toJSON UsageReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("entity" Core..=) Core.<$> entity,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | Output only. Information about the type of the item.
--
-- /See:/ 'newUsageReport_Entity' smart constructor.
data UsageReport_Entity = UsageReport_Entity
  { -- | Output only. The unique identifier of the customer\'s account.
    customerId :: (Core.Maybe Core.Text),
    -- | Output only. Object key. Only relevant if entity.type = \"OBJECT\" Note: external-facing name of report is \"Entities\" rather than \"Objects\".
    entityId :: (Core.Maybe Core.Text),
    -- | Output only. The user\'s immutable Google Workspace profile identifier.
    profileId :: (Core.Maybe Core.Text),
    -- | Output only. The type of item. The value is @user@.
    type' :: (Core.Maybe Core.Text),
    -- | Output only. The user\'s email address. Only relevant if entity.type = \"USER\"
    userEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReport_Entity' with the minimum fields required to make a request.
newUsageReport_Entity ::
  UsageReport_Entity
newUsageReport_Entity =
  UsageReport_Entity
    { customerId = Core.Nothing,
      entityId = Core.Nothing,
      profileId = Core.Nothing,
      type' = Core.Nothing,
      userEmail = Core.Nothing
    }

instance Core.FromJSON UsageReport_Entity where
  parseJSON =
    Core.withObject
      "UsageReport_Entity"
      ( \o ->
          UsageReport_Entity
            Core.<$> (o Core..:? "customerId")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "userEmail")
      )

instance Core.ToJSON UsageReport_Entity where
  toJSON UsageReport_Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerId" Core..=) Core.<$> customerId,
            ("entityId" Core..=) Core.<$> entityId,
            ("profileId" Core..=) Core.<$> profileId,
            ("type" Core..=) Core.<$> type',
            ("userEmail" Core..=) Core.<$> userEmail
          ]
      )

--
-- /See:/ 'newUsageReport_ParametersItem' smart constructor.
data UsageReport_ParametersItem = UsageReport_ParametersItem
  { -- | Output only. Boolean value of the parameter.
    boolValue :: (Core.Maybe Core.Bool),
    -- | The RFC 3339 formatted value of the parameter, for example 2010-10-28T10:26:35.000Z.
    datetimeValue :: (Core.Maybe Core.DateTime'),
    -- | Output only. Integer value of the parameter.
    intValue :: (Core.Maybe Core.Int64),
    -- | Output only. Nested message value of the parameter.
    msgValue :: (Core.Maybe [UsageReport_ParametersItem_MsgValueItem]),
    -- | The name of the parameter. For the User Usage Report parameter names, see the User Usage parameters reference.
    name :: (Core.Maybe Core.Text),
    -- | Output only. String value of the parameter.
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReport_ParametersItem' with the minimum fields required to make a request.
newUsageReport_ParametersItem ::
  UsageReport_ParametersItem
newUsageReport_ParametersItem =
  UsageReport_ParametersItem
    { boolValue = Core.Nothing,
      datetimeValue = Core.Nothing,
      intValue = Core.Nothing,
      msgValue = Core.Nothing,
      name = Core.Nothing,
      stringValue = Core.Nothing
    }

instance Core.FromJSON UsageReport_ParametersItem where
  parseJSON =
    Core.withObject
      "UsageReport_ParametersItem"
      ( \o ->
          UsageReport_ParametersItem
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "datetimeValue")
            Core.<*> (o Core..:? "intValue")
            Core.<*> (o Core..:? "msgValue" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON UsageReport_ParametersItem where
  toJSON UsageReport_ParametersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("datetimeValue" Core..=) Core.<$> datetimeValue,
            ("intValue" Core..=) Core.. Core.AsText
              Core.<$> intValue,
            ("msgValue" Core..=) Core.<$> msgValue,
            ("name" Core..=) Core.<$> name,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

--
-- /See:/ 'newUsageReport_ParametersItem_MsgValueItem' smart constructor.
newtype UsageReport_ParametersItem_MsgValueItem = UsageReport_ParametersItem_MsgValueItem
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReport_ParametersItem_MsgValueItem' with the minimum fields required to make a request.
newUsageReport_ParametersItem_MsgValueItem ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  UsageReport_ParametersItem_MsgValueItem
newUsageReport_ParametersItem_MsgValueItem addtional =
  UsageReport_ParametersItem_MsgValueItem {addtional = addtional}

instance
  Core.FromJSON
    UsageReport_ParametersItem_MsgValueItem
  where
  parseJSON =
    Core.withObject
      "UsageReport_ParametersItem_MsgValueItem"
      ( \o ->
          UsageReport_ParametersItem_MsgValueItem
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    UsageReport_ParametersItem_MsgValueItem
  where
  toJSON UsageReport_ParametersItem_MsgValueItem {..} =
    Core.toJSON addtional

--
-- /See:/ 'newUsageReports' smart constructor.
data UsageReports = UsageReports
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The type of API resource. For a usage report, the value is @admin#reports#usageReports@.
    kind :: Core.Text,
    -- | Token to specify next page. A report with multiple pages has a @nextPageToken@ property in the response. For your follow-on requests getting all of the report\'s pages, enter the @nextPageToken@ value in the @pageToken@ query string.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Various application parameter records.
    usageReports :: (Core.Maybe [UsageReport]),
    -- | Warnings, if any.
    warnings :: (Core.Maybe [UsageReports_WarningsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReports' with the minimum fields required to make a request.
newUsageReports ::
  UsageReports
newUsageReports =
  UsageReports
    { etag = Core.Nothing,
      kind = "admin#reports#usageReports",
      nextPageToken = Core.Nothing,
      usageReports = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON UsageReports where
  parseJSON =
    Core.withObject
      "UsageReports"
      ( \o ->
          UsageReports
            Core.<$> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#reports#usageReports"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "usageReports" Core..!= Core.mempty)
            Core.<*> (o Core..:? "warnings" Core..!= Core.mempty)
      )

instance Core.ToJSON UsageReports where
  toJSON UsageReports {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("usageReports" Core..=) Core.<$> usageReports,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

--
-- /See:/ 'newUsageReports_WarningsItem' smart constructor.
data UsageReports_WarningsItem = UsageReports_WarningsItem
  { -- | Machine readable code or warning type. The warning code value is @200@.
    code :: (Core.Maybe Core.Text),
    -- | Key-value pairs to give detailed information on the warning.
    data' :: (Core.Maybe [UsageReports_WarningsItem_DataItem]),
    -- | The human readable messages for a warning are: - Data is not available warning - Sorry, data for date yyyy-mm-dd for application \"@application name@\" is not available. - Partial data is available warning - Data for date yyyy-mm-dd for application \"@application name@\" is not available right now, please try again after a few hours.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReports_WarningsItem' with the minimum fields required to make a request.
newUsageReports_WarningsItem ::
  UsageReports_WarningsItem
newUsageReports_WarningsItem =
  UsageReports_WarningsItem
    { code = Core.Nothing,
      data' = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON UsageReports_WarningsItem where
  parseJSON =
    Core.withObject
      "UsageReports_WarningsItem"
      ( \o ->
          UsageReports_WarningsItem
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "data" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON UsageReports_WarningsItem where
  toJSON UsageReports_WarningsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("data" Core..=) Core.<$> data',
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newUsageReports_WarningsItem_DataItem' smart constructor.
data UsageReports_WarningsItem_DataItem = UsageReports_WarningsItem_DataItem
  { -- | Key associated with a key-value pair to give detailed information on the warning.
    key :: (Core.Maybe Core.Text),
    -- | Value associated with a key-value pair to give detailed information on the warning.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReports_WarningsItem_DataItem' with the minimum fields required to make a request.
newUsageReports_WarningsItem_DataItem ::
  UsageReports_WarningsItem_DataItem
newUsageReports_WarningsItem_DataItem =
  UsageReports_WarningsItem_DataItem {key = Core.Nothing, value = Core.Nothing}

instance
  Core.FromJSON
    UsageReports_WarningsItem_DataItem
  where
  parseJSON =
    Core.withObject
      "UsageReports_WarningsItem_DataItem"
      ( \o ->
          UsageReports_WarningsItem_DataItem
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    UsageReports_WarningsItem_DataItem
  where
  toJSON UsageReports_WarningsItem_DataItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )
