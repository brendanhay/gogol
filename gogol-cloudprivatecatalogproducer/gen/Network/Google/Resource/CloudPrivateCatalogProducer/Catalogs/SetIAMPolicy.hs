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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM policy for the specified Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.setIamPolicy@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.SetIAMPolicy
    (
    -- * REST Resource
      CatalogsSetIAMPolicyResource

    -- * Creating a Request
    , catalogsSetIAMPolicy
    , CatalogsSetIAMPolicy

    -- * Request Lenses
    , csipXgafv
    , csipUploadProtocol
    , csipAccessToken
    , csipUploadType
    , csipPayload
    , csipResource
    , csipCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.setIamPolicy@ method which the
-- 'CatalogsSetIAMPolicy' request conforms to.
type CatalogsSetIAMPolicyResource =
     "v1beta1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleIAMV1SetIAMPolicyRequest :>
                       Post '[JSON] GoogleIAMV1Policy

-- | Sets the IAM policy for the specified Catalog.
--
-- /See:/ 'catalogsSetIAMPolicy' smart constructor.
data CatalogsSetIAMPolicy =
  CatalogsSetIAMPolicy'
    { _csipXgafv :: !(Maybe Xgafv)
    , _csipUploadProtocol :: !(Maybe Text)
    , _csipAccessToken :: !(Maybe Text)
    , _csipUploadType :: !(Maybe Text)
    , _csipPayload :: !GoogleIAMV1SetIAMPolicyRequest
    , _csipResource :: !Text
    , _csipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csipXgafv'
--
-- * 'csipUploadProtocol'
--
-- * 'csipAccessToken'
--
-- * 'csipUploadType'
--
-- * 'csipPayload'
--
-- * 'csipResource'
--
-- * 'csipCallback'
catalogsSetIAMPolicy
    :: GoogleIAMV1SetIAMPolicyRequest -- ^ 'csipPayload'
    -> Text -- ^ 'csipResource'
    -> CatalogsSetIAMPolicy
catalogsSetIAMPolicy pCsipPayload_ pCsipResource_ =
  CatalogsSetIAMPolicy'
    { _csipXgafv = Nothing
    , _csipUploadProtocol = Nothing
    , _csipAccessToken = Nothing
    , _csipUploadType = Nothing
    , _csipPayload = pCsipPayload_
    , _csipResource = pCsipResource_
    , _csipCallback = Nothing
    }


-- | V1 error format.
csipXgafv :: Lens' CatalogsSetIAMPolicy (Maybe Xgafv)
csipXgafv
  = lens _csipXgafv (\ s a -> s{_csipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csipUploadProtocol :: Lens' CatalogsSetIAMPolicy (Maybe Text)
csipUploadProtocol
  = lens _csipUploadProtocol
      (\ s a -> s{_csipUploadProtocol = a})

-- | OAuth access token.
csipAccessToken :: Lens' CatalogsSetIAMPolicy (Maybe Text)
csipAccessToken
  = lens _csipAccessToken
      (\ s a -> s{_csipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csipUploadType :: Lens' CatalogsSetIAMPolicy (Maybe Text)
csipUploadType
  = lens _csipUploadType
      (\ s a -> s{_csipUploadType = a})

-- | Multipart request metadata.
csipPayload :: Lens' CatalogsSetIAMPolicy GoogleIAMV1SetIAMPolicyRequest
csipPayload
  = lens _csipPayload (\ s a -> s{_csipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
csipResource :: Lens' CatalogsSetIAMPolicy Text
csipResource
  = lens _csipResource (\ s a -> s{_csipResource = a})

-- | JSONP
csipCallback :: Lens' CatalogsSetIAMPolicy (Maybe Text)
csipCallback
  = lens _csipCallback (\ s a -> s{_csipCallback = a})

instance GoogleRequest CatalogsSetIAMPolicy where
        type Rs CatalogsSetIAMPolicy = GoogleIAMV1Policy
        type Scopes CatalogsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsSetIAMPolicy'{..}
          = go _csipResource _csipXgafv _csipUploadProtocol
              _csipAccessToken
              _csipUploadType
              _csipCallback
              (Just AltJSON)
              _csipPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsSetIAMPolicyResource)
                      mempty
