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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Vendors.Customers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the customers of the vendor.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.vendors.customers.list@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Vendors.Customers.List
    (
    -- * REST Resource
      PartnersVendorsCustomersListResource

    -- * Creating a Request
    , partnersVendorsCustomersList
    , PartnersVendorsCustomersList

    -- * Request Lenses
    , pvclParent
    , pvclXgafv
    , pvclUploadProtocol
    , pvclAccessToken
    , pvclUploadType
    , pvclPageToken
    , pvclPageSize
    , pvclCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.vendors.customers.list@ method which the
-- 'PartnersVendorsCustomersList' request conforms to.
type PartnersVendorsCustomersListResource =
     "v1" :>
       Capture "parent" Text :>
         "customers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListVendorCustomersResponse

-- | Lists the customers of the vendor.
--
-- /See:/ 'partnersVendorsCustomersList' smart constructor.
data PartnersVendorsCustomersList = PartnersVendorsCustomersList'
    { _pvclParent         :: !Text
    , _pvclXgafv          :: !(Maybe Xgafv)
    , _pvclUploadProtocol :: !(Maybe Text)
    , _pvclAccessToken    :: !(Maybe Text)
    , _pvclUploadType     :: !(Maybe Text)
    , _pvclPageToken      :: !(Maybe Text)
    , _pvclPageSize       :: !(Maybe (Textual Int32))
    , _pvclCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartnersVendorsCustomersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvclParent'
--
-- * 'pvclXgafv'
--
-- * 'pvclUploadProtocol'
--
-- * 'pvclAccessToken'
--
-- * 'pvclUploadType'
--
-- * 'pvclPageToken'
--
-- * 'pvclPageSize'
--
-- * 'pvclCallback'
partnersVendorsCustomersList
    :: Text -- ^ 'pvclParent'
    -> PartnersVendorsCustomersList
partnersVendorsCustomersList pPvclParent_ =
    PartnersVendorsCustomersList'
    { _pvclParent = pPvclParent_
    , _pvclXgafv = Nothing
    , _pvclUploadProtocol = Nothing
    , _pvclAccessToken = Nothing
    , _pvclUploadType = Nothing
    , _pvclPageToken = Nothing
    , _pvclPageSize = Nothing
    , _pvclCallback = Nothing
    }

-- | Required. The resource name in the format
-- \`partners\/[PARTNER_ID]\/vendors\/[VENDOR_ID]\`.
pvclParent :: Lens' PartnersVendorsCustomersList Text
pvclParent
  = lens _pvclParent (\ s a -> s{_pvclParent = a})

-- | V1 error format.
pvclXgafv :: Lens' PartnersVendorsCustomersList (Maybe Xgafv)
pvclXgafv
  = lens _pvclXgafv (\ s a -> s{_pvclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pvclUploadProtocol :: Lens' PartnersVendorsCustomersList (Maybe Text)
pvclUploadProtocol
  = lens _pvclUploadProtocol
      (\ s a -> s{_pvclUploadProtocol = a})

-- | OAuth access token.
pvclAccessToken :: Lens' PartnersVendorsCustomersList (Maybe Text)
pvclAccessToken
  = lens _pvclAccessToken
      (\ s a -> s{_pvclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pvclUploadType :: Lens' PartnersVendorsCustomersList (Maybe Text)
pvclUploadType
  = lens _pvclUploadType
      (\ s a -> s{_pvclUploadType = a})

-- | A token identifying a page of results returned by the server.
pvclPageToken :: Lens' PartnersVendorsCustomersList (Maybe Text)
pvclPageToken
  = lens _pvclPageToken
      (\ s a -> s{_pvclPageToken = a})

-- | The maximum number of results to be returned.
pvclPageSize :: Lens' PartnersVendorsCustomersList (Maybe Int32)
pvclPageSize
  = lens _pvclPageSize (\ s a -> s{_pvclPageSize = a})
      . mapping _Coerce

-- | JSONP
pvclCallback :: Lens' PartnersVendorsCustomersList (Maybe Text)
pvclCallback
  = lens _pvclCallback (\ s a -> s{_pvclCallback = a})

instance GoogleRequest PartnersVendorsCustomersList
         where
        type Rs PartnersVendorsCustomersList =
             ListVendorCustomersResponse
        type Scopes PartnersVendorsCustomersList = '[]
        requestClient PartnersVendorsCustomersList'{..}
          = go _pvclParent _pvclXgafv _pvclUploadProtocol
              _pvclAccessToken
              _pvclUploadType
              _pvclPageToken
              _pvclPageSize
              _pvclCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersVendorsCustomersListResource)
                      mempty
