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
-- Module      : Network.Google.Resource.Compute.Interconnects.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified interconnect.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnects.delete@.
module Network.Google.Resource.Compute.Interconnects.Delete
    (
    -- * REST Resource
      InterconnectsDeleteResource

    -- * Creating a Request
    , interconnectsDelete
    , InterconnectsDelete

    -- * Request Lenses
    , intRequestId
    , intProject
    , intInterconnect
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.interconnects.delete@ method which the
-- 'InterconnectsDelete' request conforms to.
type InterconnectsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "interconnects" :>
                 Capture "interconnect" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified interconnect.
--
-- /See:/ 'interconnectsDelete' smart constructor.
data InterconnectsDelete =
  InterconnectsDelete'
    { _intRequestId    :: !(Maybe Text)
    , _intProject      :: !Text
    , _intInterconnect :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'intRequestId'
--
-- * 'intProject'
--
-- * 'intInterconnect'
interconnectsDelete
    :: Text -- ^ 'intProject'
    -> Text -- ^ 'intInterconnect'
    -> InterconnectsDelete
interconnectsDelete pIntProject_ pIntInterconnect_ =
  InterconnectsDelete'
    { _intRequestId = Nothing
    , _intProject = pIntProject_
    , _intInterconnect = pIntInterconnect_
    }


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
intRequestId :: Lens' InterconnectsDelete (Maybe Text)
intRequestId
  = lens _intRequestId (\ s a -> s{_intRequestId = a})

-- | Project ID for this request.
intProject :: Lens' InterconnectsDelete Text
intProject
  = lens _intProject (\ s a -> s{_intProject = a})

-- | Name of the interconnect to delete.
intInterconnect :: Lens' InterconnectsDelete Text
intInterconnect
  = lens _intInterconnect
      (\ s a -> s{_intInterconnect = a})

instance GoogleRequest InterconnectsDelete where
        type Rs InterconnectsDelete = Operation
        type Scopes InterconnectsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InterconnectsDelete'{..}
          = go _intProject _intInterconnect _intRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectsDeleteResource)
                      mempty
