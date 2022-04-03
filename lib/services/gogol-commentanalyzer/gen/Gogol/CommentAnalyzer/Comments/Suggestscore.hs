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
-- Module      : Gogol.CommentAnalyzer.Comments.Suggestscore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Suggest comment scores as training data.
--
-- /See:/ <https://github.com/conversationai/perspectiveapi/blob/master/README.md Perspective Comment Analyzer API Reference> for @commentanalyzer.comments.suggestscore@.
module Gogol.CommentAnalyzer.Comments.Suggestscore
  ( -- * Resource
    CommentAnalyzerCommentsSuggestscoreResource,

    -- ** Constructing a Request
    CommentAnalyzerCommentsSuggestscore (..),
    newCommentAnalyzerCommentsSuggestscore,
  )
where

import Gogol.CommentAnalyzer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @commentanalyzer.comments.suggestscore@ method which the
-- 'CommentAnalyzerCommentsSuggestscore' request conforms to.
type CommentAnalyzerCommentsSuggestscoreResource =
  "v1alpha1"
    Core.:> "comments:suggestscore"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SuggestCommentScoreRequest
    Core.:> Core.Post '[Core.JSON] SuggestCommentScoreResponse

-- | Suggest comment scores as training data.
--
-- /See:/ 'newCommentAnalyzerCommentsSuggestscore' smart constructor.
data CommentAnalyzerCommentsSuggestscore = CommentAnalyzerCommentsSuggestscore
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SuggestCommentScoreRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentAnalyzerCommentsSuggestscore' with the minimum fields required to make a request.
newCommentAnalyzerCommentsSuggestscore ::
  -- |  Multipart request metadata. See 'payload'.
  SuggestCommentScoreRequest ->
  CommentAnalyzerCommentsSuggestscore
newCommentAnalyzerCommentsSuggestscore payload =
  CommentAnalyzerCommentsSuggestscore
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CommentAnalyzerCommentsSuggestscore
  where
  type
    Rs CommentAnalyzerCommentsSuggestscore =
      SuggestCommentScoreResponse
  type
    Scopes CommentAnalyzerCommentsSuggestscore =
      '[Userinfo'Email]
  requestClient CommentAnalyzerCommentsSuggestscore {..} =
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
              Core.Proxy
                CommentAnalyzerCommentsSuggestscoreResource
          )
          Core.mempty
