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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s customer accounts.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.list@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.List
    (
    -- * REST Resource
      CustomersListResource

    -- * Creating a Request
    , customersList
    , CustomersList

    -- * Request Lenses
    , clXgafv
    , clUploadProtocol
    , clAccessToken
    , clUploadType
    , clPageToken
    , clPageSize
    , clCallback
    ) where

import Network.Google.AndroidDeviceProvisioning.Types
import Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.list@ method which the
-- 'CustomersList' request conforms to.
type CustomersListResource =
     "v1" :>
       "customers" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CustomerListCustomersResponse

-- | Lists the user\'s customer accounts.
--
-- /See:/ 'customersList' smart constructor.
data CustomersList =
  CustomersList'
    { _clXgafv :: !(Maybe Xgafv)
    , _clUploadProtocol :: !(Maybe Text)
    , _clAccessToken :: !(Maybe Text)
    , _clUploadType :: !(Maybe Text)
    , _clPageToken :: !(Maybe Text)
    , _clPageSize :: !(Maybe (Textual Int32))
    , _clCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clXgafv'
--
-- * 'clUploadProtocol'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clPageToken'
--
-- * 'clPageSize'
--
-- * 'clCallback'
customersList
    :: CustomersList
customersList =
  CustomersList'
    { _clXgafv = Nothing
    , _clUploadProtocol = Nothing
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clPageToken = Nothing
    , _clPageSize = Nothing
    , _clCallback = Nothing
    }


-- | V1 error format.
clXgafv :: Lens' CustomersList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CustomersList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | OAuth access token.
clAccessToken :: Lens' CustomersList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CustomersList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | A token specifying which result page to return.
clPageToken :: Lens' CustomersList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | The maximum number of customers to show in a page of results. A number
-- between 1 and 100 (inclusive).
clPageSize :: Lens' CustomersList (Maybe Int32)
clPageSize
  = lens _clPageSize (\ s a -> s{_clPageSize = a}) .
      mapping _Coerce

-- | JSONP
clCallback :: Lens' CustomersList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleRequest CustomersList where
        type Rs CustomersList = CustomerListCustomersResponse
        type Scopes CustomersList = '[]
        requestClient CustomersList'{..}
          = go _clXgafv _clUploadProtocol _clAccessToken
              _clUploadType
              _clPageToken
              _clPageSize
              _clCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient (Proxy :: Proxy CustomersListResource)
                      mempty
