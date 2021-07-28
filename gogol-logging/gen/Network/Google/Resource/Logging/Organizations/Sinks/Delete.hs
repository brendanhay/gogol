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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.sinks.delete@.
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
    , osdAccessToken
    , osdUploadType
    , osdSinkName
    , osdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.sinks.delete@ method which the
-- 'OrganizationsSinksDelete' request conforms to.
type OrganizationsSinksDeleteResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a sink. If the sink has a unique writer_identity, then that
-- service account is also deleted.
--
-- /See:/ 'organizationsSinksDelete' smart constructor.
data OrganizationsSinksDelete =
  OrganizationsSinksDelete'
    { _osdXgafv :: !(Maybe Xgafv)
    , _osdUploadProtocol :: !(Maybe Text)
    , _osdAccessToken :: !(Maybe Text)
    , _osdUploadType :: !(Maybe Text)
    , _osdSinkName :: !Text
    , _osdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osdXgafv'
--
-- * 'osdUploadProtocol'
--
-- * 'osdAccessToken'
--
-- * 'osdUploadType'
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
    , _osdAccessToken = Nothing
    , _osdUploadType = Nothing
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

-- | Required. The full resource name of the sink to delete, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
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
              _osdAccessToken
              _osdUploadType
              _osdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSinksDeleteResource)
                      mempty
