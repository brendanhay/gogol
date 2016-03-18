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
-- Module      : Network.Google.Resource.Genomics.DataSets.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified dataset. Replaces any
-- existing policy. For the definitions of datasets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- See Setting a Policy for more information.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.datasets.setIamPolicy@.
module Network.Google.Resource.Genomics.DataSets.SetIAMPolicy
    (
    -- * REST Resource
      DataSetsSetIAMPolicyResource

    -- * Creating a Request
    , dataSetsSetIAMPolicy
    , DataSetsSetIAMPolicy

    -- * Request Lenses
    , dssipXgafv
    , dssipUploadProtocol
    , dssipPp
    , dssipAccessToken
    , dssipUploadType
    , dssipPayload
    , dssipBearerToken
    , dssipResource
    , dssipCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.setIamPolicy@ method which the
-- 'DataSetsSetIAMPolicy' request conforms to.
type DataSetsSetIAMPolicyResource =
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
-- existing policy. For the definitions of datasets and other genomics
-- resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- See Setting a Policy for more information.
--
-- /See:/ 'dataSetsSetIAMPolicy' smart constructor.
data DataSetsSetIAMPolicy = DataSetsSetIAMPolicy
    { _dssipXgafv          :: !(Maybe Text)
    , _dssipUploadProtocol :: !(Maybe Text)
    , _dssipPp             :: !Bool
    , _dssipAccessToken    :: !(Maybe Text)
    , _dssipUploadType     :: !(Maybe Text)
    , _dssipPayload        :: !SetIAMPolicyRequest
    , _dssipBearerToken    :: !(Maybe Text)
    , _dssipResource       :: !Text
    , _dssipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssipXgafv'
--
-- * 'dssipUploadProtocol'
--
-- * 'dssipPp'
--
-- * 'dssipAccessToken'
--
-- * 'dssipUploadType'
--
-- * 'dssipPayload'
--
-- * 'dssipBearerToken'
--
-- * 'dssipResource'
--
-- * 'dssipCallback'
dataSetsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'dssipPayload'
    -> Text -- ^ 'dssipResource'
    -> DataSetsSetIAMPolicy
dataSetsSetIAMPolicy pDssipPayload_ pDssipResource_ =
    DataSetsSetIAMPolicy
    { _dssipXgafv = Nothing
    , _dssipUploadProtocol = Nothing
    , _dssipPp = True
    , _dssipAccessToken = Nothing
    , _dssipUploadType = Nothing
    , _dssipPayload = pDssipPayload_
    , _dssipBearerToken = Nothing
    , _dssipResource = pDssipResource_
    , _dssipCallback = Nothing
    }

-- | V1 error format.
dssipXgafv :: Lens' DataSetsSetIAMPolicy (Maybe Text)
dssipXgafv
  = lens _dssipXgafv (\ s a -> s{_dssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dssipUploadProtocol :: Lens' DataSetsSetIAMPolicy (Maybe Text)
dssipUploadProtocol
  = lens _dssipUploadProtocol
      (\ s a -> s{_dssipUploadProtocol = a})

-- | Pretty-print response.
dssipPp :: Lens' DataSetsSetIAMPolicy Bool
dssipPp = lens _dssipPp (\ s a -> s{_dssipPp = a})

-- | OAuth access token.
dssipAccessToken :: Lens' DataSetsSetIAMPolicy (Maybe Text)
dssipAccessToken
  = lens _dssipAccessToken
      (\ s a -> s{_dssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dssipUploadType :: Lens' DataSetsSetIAMPolicy (Maybe Text)
dssipUploadType
  = lens _dssipUploadType
      (\ s a -> s{_dssipUploadType = a})

-- | Multipart request metadata.
dssipPayload :: Lens' DataSetsSetIAMPolicy SetIAMPolicyRequest
dssipPayload
  = lens _dssipPayload (\ s a -> s{_dssipPayload = a})

-- | OAuth bearer token.
dssipBearerToken :: Lens' DataSetsSetIAMPolicy (Maybe Text)
dssipBearerToken
  = lens _dssipBearerToken
      (\ s a -> s{_dssipBearerToken = a})

-- | REQUIRED: The resource for which policy is being specified. Format is
-- \`datasets\/\`.
dssipResource :: Lens' DataSetsSetIAMPolicy Text
dssipResource
  = lens _dssipResource
      (\ s a -> s{_dssipResource = a})

-- | JSONP
dssipCallback :: Lens' DataSetsSetIAMPolicy (Maybe Text)
dssipCallback
  = lens _dssipCallback
      (\ s a -> s{_dssipCallback = a})

instance GoogleRequest DataSetsSetIAMPolicy where
        type Rs DataSetsSetIAMPolicy = Policy
        requestClient DataSetsSetIAMPolicy{..}
          = go _dssipResource _dssipXgafv _dssipUploadProtocol
              (Just _dssipPp)
              _dssipAccessToken
              _dssipUploadType
              _dssipBearerToken
              _dssipCallback
              (Just AltJSON)
              _dssipPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy DataSetsSetIAMPolicyResource)
                      mempty
