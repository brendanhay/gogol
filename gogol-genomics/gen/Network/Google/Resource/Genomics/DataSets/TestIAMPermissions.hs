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
-- Module      : Network.Google.Resource.Genomics.DataSets.TestIAMPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. See
-- Testing Permissions for more information.
--
-- /See:/ < Genomics API Reference> for @genomics.datasets.testIamPermissions@.
module Network.Google.Resource.Genomics.DataSets.TestIAMPermissions
    (
    -- * REST Resource
      DataSetsTestIAMPermissionsResource

    -- * Creating a Request
    , dataSetsTestIAMPermissions
    , DataSetsTestIAMPermissions

    -- * Request Lenses
    , dstipXgafv
    , dstipUploadProtocol
    , dstipPp
    , dstipAccessToken
    , dstipUploadType
    , dstipPayload
    , dstipBearerToken
    , dstipResource
    , dstipCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.testIamPermissions@ method which the
-- 'DataSetsTestIAMPermissions' request conforms to.
type DataSetsTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestIAMPermissionsRequest :>
                           Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. See
-- Testing Permissions for more information.
--
-- /See:/ 'dataSetsTestIAMPermissions' smart constructor.
data DataSetsTestIAMPermissions = DataSetsTestIAMPermissions
    { _dstipXgafv          :: !(Maybe Text)
    , _dstipUploadProtocol :: !(Maybe Text)
    , _dstipPp             :: !Bool
    , _dstipAccessToken    :: !(Maybe Text)
    , _dstipUploadType     :: !(Maybe Text)
    , _dstipPayload        :: !TestIAMPermissionsRequest
    , _dstipBearerToken    :: !(Maybe Text)
    , _dstipResource       :: !Text
    , _dstipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dstipXgafv'
--
-- * 'dstipUploadProtocol'
--
-- * 'dstipPp'
--
-- * 'dstipAccessToken'
--
-- * 'dstipUploadType'
--
-- * 'dstipPayload'
--
-- * 'dstipBearerToken'
--
-- * 'dstipResource'
--
-- * 'dstipCallback'
dataSetsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'dstipPayload'
    -> Text -- ^ 'dstipResource'
    -> DataSetsTestIAMPermissions
dataSetsTestIAMPermissions pDstipPayload_ pDstipResource_ =
    DataSetsTestIAMPermissions
    { _dstipXgafv = Nothing
    , _dstipUploadProtocol = Nothing
    , _dstipPp = True
    , _dstipAccessToken = Nothing
    , _dstipUploadType = Nothing
    , _dstipPayload = pDstipPayload_
    , _dstipBearerToken = Nothing
    , _dstipResource = pDstipResource_
    , _dstipCallback = Nothing
    }

-- | V1 error format.
dstipXgafv :: Lens' DataSetsTestIAMPermissions (Maybe Text)
dstipXgafv
  = lens _dstipXgafv (\ s a -> s{_dstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dstipUploadProtocol :: Lens' DataSetsTestIAMPermissions (Maybe Text)
dstipUploadProtocol
  = lens _dstipUploadProtocol
      (\ s a -> s{_dstipUploadProtocol = a})

-- | Pretty-print response.
dstipPp :: Lens' DataSetsTestIAMPermissions Bool
dstipPp = lens _dstipPp (\ s a -> s{_dstipPp = a})

-- | OAuth access token.
dstipAccessToken :: Lens' DataSetsTestIAMPermissions (Maybe Text)
dstipAccessToken
  = lens _dstipAccessToken
      (\ s a -> s{_dstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dstipUploadType :: Lens' DataSetsTestIAMPermissions (Maybe Text)
dstipUploadType
  = lens _dstipUploadType
      (\ s a -> s{_dstipUploadType = a})

-- | Multipart request metadata.
dstipPayload :: Lens' DataSetsTestIAMPermissions TestIAMPermissionsRequest
dstipPayload
  = lens _dstipPayload (\ s a -> s{_dstipPayload = a})

-- | OAuth bearer token.
dstipBearerToken :: Lens' DataSetsTestIAMPermissions (Maybe Text)
dstipBearerToken
  = lens _dstipBearerToken
      (\ s a -> s{_dstipBearerToken = a})

-- | REQUIRED: The resource for which policy is being specified. Format is
-- \`datasets\/\`.
dstipResource :: Lens' DataSetsTestIAMPermissions Text
dstipResource
  = lens _dstipResource
      (\ s a -> s{_dstipResource = a})

-- | JSONP
dstipCallback :: Lens' DataSetsTestIAMPermissions (Maybe Text)
dstipCallback
  = lens _dstipCallback
      (\ s a -> s{_dstipCallback = a})

instance GoogleRequest DataSetsTestIAMPermissions
         where
        type Rs DataSetsTestIAMPermissions =
             TestIAMPermissionsResponse
        requestClient DataSetsTestIAMPermissions{..}
          = go _dstipResource _dstipXgafv _dstipUploadProtocol
              (Just _dstipPp)
              _dstipAccessToken
              _dstipUploadType
              _dstipBearerToken
              _dstipCallback
              (Just AltJSON)
              _dstipPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy DataSetsTestIAMPermissionsResource)
                      mempty
