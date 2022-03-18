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
-- Module      : Gogol.ConsumerSurveys.Mobileapppanels.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the MobileAppPanels available to the authenticated user.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.mobileapppanels.list@.
module Gogol.ConsumerSurveys.Mobileapppanels.List
    (
    -- * Resource
      ConsumerSurveysMobileapppanelsListResource

    -- ** Constructing a Request
    , newConsumerSurveysMobileapppanelsList
    , ConsumerSurveysMobileapppanelsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ConsumerSurveys.Types

-- | A resource alias for @consumersurveys.mobileapppanels.list@ method which the
-- 'ConsumerSurveysMobileapppanelsList' request conforms to.
type ConsumerSurveysMobileapppanelsListResource =
     "consumersurveys" Core.:>
       "v2" Core.:>
         "mobileAppPanels" Core.:>
           Core.QueryParam "maxResults" Core.Word32 Core.:>
             Core.QueryParam "startIndex" Core.Word32 Core.:>
               Core.QueryParam "token" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] MobileAppPanelsListResponse

-- | Lists the MobileAppPanels available to the authenticated user.
--
-- /See:/ 'newConsumerSurveysMobileapppanelsList' smart constructor.
data ConsumerSurveysMobileapppanelsList = ConsumerSurveysMobileapppanelsList
    {
      -- | 
      maxResults :: (Core.Maybe Core.Word32)
      -- | 
    , startIndex :: (Core.Maybe Core.Word32)
      -- | 
    , token :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysMobileapppanelsList' with the minimum fields required to make a request.
newConsumerSurveysMobileapppanelsList 
    ::  ConsumerSurveysMobileapppanelsList
newConsumerSurveysMobileapppanelsList =
  ConsumerSurveysMobileapppanelsList
    {maxResults = Core.Nothing, startIndex = Core.Nothing, token = Core.Nothing}

instance Core.GoogleRequest
           ConsumerSurveysMobileapppanelsList
         where
        type Rs ConsumerSurveysMobileapppanelsList =
             MobileAppPanelsListResponse
        type Scopes ConsumerSurveysMobileapppanelsList =
             '["https://www.googleapis.com/auth/consumersurveys",
               "https://www.googleapis.com/auth/consumersurveys.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ConsumerSurveysMobileapppanelsList{..}
          = go maxResults startIndex token
              (Core.Just Core.AltJSON)
              consumerSurveysService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ConsumerSurveysMobileapppanelsListResource)
                      Core.mempty

