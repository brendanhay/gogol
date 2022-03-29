-- |
-- Module      : Gogol.AndroidPublisher.Edits.Commit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.commit@.
module Gogol.AndroidPublisher.Edits.Commit
  ( -- * Constructing a Request
    AndroidPublisherEditsCommit (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherEditsCommit (..),
#endif
    mkAndroidPublisherEditsCommit,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Commits an app edit.
--
-- Construct a default value using the 'MkAndroidPublisherEditsCommit' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherEditsCommit = AndroidPublisherEditsCommit
  { -- | Indicates that the changes in this edit will not be reviewed until they are explicitly sent for review from the Google Play Console UI. These changes will be added to any other changes that are not yet sent for review.
    changesNotSentForReview :: Core.Maybe Core.Bool,
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherEditsCommit' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherEditsCommit :: Core.Text -> Core.Text -> AndroidPublisherEditsCommit
pattern MkAndroidPublisherEditsCommit{editId, packageName} =
        AndroidPublisherEditsCommit{changesNotSentForReview = Core.Nothing, editId = editId, packageName = packageName}

{-# DEPRECATED mkAndroidPublisherEditsCommit "Please use MkAndroidPublisherEditsCommit instead" #-}
#endif

-- | Create 'AndroidPublisherEditsCommit' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherEditsCommit :: Core.Text -> Core.Text -> AndroidPublisherEditsCommit
mkAndroidPublisherEditsCommit editId packageName =
  AndroidPublisherEditsCommit {changesNotSentForReview = Core.Nothing, editId = editId, packageName = packageName}

instance Core.GoogleRequest AndroidPublisherEditsCommit where
  type Core.Scopes AndroidPublisherEditsCommit = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsCommit = AndroidPublisherService
  type Core.Response AndroidPublisherEditsCommit = AppEdit
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsCommit {..} =
    serviceRequest
      { Core.method = "POST",
        Core.path =
          Core.toRequestPath
            ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/:commit"],
        Core.queryString =
          Core.toRequestQuery $
            Core.catMaybes
              [ ("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv,
                ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                ("callback",) Core.. Core.toQueryParam Core.<$> callback,
                ("changesNotSentForReview",) Core.. Core.toQueryParam Core.<$> changesNotSentForReview,
                ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                ("key",) Core.. Core.toQueryParam Core.<$> key,
                ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                Core.Just ("alt", "json")
              ]
      }
