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
-- Module      : Network.Google.Resource.ConsumerSurveys.MobileApppanels.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a MobileAppPanel. Currently the only property that can be
-- updated is the owners property.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.mobileapppanels.update@.
module Network.Google.Resource.ConsumerSurveys.MobileApppanels.Update
    (
    -- * REST Resource
      MobileApppanelsUpdateResource

    -- * Creating a Request
    , mobileApppanelsUpdate
    , MobileApppanelsUpdate

    -- * Request Lenses
    , mauPayload
    , mauPanelId
    ) where

import           Network.Google.ConsumerSurveys.Types
import           Network.Google.Prelude

-- | A resource alias for @consumersurveys.mobileapppanels.update@ method which the
-- 'MobileApppanelsUpdate' request conforms to.
type MobileApppanelsUpdateResource =
     "consumersurveys" :>
       "v2" :>
         "mobileAppPanels" :>
           Capture "panelId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] MobileAppPanel :>
                 Put '[JSON] MobileAppPanel

-- | Updates a MobileAppPanel. Currently the only property that can be
-- updated is the owners property.
--
-- /See:/ 'mobileApppanelsUpdate' smart constructor.
data MobileApppanelsUpdate =
  MobileApppanelsUpdate'
    { _mauPayload :: !MobileAppPanel
    , _mauPanelId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MobileApppanelsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauPayload'
--
-- * 'mauPanelId'
mobileApppanelsUpdate
    :: MobileAppPanel -- ^ 'mauPayload'
    -> Text -- ^ 'mauPanelId'
    -> MobileApppanelsUpdate
mobileApppanelsUpdate pMauPayload_ pMauPanelId_ =
  MobileApppanelsUpdate'
    {_mauPayload = pMauPayload_, _mauPanelId = pMauPanelId_}

-- | Multipart request metadata.
mauPayload :: Lens' MobileApppanelsUpdate MobileAppPanel
mauPayload
  = lens _mauPayload (\ s a -> s{_mauPayload = a})

-- | External URL ID for the panel.
mauPanelId :: Lens' MobileApppanelsUpdate Text
mauPanelId
  = lens _mauPanelId (\ s a -> s{_mauPanelId = a})

instance GoogleRequest MobileApppanelsUpdate where
        type Rs MobileApppanelsUpdate = MobileAppPanel
        type Scopes MobileApppanelsUpdate =
             '["https://www.googleapis.com/auth/consumersurveys",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient MobileApppanelsUpdate'{..}
          = go _mauPanelId (Just AltJSON) _mauPayload
              consumerSurveysService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileApppanelsUpdateResource)
                      mempty
