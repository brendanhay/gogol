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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Vendors.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the vendors of the partner.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.vendors.list@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Vendors.List
    (
    -- * REST Resource
      PartnersVendorsListResource

    -- * Creating a Request
    , partnersVendorsList
    , PartnersVendorsList

    -- * Request Lenses
    , pvlParent
    , pvlXgafv
    , pvlUploadProtocol
    , pvlAccessToken
    , pvlUploadType
    , pvlPageToken
    , pvlPageSize
    , pvlCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.vendors.list@ method which the
-- 'PartnersVendorsList' request conforms to.
type PartnersVendorsListResource =
     "v1" :>
       Capture "parent" Text :>
         "vendors" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListVendorsResponse

-- | Lists the vendors of the partner.
--
-- /See:/ 'partnersVendorsList' smart constructor.
data PartnersVendorsList = PartnersVendorsList'
    { _pvlParent         :: !Text
    , _pvlXgafv          :: !(Maybe Xgafv)
    , _pvlUploadProtocol :: !(Maybe Text)
    , _pvlAccessToken    :: !(Maybe Text)
    , _pvlUploadType     :: !(Maybe Text)
    , _pvlPageToken      :: !(Maybe Text)
    , _pvlPageSize       :: !(Maybe (Textual Int32))
    , _pvlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartnersVendorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvlParent'
--
-- * 'pvlXgafv'
--
-- * 'pvlUploadProtocol'
--
-- * 'pvlAccessToken'
--
-- * 'pvlUploadType'
--
-- * 'pvlPageToken'
--
-- * 'pvlPageSize'
--
-- * 'pvlCallback'
partnersVendorsList
    :: Text -- ^ 'pvlParent'
    -> PartnersVendorsList
partnersVendorsList pPvlParent_ =
    PartnersVendorsList'
    { _pvlParent = pPvlParent_
    , _pvlXgafv = Nothing
    , _pvlUploadProtocol = Nothing
    , _pvlAccessToken = Nothing
    , _pvlUploadType = Nothing
    , _pvlPageToken = Nothing
    , _pvlPageSize = Nothing
    , _pvlCallback = Nothing
    }

-- | Required. The resource name in the format \`partners\/[PARTNER_ID]\`.
pvlParent :: Lens' PartnersVendorsList Text
pvlParent
  = lens _pvlParent (\ s a -> s{_pvlParent = a})

-- | V1 error format.
pvlXgafv :: Lens' PartnersVendorsList (Maybe Xgafv)
pvlXgafv = lens _pvlXgafv (\ s a -> s{_pvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pvlUploadProtocol :: Lens' PartnersVendorsList (Maybe Text)
pvlUploadProtocol
  = lens _pvlUploadProtocol
      (\ s a -> s{_pvlUploadProtocol = a})

-- | OAuth access token.
pvlAccessToken :: Lens' PartnersVendorsList (Maybe Text)
pvlAccessToken
  = lens _pvlAccessToken
      (\ s a -> s{_pvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pvlUploadType :: Lens' PartnersVendorsList (Maybe Text)
pvlUploadType
  = lens _pvlUploadType
      (\ s a -> s{_pvlUploadType = a})

-- | A token identifying a page of results returned by the server.
pvlPageToken :: Lens' PartnersVendorsList (Maybe Text)
pvlPageToken
  = lens _pvlPageToken (\ s a -> s{_pvlPageToken = a})

-- | The maximum number of results to be returned.
pvlPageSize :: Lens' PartnersVendorsList (Maybe Int32)
pvlPageSize
  = lens _pvlPageSize (\ s a -> s{_pvlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pvlCallback :: Lens' PartnersVendorsList (Maybe Text)
pvlCallback
  = lens _pvlCallback (\ s a -> s{_pvlCallback = a})

instance GoogleRequest PartnersVendorsList where
        type Rs PartnersVendorsList = ListVendorsResponse
        type Scopes PartnersVendorsList = '[]
        requestClient PartnersVendorsList'{..}
          = go _pvlParent _pvlXgafv _pvlUploadProtocol
              _pvlAccessToken
              _pvlUploadType
              _pvlPageToken
              _pvlPageSize
              _pvlCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersVendorsListResource)
                      mempty
