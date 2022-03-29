-- |
-- Module      : Gogol.AndroidPublisher.Edits.Countryavailability.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.countryavailability.get@.
module Gogol.AndroidPublisher.Edits.Countryavailability.Get
  ( -- * Constructing a Request
    AndroidPublisherEditsCountryavailabilityGet (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Gets country availability.
data AndroidPublisherEditsCountryavailabilityGet = AndroidPublisherEditsCountryavailabilityGet
  { -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | The track to read from.
    track :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsCountryavailabilityGet where
  type Core.Scopes AndroidPublisherEditsCountryavailabilityGet = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsCountryavailabilityGet = AndroidPublisherService
  type Core.Response AndroidPublisherEditsCountryavailabilityGet = TrackCountryAvailability
  toRequest
    Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}}
    AndroidPublisherEditsCountryavailabilityGet {..} =
      serviceRequest
        { Core.method = "GET",
          Core.path =
            Core.toRequestPath
              [ "/androidpublisher/v3/applications/",
                Core.toPathBuilder packageName,
                "/edits/",
                Core.toPathBuilder editId,
                "/countryAvailability/",
                Core.toPathBuilder track
              ],
          Core.queryString =
            Core.toRequestQuery $
              Core.catMaybes
                [ ("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv,
                  ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                  ("callback",) Core.. Core.toQueryParam Core.<$> callback,
                  ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                  ("key",) Core.. Core.toQueryParam Core.<$> key,
                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                  Core.Just ("alt", "json")
                ]
        }
