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
-- Module      : Network.Google.Resource.Directory.Schemas.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all schemas for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.schemas.list@.
module Network.Google.Resource.Directory.Schemas.List
    (
    -- * REST Resource
      SchemasListResource

    -- * Creating a Request
    , schemasList
    , SchemasList

    -- * Request Lenses
    , slXgafv
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slCustomerId
    , slCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.schemas.list@ method which the
-- 'SchemasList' request conforms to.
type SchemasListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Schemas

-- | Retrieves all schemas for a customer.
--
-- /See:/ 'schemasList' smart constructor.
data SchemasList =
  SchemasList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slCustomerId :: !Text
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchemasList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slCustomerId'
--
-- * 'slCallback'
schemasList
    :: Text -- ^ 'slCustomerId'
    -> SchemasList
schemasList pSlCustomerId_ =
  SchemasList'
    { _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slCustomerId = pSlCustomerId_
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' SchemasList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' SchemasList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' SchemasList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' SchemasList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | Immutable ID of the Google Workspace account.
slCustomerId :: Lens' SchemasList Text
slCustomerId
  = lens _slCustomerId (\ s a -> s{_slCustomerId = a})

-- | JSONP
slCallback :: Lens' SchemasList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest SchemasList where
        type Rs SchemasList = Schemas
        type Scopes SchemasList =
             '["https://www.googleapis.com/auth/admin.directory.userschema",
               "https://www.googleapis.com/auth/admin.directory.userschema.readonly"]
        requestClient SchemasList'{..}
          = go _slCustomerId _slXgafv _slUploadProtocol
              _slAccessToken
              _slUploadType
              _slCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasListResource)
                      mempty
