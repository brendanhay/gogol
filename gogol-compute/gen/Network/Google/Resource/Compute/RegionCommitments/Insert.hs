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
-- Module      : Network.Google.Resource.Compute.RegionCommitments.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a commitment in the specified project using the data included in
-- the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionCommitments.insert@.
module Network.Google.Resource.Compute.RegionCommitments.Insert
    (
    -- * REST Resource
      RegionCommitmentsInsertResource

    -- * Creating a Request
    , regionCommitmentsInsert
    , RegionCommitmentsInsert

    -- * Request Lenses
    , rciRequestId
    , rciProject
    , rciPayload
    , rciRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionCommitments.insert@ method which the
-- 'RegionCommitmentsInsert' request conforms to.
type RegionCommitmentsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "commitments" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Commitment :> Post '[JSON] Operation

-- | Creates a commitment in the specified project using the data included in
-- the request.
--
-- /See:/ 'regionCommitmentsInsert' smart constructor.
data RegionCommitmentsInsert =
  RegionCommitmentsInsert'
    { _rciRequestId :: !(Maybe Text)
    , _rciProject   :: !Text
    , _rciPayload   :: !Commitment
    , _rciRegion    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionCommitmentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rciRequestId'
--
-- * 'rciProject'
--
-- * 'rciPayload'
--
-- * 'rciRegion'
regionCommitmentsInsert
    :: Text -- ^ 'rciProject'
    -> Commitment -- ^ 'rciPayload'
    -> Text -- ^ 'rciRegion'
    -> RegionCommitmentsInsert
regionCommitmentsInsert pRciProject_ pRciPayload_ pRciRegion_ =
  RegionCommitmentsInsert'
    { _rciRequestId = Nothing
    , _rciProject = pRciProject_
    , _rciPayload = pRciPayload_
    , _rciRegion = pRciRegion_
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
rciRequestId :: Lens' RegionCommitmentsInsert (Maybe Text)
rciRequestId
  = lens _rciRequestId (\ s a -> s{_rciRequestId = a})

-- | Project ID for this request.
rciProject :: Lens' RegionCommitmentsInsert Text
rciProject
  = lens _rciProject (\ s a -> s{_rciProject = a})

-- | Multipart request metadata.
rciPayload :: Lens' RegionCommitmentsInsert Commitment
rciPayload
  = lens _rciPayload (\ s a -> s{_rciPayload = a})

-- | Name of the region for this request.
rciRegion :: Lens' RegionCommitmentsInsert Text
rciRegion
  = lens _rciRegion (\ s a -> s{_rciRegion = a})

instance GoogleRequest RegionCommitmentsInsert where
        type Rs RegionCommitmentsInsert = Operation
        type Scopes RegionCommitmentsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionCommitmentsInsert'{..}
          = go _rciProject _rciRegion _rciRequestId
              (Just AltJSON)
              _rciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionCommitmentsInsertResource)
                      mempty
