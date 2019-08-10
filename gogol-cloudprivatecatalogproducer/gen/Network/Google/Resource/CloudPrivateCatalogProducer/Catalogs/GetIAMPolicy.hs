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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets IAM policy for the specified Catalog.
--
-- /See:/ <https://sites.google.com/corp/google.com/cloudprivatecatalog Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.getIamPolicy@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.GetIAMPolicy
    (
    -- * REST Resource
      CatalogsGetIAMPolicyResource

    -- * Creating a Request
    , catalogsGetIAMPolicy
    , CatalogsGetIAMPolicy

    -- * Request Lenses
    , cgipXgafv
    , cgipUploadProtocol
    , cgipAccessToken
    , cgipUploadType
    , cgipResource
    , cgipCallback
    ) where

import           Network.Google.CloudPrivateCatalogProducer.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.getIamPolicy@ method which the
-- 'CatalogsGetIAMPolicy' request conforms to.
type CatalogsGetIAMPolicyResource =
     "v1beta1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleIAMV1Policy

-- | Gets IAM policy for the specified Catalog.
--
-- /See:/ 'catalogsGetIAMPolicy' smart constructor.
data CatalogsGetIAMPolicy =
  CatalogsGetIAMPolicy'
    { _cgipXgafv          :: !(Maybe Xgafv)
    , _cgipUploadProtocol :: !(Maybe Text)
    , _cgipAccessToken    :: !(Maybe Text)
    , _cgipUploadType     :: !(Maybe Text)
    , _cgipResource       :: !Text
    , _cgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgipXgafv'
--
-- * 'cgipUploadProtocol'
--
-- * 'cgipAccessToken'
--
-- * 'cgipUploadType'
--
-- * 'cgipResource'
--
-- * 'cgipCallback'
catalogsGetIAMPolicy
    :: Text -- ^ 'cgipResource'
    -> CatalogsGetIAMPolicy
catalogsGetIAMPolicy pCgipResource_ =
  CatalogsGetIAMPolicy'
    { _cgipXgafv = Nothing
    , _cgipUploadProtocol = Nothing
    , _cgipAccessToken = Nothing
    , _cgipUploadType = Nothing
    , _cgipResource = pCgipResource_
    , _cgipCallback = Nothing
    }


-- | V1 error format.
cgipXgafv :: Lens' CatalogsGetIAMPolicy (Maybe Xgafv)
cgipXgafv
  = lens _cgipXgafv (\ s a -> s{_cgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgipUploadProtocol :: Lens' CatalogsGetIAMPolicy (Maybe Text)
cgipUploadProtocol
  = lens _cgipUploadProtocol
      (\ s a -> s{_cgipUploadProtocol = a})

-- | OAuth access token.
cgipAccessToken :: Lens' CatalogsGetIAMPolicy (Maybe Text)
cgipAccessToken
  = lens _cgipAccessToken
      (\ s a -> s{_cgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgipUploadType :: Lens' CatalogsGetIAMPolicy (Maybe Text)
cgipUploadType
  = lens _cgipUploadType
      (\ s a -> s{_cgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
cgipResource :: Lens' CatalogsGetIAMPolicy Text
cgipResource
  = lens _cgipResource (\ s a -> s{_cgipResource = a})

-- | JSONP
cgipCallback :: Lens' CatalogsGetIAMPolicy (Maybe Text)
cgipCallback
  = lens _cgipCallback (\ s a -> s{_cgipCallback = a})

instance GoogleRequest CatalogsGetIAMPolicy where
        type Rs CatalogsGetIAMPolicy = GoogleIAMV1Policy
        type Scopes CatalogsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsGetIAMPolicy'{..}
          = go _cgipResource _cgipXgafv _cgipUploadProtocol
              _cgipAccessToken
              _cgipUploadType
              _cgipCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsGetIAMPolicyResource)
                      mempty
