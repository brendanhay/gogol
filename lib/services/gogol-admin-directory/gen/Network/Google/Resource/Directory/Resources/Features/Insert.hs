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
-- Module      : Network.Google.Resource.Directory.Resources.Features.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.features.insert@.
module Network.Google.Resource.Directory.Resources.Features.Insert
    (
    -- * REST Resource
      ResourcesFeaturesInsertResource

    -- * Creating a Request
    , resourcesFeaturesInsert
    , ResourcesFeaturesInsert

    -- * Request Lenses
    , rfiXgafv
    , rfiUploadProtocol
    , rfiAccessToken
    , rfiUploadType
    , rfiPayload
    , rfiCustomer
    , rfiCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.features.insert@ method which the
-- 'ResourcesFeaturesInsert' request conforms to.
type ResourcesFeaturesInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Feature :> Post '[JSON] Feature

-- | Inserts a feature.
--
-- /See:/ 'resourcesFeaturesInsert' smart constructor.
data ResourcesFeaturesInsert =
  ResourcesFeaturesInsert'
    { _rfiXgafv :: !(Maybe Xgafv)
    , _rfiUploadProtocol :: !(Maybe Text)
    , _rfiAccessToken :: !(Maybe Text)
    , _rfiUploadType :: !(Maybe Text)
    , _rfiPayload :: !Feature
    , _rfiCustomer :: !Text
    , _rfiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesFeaturesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfiXgafv'
--
-- * 'rfiUploadProtocol'
--
-- * 'rfiAccessToken'
--
-- * 'rfiUploadType'
--
-- * 'rfiPayload'
--
-- * 'rfiCustomer'
--
-- * 'rfiCallback'
resourcesFeaturesInsert
    :: Feature -- ^ 'rfiPayload'
    -> Text -- ^ 'rfiCustomer'
    -> ResourcesFeaturesInsert
resourcesFeaturesInsert pRfiPayload_ pRfiCustomer_ =
  ResourcesFeaturesInsert'
    { _rfiXgafv = Nothing
    , _rfiUploadProtocol = Nothing
    , _rfiAccessToken = Nothing
    , _rfiUploadType = Nothing
    , _rfiPayload = pRfiPayload_
    , _rfiCustomer = pRfiCustomer_
    , _rfiCallback = Nothing
    }


-- | V1 error format.
rfiXgafv :: Lens' ResourcesFeaturesInsert (Maybe Xgafv)
rfiXgafv = lens _rfiXgafv (\ s a -> s{_rfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rfiUploadProtocol :: Lens' ResourcesFeaturesInsert (Maybe Text)
rfiUploadProtocol
  = lens _rfiUploadProtocol
      (\ s a -> s{_rfiUploadProtocol = a})

-- | OAuth access token.
rfiAccessToken :: Lens' ResourcesFeaturesInsert (Maybe Text)
rfiAccessToken
  = lens _rfiAccessToken
      (\ s a -> s{_rfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rfiUploadType :: Lens' ResourcesFeaturesInsert (Maybe Text)
rfiUploadType
  = lens _rfiUploadType
      (\ s a -> s{_rfiUploadType = a})

-- | Multipart request metadata.
rfiPayload :: Lens' ResourcesFeaturesInsert Feature
rfiPayload
  = lens _rfiPayload (\ s a -> s{_rfiPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rfiCustomer :: Lens' ResourcesFeaturesInsert Text
rfiCustomer
  = lens _rfiCustomer (\ s a -> s{_rfiCustomer = a})

-- | JSONP
rfiCallback :: Lens' ResourcesFeaturesInsert (Maybe Text)
rfiCallback
  = lens _rfiCallback (\ s a -> s{_rfiCallback = a})

instance GoogleRequest ResourcesFeaturesInsert where
        type Rs ResourcesFeaturesInsert = Feature
        type Scopes ResourcesFeaturesInsert =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesInsert'{..}
          = go _rfiCustomer _rfiXgafv _rfiUploadProtocol
              _rfiAccessToken
              _rfiUploadType
              _rfiCallback
              (Just AltJSON)
              _rfiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesInsertResource)
                      mempty
