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
-- Module      : Gogol.Plus.Comments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.comments.get@.
module Gogol.Plus.Comments.Get
  ( -- * Resource
    PlusCommentsGetResource,

    -- ** Constructing a Request
    PlusCommentsGet (..),
    newPlusCommentsGet,
  )
where

import Gogol.Plus.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @plus.comments.get@ method which the
-- 'PlusCommentsGet' request conforms to.
type PlusCommentsGetResource =
  "plus"
    Core.:> "v1"
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Comment

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusCommentsGet' smart constructor.
newtype PlusCommentsGet = PlusCommentsGet
  { -- | The ID of the comment to get.
    commentId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusCommentsGet' with the minimum fields required to make a request.
newPlusCommentsGet ::
  -- |  The ID of the comment to get. See 'commentId'.
  Core.Text ->
  PlusCommentsGet
newPlusCommentsGet commentId = PlusCommentsGet {commentId = commentId}

instance Core.GoogleRequest PlusCommentsGet where
  type Rs PlusCommentsGet = Comment
  type Scopes PlusCommentsGet = '[Plus'Login, Plus'Me]
  requestClient PlusCommentsGet {..} =
    go commentId (Core.Just Core.AltJSON) plusService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusCommentsGetResource)
          Core.mempty
