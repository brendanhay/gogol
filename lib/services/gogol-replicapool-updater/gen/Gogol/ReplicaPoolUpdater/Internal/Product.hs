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
-- Module      : Gogol.ReplicaPoolUpdater.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ReplicaPoolUpdater.Internal.Product
  (

    -- * InstanceUpdate
    InstanceUpdate (..),
    newInstanceUpdate,

    -- * InstanceUpdate_Error
    InstanceUpdate_Error (..),
    newInstanceUpdate_Error,

    -- * InstanceUpdate_Error_ErrorsItem
    InstanceUpdate_Error_ErrorsItem (..),
    newInstanceUpdate_Error_ErrorsItem,

    -- * InstanceUpdateList
    InstanceUpdateList (..),
    newInstanceUpdateList,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Error
    Operation_Error (..),
    newOperation_Error,

    -- * Operation_Error_ErrorsItem
    Operation_Error_ErrorsItem (..),
    newOperation_Error_ErrorsItem,

    -- * Operation_WarningsItem
    Operation_WarningsItem (..),
    newOperation_WarningsItem,

    -- * Operation_WarningsItem_DataItem
    Operation_WarningsItem_DataItem (..),
    newOperation_WarningsItem_DataItem,

    -- * OperationList
    OperationList (..),
    newOperationList,

    -- * RollingUpdate
    RollingUpdate (..),
    newRollingUpdate,

    -- * RollingUpdate_Error
    RollingUpdate_Error (..),
    newRollingUpdate_Error,

    -- * RollingUpdate_Error_ErrorsItem
    RollingUpdate_Error_ErrorsItem (..),
    newRollingUpdate_Error_ErrorsItem,

    -- * RollingUpdate_Policy
    RollingUpdate_Policy (..),
    newRollingUpdate_Policy,

    -- * RollingUpdateList
    RollingUpdateList (..),
    newRollingUpdateList,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPoolUpdater.Internal.Sum

-- | Update of a single instance.
--
-- /See:/ 'newInstanceUpdate' smart constructor.
data InstanceUpdate = InstanceUpdate
    {
      -- | Errors that occurred during the instance update.
      error :: (Core.Maybe InstanceUpdate_Error)
      -- | Fully-qualified URL of the instance being updated.
    , instance' :: (Core.Maybe Core.Text)
      -- | Status of the instance update. Possible values are:
      -- - \"PENDING\": The instance update is pending execution. - \"ROLLING/FORWARD\": The instance update is going forward. - \"ROLLING/BACK\": The instance update is being rolled back. - \"PAUSED\": The instance update is temporarily paused (inactive). - \"ROLLED/OUT\": The instance update is finished, the instance is running the new template. - \"ROLLED/BACK\": The instance update is finished, the instance has been reverted to the previous template. - \"CANCELLED\": The instance update is paused and no longer can be resumed, undefined in which template the instance is running.
    , status :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceUpdate' with the minimum fields required to make a request.
newInstanceUpdate 
    ::  InstanceUpdate
newInstanceUpdate =
  InstanceUpdate
    {error = Core.Nothing, instance' = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON InstanceUpdate where
        parseJSON
          = Core.withObject "InstanceUpdate"
              (\ o ->
                 InstanceUpdate Core.<$>
                   (o Core..:? "error") Core.<*> (o Core..:? "instance")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON InstanceUpdate where
        toJSON InstanceUpdate{..}
          = Core.object
              (Core.catMaybes
                 [("error" Core..=) Core.<$> error,
                  ("instance" Core..=) Core.<$> instance',
                  ("status" Core..=) Core.<$> status])


-- | Errors that occurred during the instance update.
--
-- /See:/ 'newInstanceUpdate_Error' smart constructor.
newtype InstanceUpdate_Error = InstanceUpdate_Error
    {
      -- | [Output Only] The array of errors encountered while processing this operation.
      errors :: (Core.Maybe [InstanceUpdate_Error_ErrorsItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceUpdate_Error' with the minimum fields required to make a request.
newInstanceUpdate_Error 
    ::  InstanceUpdate_Error
newInstanceUpdate_Error = InstanceUpdate_Error {errors = Core.Nothing}

instance Core.FromJSON InstanceUpdate_Error where
        parseJSON
          = Core.withObject "InstanceUpdate_Error"
              (\ o ->
                 InstanceUpdate_Error Core.<$> (o Core..:? "errors"))

instance Core.ToJSON InstanceUpdate_Error where
        toJSON InstanceUpdate_Error{..}
          = Core.object
              (Core.catMaybes [("errors" Core..=) Core.<$> errors])


--
-- /See:/ 'newInstanceUpdate_Error_ErrorsItem' smart constructor.
data InstanceUpdate_Error_ErrorsItem = InstanceUpdate_Error_ErrorsItem
    {
      -- | [Output Only] The error type identifier for this error.
      code :: (Core.Maybe Core.Text)
      -- | [Output Only] Indicates the field in the request that caused the error. This property is optional.
    , location :: (Core.Maybe Core.Text)
      -- | [Output Only] An optional, human-readable error message.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceUpdate_Error_ErrorsItem' with the minimum fields required to make a request.
newInstanceUpdate_Error_ErrorsItem 
    ::  InstanceUpdate_Error_ErrorsItem
newInstanceUpdate_Error_ErrorsItem =
  InstanceUpdate_Error_ErrorsItem
    {code = Core.Nothing, location = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON
           InstanceUpdate_Error_ErrorsItem
         where
        parseJSON
          = Core.withObject "InstanceUpdate_Error_ErrorsItem"
              (\ o ->
                 InstanceUpdate_Error_ErrorsItem Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON InstanceUpdate_Error_ErrorsItem
         where
        toJSON InstanceUpdate_Error_ErrorsItem{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("location" Core..=) Core.<$> location,
                  ("message" Core..=) Core.<$> message])


-- | Response returned by ListInstanceUpdates method.
--
-- /See:/ 'newInstanceUpdateList' smart constructor.
data InstanceUpdateList = InstanceUpdateList
    {
      -- | Collection of requested instance updates.
      items :: (Core.Maybe [InstanceUpdate])
      -- | [Output Only] Type of the resource.
    , kind :: Core.Text
      -- | A token used to continue a truncated list request.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | [Output Only] The fully qualified URL for the resource.
    , selfLink :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceUpdateList' with the minimum fields required to make a request.
newInstanceUpdateList 
    ::  InstanceUpdateList
newInstanceUpdateList =
  InstanceUpdateList
    { items = Core.Nothing
    , kind = "replicapoolupdater#instanceUpdateList"
    , nextPageToken = Core.Nothing
    , selfLink = Core.Nothing
    }

instance Core.FromJSON InstanceUpdateList where
        parseJSON
          = Core.withObject "InstanceUpdateList"
              (\ o ->
                 InstanceUpdateList Core.<$>
                   (o Core..:? "items") Core.<*>
                     (o Core..:? "kind" Core..!=
                        "replicapoolupdater#instanceUpdateList")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "selfLink"))

instance Core.ToJSON InstanceUpdateList where
        toJSON InstanceUpdateList{..}
          = Core.object
              (Core.catMaybes
                 [("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("selfLink" Core..=) Core.<$> selfLink])


-- | An operation resource, used to manage asynchronous API requests.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
    {
      -- | 
      clientOperationId :: (Core.Maybe Core.Text)
      -- | [Output Only] Creation timestamp in RFC3339 text format.
    , creationTimestamp :: (Core.Maybe Core.Text)
      -- | 
    , endTime :: (Core.Maybe Core.Text)
      -- | [Output Only] If errors occurred during processing of this operation, this field will be populated.
    , error :: (Core.Maybe Operation_Error)
      -- | 
    , httpErrorMessage :: (Core.Maybe Core.Text)
      -- | 
    , httpErrorStatusCode :: (Core.Maybe Core.Int32)
      -- | [Output Only] Unique identifier for the resource; defined by the server.
    , id :: (Core.Maybe Core.Word64)
      -- | [Output Only] The time that this operation was requested. This is in RFC 3339 format.
    , insertTime :: (Core.Maybe Core.Text)
      -- | [Output Only] Type of the resource. Always replicapoolupdater#operation for Operation resources.
    , kind :: Core.Text
      -- | [Output Only] Name of the resource.
    , name :: (Core.Maybe Core.Text)
      -- | 
    , operationType :: (Core.Maybe Core.Text)
      -- | 
    , progress :: (Core.Maybe Core.Int32)
      -- | [Output Only] URL of the region where the operation resides.
    , region :: (Core.Maybe Core.Text)
      -- | [Output Only] The fully qualified URL for the resource.
    , selfLink :: (Core.Maybe Core.Text)
      -- | [Output Only] The time that this operation was started by the server. This is in RFC 3339 format.
    , startTime :: (Core.Maybe Core.Text)
      -- | [Output Only] Status of the operation. Can be one of the following: \"PENDING\", \"RUNNING\", or \"DONE\".
    , status :: (Core.Maybe Core.Text)
      -- | [Output Only] An optional textual description of the current status of the operation.
    , statusMessage :: (Core.Maybe Core.Text)
      -- | [Output Only] Unique target id which identifies a particular incarnation of the target.
    , targetId :: (Core.Maybe Core.Word64)
      -- | [Output Only] URL of the resource the operation is mutating.
    , targetLink :: (Core.Maybe Core.Text)
      -- | 
    , user :: (Core.Maybe Core.Text)
      -- | 
    , warnings :: (Core.Maybe [Operation_WarningsItem])
      -- | [Output Only] URL of the zone where the operation resides.
    , zone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation 
    ::  Operation
newOperation =
  Operation
    { clientOperationId = Core.Nothing
    , creationTimestamp = Core.Nothing
    , endTime = Core.Nothing
    , error = Core.Nothing
    , httpErrorMessage = Core.Nothing
    , httpErrorStatusCode = Core.Nothing
    , id = Core.Nothing
    , insertTime = Core.Nothing
    , kind = "replicapoolupdater#operation"
    , name = Core.Nothing
    , operationType = Core.Nothing
    , progress = Core.Nothing
    , region = Core.Nothing
    , selfLink = Core.Nothing
    , startTime = Core.Nothing
    , status = Core.Nothing
    , statusMessage = Core.Nothing
    , targetId = Core.Nothing
    , targetLink = Core.Nothing
    , user = Core.Nothing
    , warnings = Core.Nothing
    , zone = Core.Nothing
    }

instance Core.FromJSON Operation where
        parseJSON
          = Core.withObject "Operation"
              (\ o ->
                 Operation Core.<$>
                   (o Core..:? "clientOperationId") Core.<*>
                     (o Core..:? "creationTimestamp")
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "httpErrorMessage")
                     Core.<*> (o Core..:? "httpErrorStatusCode")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "insertTime")
                     Core.<*>
                     (o Core..:? "kind" Core..!=
                        "replicapoolupdater#operation")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "operationType")
                     Core.<*> (o Core..:? "progress")
                     Core.<*> (o Core..:? "region")
                     Core.<*> (o Core..:? "selfLink")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "statusMessage")
                     Core.<*>
                     (o Core..:? "targetId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "targetLink")
                     Core.<*> (o Core..:? "user")
                     Core.<*> (o Core..:? "warnings")
                     Core.<*> (o Core..:? "zone"))

instance Core.ToJSON Operation where
        toJSON Operation{..}
          = Core.object
              (Core.catMaybes
                 [("clientOperationId" Core..=) Core.<$>
                    clientOperationId,
                  ("creationTimestamp" Core..=) Core.<$>
                    creationTimestamp,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("error" Core..=) Core.<$> error,
                  ("httpErrorMessage" Core..=) Core.<$>
                    httpErrorMessage,
                  ("httpErrorStatusCode" Core..=) Core.<$>
                    httpErrorStatusCode,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("insertTime" Core..=) Core.<$> insertTime,
                  Core.Just ("kind" Core..= kind),
                  ("name" Core..=) Core.<$> name,
                  ("operationType" Core..=) Core.<$> operationType,
                  ("progress" Core..=) Core.<$> progress,
                  ("region" Core..=) Core.<$> region,
                  ("selfLink" Core..=) Core.<$> selfLink,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("status" Core..=) Core.<$> status,
                  ("statusMessage" Core..=) Core.<$> statusMessage,
                  ("targetId" Core..=) Core.. Core.AsText Core.<$>
                    targetId,
                  ("targetLink" Core..=) Core.<$> targetLink,
                  ("user" Core..=) Core.<$> user,
                  ("warnings" Core..=) Core.<$> warnings,
                  ("zone" Core..=) Core.<$> zone])


-- | [Output Only] If errors occurred during processing of this operation, this field will be populated.
--
-- /See:/ 'newOperation_Error' smart constructor.
newtype Operation_Error = Operation_Error
    {
      -- | [Output Only] The array of errors encountered while processing this operation.
      errors :: (Core.Maybe [Operation_Error_ErrorsItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Error' with the minimum fields required to make a request.
newOperation_Error 
    ::  Operation_Error
newOperation_Error = Operation_Error {errors = Core.Nothing}

instance Core.FromJSON Operation_Error where
        parseJSON
          = Core.withObject "Operation_Error"
              (\ o ->
                 Operation_Error Core.<$> (o Core..:? "errors"))

instance Core.ToJSON Operation_Error where
        toJSON Operation_Error{..}
          = Core.object
              (Core.catMaybes [("errors" Core..=) Core.<$> errors])


--
-- /See:/ 'newOperation_Error_ErrorsItem' smart constructor.
data Operation_Error_ErrorsItem = Operation_Error_ErrorsItem
    {
      -- | [Output Only] The error type identifier for this error.
      code :: (Core.Maybe Core.Text)
      -- | [Output Only] Indicates the field in the request that caused the error. This property is optional.
    , location :: (Core.Maybe Core.Text)
      -- | [Output Only] An optional, human-readable error message.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Error_ErrorsItem' with the minimum fields required to make a request.
newOperation_Error_ErrorsItem 
    ::  Operation_Error_ErrorsItem
newOperation_Error_ErrorsItem =
  Operation_Error_ErrorsItem
    {code = Core.Nothing, location = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Operation_Error_ErrorsItem
         where
        parseJSON
          = Core.withObject "Operation_Error_ErrorsItem"
              (\ o ->
                 Operation_Error_ErrorsItem Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Operation_Error_ErrorsItem where
        toJSON Operation_Error_ErrorsItem{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("location" Core..=) Core.<$> location,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newOperation_WarningsItem' smart constructor.
data Operation_WarningsItem = Operation_WarningsItem
    {
      -- | [Output only] The warning type identifier for this warning.
      code :: (Core.Maybe Core.Text)
      -- | [Output only] Metadata for this warning in key:value format.
    , data' :: (Core.Maybe [Operation_WarningsItem_DataItem])
      -- | [Output only] Optional human-readable details for this warning.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_WarningsItem' with the minimum fields required to make a request.
newOperation_WarningsItem 
    ::  Operation_WarningsItem
newOperation_WarningsItem =
  Operation_WarningsItem
    {code = Core.Nothing, data' = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Operation_WarningsItem where
        parseJSON
          = Core.withObject "Operation_WarningsItem"
              (\ o ->
                 Operation_WarningsItem Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "data")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Operation_WarningsItem where
        toJSON Operation_WarningsItem{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("data" Core..=) Core.<$> data',
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newOperation_WarningsItem_DataItem' smart constructor.
data Operation_WarningsItem_DataItem = Operation_WarningsItem_DataItem
    {
      -- | [Output Only] Metadata key for this warning.
      key :: (Core.Maybe Core.Text)
      -- | [Output Only] Metadata value for this warning.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_WarningsItem_DataItem' with the minimum fields required to make a request.
newOperation_WarningsItem_DataItem 
    ::  Operation_WarningsItem_DataItem
newOperation_WarningsItem_DataItem =
  Operation_WarningsItem_DataItem {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON
           Operation_WarningsItem_DataItem
         where
        parseJSON
          = Core.withObject "Operation_WarningsItem_DataItem"
              (\ o ->
                 Operation_WarningsItem_DataItem Core.<$>
                   (o Core..:? "key") Core.<*> (o Core..:? "value"))

instance Core.ToJSON Operation_WarningsItem_DataItem
         where
        toJSON Operation_WarningsItem_DataItem{..}
          = Core.object
              (Core.catMaybes
                 [("key" Core..=) Core.<$> key,
                  ("value" Core..=) Core.<$> value])


-- | Contains a list of Operation resources.
--
-- /See:/ 'newOperationList' smart constructor.
data OperationList = OperationList
    {
      -- | [Output Only] Unique identifier for the resource; defined by the server.
      id :: (Core.Maybe Core.Text)
      -- | [Output Only] The Operation resources.
    , items :: (Core.Maybe [Operation])
      -- | [Output Only] Type of resource. Always replicapoolupdater#operationList for OperationList resources.
    , kind :: Core.Text
      -- | [Output Only] A token used to continue a truncate.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | [Output Only] The fully qualified URL for the resource.
    , selfLink :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationList' with the minimum fields required to make a request.
newOperationList 
    ::  OperationList
newOperationList =
  OperationList
    { id = Core.Nothing
    , items = Core.Nothing
    , kind = "replicapoolupdater#operationList"
    , nextPageToken = Core.Nothing
    , selfLink = Core.Nothing
    }

instance Core.FromJSON OperationList where
        parseJSON
          = Core.withObject "OperationList"
              (\ o ->
                 OperationList Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "items")
                     Core.<*>
                     (o Core..:? "kind" Core..!=
                        "replicapoolupdater#operationList")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "selfLink"))

instance Core.ToJSON OperationList where
        toJSON OperationList{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("selfLink" Core..=) Core.<$> selfLink])


-- | The following represents a resource describing a single update (rollout) of a group of instances to the given template.
--
-- /See:/ 'newRollingUpdate' smart constructor.
data RollingUpdate = RollingUpdate
    {
      -- | Specifies the action to take for each instance within the instance group. This can be RECREATE which will recreate each instance and is only available for managed instance groups. It can also be REBOOT which performs a soft reboot for each instance and is only available for regular (non-managed) instance groups.
      actionType :: (Core.Maybe Core.Text)
      -- | [Output Only] Creation timestamp in RFC3339 text format.
    , creationTimestamp :: (Core.Maybe Core.Text)
      -- | An optional textual description of the resource; provided by the client when the resource is created.
    , description :: (Core.Maybe Core.Text)
      -- | [Output Only] Errors that occurred during the rolling update.
    , error :: (Core.Maybe RollingUpdate_Error)
      -- | [Output Only] Unique identifier for the resource; defined by the server.
    , id :: (Core.Maybe Core.Text)
      -- | Fully-qualified URL of an instance group being updated. Exactly one of instanceGroupManager and instanceGroup must be set.
    , instanceGroup :: (Core.Maybe Core.Text)
      -- | Fully-qualified URL of an instance group manager being updated. Exactly one of instanceGroupManager and instanceGroup must be set.
    , instanceGroupManager :: (Core.Maybe Core.Text)
      -- | Fully-qualified URL of an instance template to apply.
    , instanceTemplate :: (Core.Maybe Core.Text)
      -- | [Output Only] Type of the resource.
    , kind :: Core.Text
      -- | Fully-qualified URL of the instance template encountered while starting the update.
    , oldInstanceTemplate :: (Core.Maybe Core.Text)
      -- | Parameters of the update process.
    , policy :: (Core.Maybe RollingUpdate_Policy)
      -- | [Output Only] An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess at when the update will be complete. This number should be monotonically increasing as the update progresses.
    , progress :: (Core.Maybe Core.Int32)
      -- | [Output Only] The fully qualified URL for the resource.
    , selfLink :: (Core.Maybe Core.Text)
      -- | [Output Only] Status of the update. Possible values are:
      -- - \"ROLLING/FORWARD\": The update is going forward. - \"ROLLING/BACK\": The update is being rolled back. - \"PAUSED\": The update is temporarily paused (inactive). - \"ROLLED/OUT\": The update is finished, all instances have been updated successfully. - \"ROLLED/BACK\": The update is finished, all instances have been reverted to the previous template. - \"CANCELLED\": The update is paused and no longer can be resumed, undefined how many instances are running in which template.
    , status :: (Core.Maybe Core.Text)
      -- | [Output Only] An optional textual description of the current status of the update.
    , statusMessage :: (Core.Maybe Core.Text)
      -- | [Output Only] User who requested the update, for example: user\@example.com.
    , user :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollingUpdate' with the minimum fields required to make a request.
newRollingUpdate 
    ::  RollingUpdate
newRollingUpdate =
  RollingUpdate
    { actionType = Core.Nothing
    , creationTimestamp = Core.Nothing
    , description = Core.Nothing
    , error = Core.Nothing
    , id = Core.Nothing
    , instanceGroup = Core.Nothing
    , instanceGroupManager = Core.Nothing
    , instanceTemplate = Core.Nothing
    , kind = "replicapoolupdater#rollingUpdate"
    , oldInstanceTemplate = Core.Nothing
    , policy = Core.Nothing
    , progress = Core.Nothing
    , selfLink = Core.Nothing
    , status = Core.Nothing
    , statusMessage = Core.Nothing
    , user = Core.Nothing
    }

instance Core.FromJSON RollingUpdate where
        parseJSON
          = Core.withObject "RollingUpdate"
              (\ o ->
                 RollingUpdate Core.<$>
                   (o Core..:? "actionType") Core.<*>
                     (o Core..:? "creationTimestamp")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "instanceGroup")
                     Core.<*> (o Core..:? "instanceGroupManager")
                     Core.<*> (o Core..:? "instanceTemplate")
                     Core.<*>
                     (o Core..:? "kind" Core..!=
                        "replicapoolupdater#rollingUpdate")
                     Core.<*> (o Core..:? "oldInstanceTemplate")
                     Core.<*> (o Core..:? "policy")
                     Core.<*> (o Core..:? "progress")
                     Core.<*> (o Core..:? "selfLink")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "statusMessage")
                     Core.<*> (o Core..:? "user"))

instance Core.ToJSON RollingUpdate where
        toJSON RollingUpdate{..}
          = Core.object
              (Core.catMaybes
                 [("actionType" Core..=) Core.<$> actionType,
                  ("creationTimestamp" Core..=) Core.<$>
                    creationTimestamp,
                  ("description" Core..=) Core.<$> description,
                  ("error" Core..=) Core.<$> error,
                  ("id" Core..=) Core.<$> id,
                  ("instanceGroup" Core..=) Core.<$> instanceGroup,
                  ("instanceGroupManager" Core..=) Core.<$>
                    instanceGroupManager,
                  ("instanceTemplate" Core..=) Core.<$>
                    instanceTemplate,
                  Core.Just ("kind" Core..= kind),
                  ("oldInstanceTemplate" Core..=) Core.<$>
                    oldInstanceTemplate,
                  ("policy" Core..=) Core.<$> policy,
                  ("progress" Core..=) Core.<$> progress,
                  ("selfLink" Core..=) Core.<$> selfLink,
                  ("status" Core..=) Core.<$> status,
                  ("statusMessage" Core..=) Core.<$> statusMessage,
                  ("user" Core..=) Core.<$> user])


-- | [Output Only] Errors that occurred during the rolling update.
--
-- /See:/ 'newRollingUpdate_Error' smart constructor.
newtype RollingUpdate_Error = RollingUpdate_Error
    {
      -- | [Output Only] The array of errors encountered while processing this operation.
      errors :: (Core.Maybe [RollingUpdate_Error_ErrorsItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollingUpdate_Error' with the minimum fields required to make a request.
newRollingUpdate_Error 
    ::  RollingUpdate_Error
newRollingUpdate_Error = RollingUpdate_Error {errors = Core.Nothing}

instance Core.FromJSON RollingUpdate_Error where
        parseJSON
          = Core.withObject "RollingUpdate_Error"
              (\ o ->
                 RollingUpdate_Error Core.<$> (o Core..:? "errors"))

instance Core.ToJSON RollingUpdate_Error where
        toJSON RollingUpdate_Error{..}
          = Core.object
              (Core.catMaybes [("errors" Core..=) Core.<$> errors])


--
-- /See:/ 'newRollingUpdate_Error_ErrorsItem' smart constructor.
data RollingUpdate_Error_ErrorsItem = RollingUpdate_Error_ErrorsItem
    {
      -- | [Output Only] The error type identifier for this error.
      code :: (Core.Maybe Core.Text)
      -- | [Output Only] Indicates the field in the request that caused the error. This property is optional.
    , location :: (Core.Maybe Core.Text)
      -- | [Output Only] An optional, human-readable error message.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollingUpdate_Error_ErrorsItem' with the minimum fields required to make a request.
newRollingUpdate_Error_ErrorsItem 
    ::  RollingUpdate_Error_ErrorsItem
newRollingUpdate_Error_ErrorsItem =
  RollingUpdate_Error_ErrorsItem
    {code = Core.Nothing, location = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON RollingUpdate_Error_ErrorsItem
         where
        parseJSON
          = Core.withObject "RollingUpdate_Error_ErrorsItem"
              (\ o ->
                 RollingUpdate_Error_ErrorsItem Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON RollingUpdate_Error_ErrorsItem
         where
        toJSON RollingUpdate_Error_ErrorsItem{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("location" Core..=) Core.<$> location,
                  ("message" Core..=) Core.<$> message])


-- | Parameters of the update process.
--
-- /See:/ 'newRollingUpdate_Policy' smart constructor.
data RollingUpdate_Policy = RollingUpdate_Policy
    {
      -- | Number of instances to update before the updater pauses the rolling update.
      autoPauseAfterInstances :: (Core.Maybe Core.Int32)
      -- | The maximum amount of time that the updater waits for a HEALTHY state after all of the update steps are complete. If the HEALTHY state is not received before the deadline, the instance update is considered a failure.
    , instanceStartupTimeoutSec :: (Core.Maybe Core.Int32)
      -- | The maximum number of instances that can be updated simultaneously. An instance update is considered complete only after the instance is restarted and initialized.
    , maxNumConcurrentInstances :: (Core.Maybe Core.Int32)
      -- | The maximum number of instance updates that can fail before the group update is considered a failure. An instance update is considered failed if any of its update actions (e.g. Stop call on Instance resource in Rolling Reboot) failed with permanent failure, or if the instance is in an UNHEALTHY state after it finishes all of the update actions.
    , maxNumFailedInstances :: (Core.Maybe Core.Int32)
      -- | The minimum amount of time that the updater spends to update each instance. Update time is the time it takes to complete all update actions (e.g. Stop call on Instance resource in Rolling Reboot), reboot, and initialize. If the instance update finishes early, the updater pauses for the remainder of the time before it starts the next instance update.
    , minInstanceUpdateTimeSec :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollingUpdate_Policy' with the minimum fields required to make a request.
newRollingUpdate_Policy 
    ::  RollingUpdate_Policy
newRollingUpdate_Policy =
  RollingUpdate_Policy
    { autoPauseAfterInstances = Core.Nothing
    , instanceStartupTimeoutSec = Core.Nothing
    , maxNumConcurrentInstances = Core.Nothing
    , maxNumFailedInstances = Core.Nothing
    , minInstanceUpdateTimeSec = Core.Nothing
    }

instance Core.FromJSON RollingUpdate_Policy where
        parseJSON
          = Core.withObject "RollingUpdate_Policy"
              (\ o ->
                 RollingUpdate_Policy Core.<$>
                   (o Core..:? "autoPauseAfterInstances") Core.<*>
                     (o Core..:? "instanceStartupTimeoutSec")
                     Core.<*> (o Core..:? "maxNumConcurrentInstances")
                     Core.<*> (o Core..:? "maxNumFailedInstances")
                     Core.<*> (o Core..:? "minInstanceUpdateTimeSec"))

instance Core.ToJSON RollingUpdate_Policy where
        toJSON RollingUpdate_Policy{..}
          = Core.object
              (Core.catMaybes
                 [("autoPauseAfterInstances" Core..=) Core.<$>
                    autoPauseAfterInstances,
                  ("instanceStartupTimeoutSec" Core..=) Core.<$>
                    instanceStartupTimeoutSec,
                  ("maxNumConcurrentInstances" Core..=) Core.<$>
                    maxNumConcurrentInstances,
                  ("maxNumFailedInstances" Core..=) Core.<$>
                    maxNumFailedInstances,
                  ("minInstanceUpdateTimeSec" Core..=) Core.<$>
                    minInstanceUpdateTimeSec])


-- | Response returned by List method.
--
-- /See:/ 'newRollingUpdateList' smart constructor.
data RollingUpdateList = RollingUpdateList
    {
      -- | Collection of requested updates.
      items :: (Core.Maybe [RollingUpdate])
      -- | [Output Only] Type of the resource.
    , kind :: Core.Text
      -- | A token used to continue a truncated list request.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | [Output Only] The fully qualified URL for the resource.
    , selfLink :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollingUpdateList' with the minimum fields required to make a request.
newRollingUpdateList 
    ::  RollingUpdateList
newRollingUpdateList =
  RollingUpdateList
    { items = Core.Nothing
    , kind = "replicapoolupdater#rollingUpdateList"
    , nextPageToken = Core.Nothing
    , selfLink = Core.Nothing
    }

instance Core.FromJSON RollingUpdateList where
        parseJSON
          = Core.withObject "RollingUpdateList"
              (\ o ->
                 RollingUpdateList Core.<$>
                   (o Core..:? "items") Core.<*>
                     (o Core..:? "kind" Core..!=
                        "replicapoolupdater#rollingUpdateList")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "selfLink"))

instance Core.ToJSON RollingUpdateList where
        toJSON RollingUpdateList{..}
          = Core.object
              (Core.catMaybes
                 [("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("selfLink" Core..=) Core.<$> selfLink])

