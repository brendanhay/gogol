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
-- Module      : Gogol.Surveys.Results.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves any survey results that have been produced so far. Results are formatted as an Excel file. You must add \"?alt=media\" to the URL as an argument to get results.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.results.get@.
module Gogol.Surveys.Results.Get
  ( -- * Resource
    SurveysResultsGetResource,

    -- ** Constructing a Request
    newSurveysResultsGet,
    SurveysResultsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Surveys.Types

-- | A resource alias for @surveys.results.get@ method which the
-- 'SurveysResultsGet' request conforms to.
type SurveysResultsGetResource =
  "surveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "surveyUrlId" Core.Text
    Core.:> "results"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ResultsGetRequest
    Core.:> Core.Get '[Core.JSON] SurveyResults
    Core.:<|> "surveys"
      Core.:> "v2"
      Core.:> "surveys"
      Core.:> Core.Capture "surveyUrlId" Core.Text
      Core.:> "results"
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Retrieves any survey results that have been produced so far. Results are formatted as an Excel file. You must add \"?alt=media\" to the URL as an argument to get results.
--
-- /See:/ 'newSurveysResultsGet' smart constructor.
data SurveysResultsGet = SurveysResultsGet
  { -- | Multipart request metadata.
    payload :: ResultsGetRequest,
    -- | External URL ID for the survey.
    surveyUrlId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysResultsGet' with the minimum fields required to make a request.
newSurveysResultsGet ::
  -- |  Multipart request metadata. See 'payload'.
  ResultsGetRequest ->
  -- |  External URL ID for the survey. See 'surveyUrlId'.
  Core.Text ->
  SurveysResultsGet
newSurveysResultsGet payload surveyUrlId =
  SurveysResultsGet {payload = payload, surveyUrlId = surveyUrlId}

instance Core.GoogleRequest SurveysResultsGet where
  type Rs SurveysResultsGet = SurveyResults
  type
    Scopes SurveysResultsGet =
      '[ Surveys'FullControl,
         Surveys'Readonly,
         Userinfo'Email
       ]
  requestClient SurveysResultsGet {..} =
    go
      surveyUrlId
      (Core.Just Core.AltJSON)
      payload
      surveysService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SurveysResultsGetResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload SurveysResultsGet)
  where
  type
    Rs (Core.MediaDownload SurveysResultsGet) =
      Core.Stream
  type
    Scopes (Core.MediaDownload SurveysResultsGet) =
      Core.Scopes SurveysResultsGet
  requestClient
    (Core.MediaDownload SurveysResultsGet {..}) =
      go
        surveyUrlId
        (Core.Just Core.AltMedia)
        surveysService
      where
        _ Core.:<|> go =
          Core.buildClient
            (Core.Proxy :: Core.Proxy SurveysResultsGetResource)
            Core.mempty
