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
-- Module      : Network.Google.Resource.SQL.SSLCerts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.sslCerts.insert@.
module Network.Google.Resource.SQL.SSLCerts.Insert
    (
    -- * REST Resource
      SSLCertsInsertResource

    -- * Creating a Request
    , sslCertsInsert
    , SSLCertsInsert

    -- * Request Lenses
    , sciProject
    , sciPayload
    , sciInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.insert@ method which the
-- 'SSLCertsInsert' request conforms to.
type SSLCertsInsertResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "sslCerts" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SSLCertsInsertRequest :>
                       Post '[JSON] SSLCertsInsertResponse

-- | Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
--
-- /See:/ 'sslCertsInsert' smart constructor.
data SSLCertsInsert = SSLCertsInsert
    { _sciProject  :: !Text
    , _sciPayload  :: !SSLCertsInsertRequest
    , _sciInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sciProject'
--
-- * 'sciPayload'
--
-- * 'sciInstance'
sslCertsInsert
    :: Text -- ^ 'sciProject'
    -> SSLCertsInsertRequest -- ^ 'sciPayload'
    -> Text -- ^ 'sciInstance'
    -> SSLCertsInsert
sslCertsInsert pSciProject_ pSciPayload_ pSciInstance_ =
    SSLCertsInsert
    { _sciProject = pSciProject_
    , _sciPayload = pSciPayload_
    , _sciInstance = pSciInstance_
    }

-- | Project ID of the project to which the newly created Cloud SQL instances
-- should belong.
sciProject :: Lens' SSLCertsInsert Text
sciProject
  = lens _sciProject (\ s a -> s{_sciProject = a})

-- | Multipart request metadata.
sciPayload :: Lens' SSLCertsInsert SSLCertsInsertRequest
sciPayload
  = lens _sciPayload (\ s a -> s{_sciPayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
sciInstance :: Lens' SSLCertsInsert Text
sciInstance
  = lens _sciInstance (\ s a -> s{_sciInstance = a})

instance GoogleRequest SSLCertsInsert where
        type Rs SSLCertsInsert = SSLCertsInsertResponse
        requestClient SSLCertsInsert{..}
          = go _sciProject _sciInstance (Just AltJSON)
              _sciPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy SSLCertsInsertResource)
                      mempty
