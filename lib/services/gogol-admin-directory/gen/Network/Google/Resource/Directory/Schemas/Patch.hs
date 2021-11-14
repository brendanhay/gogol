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
-- Module      : Network.Google.Resource.Directory.Schemas.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.schemas.patch@.
module Network.Google.Resource.Directory.Schemas.Patch
    (
    -- * REST Resource
      SchemasPatchResource

    -- * Creating a Request
    , schemasPatch
    , SchemasPatch

    -- * Request Lenses
    , spXgafv
    , spUploadProtocol
    , spAccessToken
    , spUploadType
    , spPayload
    , spCustomerId
    , spSchemaKey
    , spCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.schemas.patch@ method which the
-- 'SchemasPatch' request conforms to.
type SchemasPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 Capture "schemaKey" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Schema :> Patch '[JSON] Schema

-- | Patches a schema.
--
-- /See:/ 'schemasPatch' smart constructor.
data SchemasPatch =
  SchemasPatch'
    { _spXgafv :: !(Maybe Xgafv)
    , _spUploadProtocol :: !(Maybe Text)
    , _spAccessToken :: !(Maybe Text)
    , _spUploadType :: !(Maybe Text)
    , _spPayload :: !Schema
    , _spCustomerId :: !Text
    , _spSchemaKey :: !Text
    , _spCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchemasPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spXgafv'
--
-- * 'spUploadProtocol'
--
-- * 'spAccessToken'
--
-- * 'spUploadType'
--
-- * 'spPayload'
--
-- * 'spCustomerId'
--
-- * 'spSchemaKey'
--
-- * 'spCallback'
schemasPatch
    :: Schema -- ^ 'spPayload'
    -> Text -- ^ 'spCustomerId'
    -> Text -- ^ 'spSchemaKey'
    -> SchemasPatch
schemasPatch pSpPayload_ pSpCustomerId_ pSpSchemaKey_ =
  SchemasPatch'
    { _spXgafv = Nothing
    , _spUploadProtocol = Nothing
    , _spAccessToken = Nothing
    , _spUploadType = Nothing
    , _spPayload = pSpPayload_
    , _spCustomerId = pSpCustomerId_
    , _spSchemaKey = pSpSchemaKey_
    , _spCallback = Nothing
    }


-- | V1 error format.
spXgafv :: Lens' SchemasPatch (Maybe Xgafv)
spXgafv = lens _spXgafv (\ s a -> s{_spXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spUploadProtocol :: Lens' SchemasPatch (Maybe Text)
spUploadProtocol
  = lens _spUploadProtocol
      (\ s a -> s{_spUploadProtocol = a})

-- | OAuth access token.
spAccessToken :: Lens' SchemasPatch (Maybe Text)
spAccessToken
  = lens _spAccessToken
      (\ s a -> s{_spAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spUploadType :: Lens' SchemasPatch (Maybe Text)
spUploadType
  = lens _spUploadType (\ s a -> s{_spUploadType = a})

-- | Multipart request metadata.
spPayload :: Lens' SchemasPatch Schema
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | Immutable ID of the Google Workspace account.
spCustomerId :: Lens' SchemasPatch Text
spCustomerId
  = lens _spCustomerId (\ s a -> s{_spCustomerId = a})

-- | Name or immutable ID of the schema.
spSchemaKey :: Lens' SchemasPatch Text
spSchemaKey
  = lens _spSchemaKey (\ s a -> s{_spSchemaKey = a})

-- | JSONP
spCallback :: Lens' SchemasPatch (Maybe Text)
spCallback
  = lens _spCallback (\ s a -> s{_spCallback = a})

instance GoogleRequest SchemasPatch where
        type Rs SchemasPatch = Schema
        type Scopes SchemasPatch =
             '["https://www.googleapis.com/auth/admin.directory.userschema"]
        requestClient SchemasPatch'{..}
          = go _spCustomerId _spSchemaKey _spXgafv
              _spUploadProtocol
              _spAccessToken
              _spUploadType
              _spCallback
              (Just AltJSON)
              _spPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasPatchResource)
                      mempty
