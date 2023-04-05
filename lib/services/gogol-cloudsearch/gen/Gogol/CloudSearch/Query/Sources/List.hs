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
-- Module      : Gogol.CloudSearch.Query.Sources.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns list of sources that user can use for Search and Suggest APIs. __Note:__ This API requires a standard end user account to execute. A service account can\'t perform Query API requests directly; to use a service account to perform queries, set up <https://developers.google.com/cloud-search/docs/guides/delegation/ Google Workspace domain-wide delegation of authority>.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.query.sources.list@.
module Gogol.CloudSearch.Query.Sources.List
  ( -- * Resource
    CloudSearchQuerySourcesListResource,

    -- ** Constructing a Request
    CloudSearchQuerySourcesList (..),
    newCloudSearchQuerySourcesList,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.query.sources.list@ method which the
-- 'CloudSearchQuerySourcesList' request conforms to.
type CloudSearchQuerySourcesListResource =
  "v1"
    Core.:> "query"
    Core.:> "sources"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "requestOptions.debugOptions.enableDebugging"
              Core.Bool
    Core.:> Core.QueryParam
              "requestOptions.languageCode"
              Core.Text
    Core.:> Core.QueryParam
              "requestOptions.searchApplicationId"
              Core.Text
    Core.:> Core.QueryParam "requestOptions.timeZone" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListQuerySourcesResponse

-- | Returns list of sources that user can use for Search and Suggest APIs. __Note:__ This API requires a standard end user account to execute. A service account can\'t perform Query API requests directly; to use a service account to perform queries, set up <https://developers.google.com/cloud-search/docs/guides/delegation/ Google Workspace domain-wide delegation of authority>.
--
-- /See:/ 'newCloudSearchQuerySourcesList' smart constructor.
data CloudSearchQuerySourcesList = CloudSearchQuerySourcesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of sources to return in the response.
    pageToken :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    requestOptionsDebugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier. For translations. Set this field using the language set in browser or for the page. In the event that the user\'s language preference is known, set this field to the known user language. When specified, the documents in search results are biased towards the specified language. From Suggest API perspective, for 3p suggest this is used as a hint while making predictions to add language boosting.
    requestOptionsLanguageCode :: (Core.Maybe Core.Text),
    -- | The ID generated when you create a search application using the <https://support.google.com/a/answer/9043922 admin console>.
    requestOptionsSearchApplicationId :: (Core.Maybe Core.Text),
    -- | Current user\'s time zone id, such as \"America\/Los_Angeles\" or \"Australia\/Sydney\". These IDs are defined by <http://cldr.unicode.org/ Unicode Common Locale Data Repository (CLDR)> project, and currently available in the file <http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml timezone.xml>. This field is used to correctly interpret date and time queries. If this field is not specified, the default time zone (UTC) is used.
    requestOptionsTimeZone :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchQuerySourcesList' with the minimum fields required to make a request.
newCloudSearchQuerySourcesList ::
  CloudSearchQuerySourcesList
newCloudSearchQuerySourcesList =
  CloudSearchQuerySourcesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageToken = Core.Nothing,
      requestOptionsDebugOptionsEnableDebugging = Core.Nothing,
      requestOptionsLanguageCode = Core.Nothing,
      requestOptionsSearchApplicationId = Core.Nothing,
      requestOptionsTimeZone = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchQuerySourcesList
  where
  type
    Rs CloudSearchQuerySourcesList =
      ListQuerySourcesResponse
  type
    Scopes CloudSearchQuerySourcesList =
      '[CloudSearch'FullControl, CloudSearch'Query]
  requestClient CloudSearchQuerySourcesList {..} =
    go
      xgafv
      accessToken
      callback
      pageToken
      requestOptionsDebugOptionsEnableDebugging
      requestOptionsLanguageCode
      requestOptionsSearchApplicationId
      requestOptionsTimeZone
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudSearchQuerySourcesListResource
          )
          Core.mempty
