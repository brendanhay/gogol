{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.ConsumerSurveys.MobileApppanels.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a MobileAppPanel that is available to the authenticated user.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.mobileapppanels.get@.
module Network.Google.Resource.ConsumerSurveys.MobileApppanels.Get
    (
    -- * REST Resource
      MobileApppanelsGetResource

    -- * Creating a Request
    , mobileApppanelsGet
    , MobileApppanelsGet

    -- * Request Lenses
    , magPanelId
    ) where

import           Network.Google.ConsumerSurveys.Types
import           Network.Google.Prelude

-- | A resource alias for @consumersurveys.mobileapppanels.get@ method which the
-- 'MobileApppanelsGet' request conforms to.
type MobileApppanelsGetResource =
     "consumersurveys" :>
       "v2" :>
         "mobileAppPanels" :>
           Capture "panelId" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] MobileAppPanel

-- | Retrieves a MobileAppPanel that is available to the authenticated user.
--
-- /See:/ 'mobileApppanelsGet' smart constructor.
newtype MobileApppanelsGet = MobileApppanelsGet'
    { _magPanelId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileApppanelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'magPanelId'
mobileApppanelsGet
    :: Text -- ^ 'magPanelId'
    -> MobileApppanelsGet
mobileApppanelsGet pMagPanelId_ =
    MobileApppanelsGet'
    { _magPanelId = pMagPanelId_
    }

-- | External URL ID for the panel.
magPanelId :: Lens' MobileApppanelsGet Text
magPanelId
  = lens _magPanelId (\ s a -> s{_magPanelId = a})

instance GoogleRequest MobileApppanelsGet where
        type Rs MobileApppanelsGet = MobileAppPanel
        type Scopes MobileApppanelsGet =
             '["https://www.googleapis.com/auth/consumersurveys",
               "https://www.googleapis.com/auth/consumersurveys.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient MobileApppanelsGet'{..}
          = go _magPanelId (Just AltJSON)
              consumerSurveysService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileApppanelsGetResource)
                      mempty
