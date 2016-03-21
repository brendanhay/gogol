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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one operating system by DART ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.operatingSystems.get@.
module Network.Google.Resource.DFAReporting.OperatingSystems.Get
    (
    -- * REST Resource
      OperatingSystemsGetResource

    -- * Creating a Request
    , operatingSystemsGet
    , OperatingSystemsGet

    -- * Request Lenses
    , osgProFileId
    , osgDartId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.operatingSystems.get@ method which the
-- 'OperatingSystemsGet' request conforms to.
type OperatingSystemsGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "operatingSystems" :>
               Capture "dartId" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] OperatingSystem

-- | Gets one operating system by DART ID.
--
-- /See:/ 'operatingSystemsGet' smart constructor.
data OperatingSystemsGet = OperatingSystemsGet'
    { _osgProFileId :: !(Textual Int64)
    , _osgDartId    :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osgProFileId'
--
-- * 'osgDartId'
operatingSystemsGet
    :: Int64 -- ^ 'osgProFileId'
    -> Int64 -- ^ 'osgDartId'
    -> OperatingSystemsGet
operatingSystemsGet pOsgProFileId_ pOsgDartId_ =
    OperatingSystemsGet'
    { _osgProFileId = _Coerce # pOsgProFileId_
    , _osgDartId = _Coerce # pOsgDartId_
    }

-- | User profile ID associated with this request.
osgProFileId :: Lens' OperatingSystemsGet Int64
osgProFileId
  = lens _osgProFileId (\ s a -> s{_osgProFileId = a})
      . _Coerce

-- | Operating system DART ID.
osgDartId :: Lens' OperatingSystemsGet Int64
osgDartId
  = lens _osgDartId (\ s a -> s{_osgDartId = a}) .
      _Coerce

instance GoogleRequest OperatingSystemsGet where
        type Rs OperatingSystemsGet = OperatingSystem
        type Scopes OperatingSystemsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OperatingSystemsGet'{..}
          = go _osgProFileId _osgDartId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemsGetResource)
                      mempty
