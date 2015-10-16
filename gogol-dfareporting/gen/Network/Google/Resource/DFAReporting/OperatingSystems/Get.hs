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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystems.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one operating system by DART ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOperatingSystemsGet@.
module Network.Google.Resource.DFAReporting.OperatingSystems.Get
    (
    -- * REST Resource
      OperatingSystemsGetResource

    -- * Creating a Request
    , operatingSystemsGet'
    , OperatingSystemsGet'

    -- * Request Lenses
    , osgProFileId
    , osgDartId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOperatingSystemsGet@ method which the
-- 'OperatingSystemsGet'' request conforms to.
type OperatingSystemsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystems" :>
           Capture "dartId" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] OperatingSystem

-- | Gets one operating system by DART ID.
--
-- /See:/ 'operatingSystemsGet'' smart constructor.
data OperatingSystemsGet' = OperatingSystemsGet'
    { _osgProFileId :: !Int64
    , _osgDartId    :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osgProFileId'
--
-- * 'osgDartId'
operatingSystemsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'dartId'
    -> OperatingSystemsGet'
operatingSystemsGet' pOsgProFileId_ pOsgDartId_ =
    OperatingSystemsGet'
    { _osgProFileId = pOsgProFileId_
    , _osgDartId = pOsgDartId_
    }

-- | User profile ID associated with this request.
osgProFileId :: Lens' OperatingSystemsGet' Int64
osgProFileId
  = lens _osgProFileId (\ s a -> s{_osgProFileId = a})

-- | Operating system DART ID.
osgDartId :: Lens' OperatingSystemsGet' Int64
osgDartId
  = lens _osgDartId (\ s a -> s{_osgDartId = a})

instance GoogleRequest OperatingSystemsGet' where
        type Rs OperatingSystemsGet' = OperatingSystem
        requestClient OperatingSystemsGet'{..}
          = go _osgProFileId _osgDartId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemsGetResource)
                      mempty
