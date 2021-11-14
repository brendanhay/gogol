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
-- Module      : Network.Google.Resource.Monitoring.Services.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update this Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.patch@.
module Network.Google.Resource.Monitoring.Services.Patch
    (
    -- * REST Resource
      ServicesPatchResource

    -- * Creating a Request
    , servicesPatch
    , ServicesPatch

    -- * Request Lenses
    , spXgafv
    , spUploadProtocol
    , spUpdateMask
    , spAccessToken
    , spUploadType
    , spPayload
    , spName
    , spCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.patch@ method which the
-- 'ServicesPatch' request conforms to.
type ServicesPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Service :> Patch '[JSON] Service

-- | Update this Service.
--
-- /See:/ 'servicesPatch' smart constructor.
data ServicesPatch =
  ServicesPatch'
    { _spXgafv :: !(Maybe Xgafv)
    , _spUploadProtocol :: !(Maybe Text)
    , _spUpdateMask :: !(Maybe GFieldMask)
    , _spAccessToken :: !(Maybe Text)
    , _spUploadType :: !(Maybe Text)
    , _spPayload :: !Service
    , _spName :: !Text
    , _spCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spXgafv'
--
-- * 'spUploadProtocol'
--
-- * 'spUpdateMask'
--
-- * 'spAccessToken'
--
-- * 'spUploadType'
--
-- * 'spPayload'
--
-- * 'spName'
--
-- * 'spCallback'
servicesPatch
    :: Service -- ^ 'spPayload'
    -> Text -- ^ 'spName'
    -> ServicesPatch
servicesPatch pSpPayload_ pSpName_ =
  ServicesPatch'
    { _spXgafv = Nothing
    , _spUploadProtocol = Nothing
    , _spUpdateMask = Nothing
    , _spAccessToken = Nothing
    , _spUploadType = Nothing
    , _spPayload = pSpPayload_
    , _spName = pSpName_
    , _spCallback = Nothing
    }


-- | V1 error format.
spXgafv :: Lens' ServicesPatch (Maybe Xgafv)
spXgafv = lens _spXgafv (\ s a -> s{_spXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spUploadProtocol :: Lens' ServicesPatch (Maybe Text)
spUploadProtocol
  = lens _spUploadProtocol
      (\ s a -> s{_spUploadProtocol = a})

-- | A set of field paths defining which fields to use for the update.
spUpdateMask :: Lens' ServicesPatch (Maybe GFieldMask)
spUpdateMask
  = lens _spUpdateMask (\ s a -> s{_spUpdateMask = a})

-- | OAuth access token.
spAccessToken :: Lens' ServicesPatch (Maybe Text)
spAccessToken
  = lens _spAccessToken
      (\ s a -> s{_spAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spUploadType :: Lens' ServicesPatch (Maybe Text)
spUploadType
  = lens _spUploadType (\ s a -> s{_spUploadType = a})

-- | Multipart request metadata.
spPayload :: Lens' ServicesPatch Service
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | Resource name for this Service. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]
spName :: Lens' ServicesPatch Text
spName = lens _spName (\ s a -> s{_spName = a})

-- | JSONP
spCallback :: Lens' ServicesPatch (Maybe Text)
spCallback
  = lens _spCallback (\ s a -> s{_spCallback = a})

instance GoogleRequest ServicesPatch where
        type Rs ServicesPatch = Service
        type Scopes ServicesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ServicesPatch'{..}
          = go _spName _spXgafv _spUploadProtocol _spUpdateMask
              _spAccessToken
              _spUploadType
              _spCallback
              (Just AltJSON)
              _spPayload
              monitoringService
          where go
                  = buildClient (Proxy :: Proxy ServicesPatchResource)
                      mempty
