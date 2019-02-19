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
-- Module      : Network.Google.Resource.Compute.Licenses.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified license.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenses.delete@.
module Network.Google.Resource.Compute.Licenses.Delete
    (
    -- * REST Resource
      LicensesDeleteResource

    -- * Creating a Request
    , licensesDelete
    , LicensesDelete

    -- * Request Lenses
    , ldRequestId
    , ldProject
    , ldLicense
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.licenses.delete@ method which the
-- 'LicensesDelete' request conforms to.
type LicensesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenses" :>
                 Capture "license" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified license.
--
-- /See:/ 'licensesDelete' smart constructor.
data LicensesDelete =
  LicensesDelete'
    { _ldRequestId :: !(Maybe Text)
    , _ldProject   :: !Text
    , _ldLicense   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LicensesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldRequestId'
--
-- * 'ldProject'
--
-- * 'ldLicense'
licensesDelete
    :: Text -- ^ 'ldProject'
    -> Text -- ^ 'ldLicense'
    -> LicensesDelete
licensesDelete pLdProject_ pLdLicense_ =
  LicensesDelete'
    {_ldRequestId = Nothing, _ldProject = pLdProject_, _ldLicense = pLdLicense_}

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
ldRequestId :: Lens' LicensesDelete (Maybe Text)
ldRequestId
  = lens _ldRequestId (\ s a -> s{_ldRequestId = a})

-- | Project ID for this request.
ldProject :: Lens' LicensesDelete Text
ldProject
  = lens _ldProject (\ s a -> s{_ldProject = a})

-- | Name of the license resource to delete.
ldLicense :: Lens' LicensesDelete Text
ldLicense
  = lens _ldLicense (\ s a -> s{_ldLicense = a})

instance GoogleRequest LicensesDelete where
        type Rs LicensesDelete = Operation
        type Scopes LicensesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient LicensesDelete'{..}
          = go _ldProject _ldLicense _ldRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy LicensesDeleteResource)
                      mempty
