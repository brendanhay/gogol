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
-- Module      : Network.Google.Resource.Genomics.Datasets.GetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for the dataset. Is empty if the policy
-- or the resource does not exist. See Getting a Policy for more
-- information.
--
-- /See:/ < Genomics API Reference> for @genomics.datasets.getIamPolicy@.
module Network.Google.Resource.Genomics.Datasets.GetIAMPolicy
    (
    -- * REST Resource
      DatasetsGetIAMPolicyResource

    -- * Creating a Request
    , datasetsGetIAMPolicy
    , DatasetsGetIAMPolicy

    -- * Request Lenses
    , dgipXgafv
    , dgipUploadProtocol
    , dgipPp
    , dgipAccessToken
    , dgipUploadType
    , dgipPayload
    , dgipBearerToken
    , dgipResource
    , dgipCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.getIamPolicy@ method which the
-- 'DatasetsGetIAMPolicy' request conforms to.
type DatasetsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GetIAMPolicyRequest :>
                           Post '[JSON] Policy

-- | Gets the access control policy for the dataset. Is empty if the policy
-- or the resource does not exist. See Getting a Policy for more
-- information.
--
-- /See:/ 'datasetsGetIAMPolicy' smart constructor.
data DatasetsGetIAMPolicy = DatasetsGetIAMPolicy
    { _dgipXgafv          :: !(Maybe Text)
    , _dgipUploadProtocol :: !(Maybe Text)
    , _dgipPp             :: !Bool
    , _dgipAccessToken    :: !(Maybe Text)
    , _dgipUploadType     :: !(Maybe Text)
    , _dgipPayload        :: !GetIAMPolicyRequest
    , _dgipBearerToken    :: !(Maybe Text)
    , _dgipResource       :: !Text
    , _dgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgipXgafv'
--
-- * 'dgipUploadProtocol'
--
-- * 'dgipPp'
--
-- * 'dgipAccessToken'
--
-- * 'dgipUploadType'
--
-- * 'dgipPayload'
--
-- * 'dgipBearerToken'
--
-- * 'dgipResource'
--
-- * 'dgipCallback'
datasetsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'dgipPayload'
    -> Text -- ^ 'dgipResource'
    -> DatasetsGetIAMPolicy
datasetsGetIAMPolicy pDgipPayload_ pDgipResource_ =
    DatasetsGetIAMPolicy
    { _dgipXgafv = Nothing
    , _dgipUploadProtocol = Nothing
    , _dgipPp = True
    , _dgipAccessToken = Nothing
    , _dgipUploadType = Nothing
    , _dgipPayload = pDgipPayload_
    , _dgipBearerToken = Nothing
    , _dgipResource = pDgipResource_
    , _dgipCallback = Nothing
    }

-- | V1 error format.
dgipXgafv :: Lens' DatasetsGetIAMPolicy (Maybe Text)
dgipXgafv
  = lens _dgipXgafv (\ s a -> s{_dgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgipUploadProtocol :: Lens' DatasetsGetIAMPolicy (Maybe Text)
dgipUploadProtocol
  = lens _dgipUploadProtocol
      (\ s a -> s{_dgipUploadProtocol = a})

-- | Pretty-print response.
dgipPp :: Lens' DatasetsGetIAMPolicy Bool
dgipPp = lens _dgipPp (\ s a -> s{_dgipPp = a})

-- | OAuth access token.
dgipAccessToken :: Lens' DatasetsGetIAMPolicy (Maybe Text)
dgipAccessToken
  = lens _dgipAccessToken
      (\ s a -> s{_dgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgipUploadType :: Lens' DatasetsGetIAMPolicy (Maybe Text)
dgipUploadType
  = lens _dgipUploadType
      (\ s a -> s{_dgipUploadType = a})

-- | Multipart request metadata.
dgipPayload :: Lens' DatasetsGetIAMPolicy GetIAMPolicyRequest
dgipPayload
  = lens _dgipPayload (\ s a -> s{_dgipPayload = a})

-- | OAuth bearer token.
dgipBearerToken :: Lens' DatasetsGetIAMPolicy (Maybe Text)
dgipBearerToken
  = lens _dgipBearerToken
      (\ s a -> s{_dgipBearerToken = a})

-- | REQUIRED: The resource for which policy is being specified. Format is
-- \`datasets\/\`.
dgipResource :: Lens' DatasetsGetIAMPolicy Text
dgipResource
  = lens _dgipResource (\ s a -> s{_dgipResource = a})

-- | JSONP
dgipCallback :: Lens' DatasetsGetIAMPolicy (Maybe Text)
dgipCallback
  = lens _dgipCallback (\ s a -> s{_dgipCallback = a})

instance GoogleRequest DatasetsGetIAMPolicy where
        type Rs DatasetsGetIAMPolicy = Policy
        requestClient DatasetsGetIAMPolicy{..}
          = go _dgipResource _dgipXgafv _dgipUploadProtocol
              (Just _dgipPp)
              _dgipAccessToken
              _dgipUploadType
              _dgipBearerToken
              _dgipCallback
              (Just AltJSON)
              _dgipPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy DatasetsGetIAMPolicyResource)
                      mempty
