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
-- Module      : Gogol.Language.Documents.ModerateText
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moderates a document for harmful and sensitive categories.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.moderateText@.
module Gogol.Language.Documents.ModerateText
    (
    -- * Resource
      LanguageDocumentsModerateTextResource

    -- ** Constructing a Request
    , LanguageDocumentsModerateText (..)
    , newLanguageDocumentsModerateText
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Language.Types

-- | A resource alias for @language.documents.moderateText@ method which the
-- 'LanguageDocumentsModerateText' request conforms to.
type LanguageDocumentsModerateTextResource =
     "v2" Core.:>
       "documents:moderateText" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ModerateTextRequest Core.:>
                       Core.Post '[Core.JSON] ModerateTextResponse

-- | Moderates a document for harmful and sensitive categories.
--
-- /See:/ 'newLanguageDocumentsModerateText' smart constructor.
data LanguageDocumentsModerateText = LanguageDocumentsModerateText
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: ModerateTextRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageDocumentsModerateText' with the minimum fields required to make a request.
newLanguageDocumentsModerateText 
    ::  ModerateTextRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> LanguageDocumentsModerateText
newLanguageDocumentsModerateText payload =
  LanguageDocumentsModerateText
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LanguageDocumentsModerateText
         where
        type Rs LanguageDocumentsModerateText =
             ModerateTextResponse
        type Scopes LanguageDocumentsModerateText =
             '[CloudLanguage'FullControl,
               CloudPlatform'FullControl]
        requestClient LanguageDocumentsModerateText{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              languageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LanguageDocumentsModerateTextResource)
                      Core.mempty

