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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Labels.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a label and removes it from all accounts to which it was assigned.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.labels.delete@.
module Gogol.ShoppingContent.Content.Accounts.Labels.Delete
    (
    -- * Resource
      ContentAccountsLabelsDeleteResource

    -- ** Constructing a Request
    , newContentAccountsLabelsDelete
    , ContentAccountsLabelsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.labels.delete@ method which the
-- 'ContentAccountsLabelsDelete' request conforms to.
type ContentAccountsLabelsDeleteResource =
     "content" Core.:>
       "v2.1" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Int64 Core.:>
             "labels" Core.:>
               Core.Capture "labelId" Core.Int64 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] ()

-- | Deletes a label and removes it from all accounts to which it was assigned.
--
-- /See:/ 'newContentAccountsLabelsDelete' smart constructor.
data ContentAccountsLabelsDelete = ContentAccountsLabelsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The id of the account that owns the label.
    , accountId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The id of the label to delete.
    , labelId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsLabelsDelete' with the minimum fields required to make a request.
newContentAccountsLabelsDelete 
    ::  Core.Int64
       -- ^  Required. The id of the account that owns the label. See 'accountId'.
    -> Core.Int64
       -- ^  Required. The id of the label to delete. See 'labelId'.
    -> ContentAccountsLabelsDelete
newContentAccountsLabelsDelete accountId labelId =
  ContentAccountsLabelsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , labelId = labelId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentAccountsLabelsDelete
         where
        type Rs ContentAccountsLabelsDelete = ()
        type Scopes ContentAccountsLabelsDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentAccountsLabelsDelete{..}
          = go accountId labelId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentAccountsLabelsDeleteResource)
                      Core.mempty

