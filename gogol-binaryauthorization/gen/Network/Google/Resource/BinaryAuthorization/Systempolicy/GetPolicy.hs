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
-- Module      : Network.Google.Resource.BinaryAuthorization.Systempolicy.GetPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current system policy in the specified location.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.systempolicy.getPolicy@.
module Network.Google.Resource.BinaryAuthorization.Systempolicy.GetPolicy
    (
    -- * REST Resource
      SystempolicyGetPolicyResource

    -- * Creating a Request
    , systempolicyGetPolicy
    , SystempolicyGetPolicy

    -- * Request Lenses
    , sgpXgafv
    , sgpUploadProtocol
    , sgpAccessToken
    , sgpUploadType
    , sgpName
    , sgpCallback
    ) where

import Network.Google.BinaryAuthorization.Types
import Network.Google.Prelude

-- | A resource alias for @binaryauthorization.systempolicy.getPolicy@ method which the
-- 'SystempolicyGetPolicy' request conforms to.
type SystempolicyGetPolicyResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the current system policy in the specified location.
--
-- /See:/ 'systempolicyGetPolicy' smart constructor.
data SystempolicyGetPolicy =
  SystempolicyGetPolicy'
    { _sgpXgafv :: !(Maybe Xgafv)
    , _sgpUploadProtocol :: !(Maybe Text)
    , _sgpAccessToken :: !(Maybe Text)
    , _sgpUploadType :: !(Maybe Text)
    , _sgpName :: !Text
    , _sgpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystempolicyGetPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgpXgafv'
--
-- * 'sgpUploadProtocol'
--
-- * 'sgpAccessToken'
--
-- * 'sgpUploadType'
--
-- * 'sgpName'
--
-- * 'sgpCallback'
systempolicyGetPolicy
    :: Text -- ^ 'sgpName'
    -> SystempolicyGetPolicy
systempolicyGetPolicy pSgpName_ =
  SystempolicyGetPolicy'
    { _sgpXgafv = Nothing
    , _sgpUploadProtocol = Nothing
    , _sgpAccessToken = Nothing
    , _sgpUploadType = Nothing
    , _sgpName = pSgpName_
    , _sgpCallback = Nothing
    }


-- | V1 error format.
sgpXgafv :: Lens' SystempolicyGetPolicy (Maybe Xgafv)
sgpXgafv = lens _sgpXgafv (\ s a -> s{_sgpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgpUploadProtocol :: Lens' SystempolicyGetPolicy (Maybe Text)
sgpUploadProtocol
  = lens _sgpUploadProtocol
      (\ s a -> s{_sgpUploadProtocol = a})

-- | OAuth access token.
sgpAccessToken :: Lens' SystempolicyGetPolicy (Maybe Text)
sgpAccessToken
  = lens _sgpAccessToken
      (\ s a -> s{_sgpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgpUploadType :: Lens' SystempolicyGetPolicy (Maybe Text)
sgpUploadType
  = lens _sgpUploadType
      (\ s a -> s{_sgpUploadType = a})

-- | Required. The resource name, in the format \`locations\/*\/policy\`.
-- Note that the system policy is not associated with a project.
sgpName :: Lens' SystempolicyGetPolicy Text
sgpName = lens _sgpName (\ s a -> s{_sgpName = a})

-- | JSONP
sgpCallback :: Lens' SystempolicyGetPolicy (Maybe Text)
sgpCallback
  = lens _sgpCallback (\ s a -> s{_sgpCallback = a})

instance GoogleRequest SystempolicyGetPolicy where
        type Rs SystempolicyGetPolicy = Policy
        type Scopes SystempolicyGetPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient SystempolicyGetPolicy'{..}
          = go _sgpName _sgpXgafv _sgpUploadProtocol
              _sgpAccessToken
              _sgpUploadType
              _sgpCallback
              (Just AltJSON)
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy SystempolicyGetPolicyResource)
                      mempty
