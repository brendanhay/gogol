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
-- Module      : Network.Google.Resource.Genomics.Datasets.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the access control policy on the specified dataset. Replaces any
-- existing policy. See Setting a Policy for more information.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsSetIAMPolicy@.
module Network.Google.Resource.Genomics.Datasets.SetIAMPolicy
    (
    -- * REST Resource
      DatasetsSetIAMPolicyResource

    -- * Creating a Request
    , datasetsSetIAMPolicy'
    , DatasetsSetIAMPolicy'

    -- * Request Lenses
    , dsipXgafv
    , dsipUploadProtocol
    , dsipPp
    , dsipAccessToken
    , dsipUploadType
    , dsipPayload
    , dsipBearerToken
    , dsipResource
    , dsipCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsSetIAMPolicy@ method which the
-- 'DatasetsSetIAMPolicy'' request conforms to.
type DatasetsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SetIAMPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified dataset. Replaces any
-- existing policy. See Setting a Policy for more information.
--
-- /See:/ 'datasetsSetIAMPolicy'' smart constructor.
data DatasetsSetIAMPolicy' = DatasetsSetIAMPolicy'
    { _dsipXgafv          :: !(Maybe Text)
    , _dsipUploadProtocol :: !(Maybe Text)
    , _dsipPp             :: !Bool
    , _dsipAccessToken    :: !(Maybe Text)
    , _dsipUploadType     :: !(Maybe Text)
    , _dsipPayload        :: !SetIAMPolicyRequest
    , _dsipBearerToken    :: !(Maybe Text)
    , _dsipResource       :: !Text
    , _dsipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsSetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsipXgafv'
--
-- * 'dsipUploadProtocol'
--
-- * 'dsipPp'
--
-- * 'dsipAccessToken'
--
-- * 'dsipUploadType'
--
-- * 'dsipPayload'
--
-- * 'dsipBearerToken'
--
-- * 'dsipResource'
--
-- * 'dsipCallback'
datasetsSetIAMPolicy'
    :: SetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> DatasetsSetIAMPolicy'
datasetsSetIAMPolicy' pDsipPayload_ pDsipResource_ =
    DatasetsSetIAMPolicy'
    { _dsipXgafv = Nothing
    , _dsipUploadProtocol = Nothing
    , _dsipPp = True
    , _dsipAccessToken = Nothing
    , _dsipUploadType = Nothing
    , _dsipPayload = pDsipPayload_
    , _dsipBearerToken = Nothing
    , _dsipResource = pDsipResource_
    , _dsipCallback = Nothing
    }

-- | V1 error format.
dsipXgafv :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipXgafv
  = lens _dsipXgafv (\ s a -> s{_dsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsipUploadProtocol :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipUploadProtocol
  = lens _dsipUploadProtocol
      (\ s a -> s{_dsipUploadProtocol = a})

-- | Pretty-print response.
dsipPp :: Lens' DatasetsSetIAMPolicy' Bool
dsipPp = lens _dsipPp (\ s a -> s{_dsipPp = a})

-- | OAuth access token.
dsipAccessToken :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipAccessToken
  = lens _dsipAccessToken
      (\ s a -> s{_dsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsipUploadType :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipUploadType
  = lens _dsipUploadType
      (\ s a -> s{_dsipUploadType = a})

-- | Multipart request metadata.
dsipPayload :: Lens' DatasetsSetIAMPolicy' SetIAMPolicyRequest
dsipPayload
  = lens _dsipPayload (\ s a -> s{_dsipPayload = a})

-- | OAuth bearer token.
dsipBearerToken :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipBearerToken
  = lens _dsipBearerToken
      (\ s a -> s{_dsipBearerToken = a})

-- | REQUIRED: The resource for which policy is being specified. Format is
-- \`datasets\/\`.
dsipResource :: Lens' DatasetsSetIAMPolicy' Text
dsipResource
  = lens _dsipResource (\ s a -> s{_dsipResource = a})

-- | JSONP
dsipCallback :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipCallback
  = lens _dsipCallback (\ s a -> s{_dsipCallback = a})

instance GoogleRequest DatasetsSetIAMPolicy' where
        type Rs DatasetsSetIAMPolicy' = Policy
        requestClient DatasetsSetIAMPolicy'{..}
          = go _dsipResource _dsipXgafv _dsipUploadProtocol
              (Just _dsipPp)
              _dsipAccessToken
              _dsipUploadType
              _dsipBearerToken
              _dsipCallback
              (Just AltJSON)
              _dsipPayload
              genomics
          where go
                  = buildClient
                      (Proxy :: Proxy DatasetsSetIAMPolicyResource)
                      mempty
