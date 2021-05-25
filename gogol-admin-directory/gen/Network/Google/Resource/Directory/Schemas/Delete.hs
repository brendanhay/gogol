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
-- Module      : Network.Google.Resource.Directory.Schemas.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.schemas.delete@.
module Network.Google.Resource.Directory.Schemas.Delete
    (
    -- * REST Resource
      SchemasDeleteResource

    -- * Creating a Request
    , schemasDelete
    , SchemasDelete

    -- * Request Lenses
    , sdXgafv
    , sdUploadProtocol
    , sdAccessToken
    , sdUploadType
    , sdCustomerId
    , sdSchemaKey
    , sdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.schemas.delete@ method which the
-- 'SchemasDelete' request conforms to.
type SchemasDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a schema.
--
-- /See:/ 'schemasDelete' smart constructor.
data SchemasDelete =
  SchemasDelete'
    { _sdXgafv :: !(Maybe Xgafv)
    , _sdUploadProtocol :: !(Maybe Text)
    , _sdAccessToken :: !(Maybe Text)
    , _sdUploadType :: !(Maybe Text)
    , _sdCustomerId :: !Text
    , _sdSchemaKey :: !Text
    , _sdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchemasDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdXgafv'
--
-- * 'sdUploadProtocol'
--
-- * 'sdAccessToken'
--
-- * 'sdUploadType'
--
-- * 'sdCustomerId'
--
-- * 'sdSchemaKey'
--
-- * 'sdCallback'
schemasDelete
    :: Text -- ^ 'sdCustomerId'
    -> Text -- ^ 'sdSchemaKey'
    -> SchemasDelete
schemasDelete pSdCustomerId_ pSdSchemaKey_ =
  SchemasDelete'
    { _sdXgafv = Nothing
    , _sdUploadProtocol = Nothing
    , _sdAccessToken = Nothing
    , _sdUploadType = Nothing
    , _sdCustomerId = pSdCustomerId_
    , _sdSchemaKey = pSdSchemaKey_
    , _sdCallback = Nothing
    }


-- | V1 error format.
sdXgafv :: Lens' SchemasDelete (Maybe Xgafv)
sdXgafv = lens _sdXgafv (\ s a -> s{_sdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdUploadProtocol :: Lens' SchemasDelete (Maybe Text)
sdUploadProtocol
  = lens _sdUploadProtocol
      (\ s a -> s{_sdUploadProtocol = a})

-- | OAuth access token.
sdAccessToken :: Lens' SchemasDelete (Maybe Text)
sdAccessToken
  = lens _sdAccessToken
      (\ s a -> s{_sdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdUploadType :: Lens' SchemasDelete (Maybe Text)
sdUploadType
  = lens _sdUploadType (\ s a -> s{_sdUploadType = a})

-- | Immutable ID of the Google Workspace account.
sdCustomerId :: Lens' SchemasDelete Text
sdCustomerId
  = lens _sdCustomerId (\ s a -> s{_sdCustomerId = a})

-- | Name or immutable ID of the schema.
sdSchemaKey :: Lens' SchemasDelete Text
sdSchemaKey
  = lens _sdSchemaKey (\ s a -> s{_sdSchemaKey = a})

-- | JSONP
sdCallback :: Lens' SchemasDelete (Maybe Text)
sdCallback
  = lens _sdCallback (\ s a -> s{_sdCallback = a})

instance GoogleRequest SchemasDelete where
        type Rs SchemasDelete = ()
        type Scopes SchemasDelete =
             '["https://www.googleapis.com/auth/admin.directory.userschema"]
        requestClient SchemasDelete'{..}
          = go _sdCustomerId _sdSchemaKey _sdXgafv
              _sdUploadProtocol
              _sdAccessToken
              _sdUploadType
              _sdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasDeleteResource)
                      mempty
