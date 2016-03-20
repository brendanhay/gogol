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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one floodlight configuration by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightConfigurations.get@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get
    (
    -- * REST Resource
      FloodlightConfigurationsGetResource

    -- * Creating a Request
    , floodlightConfigurationsGet
    , FloodlightConfigurationsGet

    -- * Request Lenses
    , fcgProFileId
    , fcgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightConfigurations.get@ method which the
-- 'FloodlightConfigurationsGet' request conforms to.
type FloodlightConfigurationsGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightConfigurations" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] FloodlightConfiguration

-- | Gets one floodlight configuration by ID.
--
-- /See:/ 'floodlightConfigurationsGet' smart constructor.
data FloodlightConfigurationsGet = FloodlightConfigurationsGet
    { _fcgProFileId :: !(Textual Int64)
    , _fcgId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcgProFileId'
--
-- * 'fcgId'
floodlightConfigurationsGet
    :: Int64 -- ^ 'fcgProFileId'
    -> Int64 -- ^ 'fcgId'
    -> FloodlightConfigurationsGet
floodlightConfigurationsGet pFcgProFileId_ pFcgId_ =
    FloodlightConfigurationsGet
    { _fcgProFileId = _Coerce # pFcgProFileId_
    , _fcgId = _Coerce # pFcgId_
    }

-- | User profile ID associated with this request.
fcgProFileId :: Lens' FloodlightConfigurationsGet Int64
fcgProFileId
  = lens _fcgProFileId (\ s a -> s{_fcgProFileId = a})
      . _Coerce

-- | Floodlight configuration ID.
fcgId :: Lens' FloodlightConfigurationsGet Int64
fcgId
  = lens _fcgId (\ s a -> s{_fcgId = a}) . _Coerce

instance GoogleRequest FloodlightConfigurationsGet
         where
        type Rs FloodlightConfigurationsGet =
             FloodlightConfiguration
        requestClient FloodlightConfigurationsGet{..}
          = go _fcgProFileId _fcgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightConfigurationsGetResource)
                      mempty
