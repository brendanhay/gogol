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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.operations.get@.
module Network.Google.Resource.SecurityCenter.Organizations.Operations.Get
    (
    -- * REST Resource
      OrganizationsOperationsGetResource

    -- * Creating a Request
    , organizationsOperationsGet
    , OrganizationsOperationsGet

    -- * Request Lenses
    , oogXgafv
    , oogUploadProtocol
    , oogAccessToken
    , oogUploadType
    , oogName
    , oogCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.operations.get@ method which the
-- 'OrganizationsOperationsGet' request conforms to.
type OrganizationsOperationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'organizationsOperationsGet' smart constructor.
data OrganizationsOperationsGet =
  OrganizationsOperationsGet'
    { _oogXgafv          :: !(Maybe Xgafv)
    , _oogUploadProtocol :: !(Maybe Text)
    , _oogAccessToken    :: !(Maybe Text)
    , _oogUploadType     :: !(Maybe Text)
    , _oogName           :: !Text
    , _oogCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oogXgafv'
--
-- * 'oogUploadProtocol'
--
-- * 'oogAccessToken'
--
-- * 'oogUploadType'
--
-- * 'oogName'
--
-- * 'oogCallback'
organizationsOperationsGet
    :: Text -- ^ 'oogName'
    -> OrganizationsOperationsGet
organizationsOperationsGet pOogName_ =
  OrganizationsOperationsGet'
    { _oogXgafv = Nothing
    , _oogUploadProtocol = Nothing
    , _oogAccessToken = Nothing
    , _oogUploadType = Nothing
    , _oogName = pOogName_
    , _oogCallback = Nothing
    }


-- | V1 error format.
oogXgafv :: Lens' OrganizationsOperationsGet (Maybe Xgafv)
oogXgafv = lens _oogXgafv (\ s a -> s{_oogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oogUploadProtocol :: Lens' OrganizationsOperationsGet (Maybe Text)
oogUploadProtocol
  = lens _oogUploadProtocol
      (\ s a -> s{_oogUploadProtocol = a})

-- | OAuth access token.
oogAccessToken :: Lens' OrganizationsOperationsGet (Maybe Text)
oogAccessToken
  = lens _oogAccessToken
      (\ s a -> s{_oogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oogUploadType :: Lens' OrganizationsOperationsGet (Maybe Text)
oogUploadType
  = lens _oogUploadType
      (\ s a -> s{_oogUploadType = a})

-- | The name of the operation resource.
oogName :: Lens' OrganizationsOperationsGet Text
oogName = lens _oogName (\ s a -> s{_oogName = a})

-- | JSONP
oogCallback :: Lens' OrganizationsOperationsGet (Maybe Text)
oogCallback
  = lens _oogCallback (\ s a -> s{_oogCallback = a})

instance GoogleRequest OrganizationsOperationsGet
         where
        type Rs OrganizationsOperationsGet = Operation
        type Scopes OrganizationsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsOperationsGet'{..}
          = go _oogName _oogXgafv _oogUploadProtocol
              _oogAccessToken
              _oogUploadType
              _oogCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsOperationsGetResource)
                      mempty
