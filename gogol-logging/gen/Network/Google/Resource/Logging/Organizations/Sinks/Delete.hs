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
-- Module      : Network.Google.Resource.Logging.Organizations.Sinks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sink. If the sink has a unique writer_identity, then that
-- service account is also deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.sinks.delete@.
module Network.Google.Resource.Logging.Organizations.Sinks.Delete
    (
    -- * REST Resource
      OrganizationsSinksDeleteResource

    -- * Creating a Request
    , organizationsSinksDelete
    , OrganizationsSinksDelete

    -- * Request Lenses
    , osdXgafv
    , osdUploadProtocol
    , osdPp
    , osdAccessToken
    , osdUploadType
    , osdBearerToken
    , osdSinkName
    , osdCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.sinks.delete@ method which the
-- 'OrganizationsSinksDelete' request conforms to.
type OrganizationsSinksDeleteResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a sink. If the sink has a unique writer_identity, then that
-- service account is also deleted.
--
-- /See:/ 'organizationsSinksDelete' smart constructor.
data OrganizationsSinksDelete = OrganizationsSinksDelete'
    { _osdXgafv          :: !(Maybe Xgafv)
    , _osdUploadProtocol :: !(Maybe Text)
    , _osdPp             :: !Bool
    , _osdAccessToken    :: !(Maybe Text)
    , _osdUploadType     :: !(Maybe Text)
    , _osdBearerToken    :: !(Maybe Text)
    , _osdSinkName       :: !Text
    , _osdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osdXgafv'
--
-- * 'osdUploadProtocol'
--
-- * 'osdPp'
--
-- * 'osdAccessToken'
--
-- * 'osdUploadType'
--
-- * 'osdBearerToken'
--
-- * 'osdSinkName'
--
-- * 'osdCallback'
organizationsSinksDelete
    :: Text -- ^ 'osdSinkName'
    -> OrganizationsSinksDelete
organizationsSinksDelete pOsdSinkName_ =
    OrganizationsSinksDelete'
    { _osdXgafv = Nothing
    , _osdUploadProtocol = Nothing
    , _osdPp = True
    , _osdAccessToken = Nothing
    , _osdUploadType = Nothing
    , _osdBearerToken = Nothing
    , _osdSinkName = pOsdSinkName_
    , _osdCallback = Nothing
    }

-- | V1 error format.
osdXgafv :: Lens' OrganizationsSinksDelete (Maybe Xgafv)
osdXgafv = lens _osdXgafv (\ s a -> s{_osdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osdUploadProtocol :: Lens' OrganizationsSinksDelete (Maybe Text)
osdUploadProtocol
  = lens _osdUploadProtocol
      (\ s a -> s{_osdUploadProtocol = a})

-- | Pretty-print response.
osdPp :: Lens' OrganizationsSinksDelete Bool
osdPp = lens _osdPp (\ s a -> s{_osdPp = a})

-- | OAuth access token.
osdAccessToken :: Lens' OrganizationsSinksDelete (Maybe Text)
osdAccessToken
  = lens _osdAccessToken
      (\ s a -> s{_osdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osdUploadType :: Lens' OrganizationsSinksDelete (Maybe Text)
osdUploadType
  = lens _osdUploadType
      (\ s a -> s{_osdUploadType = a})

-- | OAuth bearer token.
osdBearerToken :: Lens' OrganizationsSinksDelete (Maybe Text)
osdBearerToken
  = lens _osdBearerToken
      (\ s a -> s{_osdBearerToken = a})

-- | Required. The full resource name of the sink to delete, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\" It is an error if
-- the sink does not exist. Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\". It is an error if the
-- sink does not exist.
osdSinkName :: Lens' OrganizationsSinksDelete Text
osdSinkName
  = lens _osdSinkName (\ s a -> s{_osdSinkName = a})

-- | JSONP
osdCallback :: Lens' OrganizationsSinksDelete (Maybe Text)
osdCallback
  = lens _osdCallback (\ s a -> s{_osdCallback = a})

instance GoogleRequest OrganizationsSinksDelete where
        type Rs OrganizationsSinksDelete = Empty
        type Scopes OrganizationsSinksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsSinksDelete'{..}
          = go _osdSinkName _osdXgafv _osdUploadProtocol
              (Just _osdPp)
              _osdAccessToken
              _osdUploadType
              _osdBearerToken
              _osdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSinksDeleteResource)
                      mempty
