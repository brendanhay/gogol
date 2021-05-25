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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Customers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the customers that are enrolled to the reseller identified by the
-- \`partnerId\` argument. This list includes customers that the reseller
-- created and customers that enrolled themselves using the portal.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.customers.list@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Customers.List
    (
    -- * REST Resource
      PartnersCustomersListResource

    -- * Creating a Request
    , partnersCustomersList
    , PartnersCustomersList

    -- * Request Lenses
    , pclXgafv
    , pclUploadProtocol
    , pclAccessToken
    , pclPartnerId
    , pclUploadType
    , pclPageToken
    , pclPageSize
    , pclCallback
    ) where

import Network.Google.AndroidDeviceProvisioning.Types
import Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.customers.list@ method which the
-- 'PartnersCustomersList' request conforms to.
type PartnersCustomersListResource =
     "v1" :>
       "partners" :>
         Capture "partnerId" (Textual Int64) :>
           "customers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListCustomersResponse

-- | Lists the customers that are enrolled to the reseller identified by the
-- \`partnerId\` argument. This list includes customers that the reseller
-- created and customers that enrolled themselves using the portal.
--
-- /See:/ 'partnersCustomersList' smart constructor.
data PartnersCustomersList =
  PartnersCustomersList'
    { _pclXgafv :: !(Maybe Xgafv)
    , _pclUploadProtocol :: !(Maybe Text)
    , _pclAccessToken :: !(Maybe Text)
    , _pclPartnerId :: !(Textual Int64)
    , _pclUploadType :: !(Maybe Text)
    , _pclPageToken :: !(Maybe Text)
    , _pclPageSize :: !(Maybe (Textual Int32))
    , _pclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartnersCustomersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclXgafv'
--
-- * 'pclUploadProtocol'
--
-- * 'pclAccessToken'
--
-- * 'pclPartnerId'
--
-- * 'pclUploadType'
--
-- * 'pclPageToken'
--
-- * 'pclPageSize'
--
-- * 'pclCallback'
partnersCustomersList
    :: Int64 -- ^ 'pclPartnerId'
    -> PartnersCustomersList
partnersCustomersList pPclPartnerId_ =
  PartnersCustomersList'
    { _pclXgafv = Nothing
    , _pclUploadProtocol = Nothing
    , _pclAccessToken = Nothing
    , _pclPartnerId = _Coerce # pPclPartnerId_
    , _pclUploadType = Nothing
    , _pclPageToken = Nothing
    , _pclPageSize = Nothing
    , _pclCallback = Nothing
    }


-- | V1 error format.
pclXgafv :: Lens' PartnersCustomersList (Maybe Xgafv)
pclXgafv = lens _pclXgafv (\ s a -> s{_pclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pclUploadProtocol :: Lens' PartnersCustomersList (Maybe Text)
pclUploadProtocol
  = lens _pclUploadProtocol
      (\ s a -> s{_pclUploadProtocol = a})

-- | OAuth access token.
pclAccessToken :: Lens' PartnersCustomersList (Maybe Text)
pclAccessToken
  = lens _pclAccessToken
      (\ s a -> s{_pclAccessToken = a})

-- | Required. The ID of the reseller partner.
pclPartnerId :: Lens' PartnersCustomersList Int64
pclPartnerId
  = lens _pclPartnerId (\ s a -> s{_pclPartnerId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pclUploadType :: Lens' PartnersCustomersList (Maybe Text)
pclUploadType
  = lens _pclUploadType
      (\ s a -> s{_pclUploadType = a})

-- | A token identifying a page of results returned by the server.
pclPageToken :: Lens' PartnersCustomersList (Maybe Text)
pclPageToken
  = lens _pclPageToken (\ s a -> s{_pclPageToken = a})

-- | The maximum number of results to be returned. If not specified or 0, all
-- the records are returned.
pclPageSize :: Lens' PartnersCustomersList (Maybe Int32)
pclPageSize
  = lens _pclPageSize (\ s a -> s{_pclPageSize = a}) .
      mapping _Coerce

-- | JSONP
pclCallback :: Lens' PartnersCustomersList (Maybe Text)
pclCallback
  = lens _pclCallback (\ s a -> s{_pclCallback = a})

instance GoogleRequest PartnersCustomersList where
        type Rs PartnersCustomersList = ListCustomersResponse
        type Scopes PartnersCustomersList = '[]
        requestClient PartnersCustomersList'{..}
          = go _pclPartnerId _pclXgafv _pclUploadProtocol
              _pclAccessToken
              _pclUploadType
              _pclPageToken
              _pclPageSize
              _pclCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersCustomersListResource)
                      mempty
