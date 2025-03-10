{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ConsumerSurveys.Mobileapppanels.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the MobileAppPanels available to the authenticated user.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.mobileapppanels.list@.
module Gogol.ConsumerSurveys.Mobileapppanels.List
  ( -- * Resource
    ConsumerSurveysMobileapppanelsListResource,

    -- ** Constructing a Request
    ConsumerSurveysMobileapppanelsList (..),
    newConsumerSurveysMobileapppanelsList,
  )
where

import Gogol.ConsumerSurveys.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @consumersurveys.mobileapppanels.list@ method which the
-- 'ConsumerSurveysMobileapppanelsList' request conforms to.
type ConsumerSurveysMobileapppanelsListResource =
  "consumersurveys"
    Core.:> "v2"
    Core.:> "mobileAppPanels"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "token" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] MobileAppPanelsListResponse

-- | Lists the MobileAppPanels available to the authenticated user.
--
-- /See:/ 'newConsumerSurveysMobileapppanelsList' smart constructor.
data ConsumerSurveysMobileapppanelsList = ConsumerSurveysMobileapppanelsList
  { maxResults :: (Core.Maybe Core.Word32),
    startIndex :: (Core.Maybe Core.Word32),
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysMobileapppanelsList' with the minimum fields required to make a request.
newConsumerSurveysMobileapppanelsList ::
  ConsumerSurveysMobileapppanelsList
newConsumerSurveysMobileapppanelsList =
  ConsumerSurveysMobileapppanelsList
    { maxResults = Core.Nothing,
      startIndex = Core.Nothing,
      token = Core.Nothing
    }

instance Core.GoogleRequest ConsumerSurveysMobileapppanelsList where
  type
    Rs ConsumerSurveysMobileapppanelsList =
      MobileAppPanelsListResponse
  type
    Scopes ConsumerSurveysMobileapppanelsList =
      '[ Consumersurveys'FullControl,
         Consumersurveys'Readonly,
         Userinfo'Email
       ]
  requestClient ConsumerSurveysMobileapppanelsList {..} =
    go
      maxResults
      startIndex
      token
      (Core.Just Core.AltJSON)
      consumerSurveysService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ConsumerSurveysMobileapppanelsListResource
          )
          Core.mempty
