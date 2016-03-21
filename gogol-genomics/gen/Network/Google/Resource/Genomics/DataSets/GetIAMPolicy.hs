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
-- Module      : Network.Google.Resource.Genomics.DataSets.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for the dataset. This is empty if the
-- policy or resource does not exist. See Getting a Policy for more
-- information. For the definitions of datasets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.datasets.getIamPolicy@.
module Network.Google.Resource.Genomics.DataSets.GetIAMPolicy
    (
    -- * REST Resource
      DataSetsGetIAMPolicyResource

    -- * Creating a Request
    , dataSetsGetIAMPolicy
    , DataSetsGetIAMPolicy

    -- * Request Lenses
    , dsgipXgafv
    , dsgipUploadProtocol
    , dsgipPp
    , dsgipAccessToken
    , dsgipUploadType
    , dsgipPayload
    , dsgipBearerToken
    , dsgipResource
    , dsgipCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.getIamPolicy@ method which the
-- 'DataSetsGetIAMPolicy' request conforms to.
type DataSetsGetIAMPolicyResource =
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

-- | Gets the access control policy for the dataset. This is empty if the
-- policy or resource does not exist. See Getting a Policy for more
-- information. For the definitions of datasets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'dataSetsGetIAMPolicy' smart constructor.
data DataSetsGetIAMPolicy = DataSetsGetIAMPolicy'
    { _dsgipXgafv          :: !(Maybe Text)
    , _dsgipUploadProtocol :: !(Maybe Text)
    , _dsgipPp             :: !Bool
    , _dsgipAccessToken    :: !(Maybe Text)
    , _dsgipUploadType     :: !(Maybe Text)
    , _dsgipPayload        :: !GetIAMPolicyRequest
    , _dsgipBearerToken    :: !(Maybe Text)
    , _dsgipResource       :: !Text
    , _dsgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgipXgafv'
--
-- * 'dsgipUploadProtocol'
--
-- * 'dsgipPp'
--
-- * 'dsgipAccessToken'
--
-- * 'dsgipUploadType'
--
-- * 'dsgipPayload'
--
-- * 'dsgipBearerToken'
--
-- * 'dsgipResource'
--
-- * 'dsgipCallback'
dataSetsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'dsgipPayload'
    -> Text -- ^ 'dsgipResource'
    -> DataSetsGetIAMPolicy
dataSetsGetIAMPolicy pDsgipPayload_ pDsgipResource_ =
    DataSetsGetIAMPolicy'
    { _dsgipXgafv = Nothing
    , _dsgipUploadProtocol = Nothing
    , _dsgipPp = True
    , _dsgipAccessToken = Nothing
    , _dsgipUploadType = Nothing
    , _dsgipPayload = pDsgipPayload_
    , _dsgipBearerToken = Nothing
    , _dsgipResource = pDsgipResource_
    , _dsgipCallback = Nothing
    }

-- | V1 error format.
dsgipXgafv :: Lens' DataSetsGetIAMPolicy (Maybe Text)
dsgipXgafv
  = lens _dsgipXgafv (\ s a -> s{_dsgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsgipUploadProtocol :: Lens' DataSetsGetIAMPolicy (Maybe Text)
dsgipUploadProtocol
  = lens _dsgipUploadProtocol
      (\ s a -> s{_dsgipUploadProtocol = a})

-- | Pretty-print response.
dsgipPp :: Lens' DataSetsGetIAMPolicy Bool
dsgipPp = lens _dsgipPp (\ s a -> s{_dsgipPp = a})

-- | OAuth access token.
dsgipAccessToken :: Lens' DataSetsGetIAMPolicy (Maybe Text)
dsgipAccessToken
  = lens _dsgipAccessToken
      (\ s a -> s{_dsgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsgipUploadType :: Lens' DataSetsGetIAMPolicy (Maybe Text)
dsgipUploadType
  = lens _dsgipUploadType
      (\ s a -> s{_dsgipUploadType = a})

-- | Multipart request metadata.
dsgipPayload :: Lens' DataSetsGetIAMPolicy GetIAMPolicyRequest
dsgipPayload
  = lens _dsgipPayload (\ s a -> s{_dsgipPayload = a})

-- | OAuth bearer token.
dsgipBearerToken :: Lens' DataSetsGetIAMPolicy (Maybe Text)
dsgipBearerToken
  = lens _dsgipBearerToken
      (\ s a -> s{_dsgipBearerToken = a})

-- | REQUIRED: The resource for which policy is being specified. Format is
-- \`datasets\/\`.
dsgipResource :: Lens' DataSetsGetIAMPolicy Text
dsgipResource
  = lens _dsgipResource
      (\ s a -> s{_dsgipResource = a})

-- | JSONP
dsgipCallback :: Lens' DataSetsGetIAMPolicy (Maybe Text)
dsgipCallback
  = lens _dsgipCallback
      (\ s a -> s{_dsgipCallback = a})

instance GoogleRequest DataSetsGetIAMPolicy where
        type Rs DataSetsGetIAMPolicy = Policy
        type Scopes DataSetsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient DataSetsGetIAMPolicy'{..}
          = go _dsgipResource _dsgipXgafv _dsgipUploadProtocol
              (Just _dsgipPp)
              _dsgipAccessToken
              _dsgipUploadType
              _dsgipBearerToken
              _dsgipCallback
              (Just AltJSON)
              _dsgipPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy DataSetsGetIAMPolicyResource)
                      mempty
