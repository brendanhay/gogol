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
-- Module      : Network.Google.Resource.Compute.SSLCertificates.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SslCertificate resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslCertificates.delete@.
module Network.Google.Resource.Compute.SSLCertificates.Delete
    (
    -- * REST Resource
      SSLCertificatesDeleteResource

    -- * Creating a Request
    , sslCertificatesDelete
    , SSLCertificatesDelete

    -- * Request Lenses
    , scdProject
    , scdSSLCertificate
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.sslCertificates.delete@ method which the
-- 'SSLCertificatesDelete' request conforms to.
type SSLCertificatesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslCertificates" :>
                 Capture "sslCertificate" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified SslCertificate resource.
--
-- /See:/ 'sslCertificatesDelete' smart constructor.
data SSLCertificatesDelete = SSLCertificatesDelete
    { _scdProject        :: !Text
    , _scdSSLCertificate :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertificatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdProject'
--
-- * 'scdSSLCertificate'
sslCertificatesDelete
    :: Text -- ^ 'scdProject'
    -> Text -- ^ 'scdSSLCertificate'
    -> SSLCertificatesDelete
sslCertificatesDelete pScdProject_ pScdSSLCertificate_ =
    SSLCertificatesDelete
    { _scdProject = pScdProject_
    , _scdSSLCertificate = pScdSSLCertificate_
    }

-- | Project ID for this request.
scdProject :: Lens' SSLCertificatesDelete Text
scdProject
  = lens _scdProject (\ s a -> s{_scdProject = a})

-- | Name of the SslCertificate resource to delete.
scdSSLCertificate :: Lens' SSLCertificatesDelete Text
scdSSLCertificate
  = lens _scdSSLCertificate
      (\ s a -> s{_scdSSLCertificate = a})

instance GoogleRequest SSLCertificatesDelete where
        type Rs SSLCertificatesDelete = Operation
        requestClient SSLCertificatesDelete{..}
          = go _scdProject _scdSSLCertificate (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertificatesDeleteResource)
                      mempty
