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
-- Module      : Gogol.CloudTasks.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudTasks.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AppEngineHttpRequest_HttpMethod
    AppEngineHttpRequest_HttpMethod
      (
        AppEngineHttpRequest_HttpMethod_HTTPMETHODUNSPECIFIED,
        AppEngineHttpRequest_HttpMethod_Post',
        AppEngineHttpRequest_HttpMethod_Get',
        AppEngineHttpRequest_HttpMethod_Head',
        AppEngineHttpRequest_HttpMethod_Put',
        AppEngineHttpRequest_HttpMethod_Delete',
        AppEngineHttpRequest_HttpMethod_Patch',
        AppEngineHttpRequest_HttpMethod_Options,
        ..
      ),

    -- * CreateTaskRequest_ResponseView
    CreateTaskRequest_ResponseView
      (
        CreateTaskRequest_ResponseView_VIEWUNSPECIFIED,
        CreateTaskRequest_ResponseView_Basic,
        CreateTaskRequest_ResponseView_Full,
        ..
      ),

    -- * HttpRequest_HttpMethod
    HttpRequest_HttpMethod
      (
        HttpRequest_HttpMethod_HTTPMETHODUNSPECIFIED,
        HttpRequest_HttpMethod_Post',
        HttpRequest_HttpMethod_Get',
        HttpRequest_HttpMethod_Head',
        HttpRequest_HttpMethod_Put',
        HttpRequest_HttpMethod_Delete',
        HttpRequest_HttpMethod_Patch',
        HttpRequest_HttpMethod_Options,
        ..
      ),

    -- * Queue_State
    Queue_State
      (
        Queue_State_STATEUNSPECIFIED,
        Queue_State_Running,
        Queue_State_Paused,
        Queue_State_Disabled,
        ..
      ),

    -- * RunTaskRequest_ResponseView
    RunTaskRequest_ResponseView
      (
        RunTaskRequest_ResponseView_VIEWUNSPECIFIED,
        RunTaskRequest_ResponseView_Basic,
        RunTaskRequest_ResponseView_Full,
        ..
      ),

    -- * Task_View
    Task_View
      (
        Task_View_VIEWUNSPECIFIED,
        Task_View_Basic,
        Task_View_Full,
        ..
      ),

    -- * ProjectsLocationsQueuesTasksGetResponseView
    ProjectsLocationsQueuesTasksGetResponseView
      (
        ProjectsLocationsQueuesTasksGetResponseView_VIEWUNSPECIFIED,
        ProjectsLocationsQueuesTasksGetResponseView_Basic,
        ProjectsLocationsQueuesTasksGetResponseView_Full,
        ..
      ),

    -- * ProjectsLocationsQueuesTasksListResponseView
    ProjectsLocationsQueuesTasksListResponseView
      (
        ProjectsLocationsQueuesTasksListResponseView_VIEWUNSPECIFIED,
        ProjectsLocationsQueuesTasksListResponseView_Basic,
        ProjectsLocationsQueuesTasksListResponseView_Full,
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

-- | The HTTP method to use for the request. The default is POST. The app\'s request handler for the task\'s target URL must be able to handle HTTP requests with this http_method, otherwise the task attempt fails with error code 405 (Method Not Allowed). See <https://cloud.google.com/appengine/docs/java/taskqueue/push/creating-handlers#writing_a_push_task_request_handler Writing a push task request handler> and the App Engine documentation for your runtime on <https://cloud.google.com/appengine/docs/standard/python3/how-requests-are-handled How Requests are Handled>.
newtype AppEngineHttpRequest_HttpMethod = AppEngineHttpRequest_HttpMethod { fromAppEngineHttpRequest_HttpMethod :: Core.Text }
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

-- | HTTP method unspecified
pattern AppEngineHttpRequest_HttpMethod_HTTPMETHODUNSPECIFIED :: AppEngineHttpRequest_HttpMethod
pattern AppEngineHttpRequest_HttpMethod_HTTPMETHODUNSPECIFIED = AppEngineHttpRequest_HttpMethod "HTTP_METHOD_UNSPECIFIED"

-- | HTTP POST
pattern AppEngineHttpRequest_HttpMethod_Post' :: AppEngineHttpRequest_HttpMethod
pattern AppEngineHttpRequest_HttpMethod_Post' = AppEngineHttpRequest_HttpMethod "POST"

-- | HTTP GET
pattern AppEngineHttpRequest_HttpMethod_Get' :: AppEngineHttpRequest_HttpMethod
pattern AppEngineHttpRequest_HttpMethod_Get' = AppEngineHttpRequest_HttpMethod "GET"

-- | HTTP HEAD
pattern AppEngineHttpRequest_HttpMethod_Head' :: AppEngineHttpRequest_HttpMethod
pattern AppEngineHttpRequest_HttpMethod_Head' = AppEngineHttpRequest_HttpMethod "HEAD"

-- | HTTP PUT
pattern AppEngineHttpRequest_HttpMethod_Put' :: AppEngineHttpRequest_HttpMethod
pattern AppEngineHttpRequest_HttpMethod_Put' = AppEngineHttpRequest_HttpMethod "PUT"

-- | HTTP DELETE
pattern AppEngineHttpRequest_HttpMethod_Delete' :: AppEngineHttpRequest_HttpMethod
pattern AppEngineHttpRequest_HttpMethod_Delete' = AppEngineHttpRequest_HttpMethod "DELETE"

-- | HTTP PATCH
pattern AppEngineHttpRequest_HttpMethod_Patch' :: AppEngineHttpRequest_HttpMethod
pattern AppEngineHttpRequest_HttpMethod_Patch' = AppEngineHttpRequest_HttpMethod "PATCH"

-- | HTTP OPTIONS
pattern AppEngineHttpRequest_HttpMethod_Options :: AppEngineHttpRequest_HttpMethod
pattern AppEngineHttpRequest_HttpMethod_Options = AppEngineHttpRequest_HttpMethod "OPTIONS"

{-# COMPLETE
  AppEngineHttpRequest_HttpMethod_HTTPMETHODUNSPECIFIED,
  AppEngineHttpRequest_HttpMethod_Post',
  AppEngineHttpRequest_HttpMethod_Get',
  AppEngineHttpRequest_HttpMethod_Head',
  AppEngineHttpRequest_HttpMethod_Put',
  AppEngineHttpRequest_HttpMethod_Delete',
  AppEngineHttpRequest_HttpMethod_Patch',
  AppEngineHttpRequest_HttpMethod_Options,
  AppEngineHttpRequest_HttpMethod #-}

-- | The response/view specifies which subset of the Task will be returned. By default response/view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Task resource.
newtype CreateTaskRequest_ResponseView = CreateTaskRequest_ResponseView { fromCreateTaskRequest_ResponseView :: Core.Text }
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

-- | Unspecified. Defaults to BASIC.
pattern CreateTaskRequest_ResponseView_VIEWUNSPECIFIED :: CreateTaskRequest_ResponseView
pattern CreateTaskRequest_ResponseView_VIEWUNSPECIFIED = CreateTaskRequest_ResponseView "VIEW_UNSPECIFIED"

-- | The basic view omits fields which can be large or can contain sensitive data. This view does not include the body in AppEngineHttpRequest. Bodies are desirable to return only when needed, because they can be large and because of the sensitivity of the data that you choose to store in it.
pattern CreateTaskRequest_ResponseView_Basic :: CreateTaskRequest_ResponseView
pattern CreateTaskRequest_ResponseView_Basic = CreateTaskRequest_ResponseView "BASIC"

-- | All information is returned. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Queue resource.
pattern CreateTaskRequest_ResponseView_Full :: CreateTaskRequest_ResponseView
pattern CreateTaskRequest_ResponseView_Full = CreateTaskRequest_ResponseView "FULL"

{-# COMPLETE
  CreateTaskRequest_ResponseView_VIEWUNSPECIFIED,
  CreateTaskRequest_ResponseView_Basic,
  CreateTaskRequest_ResponseView_Full,
  CreateTaskRequest_ResponseView #-}

-- | The HTTP method to use for the request. The default is POST.
newtype HttpRequest_HttpMethod = HttpRequest_HttpMethod { fromHttpRequest_HttpMethod :: Core.Text }
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

-- | HTTP method unspecified
pattern HttpRequest_HttpMethod_HTTPMETHODUNSPECIFIED :: HttpRequest_HttpMethod
pattern HttpRequest_HttpMethod_HTTPMETHODUNSPECIFIED = HttpRequest_HttpMethod "HTTP_METHOD_UNSPECIFIED"

-- | HTTP POST
pattern HttpRequest_HttpMethod_Post' :: HttpRequest_HttpMethod
pattern HttpRequest_HttpMethod_Post' = HttpRequest_HttpMethod "POST"

-- | HTTP GET
pattern HttpRequest_HttpMethod_Get' :: HttpRequest_HttpMethod
pattern HttpRequest_HttpMethod_Get' = HttpRequest_HttpMethod "GET"

-- | HTTP HEAD
pattern HttpRequest_HttpMethod_Head' :: HttpRequest_HttpMethod
pattern HttpRequest_HttpMethod_Head' = HttpRequest_HttpMethod "HEAD"

-- | HTTP PUT
pattern HttpRequest_HttpMethod_Put' :: HttpRequest_HttpMethod
pattern HttpRequest_HttpMethod_Put' = HttpRequest_HttpMethod "PUT"

-- | HTTP DELETE
pattern HttpRequest_HttpMethod_Delete' :: HttpRequest_HttpMethod
pattern HttpRequest_HttpMethod_Delete' = HttpRequest_HttpMethod "DELETE"

-- | HTTP PATCH
pattern HttpRequest_HttpMethod_Patch' :: HttpRequest_HttpMethod
pattern HttpRequest_HttpMethod_Patch' = HttpRequest_HttpMethod "PATCH"

-- | HTTP OPTIONS
pattern HttpRequest_HttpMethod_Options :: HttpRequest_HttpMethod
pattern HttpRequest_HttpMethod_Options = HttpRequest_HttpMethod "OPTIONS"

{-# COMPLETE
  HttpRequest_HttpMethod_HTTPMETHODUNSPECIFIED,
  HttpRequest_HttpMethod_Post',
  HttpRequest_HttpMethod_Get',
  HttpRequest_HttpMethod_Head',
  HttpRequest_HttpMethod_Put',
  HttpRequest_HttpMethod_Delete',
  HttpRequest_HttpMethod_Patch',
  HttpRequest_HttpMethod_Options,
  HttpRequest_HttpMethod #-}

-- | Output only. The state of the queue. @state@ can only be changed by calling PauseQueue, ResumeQueue, or uploading <https://cloud.google.com/appengine/docs/python/config/queueref queue.yaml\/xml>. UpdateQueue cannot be used to change @state@.
newtype Queue_State = Queue_State { fromQueue_State :: Core.Text }
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

-- | Unspecified state.
pattern Queue_State_STATEUNSPECIFIED :: Queue_State
pattern Queue_State_STATEUNSPECIFIED = Queue_State "STATE_UNSPECIFIED"

-- | The queue is running. Tasks can be dispatched. If the queue was created using Cloud Tasks and the queue has had no activity (method calls or task dispatches) for 30 days, the queue may take a few minutes to re-activate. Some method calls may return NOT_FOUND and tasks may not be dispatched for a few minutes until the queue has been re-activated.
pattern Queue_State_Running :: Queue_State
pattern Queue_State_Running = Queue_State "RUNNING"

-- | Tasks are paused by the user. If the queue is paused then Cloud Tasks will stop delivering tasks from it, but more tasks can still be added to it by the user.
pattern Queue_State_Paused :: Queue_State
pattern Queue_State_Paused = Queue_State "PAUSED"

-- | The queue is disabled. A queue becomes @DISABLED@ when <https://cloud.google.com/appengine/docs/python/config/queueref queue.yaml> or <https://cloud.google.com/appengine/docs/standard/java/config/queueref queue.xml> is uploaded which does not contain the queue. You cannot directly disable a queue. When a queue is disabled, tasks can still be added to a queue but the tasks are not dispatched. To permanently delete this queue and all of its tasks, call DeleteQueue.
pattern Queue_State_Disabled :: Queue_State
pattern Queue_State_Disabled = Queue_State "DISABLED"

{-# COMPLETE
  Queue_State_STATEUNSPECIFIED,
  Queue_State_Running,
  Queue_State_Paused,
  Queue_State_Disabled,
  Queue_State #-}

-- | The response/view specifies which subset of the Task will be returned. By default response/view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Task resource.
newtype RunTaskRequest_ResponseView = RunTaskRequest_ResponseView { fromRunTaskRequest_ResponseView :: Core.Text }
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

-- | Unspecified. Defaults to BASIC.
pattern RunTaskRequest_ResponseView_VIEWUNSPECIFIED :: RunTaskRequest_ResponseView
pattern RunTaskRequest_ResponseView_VIEWUNSPECIFIED = RunTaskRequest_ResponseView "VIEW_UNSPECIFIED"

-- | The basic view omits fields which can be large or can contain sensitive data. This view does not include the body in AppEngineHttpRequest. Bodies are desirable to return only when needed, because they can be large and because of the sensitivity of the data that you choose to store in it.
pattern RunTaskRequest_ResponseView_Basic :: RunTaskRequest_ResponseView
pattern RunTaskRequest_ResponseView_Basic = RunTaskRequest_ResponseView "BASIC"

-- | All information is returned. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Queue resource.
pattern RunTaskRequest_ResponseView_Full :: RunTaskRequest_ResponseView
pattern RunTaskRequest_ResponseView_Full = RunTaskRequest_ResponseView "FULL"

{-# COMPLETE
  RunTaskRequest_ResponseView_VIEWUNSPECIFIED,
  RunTaskRequest_ResponseView_Basic,
  RunTaskRequest_ResponseView_Full,
  RunTaskRequest_ResponseView #-}

-- | Output only. The view specifies which subset of the Task has been returned.
newtype Task_View = Task_View { fromTask_View :: Core.Text }
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

-- | Unspecified. Defaults to BASIC.
pattern Task_View_VIEWUNSPECIFIED :: Task_View
pattern Task_View_VIEWUNSPECIFIED = Task_View "VIEW_UNSPECIFIED"

-- | The basic view omits fields which can be large or can contain sensitive data. This view does not include the body in AppEngineHttpRequest. Bodies are desirable to return only when needed, because they can be large and because of the sensitivity of the data that you choose to store in it.
pattern Task_View_Basic :: Task_View
pattern Task_View_Basic = Task_View "BASIC"

-- | All information is returned. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Queue resource.
pattern Task_View_Full :: Task_View
pattern Task_View_Full = Task_View "FULL"

{-# COMPLETE
  Task_View_VIEWUNSPECIFIED,
  Task_View_Basic,
  Task_View_Full,
  Task_View #-}

-- | The response/view specifies which subset of the Task will be returned. By default response/view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Task resource.
newtype ProjectsLocationsQueuesTasksGetResponseView = ProjectsLocationsQueuesTasksGetResponseView { fromProjectsLocationsQueuesTasksGetResponseView :: Core.Text }
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

-- | Unspecified. Defaults to BASIC.
pattern ProjectsLocationsQueuesTasksGetResponseView_VIEWUNSPECIFIED :: ProjectsLocationsQueuesTasksGetResponseView
pattern ProjectsLocationsQueuesTasksGetResponseView_VIEWUNSPECIFIED = ProjectsLocationsQueuesTasksGetResponseView "VIEW_UNSPECIFIED"

-- | The basic view omits fields which can be large or can contain sensitive data. This view does not include the body in AppEngineHttpRequest. Bodies are desirable to return only when needed, because they can be large and because of the sensitivity of the data that you choose to store in it.
pattern ProjectsLocationsQueuesTasksGetResponseView_Basic :: ProjectsLocationsQueuesTasksGetResponseView
pattern ProjectsLocationsQueuesTasksGetResponseView_Basic = ProjectsLocationsQueuesTasksGetResponseView "BASIC"

-- | All information is returned. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Queue resource.
pattern ProjectsLocationsQueuesTasksGetResponseView_Full :: ProjectsLocationsQueuesTasksGetResponseView
pattern ProjectsLocationsQueuesTasksGetResponseView_Full = ProjectsLocationsQueuesTasksGetResponseView "FULL"

{-# COMPLETE
  ProjectsLocationsQueuesTasksGetResponseView_VIEWUNSPECIFIED,
  ProjectsLocationsQueuesTasksGetResponseView_Basic,
  ProjectsLocationsQueuesTasksGetResponseView_Full,
  ProjectsLocationsQueuesTasksGetResponseView #-}

-- | The response/view specifies which subset of the Task will be returned. By default response/view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Task resource.
newtype ProjectsLocationsQueuesTasksListResponseView = ProjectsLocationsQueuesTasksListResponseView { fromProjectsLocationsQueuesTasksListResponseView :: Core.Text }
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

-- | Unspecified. Defaults to BASIC.
pattern ProjectsLocationsQueuesTasksListResponseView_VIEWUNSPECIFIED :: ProjectsLocationsQueuesTasksListResponseView
pattern ProjectsLocationsQueuesTasksListResponseView_VIEWUNSPECIFIED = ProjectsLocationsQueuesTasksListResponseView "VIEW_UNSPECIFIED"

-- | The basic view omits fields which can be large or can contain sensitive data. This view does not include the body in AppEngineHttpRequest. Bodies are desirable to return only when needed, because they can be large and because of the sensitivity of the data that you choose to store in it.
pattern ProjectsLocationsQueuesTasksListResponseView_Basic :: ProjectsLocationsQueuesTasksListResponseView
pattern ProjectsLocationsQueuesTasksListResponseView_Basic = ProjectsLocationsQueuesTasksListResponseView "BASIC"

-- | All information is returned. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Queue resource.
pattern ProjectsLocationsQueuesTasksListResponseView_Full :: ProjectsLocationsQueuesTasksListResponseView
pattern ProjectsLocationsQueuesTasksListResponseView_Full = ProjectsLocationsQueuesTasksListResponseView "FULL"

{-# COMPLETE
  ProjectsLocationsQueuesTasksListResponseView_VIEWUNSPECIFIED,
  ProjectsLocationsQueuesTasksListResponseView_Basic,
  ProjectsLocationsQueuesTasksListResponseView_Full,
  ProjectsLocationsQueuesTasksListResponseView #-}
