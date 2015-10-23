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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight configuration.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightConfigurations.update@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
    (
    -- * REST Resource
      FloodlightConfigurationsUpdateResource

    -- * Creating a Request
    , floodlightConfigurationsUpdate
    , FloodlightConfigurationsUpdate

    -- * Request Lenses
    , fcuProFileId
    , fcuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightConfigurations.update@ method which the
-- 'FloodlightConfigurationsUpdate' request conforms to.
type FloodlightConfigurationsUpdateResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" Int64 :>
             "floodlightConfigurations" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] FloodlightConfiguration :>
                   Put '[JSON] FloodlightConfiguration

-- | Updates an existing floodlight configuration.
--
-- /See:/ 'floodlightConfigurationsUpdate' smart constructor.
data FloodlightConfigurationsUpdate = FloodlightConfigurationsUpdate
    { _fcuProFileId :: !Int64
    , _fcuPayload   :: !FloodlightConfiguration
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcuProFileId'
--
-- * 'fcuPayload'
floodlightConfigurationsUpdate
    :: Int64 -- ^ 'fcuProFileId'
    -> FloodlightConfiguration -- ^ 'fcuPayload'
    -> FloodlightConfigurationsUpdate
floodlightConfigurationsUpdate pFcuProFileId_ pFcuPayload_ =
    FloodlightConfigurationsUpdate
    { _fcuProFileId = pFcuProFileId_
    , _fcuPayload = pFcuPayload_
    }

-- | User profile ID associated with this request.
fcuProFileId :: Lens' FloodlightConfigurationsUpdate Int64
fcuProFileId
  = lens _fcuProFileId (\ s a -> s{_fcuProFileId = a})

-- | Multipart request metadata.
fcuPayload :: Lens' FloodlightConfigurationsUpdate FloodlightConfiguration
fcuPayload
  = lens _fcuPayload (\ s a -> s{_fcuPayload = a})

instance GoogleRequest FloodlightConfigurationsUpdate
         where
        type Rs FloodlightConfigurationsUpdate =
             FloodlightConfiguration
        requestClient FloodlightConfigurationsUpdate{..}
          = go _fcuProFileId (Just AltJSON) _fcuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightConfigurationsUpdateResource)
                      mempty
