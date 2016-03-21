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
-- Module      : Network.Google.Resource.SQL.SSLCerts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the current SSL certificates for the instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.sslCerts.list@.
module Network.Google.Resource.SQL.SSLCerts.List
    (
    -- * REST Resource
      SSLCertsListResource

    -- * Creating a Request
    , sslCertsList
    , SSLCertsList

    -- * Request Lenses
    , sclProject
    , sclInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.list@ method which the
-- 'SSLCertsList' request conforms to.
type SSLCertsListResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "sslCerts" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] SSLCertsListResponse

-- | Lists all of the current SSL certificates for the instance.
--
-- /See:/ 'sslCertsList' smart constructor.
data SSLCertsList = SSLCertsList'
    { _sclProject  :: !Text
    , _sclInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclProject'
--
-- * 'sclInstance'
sslCertsList
    :: Text -- ^ 'sclProject'
    -> Text -- ^ 'sclInstance'
    -> SSLCertsList
sslCertsList pSclProject_ pSclInstance_ =
    SSLCertsList'
    { _sclProject = pSclProject_
    , _sclInstance = pSclInstance_
    }

-- | Project ID of the project for which to list Cloud SQL instances.
sclProject :: Lens' SSLCertsList Text
sclProject
  = lens _sclProject (\ s a -> s{_sclProject = a})

-- | Cloud SQL instance ID. This does not include the project ID.
sclInstance :: Lens' SSLCertsList Text
sclInstance
  = lens _sclInstance (\ s a -> s{_sclInstance = a})

instance GoogleRequest SSLCertsList where
        type Rs SSLCertsList = SSLCertsListResponse
        type Scopes SSLCertsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SSLCertsList'{..}
          = go _sclProject _sclInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy SSLCertsListResource)
                      mempty
