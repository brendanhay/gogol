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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.operatingSystems.get@.
module Network.Google.Resource.DFAReporting.OperatingSystems.Get
    (
    -- * REST Resource
      OperatingSystemsGetResource

    -- * Creating a Request
    , operatingSystemsGet
    , OperatingSystemsGet

    -- * Request Lenses
    , osgXgafv
    , osgUploadProtocol
    , osgAccessToken
    , osgUploadType
    , osgProFileId
    , osgDartId
    , osgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.operatingSystems.get@ method which the
-- 'OperatingSystemsGet' request conforms to.
type OperatingSystemsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "operatingSystems" :>
               Capture "dartId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] OperatingSystem

-- | Gets one operating system by DART ID.
--
-- /See:/ 'operatingSystemsGet' smart constructor.
data OperatingSystemsGet =
  OperatingSystemsGet'
    { _osgXgafv :: !(Maybe Xgafv)
    , _osgUploadProtocol :: !(Maybe Text)
    , _osgAccessToken :: !(Maybe Text)
    , _osgUploadType :: !(Maybe Text)
    , _osgProFileId :: !(Textual Int64)
    , _osgDartId :: !(Textual Int64)
    , _osgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperatingSystemsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osgXgafv'
--
-- * 'osgUploadProtocol'
--
-- * 'osgAccessToken'
--
-- * 'osgUploadType'
--
-- * 'osgProFileId'
--
-- * 'osgDartId'
--
-- * 'osgCallback'
operatingSystemsGet
    :: Int64 -- ^ 'osgProFileId'
    -> Int64 -- ^ 'osgDartId'
    -> OperatingSystemsGet
operatingSystemsGet pOsgProFileId_ pOsgDartId_ =
  OperatingSystemsGet'
    { _osgXgafv = Nothing
    , _osgUploadProtocol = Nothing
    , _osgAccessToken = Nothing
    , _osgUploadType = Nothing
    , _osgProFileId = _Coerce # pOsgProFileId_
    , _osgDartId = _Coerce # pOsgDartId_
    , _osgCallback = Nothing
    }


-- | V1 error format.
osgXgafv :: Lens' OperatingSystemsGet (Maybe Xgafv)
osgXgafv = lens _osgXgafv (\ s a -> s{_osgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osgUploadProtocol :: Lens' OperatingSystemsGet (Maybe Text)
osgUploadProtocol
  = lens _osgUploadProtocol
      (\ s a -> s{_osgUploadProtocol = a})

-- | OAuth access token.
osgAccessToken :: Lens' OperatingSystemsGet (Maybe Text)
osgAccessToken
  = lens _osgAccessToken
      (\ s a -> s{_osgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osgUploadType :: Lens' OperatingSystemsGet (Maybe Text)
osgUploadType
  = lens _osgUploadType
      (\ s a -> s{_osgUploadType = a})

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

-- | JSONP
osgCallback :: Lens' OperatingSystemsGet (Maybe Text)
osgCallback
  = lens _osgCallback (\ s a -> s{_osgCallback = a})

instance GoogleRequest OperatingSystemsGet where
        type Rs OperatingSystemsGet = OperatingSystem
        type Scopes OperatingSystemsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OperatingSystemsGet'{..}
          = go _osgProFileId _osgDartId _osgXgafv
              _osgUploadProtocol
              _osgAccessToken
              _osgUploadType
              _osgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemsGetResource)
                      mempty
