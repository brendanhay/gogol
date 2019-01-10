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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Dpcs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the DPCs (device policy controllers) that support zero-touch
-- enrollment.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.dpcs.list@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Dpcs.List
    (
    -- * REST Resource
      CustomersDpcsListResource

    -- * Creating a Request
    , customersDpcsList
    , CustomersDpcsList

    -- * Request Lenses
    , cdlParent
    , cdlXgafv
    , cdlUploadProtocol
    , cdlAccessToken
    , cdlUploadType
    , cdlCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.dpcs.list@ method which the
-- 'CustomersDpcsList' request conforms to.
type CustomersDpcsListResource =
     "v1" :>
       Capture "parent" Text :>
         "dpcs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] CustomerListDpcsResponse

-- | Lists the DPCs (device policy controllers) that support zero-touch
-- enrollment.
--
-- /See:/ 'customersDpcsList' smart constructor.
data CustomersDpcsList = CustomersDpcsList'
    { _cdlParent         :: !Text
    , _cdlXgafv          :: !(Maybe Xgafv)
    , _cdlUploadProtocol :: !(Maybe Text)
    , _cdlAccessToken    :: !(Maybe Text)
    , _cdlUploadType     :: !(Maybe Text)
    , _cdlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersDpcsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdlParent'
--
-- * 'cdlXgafv'
--
-- * 'cdlUploadProtocol'
--
-- * 'cdlAccessToken'
--
-- * 'cdlUploadType'
--
-- * 'cdlCallback'
customersDpcsList
    :: Text -- ^ 'cdlParent'
    -> CustomersDpcsList
customersDpcsList pCdlParent_ =
    CustomersDpcsList'
    { _cdlParent = pCdlParent_
    , _cdlXgafv = Nothing
    , _cdlUploadProtocol = Nothing
    , _cdlAccessToken = Nothing
    , _cdlUploadType = Nothing
    , _cdlCallback = Nothing
    }

-- | Required. The customer that can use the DPCs in configurations. An API
-- resource name in the format \`customers\/[CUSTOMER_ID]\`.
cdlParent :: Lens' CustomersDpcsList Text
cdlParent
  = lens _cdlParent (\ s a -> s{_cdlParent = a})

-- | V1 error format.
cdlXgafv :: Lens' CustomersDpcsList (Maybe Xgafv)
cdlXgafv = lens _cdlXgafv (\ s a -> s{_cdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdlUploadProtocol :: Lens' CustomersDpcsList (Maybe Text)
cdlUploadProtocol
  = lens _cdlUploadProtocol
      (\ s a -> s{_cdlUploadProtocol = a})

-- | OAuth access token.
cdlAccessToken :: Lens' CustomersDpcsList (Maybe Text)
cdlAccessToken
  = lens _cdlAccessToken
      (\ s a -> s{_cdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdlUploadType :: Lens' CustomersDpcsList (Maybe Text)
cdlUploadType
  = lens _cdlUploadType
      (\ s a -> s{_cdlUploadType = a})

-- | JSONP
cdlCallback :: Lens' CustomersDpcsList (Maybe Text)
cdlCallback
  = lens _cdlCallback (\ s a -> s{_cdlCallback = a})

instance GoogleRequest CustomersDpcsList where
        type Rs CustomersDpcsList = CustomerListDpcsResponse
        type Scopes CustomersDpcsList = '[]
        requestClient CustomersDpcsList'{..}
          = go _cdlParent _cdlXgafv _cdlUploadProtocol
              _cdlAccessToken
              _cdlUploadType
              _cdlCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersDpcsListResource)
                      mempty
