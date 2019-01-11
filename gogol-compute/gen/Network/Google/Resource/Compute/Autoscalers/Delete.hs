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
-- Module      : Network.Google.Resource.Compute.Autoscalers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified autoscaler.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.delete@.
module Network.Google.Resource.Compute.Autoscalers.Delete
    (
    -- * REST Resource
      AutoscalersDeleteResource

    -- * Creating a Request
    , autoscalersDelete
    , AutoscalersDelete

    -- * Request Lenses
    , adRequestId
    , adProject
    , adZone
    , adAutoscaler
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.delete@ method which the
-- 'AutoscalersDelete' request conforms to.
type AutoscalersDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified autoscaler.
--
-- /See:/ 'autoscalersDelete' smart constructor.
data AutoscalersDelete = AutoscalersDelete'
    { _adRequestId  :: !(Maybe Text)
    , _adProject    :: !Text
    , _adZone       :: !Text
    , _adAutoscaler :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adRequestId'
--
-- * 'adProject'
--
-- * 'adZone'
--
-- * 'adAutoscaler'
autoscalersDelete
    :: Text -- ^ 'adProject'
    -> Text -- ^ 'adZone'
    -> Text -- ^ 'adAutoscaler'
    -> AutoscalersDelete
autoscalersDelete pAdProject_ pAdZone_ pAdAutoscaler_ =
    AutoscalersDelete'
    { _adRequestId = Nothing
    , _adProject = pAdProject_
    , _adZone = pAdZone_
    , _adAutoscaler = pAdAutoscaler_
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
adRequestId :: Lens' AutoscalersDelete (Maybe Text)
adRequestId
  = lens _adRequestId (\ s a -> s{_adRequestId = a})

-- | Project ID for this request.
adProject :: Lens' AutoscalersDelete Text
adProject
  = lens _adProject (\ s a -> s{_adProject = a})

-- | Name of the zone for this request.
adZone :: Lens' AutoscalersDelete Text
adZone = lens _adZone (\ s a -> s{_adZone = a})

-- | Name of the autoscaler to delete.
adAutoscaler :: Lens' AutoscalersDelete Text
adAutoscaler
  = lens _adAutoscaler (\ s a -> s{_adAutoscaler = a})

instance GoogleRequest AutoscalersDelete where
        type Rs AutoscalersDelete = Operation
        type Scopes AutoscalersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient AutoscalersDelete'{..}
          = go _adProject _adZone _adAutoscaler _adRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersDeleteResource)
                      mempty
