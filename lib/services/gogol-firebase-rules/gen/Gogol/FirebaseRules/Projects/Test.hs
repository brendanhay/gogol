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
-- Module      : Gogol.FirebaseRules.Projects.Test
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Test @Source@ for syntactic and semantic correctness. Issues present, if any, will be returned to the caller with a description, severity, and source location. The test method may be executed with @Source@ or a @Ruleset@ name. Passing @Source@ is useful for unit testing new rules. Passing a @Ruleset@ name is useful for regression testing an existing rule. The following is an example of @Source@ that permits users to upload images to a bucket bearing their user id and matching the correct metadata: //Example// \/\/ Users are allowed to subscribe and unsubscribe to the blog. service firebase.storage { match \/users\/{userId}\/images\/{imageName} { allow write: if userId == request.auth.uid && (imageName.matches(\'/.png$\') || imageName.matches(\'/.jpg$\')) && resource.mimeType.matches(\'^image\/\') } }
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.test@.
module Gogol.FirebaseRules.Projects.Test
    (
    -- * Resource
      FirebaseRulesProjectsTestResource

    -- ** Constructing a Request
    , newFirebaseRulesProjectsTest
    , FirebaseRulesProjectsTest
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FirebaseRules.Types

-- | A resource alias for @firebaserules.projects.test@ method which the
-- 'FirebaseRulesProjectsTest' request conforms to.
type FirebaseRulesProjectsTestResource =
     "v1" Core.:>
       Core.CaptureMode "name" "test" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TestRulesetRequest Core.:>
                       Core.Post '[Core.JSON] TestRulesetResponse

-- | Test @Source@ for syntactic and semantic correctness. Issues present, if any, will be returned to the caller with a description, severity, and source location. The test method may be executed with @Source@ or a @Ruleset@ name. Passing @Source@ is useful for unit testing new rules. Passing a @Ruleset@ name is useful for regression testing an existing rule. The following is an example of @Source@ that permits users to upload images to a bucket bearing their user id and matching the correct metadata: //Example// \/\/ Users are allowed to subscribe and unsubscribe to the blog. service firebase.storage { match \/users\/{userId}\/images\/{imageName} { allow write: if userId == request.auth.uid && (imageName.matches(\'/.png$\') || imageName.matches(\'/.jpg$\')) && resource.mimeType.matches(\'^image\/\') } }
--
-- /See:/ 'newFirebaseRulesProjectsTest' smart constructor.
data FirebaseRulesProjectsTest = FirebaseRulesProjectsTest
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Tests may either provide @source@ or a @Ruleset@ resource name. For tests against @source@, the resource name must refer to the project: Format: @projects\/{project_id}@ For tests against a @Ruleset@, this must be the @Ruleset@ resource name: Format: @projects\/{project_id}\/rulesets\/{ruleset_id}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: TestRulesetRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsTest' with the minimum fields required to make a request.
newFirebaseRulesProjectsTest 
    ::  Core.Text
       -- ^  Required. Tests may either provide @source@ or a @Ruleset@ resource name. For tests against @source@, the resource name must refer to the project: Format: @projects\/{project_id}@ For tests against a @Ruleset@, this must be the @Ruleset@ resource name: Format: @projects\/{project_id}\/rulesets\/{ruleset_id}@ See 'name'.
    -> TestRulesetRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FirebaseRulesProjectsTest
newFirebaseRulesProjectsTest name payload =
  FirebaseRulesProjectsTest
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FirebaseRulesProjectsTest
         where
        type Rs FirebaseRulesProjectsTest =
             TestRulesetResponse
        type Scopes FirebaseRulesProjectsTest =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient FirebaseRulesProjectsTest{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              firebaseRulesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FirebaseRulesProjectsTestResource)
                      Core.mempty

