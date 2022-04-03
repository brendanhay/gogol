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
-- Module      : Gogol.CommentAnalyzer.Comments.Analyze
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyzes the provided text and returns scores for requested attributes.
--
-- /See:/ <https://github.com/conversationai/perspectiveapi/blob/master/README.md Perspective Comment Analyzer API Reference> for @commentanalyzer.comments.analyze@.
module Gogol.CommentAnalyzer.Comments.Analyze
  ( -- * Resource
    CommentAnalyzerCommentsAnalyzeResource,

    -- ** Constructing a Request
    CommentAnalyzerCommentsAnalyze (..),
    newCommentAnalyzerCommentsAnalyze,
  )
where

import Gogol.CommentAnalyzer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @commentanalyzer.comments.analyze@ method which the
-- 'CommentAnalyzerCommentsAnalyze' request conforms to.
type CommentAnalyzerCommentsAnalyzeResource =
  "v1alpha1"
    Core.:> "comments:analyze"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AnalyzeCommentRequest
    Core.:> Core.Post '[Core.JSON] AnalyzeCommentResponse

-- | Analyzes the provided text and returns scores for requested attributes.
--
-- /See:/ 'newCommentAnalyzerCommentsAnalyze' smart constructor.
data CommentAnalyzerCommentsAnalyze = CommentAnalyzerCommentsAnalyze
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AnalyzeCommentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentAnalyzerCommentsAnalyze' with the minimum fields required to make a request.
newCommentAnalyzerCommentsAnalyze ::
  -- |  Multipart request metadata. See 'payload'.
  AnalyzeCommentRequest ->
  CommentAnalyzerCommentsAnalyze
newCommentAnalyzerCommentsAnalyze payload =
  CommentAnalyzerCommentsAnalyze
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CommentAnalyzerCommentsAnalyze
  where
  type
    Rs CommentAnalyzerCommentsAnalyze =
      AnalyzeCommentResponse
  type
    Scopes CommentAnalyzerCommentsAnalyze =
      '[Userinfo'Email]
  requestClient CommentAnalyzerCommentsAnalyze {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      commentAnalyzerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CommentAnalyzerCommentsAnalyzeResource
          )
          Core.mempty
