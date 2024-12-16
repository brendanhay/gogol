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
-- Module      : Gogol.ConsumerSurveys.Surveys.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a survey.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.insert@.
module Gogol.ConsumerSurveys.Surveys.Insert
    (
    -- * Resource
      ConsumerSurveysSurveysInsertResource

    -- ** Constructing a Request
    , ConsumerSurveysSurveysInsert (..)
    , newConsumerSurveysSurveysInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ConsumerSurveys.Types

-- | A resource alias for @consumersurveys.surveys.insert@ method which the
-- 'ConsumerSurveysSurveysInsert' request conforms to.
type ConsumerSurveysSurveysInsertResource =
     "consumersurveys" Core.:>
       "v2" Core.:>
         "surveys" Core.:>
           Core.QueryParam "alt" Core.AltJSON Core.:>
             Core.ReqBody '[Core.JSON] Survey Core.:>
               Core.Post '[Core.JSON] Survey

-- | Creates a survey.
--
-- /See:/ 'newConsumerSurveysSurveysInsert' smart constructor.
newtype ConsumerSurveysSurveysInsert = ConsumerSurveysSurveysInsert
    {
      -- | Multipart request metadata.
      payload :: Survey
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysSurveysInsert' with the minimum fields required to make a request.
newConsumerSurveysSurveysInsert 
    ::  Survey
       -- ^  Multipart request metadata. See 'payload'.
    -> ConsumerSurveysSurveysInsert
newConsumerSurveysSurveysInsert payload =
  ConsumerSurveysSurveysInsert {payload = payload}

instance Core.GoogleRequest
           ConsumerSurveysSurveysInsert
         where
        type Rs ConsumerSurveysSurveysInsert = Survey
        type Scopes ConsumerSurveysSurveysInsert =
             '[Consumersurveys'FullControl, Userinfo'Email]
        requestClient ConsumerSurveysSurveysInsert{..}
          = go (Core.Just Core.AltJSON) payload
              consumerSurveysService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ConsumerSurveysSurveysInsertResource)
                      Core.mempty

