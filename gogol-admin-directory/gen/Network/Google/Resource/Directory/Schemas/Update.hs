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
-- Module      : Network.Google.Resource.Directory.Schemas.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.schemas.update@.
module Network.Google.Resource.Directory.Schemas.Update
    (
    -- * REST Resource
      SchemasUpdateResource

    -- * Creating a Request
    , schemasUpdate
    , SchemasUpdate

    -- * Request Lenses
    , suXgafv
    , suUploadProtocol
    , suAccessToken
    , suUploadType
    , suPayload
    , suCustomerId
    , suSchemaKey
    , suCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.schemas.update@ method which the
-- 'SchemasUpdate' request conforms to.
type SchemasUpdateResource =
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
                               ReqBody '[JSON] Schema :> Put '[JSON] Schema

-- | Updates a schema.
--
-- /See:/ 'schemasUpdate' smart constructor.
data SchemasUpdate =
  SchemasUpdate'
    { _suXgafv :: !(Maybe Xgafv)
    , _suUploadProtocol :: !(Maybe Text)
    , _suAccessToken :: !(Maybe Text)
    , _suUploadType :: !(Maybe Text)
    , _suPayload :: !Schema
    , _suCustomerId :: !Text
    , _suSchemaKey :: !Text
    , _suCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchemasUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suXgafv'
--
-- * 'suUploadProtocol'
--
-- * 'suAccessToken'
--
-- * 'suUploadType'
--
-- * 'suPayload'
--
-- * 'suCustomerId'
--
-- * 'suSchemaKey'
--
-- * 'suCallback'
schemasUpdate
    :: Schema -- ^ 'suPayload'
    -> Text -- ^ 'suCustomerId'
    -> Text -- ^ 'suSchemaKey'
    -> SchemasUpdate
schemasUpdate pSuPayload_ pSuCustomerId_ pSuSchemaKey_ =
  SchemasUpdate'
    { _suXgafv = Nothing
    , _suUploadProtocol = Nothing
    , _suAccessToken = Nothing
    , _suUploadType = Nothing
    , _suPayload = pSuPayload_
    , _suCustomerId = pSuCustomerId_
    , _suSchemaKey = pSuSchemaKey_
    , _suCallback = Nothing
    }


-- | V1 error format.
suXgafv :: Lens' SchemasUpdate (Maybe Xgafv)
suXgafv = lens _suXgafv (\ s a -> s{_suXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
suUploadProtocol :: Lens' SchemasUpdate (Maybe Text)
suUploadProtocol
  = lens _suUploadProtocol
      (\ s a -> s{_suUploadProtocol = a})

-- | OAuth access token.
suAccessToken :: Lens' SchemasUpdate (Maybe Text)
suAccessToken
  = lens _suAccessToken
      (\ s a -> s{_suAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
suUploadType :: Lens' SchemasUpdate (Maybe Text)
suUploadType
  = lens _suUploadType (\ s a -> s{_suUploadType = a})

-- | Multipart request metadata.
suPayload :: Lens' SchemasUpdate Schema
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | Immutable ID of the Google Workspace account.
suCustomerId :: Lens' SchemasUpdate Text
suCustomerId
  = lens _suCustomerId (\ s a -> s{_suCustomerId = a})

-- | Name or immutable ID of the schema.
suSchemaKey :: Lens' SchemasUpdate Text
suSchemaKey
  = lens _suSchemaKey (\ s a -> s{_suSchemaKey = a})

-- | JSONP
suCallback :: Lens' SchemasUpdate (Maybe Text)
suCallback
  = lens _suCallback (\ s a -> s{_suCallback = a})

instance GoogleRequest SchemasUpdate where
        type Rs SchemasUpdate = Schema
        type Scopes SchemasUpdate =
             '["https://www.googleapis.com/auth/admin.directory.userschema"]
        requestClient SchemasUpdate'{..}
          = go _suCustomerId _suSchemaKey _suXgafv
              _suUploadProtocol
              _suAccessToken
              _suUploadType
              _suCallback
              (Just AltJSON)
              _suPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasUpdateResource)
                      mempty
