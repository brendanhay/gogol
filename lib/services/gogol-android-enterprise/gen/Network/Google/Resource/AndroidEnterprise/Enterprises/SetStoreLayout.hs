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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.SetStoreLayout
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the store layout for the enterprise. By default, storeLayoutType is
-- set to \"basic\" and the basic store layout is enabled. The basic layout
-- only contains apps approved by the admin, and that have been added to
-- the available product set for a user (using the setAvailableProductSet
-- call). Apps on the page are sorted in order of their product ID value.
-- If you create a custom store layout (by setting storeLayoutType =
-- \"custom\" and setting a homepage), the basic store layout is disabled.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.setStoreLayout@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.SetStoreLayout
    (
    -- * REST Resource
      EnterprisesSetStoreLayoutResource

    -- * Creating a Request
    , enterprisesSetStoreLayout
    , EnterprisesSetStoreLayout

    -- * Request Lenses
    , esslXgafv
    , esslUploadProtocol
    , esslEnterpriseId
    , esslAccessToken
    , esslUploadType
    , esslPayload
    , esslCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.setStoreLayout@ method which the
-- 'EnterprisesSetStoreLayout' request conforms to.
type EnterprisesSetStoreLayoutResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] StoreLayout :>
                             Put '[JSON] StoreLayout

-- | Sets the store layout for the enterprise. By default, storeLayoutType is
-- set to \"basic\" and the basic store layout is enabled. The basic layout
-- only contains apps approved by the admin, and that have been added to
-- the available product set for a user (using the setAvailableProductSet
-- call). Apps on the page are sorted in order of their product ID value.
-- If you create a custom store layout (by setting storeLayoutType =
-- \"custom\" and setting a homepage), the basic store layout is disabled.
--
-- /See:/ 'enterprisesSetStoreLayout' smart constructor.
data EnterprisesSetStoreLayout =
  EnterprisesSetStoreLayout'
    { _esslXgafv :: !(Maybe Xgafv)
    , _esslUploadProtocol :: !(Maybe Text)
    , _esslEnterpriseId :: !Text
    , _esslAccessToken :: !(Maybe Text)
    , _esslUploadType :: !(Maybe Text)
    , _esslPayload :: !StoreLayout
    , _esslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesSetStoreLayout' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esslXgafv'
--
-- * 'esslUploadProtocol'
--
-- * 'esslEnterpriseId'
--
-- * 'esslAccessToken'
--
-- * 'esslUploadType'
--
-- * 'esslPayload'
--
-- * 'esslCallback'
enterprisesSetStoreLayout
    :: Text -- ^ 'esslEnterpriseId'
    -> StoreLayout -- ^ 'esslPayload'
    -> EnterprisesSetStoreLayout
enterprisesSetStoreLayout pEsslEnterpriseId_ pEsslPayload_ =
  EnterprisesSetStoreLayout'
    { _esslXgafv = Nothing
    , _esslUploadProtocol = Nothing
    , _esslEnterpriseId = pEsslEnterpriseId_
    , _esslAccessToken = Nothing
    , _esslUploadType = Nothing
    , _esslPayload = pEsslPayload_
    , _esslCallback = Nothing
    }


-- | V1 error format.
esslXgafv :: Lens' EnterprisesSetStoreLayout (Maybe Xgafv)
esslXgafv
  = lens _esslXgafv (\ s a -> s{_esslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
esslUploadProtocol :: Lens' EnterprisesSetStoreLayout (Maybe Text)
esslUploadProtocol
  = lens _esslUploadProtocol
      (\ s a -> s{_esslUploadProtocol = a})

-- | The ID of the enterprise.
esslEnterpriseId :: Lens' EnterprisesSetStoreLayout Text
esslEnterpriseId
  = lens _esslEnterpriseId
      (\ s a -> s{_esslEnterpriseId = a})

-- | OAuth access token.
esslAccessToken :: Lens' EnterprisesSetStoreLayout (Maybe Text)
esslAccessToken
  = lens _esslAccessToken
      (\ s a -> s{_esslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
esslUploadType :: Lens' EnterprisesSetStoreLayout (Maybe Text)
esslUploadType
  = lens _esslUploadType
      (\ s a -> s{_esslUploadType = a})

-- | Multipart request metadata.
esslPayload :: Lens' EnterprisesSetStoreLayout StoreLayout
esslPayload
  = lens _esslPayload (\ s a -> s{_esslPayload = a})

-- | JSONP
esslCallback :: Lens' EnterprisesSetStoreLayout (Maybe Text)
esslCallback
  = lens _esslCallback (\ s a -> s{_esslCallback = a})

instance GoogleRequest EnterprisesSetStoreLayout
         where
        type Rs EnterprisesSetStoreLayout = StoreLayout
        type Scopes EnterprisesSetStoreLayout =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesSetStoreLayout'{..}
          = go _esslEnterpriseId _esslXgafv _esslUploadProtocol
              _esslAccessToken
              _esslUploadType
              _esslCallback
              (Just AltJSON)
              _esslPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesSetStoreLayoutResource)
                      mempty
