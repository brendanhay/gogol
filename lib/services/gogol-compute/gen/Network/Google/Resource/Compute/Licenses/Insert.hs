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
-- Module      : Network.Google.Resource.Compute.Licenses.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a License resource in the specified project. Caution This
-- resource is intended for use only by third-party partners who are
-- creating Cloud Marketplace images.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenses.insert@.
module Network.Google.Resource.Compute.Licenses.Insert
    (
    -- * REST Resource
      LicensesInsertResource

    -- * Creating a Request
    , licensesInsert
    , LicensesInsert

    -- * Request Lenses
    , liRequestId
    , liProject
    , liPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.licenses.insert@ method which the
-- 'LicensesInsert' request conforms to.
type LicensesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenses" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] License :> Post '[JSON] Operation

-- | Create a License resource in the specified project. Caution This
-- resource is intended for use only by third-party partners who are
-- creating Cloud Marketplace images.
--
-- /See:/ 'licensesInsert' smart constructor.
data LicensesInsert =
  LicensesInsert'
    { _liRequestId :: !(Maybe Text)
    , _liProject :: !Text
    , _liPayload :: !License
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicensesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liRequestId'
--
-- * 'liProject'
--
-- * 'liPayload'
licensesInsert
    :: Text -- ^ 'liProject'
    -> License -- ^ 'liPayload'
    -> LicensesInsert
licensesInsert pLiProject_ pLiPayload_ =
  LicensesInsert'
    {_liRequestId = Nothing, _liProject = pLiProject_, _liPayload = pLiPayload_}


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
liRequestId :: Lens' LicensesInsert (Maybe Text)
liRequestId
  = lens _liRequestId (\ s a -> s{_liRequestId = a})

-- | Project ID for this request.
liProject :: Lens' LicensesInsert Text
liProject
  = lens _liProject (\ s a -> s{_liProject = a})

-- | Multipart request metadata.
liPayload :: Lens' LicensesInsert License
liPayload
  = lens _liPayload (\ s a -> s{_liPayload = a})

instance GoogleRequest LicensesInsert where
        type Rs LicensesInsert = Operation
        type Scopes LicensesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient LicensesInsert'{..}
          = go _liProject _liRequestId (Just AltJSON)
              _liPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy LicensesInsertResource)
                      mempty
