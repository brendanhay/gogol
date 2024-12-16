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
-- Module      : Gogol.CloudScheduler.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudScheduler.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AppEngineHttpTarget_HttpMethod
    AppEngineHttpTarget_HttpMethod
      (
        AppEngineHttpTarget_HttpMethod_HTTPMETHODUNSPECIFIED,
        AppEngineHttpTarget_HttpMethod_Post',
        AppEngineHttpTarget_HttpMethod_Get',
        AppEngineHttpTarget_HttpMethod_Head',
        AppEngineHttpTarget_HttpMethod_Put',
        AppEngineHttpTarget_HttpMethod_Delete',
        AppEngineHttpTarget_HttpMethod_Patch',
        AppEngineHttpTarget_HttpMethod_Options,
        ..
      ),

    -- * HttpTarget_HttpMethod
    HttpTarget_HttpMethod
      (
        HttpTarget_HttpMethod_HTTPMETHODUNSPECIFIED,
        HttpTarget_HttpMethod_Post',
        HttpTarget_HttpMethod_Get',
        HttpTarget_HttpMethod_Head',
        HttpTarget_HttpMethod_Put',
        HttpTarget_HttpMethod_Delete',
        HttpTarget_HttpMethod_Patch',
        HttpTarget_HttpMethod_Options,
        ..
      ),

    -- * Job_State
    Job_State
      (
        Job_State_STATEUNSPECIFIED,
        Job_State_Enabled,
        Job_State_Paused,
        Job_State_Disabled,
        Job_State_UPDATEFAILED,
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

-- | The HTTP method to use for the request. PATCH and OPTIONS are not permitted.
newtype AppEngineHttpTarget_HttpMethod = AppEngineHttpTarget_HttpMethod { fromAppEngineHttpTarget_HttpMethod :: Core.Text }
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

-- | HTTP method unspecified. Defaults to POST.
pattern AppEngineHttpTarget_HttpMethod_HTTPMETHODUNSPECIFIED :: AppEngineHttpTarget_HttpMethod
pattern AppEngineHttpTarget_HttpMethod_HTTPMETHODUNSPECIFIED = AppEngineHttpTarget_HttpMethod "HTTP_METHOD_UNSPECIFIED"

-- | HTTP POST
pattern AppEngineHttpTarget_HttpMethod_Post' :: AppEngineHttpTarget_HttpMethod
pattern AppEngineHttpTarget_HttpMethod_Post' = AppEngineHttpTarget_HttpMethod "POST"

-- | HTTP GET
pattern AppEngineHttpTarget_HttpMethod_Get' :: AppEngineHttpTarget_HttpMethod
pattern AppEngineHttpTarget_HttpMethod_Get' = AppEngineHttpTarget_HttpMethod "GET"

-- | HTTP HEAD
pattern AppEngineHttpTarget_HttpMethod_Head' :: AppEngineHttpTarget_HttpMethod
pattern AppEngineHttpTarget_HttpMethod_Head' = AppEngineHttpTarget_HttpMethod "HEAD"

-- | HTTP PUT
pattern AppEngineHttpTarget_HttpMethod_Put' :: AppEngineHttpTarget_HttpMethod
pattern AppEngineHttpTarget_HttpMethod_Put' = AppEngineHttpTarget_HttpMethod "PUT"

-- | HTTP DELETE
pattern AppEngineHttpTarget_HttpMethod_Delete' :: AppEngineHttpTarget_HttpMethod
pattern AppEngineHttpTarget_HttpMethod_Delete' = AppEngineHttpTarget_HttpMethod "DELETE"

-- | HTTP PATCH
pattern AppEngineHttpTarget_HttpMethod_Patch' :: AppEngineHttpTarget_HttpMethod
pattern AppEngineHttpTarget_HttpMethod_Patch' = AppEngineHttpTarget_HttpMethod "PATCH"

-- | HTTP OPTIONS
pattern AppEngineHttpTarget_HttpMethod_Options :: AppEngineHttpTarget_HttpMethod
pattern AppEngineHttpTarget_HttpMethod_Options = AppEngineHttpTarget_HttpMethod "OPTIONS"

{-# COMPLETE
  AppEngineHttpTarget_HttpMethod_HTTPMETHODUNSPECIFIED,
  AppEngineHttpTarget_HttpMethod_Post',
  AppEngineHttpTarget_HttpMethod_Get',
  AppEngineHttpTarget_HttpMethod_Head',
  AppEngineHttpTarget_HttpMethod_Put',
  AppEngineHttpTarget_HttpMethod_Delete',
  AppEngineHttpTarget_HttpMethod_Patch',
  AppEngineHttpTarget_HttpMethod_Options,
  AppEngineHttpTarget_HttpMethod #-}

-- | Which HTTP method to use for the request.
newtype HttpTarget_HttpMethod = HttpTarget_HttpMethod { fromHttpTarget_HttpMethod :: Core.Text }
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

-- | HTTP method unspecified. Defaults to POST.
pattern HttpTarget_HttpMethod_HTTPMETHODUNSPECIFIED :: HttpTarget_HttpMethod
pattern HttpTarget_HttpMethod_HTTPMETHODUNSPECIFIED = HttpTarget_HttpMethod "HTTP_METHOD_UNSPECIFIED"

-- | HTTP POST
pattern HttpTarget_HttpMethod_Post' :: HttpTarget_HttpMethod
pattern HttpTarget_HttpMethod_Post' = HttpTarget_HttpMethod "POST"

-- | HTTP GET
pattern HttpTarget_HttpMethod_Get' :: HttpTarget_HttpMethod
pattern HttpTarget_HttpMethod_Get' = HttpTarget_HttpMethod "GET"

-- | HTTP HEAD
pattern HttpTarget_HttpMethod_Head' :: HttpTarget_HttpMethod
pattern HttpTarget_HttpMethod_Head' = HttpTarget_HttpMethod "HEAD"

-- | HTTP PUT
pattern HttpTarget_HttpMethod_Put' :: HttpTarget_HttpMethod
pattern HttpTarget_HttpMethod_Put' = HttpTarget_HttpMethod "PUT"

-- | HTTP DELETE
pattern HttpTarget_HttpMethod_Delete' :: HttpTarget_HttpMethod
pattern HttpTarget_HttpMethod_Delete' = HttpTarget_HttpMethod "DELETE"

-- | HTTP PATCH
pattern HttpTarget_HttpMethod_Patch' :: HttpTarget_HttpMethod
pattern HttpTarget_HttpMethod_Patch' = HttpTarget_HttpMethod "PATCH"

-- | HTTP OPTIONS
pattern HttpTarget_HttpMethod_Options :: HttpTarget_HttpMethod
pattern HttpTarget_HttpMethod_Options = HttpTarget_HttpMethod "OPTIONS"

{-# COMPLETE
  HttpTarget_HttpMethod_HTTPMETHODUNSPECIFIED,
  HttpTarget_HttpMethod_Post',
  HttpTarget_HttpMethod_Get',
  HttpTarget_HttpMethod_Head',
  HttpTarget_HttpMethod_Put',
  HttpTarget_HttpMethod_Delete',
  HttpTarget_HttpMethod_Patch',
  HttpTarget_HttpMethod_Options,
  HttpTarget_HttpMethod #-}

-- | Output only. State of the job.
newtype Job_State = Job_State { fromJob_State :: Core.Text }
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
pattern Job_State_STATEUNSPECIFIED :: Job_State
pattern Job_State_STATEUNSPECIFIED = Job_State "STATE_UNSPECIFIED"

-- | The job is executing normally.
pattern Job_State_Enabled :: Job_State
pattern Job_State_Enabled = Job_State "ENABLED"

-- | The job is paused by the user. It will not execute. A user can intentionally pause the job using PauseJobRequest.
pattern Job_State_Paused :: Job_State
pattern Job_State_Paused = Job_State "PAUSED"

-- | The job is disabled by the system due to error. The user cannot directly set a job to be disabled.
pattern Job_State_Disabled :: Job_State
pattern Job_State_Disabled = Job_State "DISABLED"

-- | The job state resulting from a failed CloudScheduler.UpdateJob operation. To recover a job from this state, retry CloudScheduler.UpdateJob until a successful response is received.
pattern Job_State_UPDATEFAILED :: Job_State
pattern Job_State_UPDATEFAILED = Job_State "UPDATE_FAILED"

{-# COMPLETE
  Job_State_STATEUNSPECIFIED,
  Job_State_Enabled,
  Job_State_Paused,
  Job_State_Disabled,
  Job_State_UPDATEFAILED,
  Job_State #-}
