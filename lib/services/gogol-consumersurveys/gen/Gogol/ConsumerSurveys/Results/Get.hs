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
-- Module      : Gogol.ConsumerSurveys.Results.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves any survey results that have been produced so far. Results are formatted as an Excel file. You must add \"?alt=media\" to the URL as an argument to get results.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.results.get@.
module Gogol.ConsumerSurveys.Results.Get
    (
    -- * Resource
      ConsumerSurveysResultsGetResource

    -- ** Constructing a Request
    , ConsumerSurveysResultsGet (..)
    , newConsumerSurveysResultsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ConsumerSurveys.Types

-- | A resource alias for @consumersurveys.results.get@ method which the
-- 'ConsumerSurveysResultsGet' request conforms to.
type ConsumerSurveysResultsGetResource =
     "consumersurveys" Core.:>
       "v2" Core.:>
         "surveys" Core.:>
           Core.Capture "surveyUrlId" Core.Text Core.:>
             "results" Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.ReqBody '[Core.JSON] ResultsGetRequest Core.:>
                   Core.Get '[Core.JSON] SurveyResults
       Core.:<|>
       "consumersurveys" Core.:>
         "v2" Core.:>
           "surveys" Core.:>
             Core.Capture "surveyUrlId" Core.Text Core.:>
               "results" Core.:>
                 Core.QueryParam "alt" Core.AltMedia Core.:>
                   Core.Get '[Core.OctetStream] Core.Stream

-- | Retrieves any survey results that have been produced so far. Results are formatted as an Excel file. You must add \"?alt=media\" to the URL as an argument to get results.
--
-- /See:/ 'newConsumerSurveysResultsGet' smart constructor.
data ConsumerSurveysResultsGet = ConsumerSurveysResultsGet
    {
      -- | Multipart request metadata.
      payload :: ResultsGetRequest
      -- | External URL ID for the survey.
    , surveyUrlId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysResultsGet' with the minimum fields required to make a request.
newConsumerSurveysResultsGet 
    ::  ResultsGetRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  External URL ID for the survey. See 'surveyUrlId'.
    -> ConsumerSurveysResultsGet
newConsumerSurveysResultsGet payload surveyUrlId =
  ConsumerSurveysResultsGet {payload = payload, surveyUrlId = surveyUrlId}

instance Core.GoogleRequest ConsumerSurveysResultsGet
         where
        type Rs ConsumerSurveysResultsGet = SurveyResults
        type Scopes ConsumerSurveysResultsGet =
             '[Consumersurveys'FullControl,
               Consumersurveys'Readonly, Userinfo'Email]
        requestClient ConsumerSurveysResultsGet{..}
          = go surveyUrlId (Core.Just Core.AltJSON) payload
              consumerSurveysService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ConsumerSurveysResultsGetResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaDownload ConsumerSurveysResultsGet)
         where
        type Rs
               (Core.MediaDownload ConsumerSurveysResultsGet)
             = Core.Stream
        type Scopes
               (Core.MediaDownload ConsumerSurveysResultsGet)
             = Core.Scopes ConsumerSurveysResultsGet
        requestClient
          (Core.MediaDownload ConsumerSurveysResultsGet{..})
          = go surveyUrlId (Core.Just Core.AltMedia)
              consumerSurveysService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ConsumerSurveysResultsGetResource)
                      Core.mempty

