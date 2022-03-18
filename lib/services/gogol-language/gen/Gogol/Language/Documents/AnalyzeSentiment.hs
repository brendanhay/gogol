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
-- Module      : Gogol.Language.Documents.AnalyzeSentiment
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyzes the sentiment of the provided text.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.analyzeSentiment@.
module Gogol.Language.Documents.AnalyzeSentiment
    (
    -- * Resource
      LanguageDocumentsAnalyzeSentimentResource

    -- ** Constructing a Request
    , newLanguageDocumentsAnalyzeSentiment
    , LanguageDocumentsAnalyzeSentiment
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Language.Types

-- | A resource alias for @language.documents.analyzeSentiment@ method which the
-- 'LanguageDocumentsAnalyzeSentiment' request conforms to.
type LanguageDocumentsAnalyzeSentimentResource =
     "v1" Core.:>
       "documents:analyzeSentiment" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AnalyzeSentimentRequest
                       Core.:>
                       Core.Post '[Core.JSON] AnalyzeSentimentResponse

-- | Analyzes the sentiment of the provided text.
--
-- /See:/ 'newLanguageDocumentsAnalyzeSentiment' smart constructor.
data LanguageDocumentsAnalyzeSentiment = LanguageDocumentsAnalyzeSentiment
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: AnalyzeSentimentRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageDocumentsAnalyzeSentiment' with the minimum fields required to make a request.
newLanguageDocumentsAnalyzeSentiment 
    ::  AnalyzeSentimentRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> LanguageDocumentsAnalyzeSentiment
newLanguageDocumentsAnalyzeSentiment payload =
  LanguageDocumentsAnalyzeSentiment
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LanguageDocumentsAnalyzeSentiment
         where
        type Rs LanguageDocumentsAnalyzeSentiment =
             AnalyzeSentimentResponse
        type Scopes LanguageDocumentsAnalyzeSentiment =
             '["https://www.googleapis.com/auth/cloud-language",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient LanguageDocumentsAnalyzeSentiment{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              languageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LanguageDocumentsAnalyzeSentimentResource)
                      Core.mempty

