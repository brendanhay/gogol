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
-- Module      : Network.Google.Resource.SQL.SSLCerts.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the SSL certificate. The change will not take effect until the
-- instance is restarted.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.sslCerts.delete@.
module Network.Google.Resource.SQL.SSLCerts.Delete
    (
    -- * REST Resource
      SSLCertsDeleteResource

    -- * Creating a Request
    , sslCertsDelete
    , SSLCertsDelete

    -- * Request Lenses
    , scdProject
    , scdSha1Fingerprint
    , scdInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.delete@ method which the
-- 'SSLCertsDelete' request conforms to.
type SSLCertsDeleteResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "sslCerts" :>
                   Capture "sha1Fingerprint" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the SSL certificate. The change will not take effect until the
-- instance is restarted.
--
-- /See:/ 'sslCertsDelete' smart constructor.
data SSLCertsDelete = SSLCertsDelete'
    { _scdProject         :: !Text
    , _scdSha1Fingerprint :: !Text
    , _scdInstance        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdProject'
--
-- * 'scdSha1Fingerprint'
--
-- * 'scdInstance'
sslCertsDelete
    :: Text -- ^ 'scdProject'
    -> Text -- ^ 'scdSha1Fingerprint'
    -> Text -- ^ 'scdInstance'
    -> SSLCertsDelete
sslCertsDelete pScdProject_ pScdSha1Fingerprint_ pScdInstance_ =
    SSLCertsDelete'
    { _scdProject = pScdProject_
    , _scdSha1Fingerprint = pScdSha1Fingerprint_
    , _scdInstance = pScdInstance_
    }

-- | Project ID of the project that contains the instance to be deleted.
scdProject :: Lens' SSLCertsDelete Text
scdProject
  = lens _scdProject (\ s a -> s{_scdProject = a})

-- | Sha1 FingerPrint.
scdSha1Fingerprint :: Lens' SSLCertsDelete Text
scdSha1Fingerprint
  = lens _scdSha1Fingerprint
      (\ s a -> s{_scdSha1Fingerprint = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scdInstance :: Lens' SSLCertsDelete Text
scdInstance
  = lens _scdInstance (\ s a -> s{_scdInstance = a})

instance GoogleRequest SSLCertsDelete where
        type Rs SSLCertsDelete = Operation
        type Scopes SSLCertsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SSLCertsDelete'{..}
          = go _scdProject _scdInstance _scdSha1Fingerprint
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy SSLCertsDeleteResource)
                      mempty
