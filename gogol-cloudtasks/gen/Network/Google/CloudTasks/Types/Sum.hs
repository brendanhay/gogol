{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudTasks.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudTasks.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Output only. The view specifies which subset of the Task has been
-- returned.
data TaskView
    = ViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Unspecified. Defaults to BASIC.
    | Basic
      -- ^ @BASIC@
      -- The basic view omits fields which can be large or can contain sensitive
      -- data. This view does not include the body in AppEngineHttpRequest.
      -- Bodies are desirable to return only when needed, because they can be
      -- large and because of the sensitivity of the data that you choose to
      -- store in it.
    | Full
      -- ^ @FULL@
      -- All information is returned. Authorization for FULL requires
      -- \`cloudtasks.tasks.fullView\` [Google
      -- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Queue
      -- resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TaskView

instance FromHttpApiData TaskView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right ViewUnspecified
        "BASIC" -> Right Basic
        "FULL" -> Right Full
        x -> Left ("Unable to parse TaskView from: " <> x)

instance ToHttpApiData TaskView where
    toQueryParam = \case
        ViewUnspecified -> "VIEW_UNSPECIFIED"
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON TaskView where
    parseJSON = parseJSONText "TaskView"

instance ToJSON TaskView where
    toJSON = toJSONText

-- | Output only. The state of the queue. \`state\` can only be changed by
-- called PauseQueue, ResumeQueue, or uploading
-- [queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/python\/config\/queueref).
-- UpdateQueue cannot be used to change \`state\`.
data QueueState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unspecified state.
    | Running
      -- ^ @RUNNING@
      -- The queue is running. Tasks can be dispatched. If the queue was created
      -- using Cloud Tasks and the queue has had no activity (method calls or
      -- task dispatches) for 30 days, the queue may take a few minutes to
      -- re-activate. Some method calls may return NOT_FOUND and tasks may not be
      -- dispatched for a few minutes until the queue has been re-activated.
    | Paused
      -- ^ @PAUSED@
      -- Tasks are paused by the user. If the queue is paused then Cloud Tasks
      -- will stop delivering tasks from it, but more tasks can still be added to
      -- it by the user.
    | Disabled
      -- ^ @DISABLED@
      -- The queue is disabled. A queue becomes \`DISABLED\` when
      -- [queue.yaml](https:\/\/cloud.google.com\/appengine\/docs\/python\/config\/queueref)
      -- or
      -- [queue.xml](https:\/\/cloud.google.com\/appengine\/docs\/standard\/java\/config\/queueref)
      -- is uploaded which does not contain the queue. You cannot directly
      -- disable a queue. When a queue is disabled, tasks can still be added to a
      -- queue but the tasks are not dispatched. To permanently delete this queue
      -- and all of its tasks, call DeleteQueue.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueueState

instance FromHttpApiData QueueState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "RUNNING" -> Right Running
        "PAUSED" -> Right Paused
        "DISABLED" -> Right Disabled
        x -> Left ("Unable to parse QueueState from: " <> x)

instance ToHttpApiData QueueState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Running -> "RUNNING"
        Paused -> "PAUSED"
        Disabled -> "DISABLED"

instance FromJSON QueueState where
    parseJSON = parseJSONText "QueueState"

instance ToJSON QueueState where
    toJSON = toJSONText

-- | The response_view specifies which subset of the Task will be returned.
-- By default response_view is BASIC; not all information is retrieved by
-- default because some data, such as payloads, might be desirable to
-- return only when needed because of its large size or because of the
-- sensitivity of data that it contains. Authorization for FULL requires
-- \`cloudtasks.tasks.fullView\` [Google
-- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Task resource.
data CreateTaskRequestResponseView
    = CTRRVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Unspecified. Defaults to BASIC.
    | CTRRVBasic
      -- ^ @BASIC@
      -- The basic view omits fields which can be large or can contain sensitive
      -- data. This view does not include the body in AppEngineHttpRequest.
      -- Bodies are desirable to return only when needed, because they can be
      -- large and because of the sensitivity of the data that you choose to
      -- store in it.
    | CTRRVFull
      -- ^ @FULL@
      -- All information is returned. Authorization for FULL requires
      -- \`cloudtasks.tasks.fullView\` [Google
      -- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Queue
      -- resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateTaskRequestResponseView

instance FromHttpApiData CreateTaskRequestResponseView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right CTRRVViewUnspecified
        "BASIC" -> Right CTRRVBasic
        "FULL" -> Right CTRRVFull
        x -> Left ("Unable to parse CreateTaskRequestResponseView from: " <> x)

instance ToHttpApiData CreateTaskRequestResponseView where
    toQueryParam = \case
        CTRRVViewUnspecified -> "VIEW_UNSPECIFIED"
        CTRRVBasic -> "BASIC"
        CTRRVFull -> "FULL"

instance FromJSON CreateTaskRequestResponseView where
    parseJSON = parseJSONText "CreateTaskRequestResponseView"

instance ToJSON CreateTaskRequestResponseView where
    toJSON = toJSONText

-- | The HTTP method to use for the request. The default is POST. The app\'s
-- request handler for the task\'s target URL must be able to handle HTTP
-- requests with this http_method, otherwise the task attempt fails with
-- error code 405 (Method Not Allowed). See [Writing a push task request
-- handler](https:\/\/cloud.google.com\/appengine\/docs\/java\/taskqueue\/push\/creating-handlers#writing_a_push_task_request_handler)
-- and the App Engine documentation for your runtime on [How Requests are
-- Handled](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python3\/how-requests-are-handled).
data AppEngineHTTPRequestHTTPMethod
    = HTTPMethodUnspecified
      -- ^ @HTTP_METHOD_UNSPECIFIED@
      -- HTTP method unspecified
    | Post'
      -- ^ @POST@
      -- HTTP POST
    | Get'
      -- ^ @GET@
      -- HTTP GET
    | Head'
      -- ^ @HEAD@
      -- HTTP HEAD
    | Put'
      -- ^ @PUT@
      -- HTTP PUT
    | Delete'
      -- ^ @DELETE@
      -- HTTP DELETE
    | Patch'
      -- ^ @PATCH@
      -- HTTP PATCH
    | Options
      -- ^ @OPTIONS@
      -- HTTP OPTIONS
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AppEngineHTTPRequestHTTPMethod

instance FromHttpApiData AppEngineHTTPRequestHTTPMethod where
    parseQueryParam = \case
        "HTTP_METHOD_UNSPECIFIED" -> Right HTTPMethodUnspecified
        "POST" -> Right Post'
        "GET" -> Right Get'
        "HEAD" -> Right Head'
        "PUT" -> Right Put'
        "DELETE" -> Right Delete'
        "PATCH" -> Right Patch'
        "OPTIONS" -> Right Options
        x -> Left ("Unable to parse AppEngineHTTPRequestHTTPMethod from: " <> x)

instance ToHttpApiData AppEngineHTTPRequestHTTPMethod where
    toQueryParam = \case
        HTTPMethodUnspecified -> "HTTP_METHOD_UNSPECIFIED"
        Post' -> "POST"
        Get' -> "GET"
        Head' -> "HEAD"
        Put' -> "PUT"
        Delete' -> "DELETE"
        Patch' -> "PATCH"
        Options -> "OPTIONS"

instance FromJSON AppEngineHTTPRequestHTTPMethod where
    parseJSON = parseJSONText "AppEngineHTTPRequestHTTPMethod"

instance ToJSON AppEngineHTTPRequestHTTPMethod where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The response_view specifies which subset of the Task will be returned.
-- By default response_view is BASIC; not all information is retrieved by
-- default because some data, such as payloads, might be desirable to
-- return only when needed because of its large size or because of the
-- sensitivity of data that it contains. Authorization for FULL requires
-- \`cloudtasks.tasks.fullView\` [Google
-- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Task resource.
data RunTaskRequestResponseView
    = RTRRVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Unspecified. Defaults to BASIC.
    | RTRRVBasic
      -- ^ @BASIC@
      -- The basic view omits fields which can be large or can contain sensitive
      -- data. This view does not include the body in AppEngineHttpRequest.
      -- Bodies are desirable to return only when needed, because they can be
      -- large and because of the sensitivity of the data that you choose to
      -- store in it.
    | RTRRVFull
      -- ^ @FULL@
      -- All information is returned. Authorization for FULL requires
      -- \`cloudtasks.tasks.fullView\` [Google
      -- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Queue
      -- resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RunTaskRequestResponseView

instance FromHttpApiData RunTaskRequestResponseView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right RTRRVViewUnspecified
        "BASIC" -> Right RTRRVBasic
        "FULL" -> Right RTRRVFull
        x -> Left ("Unable to parse RunTaskRequestResponseView from: " <> x)

instance ToHttpApiData RunTaskRequestResponseView where
    toQueryParam = \case
        RTRRVViewUnspecified -> "VIEW_UNSPECIFIED"
        RTRRVBasic -> "BASIC"
        RTRRVFull -> "FULL"

instance FromJSON RunTaskRequestResponseView where
    parseJSON = parseJSONText "RunTaskRequestResponseView"

instance ToJSON RunTaskRequestResponseView where
    toJSON = toJSONText

-- | The HTTP method to use for the request. The default is POST.
data HTTPRequestHTTPMethod
    = HTTPRHTTPMHTTPMethodUnspecified
      -- ^ @HTTP_METHOD_UNSPECIFIED@
      -- HTTP method unspecified
    | HTTPRHTTPMPost'
      -- ^ @POST@
      -- HTTP POST
    | HTTPRHTTPMGet'
      -- ^ @GET@
      -- HTTP GET
    | HTTPRHTTPMHead'
      -- ^ @HEAD@
      -- HTTP HEAD
    | HTTPRHTTPMPut'
      -- ^ @PUT@
      -- HTTP PUT
    | HTTPRHTTPMDelete'
      -- ^ @DELETE@
      -- HTTP DELETE
    | HTTPRHTTPMPatch'
      -- ^ @PATCH@
      -- HTTP PATCH
    | HTTPRHTTPMOptions
      -- ^ @OPTIONS@
      -- HTTP OPTIONS
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPRequestHTTPMethod

instance FromHttpApiData HTTPRequestHTTPMethod where
    parseQueryParam = \case
        "HTTP_METHOD_UNSPECIFIED" -> Right HTTPRHTTPMHTTPMethodUnspecified
        "POST" -> Right HTTPRHTTPMPost'
        "GET" -> Right HTTPRHTTPMGet'
        "HEAD" -> Right HTTPRHTTPMHead'
        "PUT" -> Right HTTPRHTTPMPut'
        "DELETE" -> Right HTTPRHTTPMDelete'
        "PATCH" -> Right HTTPRHTTPMPatch'
        "OPTIONS" -> Right HTTPRHTTPMOptions
        x -> Left ("Unable to parse HTTPRequestHTTPMethod from: " <> x)

instance ToHttpApiData HTTPRequestHTTPMethod where
    toQueryParam = \case
        HTTPRHTTPMHTTPMethodUnspecified -> "HTTP_METHOD_UNSPECIFIED"
        HTTPRHTTPMPost' -> "POST"
        HTTPRHTTPMGet' -> "GET"
        HTTPRHTTPMHead' -> "HEAD"
        HTTPRHTTPMPut' -> "PUT"
        HTTPRHTTPMDelete' -> "DELETE"
        HTTPRHTTPMPatch' -> "PATCH"
        HTTPRHTTPMOptions -> "OPTIONS"

instance FromJSON HTTPRequestHTTPMethod where
    parseJSON = parseJSONText "HTTPRequestHTTPMethod"

instance ToJSON HTTPRequestHTTPMethod where
    toJSON = toJSONText
