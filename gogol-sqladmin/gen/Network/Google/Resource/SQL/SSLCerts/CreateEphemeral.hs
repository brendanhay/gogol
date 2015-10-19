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
-- Module      : Network.Google.Resource.SQL.SSLCerts.CreateEphemeral
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.sslCerts.createEphemeral@.
module Network.Google.Resource.SQL.SSLCerts.CreateEphemeral
    (
    -- * REST Resource
      SSLCertsCreateEphemeralResource

    -- * Creating a Request
    , sslCertsCreateEphemeral'
    , SSLCertsCreateEphemeral'

    -- * Request Lenses
    , scceProject
    , sccePayload
    , scceInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.createEphemeral@ method which the
-- 'SSLCertsCreateEphemeral'' request conforms to.
type SSLCertsCreateEphemeralResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "createEphemeral" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] SSLCertsCreateEphemeralRequest :>
                   Post '[JSON] SSLCert

-- | Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
--
-- /See:/ 'sslCertsCreateEphemeral'' smart constructor.
data SSLCertsCreateEphemeral' = SSLCertsCreateEphemeral'
    { _scceProject  :: !Text
    , _sccePayload  :: !SSLCertsCreateEphemeralRequest
    , _scceInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsCreateEphemeral'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scceProject'
--
-- * 'sccePayload'
--
-- * 'scceInstance'
sslCertsCreateEphemeral'
    :: Text -- ^ 'scceProject'
    -> SSLCertsCreateEphemeralRequest -- ^ 'sccePayload'
    -> Text -- ^ 'scceInstance'
    -> SSLCertsCreateEphemeral'
sslCertsCreateEphemeral' pScceProject_ pSccePayload_ pScceInstance_ =
    SSLCertsCreateEphemeral'
    { _scceProject = pScceProject_
    , _sccePayload = pSccePayload_
    , _scceInstance = pScceInstance_
    }

-- | Project ID of the Cloud SQL project.
scceProject :: Lens' SSLCertsCreateEphemeral' Text
scceProject
  = lens _scceProject (\ s a -> s{_scceProject = a})

-- | Multipart request metadata.
sccePayload :: Lens' SSLCertsCreateEphemeral' SSLCertsCreateEphemeralRequest
sccePayload
  = lens _sccePayload (\ s a -> s{_sccePayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scceInstance :: Lens' SSLCertsCreateEphemeral' Text
scceInstance
  = lens _scceInstance (\ s a -> s{_scceInstance = a})

instance GoogleRequest SSLCertsCreateEphemeral' where
        type Rs SSLCertsCreateEphemeral' = SSLCert
        requestClient SSLCertsCreateEphemeral'{..}
          = go _scceProject _scceInstance (Just AltJSON)
              _sccePayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertsCreateEphemeralResource)
                      mempty
