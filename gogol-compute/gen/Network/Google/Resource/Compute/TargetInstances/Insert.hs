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
-- Module      : Network.Google.Resource.Compute.TargetInstances.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetInstances.insert@.
module Network.Google.Resource.Compute.TargetInstances.Insert
    (
    -- * REST Resource
      TargetInstancesInsertResource

    -- * Creating a Request
    , targetInstancesInsert
    , TargetInstancesInsert

    -- * Request Lenses
    , tiiRequestId
    , tiiProject
    , tiiZone
    , tiiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetInstances.insert@ method which the
-- 'TargetInstancesInsert' request conforms to.
type TargetInstancesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "targetInstances" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetInstance :>
                         Post '[JSON] Operation

-- | Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
--
-- /See:/ 'targetInstancesInsert' smart constructor.
data TargetInstancesInsert =
  TargetInstancesInsert'
    { _tiiRequestId :: !(Maybe Text)
    , _tiiProject   :: !Text
    , _tiiZone      :: !Text
    , _tiiPayload   :: !TargetInstance
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetInstancesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiRequestId'
--
-- * 'tiiProject'
--
-- * 'tiiZone'
--
-- * 'tiiPayload'
targetInstancesInsert
    :: Text -- ^ 'tiiProject'
    -> Text -- ^ 'tiiZone'
    -> TargetInstance -- ^ 'tiiPayload'
    -> TargetInstancesInsert
targetInstancesInsert pTiiProject_ pTiiZone_ pTiiPayload_ =
  TargetInstancesInsert'
    { _tiiRequestId = Nothing
    , _tiiProject = pTiiProject_
    , _tiiZone = pTiiZone_
    , _tiiPayload = pTiiPayload_
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
tiiRequestId :: Lens' TargetInstancesInsert (Maybe Text)
tiiRequestId
  = lens _tiiRequestId (\ s a -> s{_tiiRequestId = a})

-- | Project ID for this request.
tiiProject :: Lens' TargetInstancesInsert Text
tiiProject
  = lens _tiiProject (\ s a -> s{_tiiProject = a})

-- | Name of the zone scoping this request.
tiiZone :: Lens' TargetInstancesInsert Text
tiiZone = lens _tiiZone (\ s a -> s{_tiiZone = a})

-- | Multipart request metadata.
tiiPayload :: Lens' TargetInstancesInsert TargetInstance
tiiPayload
  = lens _tiiPayload (\ s a -> s{_tiiPayload = a})

instance GoogleRequest TargetInstancesInsert where
        type Rs TargetInstancesInsert = Operation
        type Scopes TargetInstancesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetInstancesInsert'{..}
          = go _tiiProject _tiiZone _tiiRequestId
              (Just AltJSON)
              _tiiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetInstancesInsertResource)
                      mempty
