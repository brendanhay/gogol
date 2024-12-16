{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Language.Documents.AnalyzeSyntax
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyzes the syntax of the text and provides sentence boundaries and tokenization along with part of speech tags, dependency trees, and other properties.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.analyzeSyntax@.
module Gogol.Language.Documents.AnalyzeSyntax
    (
    -- * Resource
      LanguageDocumentsAnalyzeSyntaxResource

    -- ** Constructing a Request
    , LanguageDocumentsAnalyzeSyntax (..)
    , newLanguageDocumentsAnalyzeSyntax
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Language.Types

-- | A resource alias for @language.documents.analyzeSyntax@ method which the
-- 'LanguageDocumentsAnalyzeSyntax' request conforms to.
type LanguageDocumentsAnalyzeSyntaxResource =
     "v1" Core.:>
       "documents:analyzeSyntax" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AnalyzeSyntaxRequest
                       Core.:> Core.Post '[Core.JSON] AnalyzeSyntaxResponse

-- | Analyzes the syntax of the text and provides sentence boundaries and tokenization along with part of speech tags, dependency trees, and other properties.
--
-- /See:/ 'newLanguageDocumentsAnalyzeSyntax' smart constructor.
data LanguageDocumentsAnalyzeSyntax = LanguageDocumentsAnalyzeSyntax
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: AnalyzeSyntaxRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageDocumentsAnalyzeSyntax' with the minimum fields required to make a request.
newLanguageDocumentsAnalyzeSyntax 
    ::  AnalyzeSyntaxRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> LanguageDocumentsAnalyzeSyntax
newLanguageDocumentsAnalyzeSyntax payload =
  LanguageDocumentsAnalyzeSyntax
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LanguageDocumentsAnalyzeSyntax
         where
        type Rs LanguageDocumentsAnalyzeSyntax =
             AnalyzeSyntaxResponse
        type Scopes LanguageDocumentsAnalyzeSyntax =
             '[CloudLanguage'FullControl,
               CloudPlatform'FullControl]
        requestClient LanguageDocumentsAnalyzeSyntax{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              languageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LanguageDocumentsAnalyzeSyntaxResource)
                      Core.mempty

