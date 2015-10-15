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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightConfigurationsList@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.List
    (
    -- * REST Resource
      FloodlightConfigurationsListResource

    -- * Creating a Request
    , floodlightConfigurationsList'
    , FloodlightConfigurationsList'

    -- * Request Lenses
    , fclIds
    , fclProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsList@ method which the
-- 'FloodlightConfigurationsList'' request conforms to.
type FloodlightConfigurationsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           QueryParams "ids" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] FloodlightConfigurationsListResponse

-- | Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ 'floodlightConfigurationsList'' smart constructor.
data FloodlightConfigurationsList' = FloodlightConfigurationsList'
    { _fclIds       :: !(Maybe [Int64])
    , _fclProFileId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fclIds'
--
-- * 'fclProFileId'
floodlightConfigurationsList'
    :: Int64 -- ^ 'profileId'
    -> FloodlightConfigurationsList'
floodlightConfigurationsList' pFclProFileId_ =
    FloodlightConfigurationsList'
    { _fclIds = Nothing
    , _fclProFileId = pFclProFileId_
    }

-- | Set of IDs of floodlight configurations to retrieve. Required field;
-- otherwise an empty list will be returned.
fclIds :: Lens' FloodlightConfigurationsList' [Int64]
fclIds
  = lens _fclIds (\ s a -> s{_fclIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
fclProFileId :: Lens' FloodlightConfigurationsList' Int64
fclProFileId
  = lens _fclProFileId (\ s a -> s{_fclProFileId = a})

instance GoogleRequest FloodlightConfigurationsList'
         where
        type Rs FloodlightConfigurationsList' =
             FloodlightConfigurationsListResponse
        requestClient FloodlightConfigurationsList'{..}
          = go _fclProFileId (_fclIds ^. _Default)
              (Just AltJSON)
              dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightConfigurationsListResource)
                      mempty
