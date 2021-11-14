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
-- Module      : Network.Google.Resource.Directory.Schemas.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.schemas.insert@.
module Network.Google.Resource.Directory.Schemas.Insert
    (
    -- * REST Resource
      SchemasInsertResource

    -- * Creating a Request
    , schemasInsert
    , SchemasInsert

    -- * Request Lenses
    , siXgafv
    , siUploadProtocol
    , siAccessToken
    , siUploadType
    , siPayload
    , siCustomerId
    , siCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.schemas.insert@ method which the
-- 'SchemasInsert' request conforms to.
type SchemasInsertResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Schema :> Post '[JSON] Schema

-- | Creates a schema.
--
-- /See:/ 'schemasInsert' smart constructor.
data SchemasInsert =
  SchemasInsert'
    { _siXgafv :: !(Maybe Xgafv)
    , _siUploadProtocol :: !(Maybe Text)
    , _siAccessToken :: !(Maybe Text)
    , _siUploadType :: !(Maybe Text)
    , _siPayload :: !Schema
    , _siCustomerId :: !Text
    , _siCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchemasInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siXgafv'
--
-- * 'siUploadProtocol'
--
-- * 'siAccessToken'
--
-- * 'siUploadType'
--
-- * 'siPayload'
--
-- * 'siCustomerId'
--
-- * 'siCallback'
schemasInsert
    :: Schema -- ^ 'siPayload'
    -> Text -- ^ 'siCustomerId'
    -> SchemasInsert
schemasInsert pSiPayload_ pSiCustomerId_ =
  SchemasInsert'
    { _siXgafv = Nothing
    , _siUploadProtocol = Nothing
    , _siAccessToken = Nothing
    , _siUploadType = Nothing
    , _siPayload = pSiPayload_
    , _siCustomerId = pSiCustomerId_
    , _siCallback = Nothing
    }


-- | V1 error format.
siXgafv :: Lens' SchemasInsert (Maybe Xgafv)
siXgafv = lens _siXgafv (\ s a -> s{_siXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
siUploadProtocol :: Lens' SchemasInsert (Maybe Text)
siUploadProtocol
  = lens _siUploadProtocol
      (\ s a -> s{_siUploadProtocol = a})

-- | OAuth access token.
siAccessToken :: Lens' SchemasInsert (Maybe Text)
siAccessToken
  = lens _siAccessToken
      (\ s a -> s{_siAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
siUploadType :: Lens' SchemasInsert (Maybe Text)
siUploadType
  = lens _siUploadType (\ s a -> s{_siUploadType = a})

-- | Multipart request metadata.
siPayload :: Lens' SchemasInsert Schema
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | Immutable ID of the Google Workspace account.
siCustomerId :: Lens' SchemasInsert Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | JSONP
siCallback :: Lens' SchemasInsert (Maybe Text)
siCallback
  = lens _siCallback (\ s a -> s{_siCallback = a})

instance GoogleRequest SchemasInsert where
        type Rs SchemasInsert = Schema
        type Scopes SchemasInsert =
             '["https://www.googleapis.com/auth/admin.directory.userschema"]
        requestClient SchemasInsert'{..}
          = go _siCustomerId _siXgafv _siUploadProtocol
              _siAccessToken
              _siUploadType
              _siCallback
              (Just AltJSON)
              _siPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasInsertResource)
                      mempty
