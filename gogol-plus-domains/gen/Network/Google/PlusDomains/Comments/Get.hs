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
-- Module      : Network.Google.PlusDomains.Comments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.comments.get@.
module Network.Google.PlusDomains.Comments.Get
  ( -- * Resource
    PlusDomainsCommentsGetResource,

    -- ** Constructing a Request
    newPlusDomainsCommentsGet,
    PlusDomainsCommentsGet,
  )
where

import Network.Google.PlusDomains.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @plusDomains.comments.get@ method which the
-- 'PlusDomainsCommentsGet' request conforms to.
type PlusDomainsCommentsGetResource =
  "plusDomains"
    Core.:> "v1"
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Comment

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusDomainsCommentsGet' smart constructor.
newtype PlusDomainsCommentsGet = PlusDomainsCommentsGet
  { -- | The ID of the comment to get.
    commentId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusDomainsCommentsGet' with the minimum fields required to make a request.
newPlusDomainsCommentsGet ::
  -- |  The ID of the comment to get. See 'commentId'.
  Core.Text ->
  PlusDomainsCommentsGet
newPlusDomainsCommentsGet commentId =
  PlusDomainsCommentsGet {commentId = commentId}

instance Core.GoogleRequest PlusDomainsCommentsGet where
  type Rs PlusDomainsCommentsGet = Comment
  type
    Scopes PlusDomainsCommentsGet =
      '[ "https://www.googleapis.com/auth/plus.login",
         "https://www.googleapis.com/auth/plus.stream.read"
       ]
  requestClient PlusDomainsCommentsGet {..} =
    go
      commentId
      (Core.Just Core.AltJSON)
      plusDomainsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlusDomainsCommentsGetResource
          )
          Core.mempty
