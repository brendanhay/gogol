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
-- Module      : Gogol.ConsumerSurveys.Mobileapppanels.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a MobileAppPanel. Currently the only property that can be updated is the owners property.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.mobileapppanels.update@.
module Gogol.ConsumerSurveys.Mobileapppanels.Update
  ( -- * Resource
    ConsumerSurveysMobileapppanelsUpdateResource,

    -- ** Constructing a Request
    ConsumerSurveysMobileapppanelsUpdate (..),
    newConsumerSurveysMobileapppanelsUpdate,
  )
where

import Gogol.ConsumerSurveys.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @consumersurveys.mobileapppanels.update@ method which the
-- 'ConsumerSurveysMobileapppanelsUpdate' request conforms to.
type ConsumerSurveysMobileapppanelsUpdateResource =
  "consumersurveys"
    Core.:> "v2"
    Core.:> "mobileAppPanels"
    Core.:> Core.Capture "panelId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] MobileAppPanel
    Core.:> Core.Put '[Core.JSON] MobileAppPanel

-- | Updates a MobileAppPanel. Currently the only property that can be updated is the owners property.
--
-- /See:/ 'newConsumerSurveysMobileapppanelsUpdate' smart constructor.
data ConsumerSurveysMobileapppanelsUpdate = ConsumerSurveysMobileapppanelsUpdate
  { -- | External URL ID for the panel.
    panelId :: Core.Text,
    -- | Multipart request metadata.
    payload :: MobileAppPanel
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysMobileapppanelsUpdate' with the minimum fields required to make a request.
newConsumerSurveysMobileapppanelsUpdate ::
  -- |  External URL ID for the panel. See 'panelId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  MobileAppPanel ->
  ConsumerSurveysMobileapppanelsUpdate
newConsumerSurveysMobileapppanelsUpdate panelId payload =
  ConsumerSurveysMobileapppanelsUpdate
    { panelId = panelId,
      payload = payload
    }

instance Core.GoogleRequest ConsumerSurveysMobileapppanelsUpdate where
  type Rs ConsumerSurveysMobileapppanelsUpdate = MobileAppPanel
  type
    Scopes ConsumerSurveysMobileapppanelsUpdate =
      '[Consumersurveys'FullControl, Userinfo'Email]
  requestClient ConsumerSurveysMobileapppanelsUpdate {..} =
    go
      panelId
      (Core.Just Core.AltJSON)
      payload
      consumerSurveysService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ConsumerSurveysMobileapppanelsUpdateResource
          )
          Core.mempty
