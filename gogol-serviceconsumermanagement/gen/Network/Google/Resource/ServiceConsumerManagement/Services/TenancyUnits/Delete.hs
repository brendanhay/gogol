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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a tenancy unit. Before you delete the tenancy unit, there should
-- be no tenant resources in it that aren\'t in a DELETED state. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.delete@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.Delete
    (
    -- * REST Resource
      ServicesTenancyUnitsDeleteResource

    -- * Creating a Request
    , servicesTenancyUnitsDelete
    , ServicesTenancyUnitsDelete

    -- * Request Lenses
    , studXgafv
    , studUploadProtocol
    , studAccessToken
    , studUploadType
    , studName
    , studCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.delete@ method which the
-- 'ServicesTenancyUnitsDelete' request conforms to.
type ServicesTenancyUnitsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Delete a tenancy unit. Before you delete the tenancy unit, there should
-- be no tenant resources in it that aren\'t in a DELETED state. Operation.
--
-- /See:/ 'servicesTenancyUnitsDelete' smart constructor.
data ServicesTenancyUnitsDelete =
  ServicesTenancyUnitsDelete'
    { _studXgafv :: !(Maybe Xgafv)
    , _studUploadProtocol :: !(Maybe Text)
    , _studAccessToken :: !(Maybe Text)
    , _studUploadType :: !(Maybe Text)
    , _studName :: !Text
    , _studCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'studXgafv'
--
-- * 'studUploadProtocol'
--
-- * 'studAccessToken'
--
-- * 'studUploadType'
--
-- * 'studName'
--
-- * 'studCallback'
servicesTenancyUnitsDelete
    :: Text -- ^ 'studName'
    -> ServicesTenancyUnitsDelete
servicesTenancyUnitsDelete pStudName_ =
  ServicesTenancyUnitsDelete'
    { _studXgafv = Nothing
    , _studUploadProtocol = Nothing
    , _studAccessToken = Nothing
    , _studUploadType = Nothing
    , _studName = pStudName_
    , _studCallback = Nothing
    }


-- | V1 error format.
studXgafv :: Lens' ServicesTenancyUnitsDelete (Maybe Xgafv)
studXgafv
  = lens _studXgafv (\ s a -> s{_studXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
studUploadProtocol :: Lens' ServicesTenancyUnitsDelete (Maybe Text)
studUploadProtocol
  = lens _studUploadProtocol
      (\ s a -> s{_studUploadProtocol = a})

-- | OAuth access token.
studAccessToken :: Lens' ServicesTenancyUnitsDelete (Maybe Text)
studAccessToken
  = lens _studAccessToken
      (\ s a -> s{_studAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
studUploadType :: Lens' ServicesTenancyUnitsDelete (Maybe Text)
studUploadType
  = lens _studUploadType
      (\ s a -> s{_studUploadType = a})

-- | Required. Name of the tenancy unit to be deleted.
studName :: Lens' ServicesTenancyUnitsDelete Text
studName = lens _studName (\ s a -> s{_studName = a})

-- | JSONP
studCallback :: Lens' ServicesTenancyUnitsDelete (Maybe Text)
studCallback
  = lens _studCallback (\ s a -> s{_studCallback = a})

instance GoogleRequest ServicesTenancyUnitsDelete
         where
        type Rs ServicesTenancyUnitsDelete = Operation
        type Scopes ServicesTenancyUnitsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ServicesTenancyUnitsDelete'{..}
          = go _studName _studXgafv _studUploadProtocol
              _studAccessToken
              _studUploadType
              _studCallback
              (Just AltJSON)
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesTenancyUnitsDeleteResource)
                      mempty
