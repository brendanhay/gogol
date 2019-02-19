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
-- Module      : Network.Google.Resource.SQL.SSLCerts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a particular SSL certificate. Does not include the private key
-- (required for usage). The private key must be saved from the response to
-- initial creation.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.sslCerts.get@.
module Network.Google.Resource.SQL.SSLCerts.Get
    (
    -- * REST Resource
      SSLCertsGetResource

    -- * Creating a Request
    , sslCertsGet
    , SSLCertsGet

    -- * Request Lenses
    , scgProject
    , scgSha1Fingerprint
    , scgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.get@ method which the
-- 'SSLCertsGet' request conforms to.
type SSLCertsGetResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "sslCerts" :>
                   Capture "sha1Fingerprint" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] SSLCert

-- | Retrieves a particular SSL certificate. Does not include the private key
-- (required for usage). The private key must be saved from the response to
-- initial creation.
--
-- /See:/ 'sslCertsGet' smart constructor.
data SSLCertsGet =
  SSLCertsGet'
    { _scgProject         :: !Text
    , _scgSha1Fingerprint :: !Text
    , _scgInstance        :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scgProject'
--
-- * 'scgSha1Fingerprint'
--
-- * 'scgInstance'
sslCertsGet
    :: Text -- ^ 'scgProject'
    -> Text -- ^ 'scgSha1Fingerprint'
    -> Text -- ^ 'scgInstance'
    -> SSLCertsGet
sslCertsGet pScgProject_ pScgSha1Fingerprint_ pScgInstance_ =
  SSLCertsGet'
    { _scgProject = pScgProject_
    , _scgSha1Fingerprint = pScgSha1Fingerprint_
    , _scgInstance = pScgInstance_
    }


-- | Project ID of the project that contains the instance.
scgProject :: Lens' SSLCertsGet Text
scgProject
  = lens _scgProject (\ s a -> s{_scgProject = a})

-- | Sha1 FingerPrint.
scgSha1Fingerprint :: Lens' SSLCertsGet Text
scgSha1Fingerprint
  = lens _scgSha1Fingerprint
      (\ s a -> s{_scgSha1Fingerprint = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scgInstance :: Lens' SSLCertsGet Text
scgInstance
  = lens _scgInstance (\ s a -> s{_scgInstance = a})

instance GoogleRequest SSLCertsGet where
        type Rs SSLCertsGet = SSLCert
        type Scopes SSLCertsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SSLCertsGet'{..}
          = go _scgProject _scgInstance _scgSha1Fingerprint
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy SSLCertsGetResource)
                      mempty
