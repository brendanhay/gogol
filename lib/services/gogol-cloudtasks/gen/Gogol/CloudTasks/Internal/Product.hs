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
-- Module      : Gogol.CloudTasks.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudTasks.Internal.Product
  (

    -- * AppEngineHttpRequest
    AppEngineHttpRequest (..),
    newAppEngineHttpRequest,

    -- * AppEngineHttpRequest_Headers
    AppEngineHttpRequest_Headers (..),
    newAppEngineHttpRequest_Headers,

    -- * AppEngineRouting
    AppEngineRouting (..),
    newAppEngineRouting,

    -- * Attempt
    Attempt (..),
    newAttempt,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CreateTaskRequest
    CreateTaskRequest (..),
    newCreateTaskRequest,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * HttpRequest
    HttpRequest (..),
    newHttpRequest,

    -- * HttpRequest_Headers
    HttpRequest_Headers (..),
    newHttpRequest_Headers,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListQueuesResponse
    ListQueuesResponse (..),
    newListQueuesResponse,

    -- * ListTasksResponse
    ListTasksResponse (..),
    newListTasksResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * OAuthToken
    OAuthToken (..),
    newOAuthToken,

    -- * OidcToken
    OidcToken (..),
    newOidcToken,

    -- * PauseQueueRequest
    PauseQueueRequest (..),
    newPauseQueueRequest,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PurgeQueueRequest
    PurgeQueueRequest (..),
    newPurgeQueueRequest,

    -- * Queue
    Queue (..),
    newQueue,

    -- * RateLimits
    RateLimits (..),
    newRateLimits,

    -- * ResumeQueueRequest
    ResumeQueueRequest (..),
    newResumeQueueRequest,

    -- * RetryConfig
    RetryConfig (..),
    newRetryConfig,

    -- * RunTaskRequest
    RunTaskRequest (..),
    newRunTaskRequest,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * StackdriverLoggingConfig
    StackdriverLoggingConfig (..),
    newStackdriverLoggingConfig,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Task
    Task (..),
    newTask,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudTasks.Internal.Sum

-- | App Engine HTTP request. The message defines the HTTP request that is sent to an App Engine app when the task is dispatched. Using AppEngineHttpRequest requires <https://cloud.google.com/appengine/docs/admin-api/access-control appengine.applications.get> Google IAM permission for the project and the following scope: @https:\/\/www.googleapis.com\/auth\/cloud-platform@ The task will be delivered to the App Engine app which belongs to the same project as the queue. For more information, see <https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed How Requests are Routed> and how routing is affected by <https://cloud.google.com/appengine/docs/python/config/dispatchref dispatch files>. Traffic is encrypted during transport and never leaves Google datacenters. Because this traffic is carried over a communication mechanism internal to Google, you cannot explicitly set the protocol (for example, HTTP or HTTPS). The request to the handler, however, will appear to have used the HTTP protocol.
-- The AppEngineRouting used to construct the URL that the task is delivered to can be set at the queue-level or task-level: * If app/engine/routing/override is set on the queue, this value is used for all tasks in the queue, no matter what the setting is for the task-level app/engine/routing. The @url@ that the task will be sent to is: * @url =@ host @+@ relative/uri Tasks can be dispatched to secure app handlers, unsecure app handlers, and URIs restricted with <https://cloud.google.com/appengine/docs/standard/python/config/appref login: admin>. Because tasks are not run as any user, they cannot be dispatched to URIs restricted with <https://cloud.google.com/appengine/docs/standard/python/config/appref login: required> Task dispatches also do not follow redirects. The task attempt has succeeded if the app\'s request handler returns an HTTP response code in the range [@200@ - @299@]. The task attempt has failed if the app\'s handler returns a non-2xx response code or Cloud Tasks does not receive response before
-- the deadline. Failed tasks will be retried according to the retry configuration. @503@ (Service Unavailable) is considered an App Engine system error instead of an application error and will cause Cloud Tasks\' traffic congestion control to temporarily throttle the queue\'s dispatches. Unlike other types of task targets, a @429@ (Too Many Requests) response from an app handler does not cause traffic congestion control to throttle the queue.
--
-- /See:/ 'newAppEngineHttpRequest' smart constructor.
data AppEngineHttpRequest = AppEngineHttpRequest
    {
      -- | Task-level setting for App Engine routing. * If app/engine/routing/override is set on the queue, this value is used for all tasks in the queue, no matter what the setting is for the task-level app/engine_routing.
      appEngineRouting :: (Core.Maybe AppEngineRouting)
      -- | HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It is an error to set a body on a task with an incompatible HttpMethod.
    , body :: (Core.Maybe Core.Base64)
      -- | HTTP request headers. This map contains the header field names and values. Headers can be set when the task is created. Repeated headers are not supported but a header value can contain commas. Cloud Tasks sets some headers to default values: * @User-Agent@: By default, this header is @\"AppEngine-Google; (+http:\/\/code.google.com\/appengine)\"@. This header can be modified, but Cloud Tasks will append @\"AppEngine-Google; (+http:\/\/code.google.com\/appengine)\"@ to the modified @User-Agent@. If the task has a body, Cloud Tasks sets the following headers: * @Content-Type@: By default, the @Content-Type@ header is set to @\"application\/octet-stream\"@. The default can be overridden by explicitly setting @Content-Type@ to a particular media type when the task is created. For example, @Content-Type@ can be set to @\"application\/json\"@. * @Content-Length@: This is computed by Cloud Tasks. This value is output only. It cannot be changed. The headers below cannot be set or overridden: * @Host@ * @X-Google-*@ *
      -- @X-AppEngine-*@ In addition, Cloud Tasks sets some headers when the task is dispatched, such as headers containing information about the task; see <https://cloud.google.com/tasks/docs/creating-appengine-handlers#reading_request_headers request headers>. These headers are set only when the task is dispatched, so they are not visible when the task is returned in a Cloud Tasks response. Although there is no specific limit for the maximum number of headers or the size, there is a limit on the maximum size of the Task. For more information, see the CreateTask documentation.
    , headers :: (Core.Maybe AppEngineHttpRequest_Headers)
      -- | The HTTP method to use for the request. The default is POST. The app\'s request handler for the task\'s target URL must be able to handle HTTP requests with this http_method, otherwise the task attempt fails with error code 405 (Method Not Allowed). See <https://cloud.google.com/appengine/docs/java/taskqueue/push/creating-handlers#writing_a_push_task_request_handler Writing a push task request handler> and the App Engine documentation for your runtime on <https://cloud.google.com/appengine/docs/standard/python3/how-requests-are-handled How Requests are Handled>.
    , httpMethod :: (Core.Maybe AppEngineHttpRequest_HttpMethod)
      -- | The relative URI. The relative URI must begin with \"\/\" and must be a valid HTTP relative URI. It can contain a path and query string arguments. If the relative URI is empty, then the root path \"\/\" will be used. No spaces are allowed, and the maximum length allowed is 2083 characters.
    , relativeUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineHttpRequest' with the minimum fields required to make a request.
newAppEngineHttpRequest 
    ::  AppEngineHttpRequest
newAppEngineHttpRequest =
  AppEngineHttpRequest
    { appEngineRouting = Core.Nothing
    , body = Core.Nothing
    , headers = Core.Nothing
    , httpMethod = Core.Nothing
    , relativeUri = Core.Nothing
    }

instance Core.FromJSON AppEngineHttpRequest where
        parseJSON
          = Core.withObject "AppEngineHttpRequest"
              (\ o ->
                 AppEngineHttpRequest Core.<$>
                   (o Core..:? "appEngineRouting") Core.<*>
                     (o Core..:? "body")
                     Core.<*> (o Core..:? "headers")
                     Core.<*> (o Core..:? "httpMethod")
                     Core.<*> (o Core..:? "relativeUri"))

instance Core.ToJSON AppEngineHttpRequest where
        toJSON AppEngineHttpRequest{..}
          = Core.object
              (Core.catMaybes
                 [("appEngineRouting" Core..=) Core.<$>
                    appEngineRouting,
                  ("body" Core..=) Core.<$> body,
                  ("headers" Core..=) Core.<$> headers,
                  ("httpMethod" Core..=) Core.<$> httpMethod,
                  ("relativeUri" Core..=) Core.<$> relativeUri])


-- | HTTP request headers. This map contains the header field names and values. Headers can be set when the task is created. Repeated headers are not supported but a header value can contain commas. Cloud Tasks sets some headers to default values: * @User-Agent@: By default, this header is @\"AppEngine-Google; (+http:\/\/code.google.com\/appengine)\"@. This header can be modified, but Cloud Tasks will append @\"AppEngine-Google; (+http:\/\/code.google.com\/appengine)\"@ to the modified @User-Agent@. If the task has a body, Cloud Tasks sets the following headers: * @Content-Type@: By default, the @Content-Type@ header is set to @\"application\/octet-stream\"@. The default can be overridden by explicitly setting @Content-Type@ to a particular media type when the task is created. For example, @Content-Type@ can be set to @\"application\/json\"@. * @Content-Length@: This is computed by Cloud Tasks. This value is output only. It cannot be changed. The headers below cannot be set or overridden: * @Host@ * @X-Google-*@ *
-- @X-AppEngine-*@ In addition, Cloud Tasks sets some headers when the task is dispatched, such as headers containing information about the task; see <https://cloud.google.com/tasks/docs/creating-appengine-handlers#reading_request_headers request headers>. These headers are set only when the task is dispatched, so they are not visible when the task is returned in a Cloud Tasks response. Although there is no specific limit for the maximum number of headers or the size, there is a limit on the maximum size of the Task. For more information, see the CreateTask documentation.
--
-- /See:/ 'newAppEngineHttpRequest_Headers' smart constructor.
newtype AppEngineHttpRequest_Headers = AppEngineHttpRequest_Headers
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineHttpRequest_Headers' with the minimum fields required to make a request.
newAppEngineHttpRequest_Headers 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> AppEngineHttpRequest_Headers
newAppEngineHttpRequest_Headers addtional =
  AppEngineHttpRequest_Headers {addtional = addtional}

instance Core.FromJSON AppEngineHttpRequest_Headers
         where
        parseJSON
          = Core.withObject "AppEngineHttpRequest_Headers"
              (\ o ->
                 AppEngineHttpRequest_Headers Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON AppEngineHttpRequest_Headers
         where
        toJSON AppEngineHttpRequest_Headers{..}
          = Core.toJSON addtional


-- | App Engine Routing. Defines routing characteristics specific to App Engine - service, version, and instance. For more information about services, versions, and instances see <https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine An Overview of App Engine>, <https://cloud.google.com/appengine/docs/python/microservices-on-app-engine Microservices Architecture on Google App Engine>, <https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed App Engine Standard request routing>, and <https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed App Engine Flex request routing>. Using AppEngineRouting requires <https://cloud.google.com/appengine/docs/admin-api/access-control appengine.applications.get> Google IAM permission for the project and the following scope: @https:\/\/www.googleapis.com\/auth\/cloud-platform@
--
-- /See:/ 'newAppEngineRouting' smart constructor.
data AppEngineRouting = AppEngineRouting
    {
      -- | Output only. The host that the task is sent to. The host is constructed from the domain name of the app associated with the queue\'s project ID (for example .appspot.com), and the service, version, and instance. Tasks which were created using the App Engine SDK might have a custom domain name. For more information, see <https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed How Requests are Routed>.
      host :: (Core.Maybe Core.Text)
      -- | App instance. By default, the task is sent to an instance which is available when the task is attempted. Requests can only be sent to a specific instance if <https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?hl=en_US#scaling_types_and_instance_classes manual scaling is used in App Engine Standard>. App Engine Flex does not support instances. For more information, see <https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed App Engine Standard request routing> and <https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed App Engine Flex request routing>.
    , instance' :: (Core.Maybe Core.Text)
      -- | App service. By default, the task is sent to the service which is the default service when the task is attempted. For some queues or tasks which were created using the App Engine Task Queue API, host is not parsable into service, version, and instance. For example, some tasks which were created using the App Engine SDK use a custom domain name; custom domains are not parsed by Cloud Tasks. If host is not parsable, then service, version, and instance are the empty string.
    , service :: (Core.Maybe Core.Text)
      -- | App version. By default, the task is sent to the version which is the default version when the task is attempted. For some queues or tasks which were created using the App Engine Task Queue API, host is not parsable into service, version, and instance. For example, some tasks which were created using the App Engine SDK use a custom domain name; custom domains are not parsed by Cloud Tasks. If host is not parsable, then service, version, and instance are the empty string.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineRouting' with the minimum fields required to make a request.
newAppEngineRouting 
    ::  AppEngineRouting
newAppEngineRouting =
  AppEngineRouting
    { host = Core.Nothing
    , instance' = Core.Nothing
    , service = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON AppEngineRouting where
        parseJSON
          = Core.withObject "AppEngineRouting"
              (\ o ->
                 AppEngineRouting Core.<$>
                   (o Core..:? "host") Core.<*> (o Core..:? "instance")
                     Core.<*> (o Core..:? "service")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON AppEngineRouting where
        toJSON AppEngineRouting{..}
          = Core.object
              (Core.catMaybes
                 [("host" Core..=) Core.<$> host,
                  ("instance" Core..=) Core.<$> instance',
                  ("service" Core..=) Core.<$> service,
                  ("version" Core..=) Core.<$> version])


-- | The status of a task attempt.
--
-- /See:/ 'newAttempt' smart constructor.
data Attempt = Attempt
    {
      -- | Output only. The time that this attempt was dispatched. @dispatch_time@ will be truncated to the nearest microsecond.
      dispatchTime :: (Core.Maybe Core.DateTime')
      -- | Output only. The response from the worker for this attempt. If @response_time@ is unset, then the task has not been attempted or is currently running and the @response_status@ field is meaningless.
    , responseStatus :: (Core.Maybe Status)
      -- | Output only. The time that this attempt response was received. @response_time@ will be truncated to the nearest microsecond.
    , responseTime :: (Core.Maybe Core.DateTime')
      -- | Output only. The time that this attempt was scheduled. @schedule_time@ will be truncated to the nearest microsecond.
    , scheduleTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attempt' with the minimum fields required to make a request.
newAttempt 
    ::  Attempt
newAttempt =
  Attempt
    { dispatchTime = Core.Nothing
    , responseStatus = Core.Nothing
    , responseTime = Core.Nothing
    , scheduleTime = Core.Nothing
    }

instance Core.FromJSON Attempt where
        parseJSON
          = Core.withObject "Attempt"
              (\ o ->
                 Attempt Core.<$>
                   (o Core..:? "dispatchTime") Core.<*>
                     (o Core..:? "responseStatus")
                     Core.<*> (o Core..:? "responseTime")
                     Core.<*> (o Core..:? "scheduleTime"))

instance Core.ToJSON Attempt where
        toJSON Attempt{..}
          = Core.object
              (Core.catMaybes
                 [("dispatchTime" Core..=) Core.<$> dispatchTime,
                  ("responseStatus" Core..=) Core.<$> responseStatus,
                  ("responseTime" Core..=) Core.<$> responseTime,
                  ("scheduleTime" Core..=) Core.<$> scheduleTime])


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe Expr)
      -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
      -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding 
    ::  Binding
newBinding =
  Binding
    {condition = Core.Nothing, members = Core.Nothing, role' = Core.Nothing}

instance Core.FromJSON Binding where
        parseJSON
          = Core.withObject "Binding"
              (\ o ->
                 Binding Core.<$>
                   (o Core..:? "condition") Core.<*>
                     (o Core..:? "members" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON Binding where
        toJSON Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


-- | Request message for CreateTask.
--
-- /See:/ 'newCreateTaskRequest' smart constructor.
data CreateTaskRequest = CreateTaskRequest
    {
      -- | The response/view specifies which subset of the Task will be returned. By default response/view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Task resource.
      responseView :: (Core.Maybe CreateTaskRequest_ResponseView)
      -- | Required. The task to add. Task names have the following format: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID@. The user can optionally specify a task name. If a name is not specified then the system will generate a random unique task id, which will be set in the task returned in the response. If schedule/time is not set or is in the past then Cloud Tasks will set it to the current time. Task De-duplication: Explicitly specifying a task ID enables task de-duplication. If a task\'s ID is identical to that of an existing task or a task that was deleted or executed recently then the call will fail with ALREADY/EXISTS. If the task\'s queue was created using Cloud Tasks, then another task with the same name can\'t be created for ~1hour after the original task was deleted or executed. If the task\'s queue was created using queue.yaml or queue.xml, then another task with the same name can\'t be created for ~9days after the original task was deleted or executed. Because there is an
      -- extra lookup cost to identify duplicate task names, these CreateTask calls have significantly increased latency. Using hashed strings for the task id or for the prefix of the task id is recommended. Choosing task ids that are sequential or have sequential prefixes, for example using a timestamp, causes an increase in latency and error rates in all task commands. The infrastructure relies on an approximately uniform distribution of task ids to store and serve tasks efficiently.
    , task :: (Core.Maybe Task)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTaskRequest' with the minimum fields required to make a request.
newCreateTaskRequest 
    ::  CreateTaskRequest
newCreateTaskRequest =
  CreateTaskRequest {responseView = Core.Nothing, task = Core.Nothing}

instance Core.FromJSON CreateTaskRequest where
        parseJSON
          = Core.withObject "CreateTaskRequest"
              (\ o ->
                 CreateTaskRequest Core.<$>
                   (o Core..:? "responseView") Core.<*>
                     (o Core..:? "task"))

instance Core.ToJSON CreateTaskRequest where
        toJSON CreateTaskRequest{..}
          = Core.object
              (Core.catMaybes
                 [("responseView" Core..=) Core.<$> responseView,
                  ("task" Core..=) Core.<$> task])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
    {
      -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
      description :: (Core.Maybe Core.Text)
      -- | Textual representation of an expression in Common Expression Language syntax.
    , expression :: (Core.Maybe Core.Text)
      -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    , location :: (Core.Maybe Core.Text)
      -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr 
    ::  Expr
newExpr =
  Expr
    { description = Core.Nothing
    , expression = Core.Nothing
    , location = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Expr where
        parseJSON
          = Core.withObject "Expr"
              (\ o ->
                 Expr Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "expression")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Expr where
        toJSON Expr{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("location" Core..=) Core.<$> location,
                  ("title" Core..=) Core.<$> title])


-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
    {
      -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
      options :: (Core.Maybe GetPolicyOptions)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest 
    ::  GetIamPolicyRequest
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
        parseJSON
          = Core.withObject "GetIamPolicyRequest"
              (\ o ->
                 GetIamPolicyRequest Core.<$> (o Core..:? "options"))

instance Core.ToJSON GetIamPolicyRequest where
        toJSON GetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("options" Core..=) Core.<$> options])


-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
    {
      -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      requestedPolicyVersion :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions 
    ::  GetPolicyOptions
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
        parseJSON
          = Core.withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions Core.<$>
                   (o Core..:? "requestedPolicyVersion"))

instance Core.ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions{..}
          = Core.object
              (Core.catMaybes
                 [("requestedPolicyVersion" Core..=) Core.<$>
                    requestedPolicyVersion])


-- | HTTP request. The task will be pushed to the worker as an HTTP request. If the worker or the redirected worker acknowledges the task by returning a successful HTTP response code ([@200@ - @299@]), the task will be removed from the queue. If any other HTTP response code is returned or no response is received, the task will be retried according to the following: * User-specified throttling: retry configuration, rate limits, and the queue\'s state. * System throttling: To prevent the worker from overloading, Cloud Tasks may temporarily reduce the queue\'s effective rate. User-specified settings will not be changed. System throttling happens because: * Cloud Tasks backs off on all errors. Normally the backoff specified in rate limits will be used. But if the worker returns @429@ (Too Many Requests), @503@ (Service Unavailable), or the rate of errors is high, Cloud Tasks will use a higher backoff rate. The retry specified in the @Retry-After@ HTTP response header is considered. * To prevent traffic spikes and to
-- smooth sudden increases in traffic, dispatches ramp up slowly when the queue is newly created or idle and if large numbers of tasks suddenly become available to dispatch (due to spikes in create task rates, the queue being unpaused, or many tasks that are scheduled at the same time).
--
-- /See:/ 'newHttpRequest' smart constructor.
data HttpRequest = HttpRequest
    {
      -- | HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It is an error to set body on a task with an incompatible HttpMethod.
      body :: (Core.Maybe Core.Base64)
      -- | HTTP request headers. This map contains the header field names and values. Headers can be set when the task is created. These headers represent a subset of the headers that will accompany the task\'s HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. * User-Agent: This will be set to @\"Google-Cloud-Tasks\"@. * @X-Google-*@: Google use only. * @X-AppEngine-*@: Google use only. @Content-Type@ won\'t be set by Cloud Tasks. You can explicitly set @Content-Type@ to a media type when the task is created. For example, @Content-Type@ can be set to @\"application\/octet-stream\"@ or @\"application\/json\"@. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB.
    , headers :: (Core.Maybe HttpRequest_Headers)
      -- | The HTTP method to use for the request. The default is POST.
    , httpMethod :: (Core.Maybe HttpRequest_HttpMethod)
      -- | If specified, an <https://developers.google.com/identity/protocols/OAuth2 OAuth token> will be generated and attached as an @Authorization@ header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
    , oauthToken :: (Core.Maybe OAuthToken)
      -- | If specified, an <https://developers.google.com/identity/protocols/OpenIDConnect OIDC> token will be generated and attached as an @Authorization@ header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
    , oidcToken :: (Core.Maybe OidcToken)
      -- | Required. The full url path that the request will be sent to. This string must begin with either \"http:\/\/\" or \"https:\/\/\". Some examples are: @http:\/\/acme.com@ and @https:\/\/acme.com\/sales:8080@. Cloud Tasks will encode some characters for safety and compatibility. The maximum allowed URL length is 2083 characters after encoding. The @Location@ header response from a redirect response [@300@ - @399@] may be followed. The redirect is not counted as a separate attempt.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpRequest' with the minimum fields required to make a request.
newHttpRequest 
    ::  HttpRequest
newHttpRequest =
  HttpRequest
    { body = Core.Nothing
    , headers = Core.Nothing
    , httpMethod = Core.Nothing
    , oauthToken = Core.Nothing
    , oidcToken = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON HttpRequest where
        parseJSON
          = Core.withObject "HttpRequest"
              (\ o ->
                 HttpRequest Core.<$>
                   (o Core..:? "body") Core.<*> (o Core..:? "headers")
                     Core.<*> (o Core..:? "httpMethod")
                     Core.<*> (o Core..:? "oauthToken")
                     Core.<*> (o Core..:? "oidcToken")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON HttpRequest where
        toJSON HttpRequest{..}
          = Core.object
              (Core.catMaybes
                 [("body" Core..=) Core.<$> body,
                  ("headers" Core..=) Core.<$> headers,
                  ("httpMethod" Core..=) Core.<$> httpMethod,
                  ("oauthToken" Core..=) Core.<$> oauthToken,
                  ("oidcToken" Core..=) Core.<$> oidcToken,
                  ("url" Core..=) Core.<$> url])


-- | HTTP request headers. This map contains the header field names and values. Headers can be set when the task is created. These headers represent a subset of the headers that will accompany the task\'s HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. * User-Agent: This will be set to @\"Google-Cloud-Tasks\"@. * @X-Google-*@: Google use only. * @X-AppEngine-*@: Google use only. @Content-Type@ won\'t be set by Cloud Tasks. You can explicitly set @Content-Type@ to a media type when the task is created. For example, @Content-Type@ can be set to @\"application\/octet-stream\"@ or @\"application\/json\"@. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB.
--
-- /See:/ 'newHttpRequest_Headers' smart constructor.
newtype HttpRequest_Headers = HttpRequest_Headers
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpRequest_Headers' with the minimum fields required to make a request.
newHttpRequest_Headers 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> HttpRequest_Headers
newHttpRequest_Headers addtional = HttpRequest_Headers {addtional = addtional}

instance Core.FromJSON HttpRequest_Headers where
        parseJSON
          = Core.withObject "HttpRequest_Headers"
              (\ o ->
                 HttpRequest_Headers Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON HttpRequest_Headers where
        toJSON HttpRequest_Headers{..}
          = Core.toJSON addtional


-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
    {
      -- | A list of locations that matches the specified filter in the request.
      locations :: (Core.Maybe [Location])
      -- | The standard List next-page token.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse 
    ::  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
        parseJSON
          = Core.withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse Core.<$>
                   (o Core..:? "locations" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("locations" Core..=) Core.<$> locations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for ListQueues.
--
-- /See:/ 'newListQueuesResponse' smart constructor.
data ListQueuesResponse = ListQueuesResponse
    {
      -- | A token to retrieve next page of results. To return the next page of results, call ListQueues with this value as the page/token. If the next/page_token is empty, there are no more results. The page token is valid for only 2 hours.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of queues.
    , queues :: (Core.Maybe [Queue])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListQueuesResponse' with the minimum fields required to make a request.
newListQueuesResponse 
    ::  ListQueuesResponse
newListQueuesResponse =
  ListQueuesResponse {nextPageToken = Core.Nothing, queues = Core.Nothing}

instance Core.FromJSON ListQueuesResponse where
        parseJSON
          = Core.withObject "ListQueuesResponse"
              (\ o ->
                 ListQueuesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "queues" Core..!= Core.mempty))

instance Core.ToJSON ListQueuesResponse where
        toJSON ListQueuesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("queues" Core..=) Core.<$> queues])


-- | Response message for listing tasks using ListTasks.
--
-- /See:/ 'newListTasksResponse' smart constructor.
data ListTasksResponse = ListTasksResponse
    {
      -- | A token to retrieve next page of results. To return the next page of results, call ListTasks with this value as the page/token. If the next/page_token is empty, there are no more results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of tasks.
    , tasks :: (Core.Maybe [Task])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTasksResponse' with the minimum fields required to make a request.
newListTasksResponse 
    ::  ListTasksResponse
newListTasksResponse =
  ListTasksResponse {nextPageToken = Core.Nothing, tasks = Core.Nothing}

instance Core.FromJSON ListTasksResponse where
        parseJSON
          = Core.withObject "ListTasksResponse"
              (\ o ->
                 ListTasksResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "tasks" Core..!= Core.mempty))

instance Core.ToJSON ListTasksResponse where
        toJSON ListTasksResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("tasks" Core..=) Core.<$> tasks])


-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
    {
      -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
      displayName :: (Core.Maybe Core.Text)
      -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    , labels :: (Core.Maybe Location_Labels)
      -- | The canonical id for this location. For example: @\"us-east1\"@.
    , locationId :: (Core.Maybe Core.Text)
      -- | Service-specific metadata. For example the available capacity at the given location.
    , metadata :: (Core.Maybe Location_Metadata)
      -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation 
    ::  Location
newLocation =
  Location
    { displayName = Core.Nothing
    , labels = Core.Nothing
    , locationId = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Location where
        parseJSON
          = Core.withObject "Location"
              (\ o ->
                 Location Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "labels")
                     Core.<*> (o Core..:? "locationId")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Location where
        toJSON Location{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("locationId" Core..=) Core.<$> locationId,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name])


-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> Location_Labels
newLocation_Labels addtional = Location_Labels {addtional = addtional}

instance Core.FromJSON Location_Labels where
        parseJSON
          = Core.withObject "Location_Labels"
              (\ o ->
                 Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
        toJSON Location_Labels{..} = Core.toJSON addtional


-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Location_Metadata
newLocation_Metadata addtional = Location_Metadata {addtional = addtional}

instance Core.FromJSON Location_Metadata where
        parseJSON
          = Core.withObject "Location_Metadata"
              (\ o ->
                 Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
        toJSON Location_Metadata{..} = Core.toJSON addtional


-- | Contains information needed for generating an <https://developers.google.com/identity/protocols/OAuth2 OAuth token>. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
--
-- /See:/ 'newOAuthToken' smart constructor.
data OAuthToken = OAuthToken
    {
      -- | OAuth scope to be used for generating OAuth access token. If not specified, \"https:\/\/www.googleapis.com\/auth\/cloud-platform\" will be used.
      scope :: (Core.Maybe Core.Text)
      -- | <https://cloud.google.com/iam/docs/service-accounts Service account email> to be used for generating OAuth token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
    , serviceAccountEmail :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuthToken' with the minimum fields required to make a request.
newOAuthToken 
    ::  OAuthToken
newOAuthToken =
  OAuthToken {scope = Core.Nothing, serviceAccountEmail = Core.Nothing}

instance Core.FromJSON OAuthToken where
        parseJSON
          = Core.withObject "OAuthToken"
              (\ o ->
                 OAuthToken Core.<$>
                   (o Core..:? "scope") Core.<*>
                     (o Core..:? "serviceAccountEmail"))

instance Core.ToJSON OAuthToken where
        toJSON OAuthToken{..}
          = Core.object
              (Core.catMaybes
                 [("scope" Core..=) Core.<$> scope,
                  ("serviceAccountEmail" Core..=) Core.<$>
                    serviceAccountEmail])


-- | Contains information needed for generating an <https://developers.google.com/identity/protocols/OpenIDConnect OpenID Connect token>. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
--
-- /See:/ 'newOidcToken' smart constructor.
data OidcToken = OidcToken
    {
      -- | Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
      audience :: (Core.Maybe Core.Text)
      -- | <https://cloud.google.com/iam/docs/service-accounts Service account email> to be used for generating OIDC token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
    , serviceAccountEmail :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OidcToken' with the minimum fields required to make a request.
newOidcToken 
    ::  OidcToken
newOidcToken =
  OidcToken {audience = Core.Nothing, serviceAccountEmail = Core.Nothing}

instance Core.FromJSON OidcToken where
        parseJSON
          = Core.withObject "OidcToken"
              (\ o ->
                 OidcToken Core.<$>
                   (o Core..:? "audience") Core.<*>
                     (o Core..:? "serviceAccountEmail"))

instance Core.ToJSON OidcToken where
        toJSON OidcToken{..}
          = Core.object
              (Core.catMaybes
                 [("audience" Core..=) Core.<$> audience,
                  ("serviceAccountEmail" Core..=) Core.<$>
                    serviceAccountEmail])


-- | Request message for PauseQueue.
--
-- /See:/ 'newPauseQueueRequest' smart constructor.
data PauseQueueRequest = PauseQueueRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PauseQueueRequest' with the minimum fields required to make a request.
newPauseQueueRequest 
    ::  PauseQueueRequest
newPauseQueueRequest = PauseQueueRequest

instance Core.FromJSON PauseQueueRequest where
        parseJSON
          = Core.withObject "PauseQueueRequest"
              (\ o -> Core.pure PauseQueueRequest)

instance Core.ToJSON PauseQueueRequest where
        toJSON = Core.const Core.emptyObject


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
    {
      -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
      bindings :: (Core.Maybe [Binding])
      -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    , etag :: (Core.Maybe Core.Base64)
      -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
      -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy 
    ::  Policy
newPolicy =
  Policy {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Policy where
        parseJSON
          = Core.withObject "Policy"
              (\ o ->
                 Policy Core.<$>
                   (o Core..:? "bindings" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON Policy where
        toJSON Policy{..}
          = Core.object
              (Core.catMaybes
                 [("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


-- | Request message for PurgeQueue.
--
-- /See:/ 'newPurgeQueueRequest' smart constructor.
data PurgeQueueRequest = PurgeQueueRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PurgeQueueRequest' with the minimum fields required to make a request.
newPurgeQueueRequest 
    ::  PurgeQueueRequest
newPurgeQueueRequest = PurgeQueueRequest

instance Core.FromJSON PurgeQueueRequest where
        parseJSON
          = Core.withObject "PurgeQueueRequest"
              (\ o -> Core.pure PurgeQueueRequest)

instance Core.ToJSON PurgeQueueRequest where
        toJSON = Core.const Core.emptyObject


-- | A queue is a container of related tasks. Queues are configured to manage how those tasks are dispatched. Configurable properties include rate limits, retry options, queue types, and others.
--
-- /See:/ 'newQueue' smart constructor.
data Queue = Queue
    {
      -- | Overrides for task-level app/engine/routing. These settings apply only to App Engine tasks in this queue. Http tasks are not affected. If set, @app_engine_routing_override@ is used for all App Engine tasks in the queue, no matter what the setting is for the task-level app/engine/routing.
      appEngineRoutingOverride :: (Core.Maybe AppEngineRouting)
      -- | Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@ * @PROJECT_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see <https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects Identifying projects> * @LOCATION_ID@ is the canonical ID for the queue\'s location. The list of available locations can be obtained by calling ListLocations. For more information, see https:\/\/cloud.google.com\/about\/locations\/. * @QUEUE_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The last time this queue was purged. All tasks that were created before this time were purged. A queue can be purged using PurgeQueue, the <https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue App Engine Task Queue SDK, or the Cloud Console>. Purge time will be truncated to the nearest microsecond. Purge time will be unset if the queue has never been purged.
    , purgeTime :: (Core.Maybe Core.DateTime')
      -- | Rate limits for task dispatches. rate/limits and retry/config are related because they both control task attempts. However they control task attempts in different ways: * rate/limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry/config controls what happens to particular a task after its first attempt fails. That is, retry/config controls task retries (the second attempt, third attempt, etc). The queue\'s actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate/limits, retry_config, and the queue\'s state. * System throttling due to @429@ (Too Many Requests) or @503@ (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
    , rateLimits :: (Core.Maybe RateLimits)
      -- | Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See <https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks App Engine documentation>.
    , retryConfig :: (Core.Maybe RetryConfig)
      -- | Configuration options for writing logs to <https://cloud.google.com/logging/docs/ Stackdriver Logging>. If this field is unset, then no logs are written.
    , stackdriverLoggingConfig :: (Core.Maybe StackdriverLoggingConfig)
      -- | Output only. The state of the queue. @state@ can only be changed by calling PauseQueue, ResumeQueue, or uploading <https://cloud.google.com/appengine/docs/python/config/queueref queue.yaml\/xml>. UpdateQueue cannot be used to change @state@.
    , state :: (Core.Maybe Queue_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Queue' with the minimum fields required to make a request.
newQueue 
    ::  Queue
newQueue =
  Queue
    { appEngineRoutingOverride = Core.Nothing
    , name = Core.Nothing
    , purgeTime = Core.Nothing
    , rateLimits = Core.Nothing
    , retryConfig = Core.Nothing
    , stackdriverLoggingConfig = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON Queue where
        parseJSON
          = Core.withObject "Queue"
              (\ o ->
                 Queue Core.<$>
                   (o Core..:? "appEngineRoutingOverride") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "purgeTime")
                     Core.<*> (o Core..:? "rateLimits")
                     Core.<*> (o Core..:? "retryConfig")
                     Core.<*> (o Core..:? "stackdriverLoggingConfig")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON Queue where
        toJSON Queue{..}
          = Core.object
              (Core.catMaybes
                 [("appEngineRoutingOverride" Core..=) Core.<$>
                    appEngineRoutingOverride,
                  ("name" Core..=) Core.<$> name,
                  ("purgeTime" Core..=) Core.<$> purgeTime,
                  ("rateLimits" Core..=) Core.<$> rateLimits,
                  ("retryConfig" Core..=) Core.<$> retryConfig,
                  ("stackdriverLoggingConfig" Core..=) Core.<$>
                    stackdriverLoggingConfig,
                  ("state" Core..=) Core.<$> state])


-- | Rate limits. This message determines the maximum rate that tasks can be dispatched by a queue, regardless of whether the dispatch is a first task attempt or a retry. Note: The debugging command, RunTask, will run a task even if the queue has reached its RateLimits.
--
-- /See:/ 'newRateLimits' smart constructor.
data RateLimits = RateLimits
    {
      -- | Output only. The max burst size. Max burst size limits how fast tasks in queue are processed when many tasks are in the queue and the rate is high. This field allows the queue to have a high rate so processing starts shortly after a task is enqueued, but still limits resource usage when many tasks are enqueued in a short period of time. The <https://wikipedia.org/wiki/Token_Bucket token bucket> algorithm is used to control the rate of task dispatches. Each queue has a token bucket that holds tokens, up to the maximum specified by @max_burst_size@. Each time a task is dispatched, a token is removed from the bucket. Tasks will be dispatched until the queue\'s bucket runs out of tokens. The bucket will be continuously refilled with new tokens based on max/dispatches/per/second. Cloud Tasks will pick the value of @max_burst_size@ based on the value of max/dispatches/per/second. For queues that were created or updated using @queue.yaml\/xml@, @max_burst_size@ is equal to
      -- <https://cloud.google.com/appengine/docs/standard/python/config/queueref#bucket_size bucket_size>. Since @max_burst_size@ is output only, if UpdateQueue is called on a queue created by @queue.yaml\/xml@, @max_burst_size@ will be reset based on the value of max/dispatches/per/second, regardless of whether max/dispatches/per/second is updated.
      maxBurstSize :: (Core.Maybe Core.Int32)
      -- | The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue. After this threshold has been reached, Cloud Tasks stops dispatching tasks until the number of concurrent requests decreases. If unspecified when the queue is created, Cloud Tasks will pick the default. The maximum allowed value is 5,000. This field has the same meaning as <https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests maxconcurrentrequests in queue.yaml\/xml>.
    , maxConcurrentDispatches :: (Core.Maybe Core.Int32)
      -- | The maximum rate at which tasks are dispatched from this queue. If unspecified when the queue is created, Cloud Tasks will pick the default. * The maximum allowed value is 500. This field has the same meaning as <https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate rate in queue.yaml\/xml>.
    , maxDispatchesPerSecond :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RateLimits' with the minimum fields required to make a request.
newRateLimits 
    ::  RateLimits
newRateLimits =
  RateLimits
    { maxBurstSize = Core.Nothing
    , maxConcurrentDispatches = Core.Nothing
    , maxDispatchesPerSecond = Core.Nothing
    }

instance Core.FromJSON RateLimits where
        parseJSON
          = Core.withObject "RateLimits"
              (\ o ->
                 RateLimits Core.<$>
                   (o Core..:? "maxBurstSize") Core.<*>
                     (o Core..:? "maxConcurrentDispatches")
                     Core.<*> (o Core..:? "maxDispatchesPerSecond"))

instance Core.ToJSON RateLimits where
        toJSON RateLimits{..}
          = Core.object
              (Core.catMaybes
                 [("maxBurstSize" Core..=) Core.<$> maxBurstSize,
                  ("maxConcurrentDispatches" Core..=) Core.<$>
                    maxConcurrentDispatches,
                  ("maxDispatchesPerSecond" Core..=) Core.<$>
                    maxDispatchesPerSecond])


-- | Request message for ResumeQueue.
--
-- /See:/ 'newResumeQueueRequest' smart constructor.
data ResumeQueueRequest = ResumeQueueRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResumeQueueRequest' with the minimum fields required to make a request.
newResumeQueueRequest 
    ::  ResumeQueueRequest
newResumeQueueRequest = ResumeQueueRequest

instance Core.FromJSON ResumeQueueRequest where
        parseJSON
          = Core.withObject "ResumeQueueRequest"
              (\ o -> Core.pure ResumeQueueRequest)

instance Core.ToJSON ResumeQueueRequest where
        toJSON = Core.const Core.emptyObject


-- | Retry config. These settings determine when a failed task attempt is retried.
--
-- /See:/ 'newRetryConfig' smart constructor.
data RetryConfig = RetryConfig
    {
      -- | Number of attempts per task. Cloud Tasks will attempt the task @max_attempts@ times (that is, if the first attempt fails, then there will be @max_attempts - 1@ retries). Must be >= -1. If unspecified when the queue is created, Cloud Tasks will pick the default. -1 indicates unlimited attempts. This field has the same meaning as <https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters taskretrylimit in queue.yaml\/xml>.
      maxAttempts :: (Core.Maybe Core.Int32)
      -- | A task will be scheduled for retry between min/backoff and max/backoff duration after it fails, if the queue\'s RetryConfig specifies that the task should be retried. If unspecified when the queue is created, Cloud Tasks will pick the default. @max_backoff@ will be truncated to the nearest second. This field has the same meaning as <https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters maxbackoffseconds in queue.yaml\/xml>.
    , maxBackoff :: (Core.Maybe Core.GDuration)
      -- | The time between retries will double @max_doublings@ times. A task\'s retry interval starts at min/backoff, then doubles @max_doublings@ times, then increases linearly, and finally retries at intervals of max/backoff up to max/attempts times. For example, if min/backoff is 10s, max/backoff is 300s, and @max_doublings@ is 3, then the a task will first be retried in 10s. The retry interval will double three times, and then increase linearly by 2^3 * 10s. Finally, the task will retry at intervals of max/backoff until the task has been attempted max_attempts times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s, 300s, .... If unspecified when the queue is created, Cloud Tasks will pick the default. This field has the same meaning as <https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters max_doublings in queue.yaml\/xml>.
    , maxDoublings :: (Core.Maybe Core.Int32)
      -- | If positive, @max_retry_duration@ specifies the time limit for retrying a failed task, measured from when the task was first attempted. Once @max_retry_duration@ time has passed /and/ the task has been attempted max_attempts times, no further attempts will be made and the task will be deleted. If zero, then the task age is unlimited. If unspecified when the queue is created, Cloud Tasks will pick the default. @max_retry_duration@ will be truncated to the nearest second. This field has the same meaning as <https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters taskagelimit in queue.yaml\/xml>.
    , maxRetryDuration :: (Core.Maybe Core.GDuration)
      -- | A task will be scheduled for retry between min/backoff and max/backoff duration after it fails, if the queue\'s RetryConfig specifies that the task should be retried. If unspecified when the queue is created, Cloud Tasks will pick the default. @min_backoff@ will be truncated to the nearest second. This field has the same meaning as <https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters minbackoffseconds in queue.yaml\/xml>.
    , minBackoff :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RetryConfig' with the minimum fields required to make a request.
newRetryConfig 
    ::  RetryConfig
newRetryConfig =
  RetryConfig
    { maxAttempts = Core.Nothing
    , maxBackoff = Core.Nothing
    , maxDoublings = Core.Nothing
    , maxRetryDuration = Core.Nothing
    , minBackoff = Core.Nothing
    }

instance Core.FromJSON RetryConfig where
        parseJSON
          = Core.withObject "RetryConfig"
              (\ o ->
                 RetryConfig Core.<$>
                   (o Core..:? "maxAttempts") Core.<*>
                     (o Core..:? "maxBackoff")
                     Core.<*> (o Core..:? "maxDoublings")
                     Core.<*> (o Core..:? "maxRetryDuration")
                     Core.<*> (o Core..:? "minBackoff"))

instance Core.ToJSON RetryConfig where
        toJSON RetryConfig{..}
          = Core.object
              (Core.catMaybes
                 [("maxAttempts" Core..=) Core.<$> maxAttempts,
                  ("maxBackoff" Core..=) Core.<$> maxBackoff,
                  ("maxDoublings" Core..=) Core.<$> maxDoublings,
                  ("maxRetryDuration" Core..=) Core.<$>
                    maxRetryDuration,
                  ("minBackoff" Core..=) Core.<$> minBackoff])


-- | Request message for forcing a task to run now using RunTask.
--
-- /See:/ 'newRunTaskRequest' smart constructor.
newtype RunTaskRequest = RunTaskRequest
    {
      -- | The response/view specifies which subset of the Task will be returned. By default response/view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Task resource.
      responseView :: (Core.Maybe RunTaskRequest_ResponseView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunTaskRequest' with the minimum fields required to make a request.
newRunTaskRequest 
    ::  RunTaskRequest
newRunTaskRequest = RunTaskRequest {responseView = Core.Nothing}

instance Core.FromJSON RunTaskRequest where
        parseJSON
          = Core.withObject "RunTaskRequest"
              (\ o ->
                 RunTaskRequest Core.<$> (o Core..:? "responseView"))

instance Core.ToJSON RunTaskRequest where
        toJSON RunTaskRequest{..}
          = Core.object
              (Core.catMaybes
                 [("responseView" Core..=) Core.<$> responseView])


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
      policy :: (Core.Maybe Policy)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest 
    ::  SetIamPolicyRequest
newSetIamPolicyRequest = SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
        parseJSON
          = Core.withObject "SetIamPolicyRequest"
              (\ o ->
                 SetIamPolicyRequest Core.<$> (o Core..:? "policy"))

instance Core.ToJSON SetIamPolicyRequest where
        toJSON SetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes [("policy" Core..=) Core.<$> policy])


-- | Configuration options for writing logs to <https://cloud.google.com/logging/docs/ Stackdriver Logging>.
--
-- /See:/ 'newStackdriverLoggingConfig' smart constructor.
newtype StackdriverLoggingConfig = StackdriverLoggingConfig
    {
      -- | Specifies the fraction of operations to write to <https://cloud.google.com/logging/docs/ Stackdriver Logging>. This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
      samplingRatio :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackdriverLoggingConfig' with the minimum fields required to make a request.
newStackdriverLoggingConfig 
    ::  StackdriverLoggingConfig
newStackdriverLoggingConfig =
  StackdriverLoggingConfig {samplingRatio = Core.Nothing}

instance Core.FromJSON StackdriverLoggingConfig where
        parseJSON
          = Core.withObject "StackdriverLoggingConfig"
              (\ o ->
                 StackdriverLoggingConfig Core.<$>
                   (o Core..:? "samplingRatio"))

instance Core.ToJSON StackdriverLoggingConfig where
        toJSON StackdriverLoggingConfig{..}
          = Core.object
              (Core.catMaybes
                 [("samplingRatio" Core..=) Core.<$> samplingRatio])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*>
                     (o Core..:? "details" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..} = Core.toJSON addtional


-- | A unit of scheduled work.
--
-- /See:/ 'newTask' smart constructor.
data Task = Task
    {
      -- | HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has AppEngineHttpRequest set.
      appEngineHttpRequest :: (Core.Maybe AppEngineHttpRequest)
      -- | Output only. The time that the task was created. @create_time@ will be truncated to the nearest second.
    , createTime :: (Core.Maybe Core.DateTime')
      -- | Output only. The number of attempts dispatched. This count includes attempts which have been dispatched but haven\'t received a response.
    , dispatchCount :: (Core.Maybe Core.Int32)
      -- | The deadline for requests sent to the worker. If the worker does not respond by this deadline then the request is cancelled and the attempt is marked as a @DEADLINE_EXCEEDED@ failure. Cloud Tasks will retry the task according to the RetryConfig. Note that when the request is cancelled, Cloud Tasks will stop listening for the response, but whether the worker stops processing depends on the worker. For example, if the worker is stuck, it may not react to cancelled requests. The default and maximum values depend on the type of request: * For HTTP tasks, the default is 10 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine tasks, 0 indicates that the request has the default deadline. The default deadline depends on the <https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling scaling type> of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex
      -- apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. Regardless of the task\'s @dispatch_deadline@, the app handler will not run for longer than than the service\'s timeout. We recommend setting the @dispatch_deadline@ to at most a few seconds more than the app handler\'s timeout. For more information see <https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts Timeouts>. @dispatch_deadline@ will be truncated to the nearest millisecond. The deadline is an approximate deadline.
    , dispatchDeadline :: (Core.Maybe Core.GDuration)
      -- | Output only. The status of the task\'s first attempt. Only dispatch_time will be set. The other Attempt information is not retained by Cloud Tasks.
    , firstAttempt :: (Core.Maybe Attempt)
      -- | HTTP request that is sent to the worker. An HTTP task is a task that has HttpRequest set.
    , httpRequest :: (Core.Maybe HttpRequest)
      -- | Output only. The status of the task\'s last attempt.
    , lastAttempt :: (Core.Maybe Attempt)
      -- | Optionally caller-specified in CreateTask. The task name. The task name must have the following format: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID@ * @PROJECT_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see <https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects Identifying projects> * @LOCATION_ID@ is the canonical ID for the task\'s location. The list of available locations can be obtained by calling ListLocations. For more information, see https:\/\/cloud.google.com\/about\/locations\/. * @QUEUE_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * @TASK_ID@ can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The number of attempts which have received a response.
    , responseCount :: (Core.Maybe Core.Int32)
      -- | The time when the task is scheduled to be attempted or retried. @schedule_time@ will be truncated to the nearest microsecond.
    , scheduleTime :: (Core.Maybe Core.DateTime')
      -- | Output only. The view specifies which subset of the Task has been returned.
    , view :: (Core.Maybe Task_View)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Task' with the minimum fields required to make a request.
newTask 
    ::  Task
newTask =
  Task
    { appEngineHttpRequest = Core.Nothing
    , createTime = Core.Nothing
    , dispatchCount = Core.Nothing
    , dispatchDeadline = Core.Nothing
    , firstAttempt = Core.Nothing
    , httpRequest = Core.Nothing
    , lastAttempt = Core.Nothing
    , name = Core.Nothing
    , responseCount = Core.Nothing
    , scheduleTime = Core.Nothing
    , view = Core.Nothing
    }

instance Core.FromJSON Task where
        parseJSON
          = Core.withObject "Task"
              (\ o ->
                 Task Core.<$>
                   (o Core..:? "appEngineHttpRequest") Core.<*>
                     (o Core..:? "createTime")
                     Core.<*> (o Core..:? "dispatchCount")
                     Core.<*> (o Core..:? "dispatchDeadline")
                     Core.<*> (o Core..:? "firstAttempt")
                     Core.<*> (o Core..:? "httpRequest")
                     Core.<*> (o Core..:? "lastAttempt")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "responseCount")
                     Core.<*> (o Core..:? "scheduleTime")
                     Core.<*> (o Core..:? "view"))

instance Core.ToJSON Task where
        toJSON Task{..}
          = Core.object
              (Core.catMaybes
                 [("appEngineHttpRequest" Core..=) Core.<$>
                    appEngineHttpRequest,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("dispatchCount" Core..=) Core.<$> dispatchCount,
                  ("dispatchDeadline" Core..=) Core.<$>
                    dispatchDeadline,
                  ("firstAttempt" Core..=) Core.<$> firstAttempt,
                  ("httpRequest" Core..=) Core.<$> httpRequest,
                  ("lastAttempt" Core..=) Core.<$> lastAttempt,
                  ("name" Core..=) Core.<$> name,
                  ("responseCount" Core..=) Core.<$> responseCount,
                  ("scheduleTime" Core..=) Core.<$> scheduleTime,
                  ("view" Core..=) Core.<$> view])


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest 
    ::  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest
         where
        parseJSON
          = Core.withObject "TestIamPermissionsRequest"
              (\ o ->
                 TestIamPermissionsRequest Core.<$>
                   (o Core..:? "permissions" Core..!= Core.mempty))

instance Core.ToJSON TestIamPermissionsRequest where
        toJSON TestIamPermissionsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
    {
      -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse 
    ::  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse
         where
        parseJSON
          = Core.withObject "TestIamPermissionsResponse"
              (\ o ->
                 TestIamPermissionsResponse Core.<$>
                   (o Core..:? "permissions" Core..!= Core.mempty))

instance Core.ToJSON TestIamPermissionsResponse where
        toJSON TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])

