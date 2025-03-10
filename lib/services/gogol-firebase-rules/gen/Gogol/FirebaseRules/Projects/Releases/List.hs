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
-- Module      : Gogol.FirebaseRules.Projects.Releases.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the @Release@ values for a project. This list may optionally be filtered by @Release@ name, @Ruleset@ name, @TestSuite@ name, or any combination thereof.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.list@.
module Gogol.FirebaseRules.Projects.Releases.List
  ( -- * Resource
    FirebaseRulesProjectsReleasesListResource,

    -- ** Constructing a Request
    FirebaseRulesProjectsReleasesList (..),
    newFirebaseRulesProjectsReleasesList,
  )
where

import Gogol.FirebaseRules.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firebaserules.projects.releases.list@ method which the
-- 'FirebaseRulesProjectsReleasesList' request conforms to.
type FirebaseRulesProjectsReleasesListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "releases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListReleasesResponse

-- | List the @Release@ values for a project. This list may optionally be filtered by @Release@ name, @Ruleset@ name, @TestSuite@ name, or any combination thereof.
--
-- /See:/ 'newFirebaseRulesProjectsReleasesList' smart constructor.
data FirebaseRulesProjectsReleasesList = FirebaseRulesProjectsReleasesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. @Release@ filter. The list method supports filters with restrictions on the @Release.name@, and @Release.ruleset_name@. Example 1: A filter of \'name=prod/\' might return @Release@s with names within \'projects\/foo\' prefixed with \'prod\': Name -> Ruleset Name: / projects\/foo\/releases\/prod -> projects\/foo\/rulesets\/uuid1234 * projects\/foo\/releases\/prod\/v1 -> projects\/foo\/rulesets\/uuid1234 * projects\/foo\/releases\/prod\/v2 -> projects\/foo\/rulesets\/uuid8888 Example 2: A filter of @name=prod* ruleset_name=uuid1234@ would return only @Release@ instances for \'projects\/foo\' with names prefixed with \'prod\' referring to the same @Ruleset@ name of \'uuid1234\': Name -> Ruleset Name: * projects\/foo\/releases\/prod -> projects\/foo\/rulesets\/1234 * projects\/foo\/releases\/prod\/v1 -> projects\/foo\/rulesets\/1234 In the examples, the filter parameters refer to the search filters are relative to the project. Fully qualified prefixed may also be used.
    filter :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the project. Format: @projects\/{project_id}@
    name :: Core.Text,
    -- | Optional. Page size to load. Maximum of 100. Defaults to 10. Note: @page_size@ is just a hint and the service may choose to load fewer than @page_size@ results due to the size of the output. To traverse all of the releases, the caller should iterate until the @page_token@ on the response is empty.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Next page token for the next batch of @Release@ instances.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsReleasesList' with the minimum fields required to make a request.
newFirebaseRulesProjectsReleasesList ::
  -- |  Required. Resource name for the project. Format: @projects\/{project_id}@ See 'name'.
  Core.Text ->
  FirebaseRulesProjectsReleasesList
newFirebaseRulesProjectsReleasesList name =
  FirebaseRulesProjectsReleasesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FirebaseRulesProjectsReleasesList where
  type Rs FirebaseRulesProjectsReleasesList = ListReleasesResponse
  type
    Scopes FirebaseRulesProjectsReleasesList =
      '[ CloudPlatform'FullControl,
         Firebase'FullControl,
         Firebase'Readonly
       ]
  requestClient FirebaseRulesProjectsReleasesList {..} =
    go
      name
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      firebaseRulesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FirebaseRulesProjectsReleasesListResource
          )
          Core.mempty
