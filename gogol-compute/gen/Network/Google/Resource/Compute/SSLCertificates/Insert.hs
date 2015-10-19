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
-- Module      : Network.Google.Resource.Compute.SSLCertificates.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a SslCertificate resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslCertificates.insert@.
module Network.Google.Resource.Compute.SSLCertificates.Insert
    (
    -- * REST Resource
      SSLCertificatesInsertResource

    -- * Creating a Request
    , sslCertificatesInsert'
    , SSLCertificatesInsert'

    -- * Request Lenses
    , sciProject
    , sciPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.sslCertificates.insert@ method which the
-- 'SSLCertificatesInsert'' request conforms to.
type SSLCertificatesInsertResource =
     Capture "project" Text :>
       "global" :>
         "sslCertificates" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] SSLCertificate :>
               Post '[JSON] Operation

-- | Creates a SslCertificate resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'sslCertificatesInsert'' smart constructor.
data SSLCertificatesInsert' = SSLCertificatesInsert'
    { _sciProject :: !Text
    , _sciPayload :: !SSLCertificate
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertificatesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sciProject'
--
-- * 'sciPayload'
sslCertificatesInsert'
    :: Text -- ^ 'sciProject'
    -> SSLCertificate -- ^ 'sciPayload'
    -> SSLCertificatesInsert'
sslCertificatesInsert' pSciProject_ pSciPayload_ =
    SSLCertificatesInsert'
    { _sciProject = pSciProject_
    , _sciPayload = pSciPayload_
    }

-- | Name of the project scoping this request.
sciProject :: Lens' SSLCertificatesInsert' Text
sciProject
  = lens _sciProject (\ s a -> s{_sciProject = a})

-- | Multipart request metadata.
sciPayload :: Lens' SSLCertificatesInsert' SSLCertificate
sciPayload
  = lens _sciPayload (\ s a -> s{_sciPayload = a})

instance GoogleRequest SSLCertificatesInsert' where
        type Rs SSLCertificatesInsert' = Operation
        requestClient SSLCertificatesInsert'{..}
          = go _sciProject (Just AltJSON) _sciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertificatesInsertResource)
                      mempty
