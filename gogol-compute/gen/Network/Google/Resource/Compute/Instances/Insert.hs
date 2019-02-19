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
-- Module      : Network.Google.Resource.Compute.Instances.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.insert@.
module Network.Google.Resource.Compute.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertResource

    -- * Creating a Request
    , instancesInsert
    , InstancesInsert

    -- * Request Lenses
    , iiiRequestId
    , iiiProject
    , iiiZone
    , iiiPayload
    , iiiSourceInstanceTemplate
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.insert@ method which the
-- 'InstancesInsert' request conforms to.
type InstancesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   QueryParam "requestId" Text :>
                     QueryParam "sourceInstanceTemplate" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Instance :> Post '[JSON] Operation

-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'instancesInsert' smart constructor.
data InstancesInsert =
  InstancesInsert'
    { _iiiRequestId              :: !(Maybe Text)
    , _iiiProject                :: !Text
    , _iiiZone                   :: !Text
    , _iiiPayload                :: !Instance
    , _iiiSourceInstanceTemplate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiiRequestId'
--
-- * 'iiiProject'
--
-- * 'iiiZone'
--
-- * 'iiiPayload'
--
-- * 'iiiSourceInstanceTemplate'
instancesInsert
    :: Text -- ^ 'iiiProject'
    -> Text -- ^ 'iiiZone'
    -> Instance -- ^ 'iiiPayload'
    -> InstancesInsert
instancesInsert pIiiProject_ pIiiZone_ pIiiPayload_ =
  InstancesInsert'
    { _iiiRequestId = Nothing
    , _iiiProject = pIiiProject_
    , _iiiZone = pIiiZone_
    , _iiiPayload = pIiiPayload_
    , _iiiSourceInstanceTemplate = Nothing
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
iiiRequestId :: Lens' InstancesInsert (Maybe Text)
iiiRequestId
  = lens _iiiRequestId (\ s a -> s{_iiiRequestId = a})

-- | Project ID for this request.
iiiProject :: Lens' InstancesInsert Text
iiiProject
  = lens _iiiProject (\ s a -> s{_iiiProject = a})

-- | The name of the zone for this request.
iiiZone :: Lens' InstancesInsert Text
iiiZone = lens _iiiZone (\ s a -> s{_iiiZone = a})

-- | Multipart request metadata.
iiiPayload :: Lens' InstancesInsert Instance
iiiPayload
  = lens _iiiPayload (\ s a -> s{_iiiPayload = a})

-- | Specifies instance template to create the instance. This field is
-- optional. It can be a full or partial URL. For example, the following
-- are all valid URLs to an instance template: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/global\/instanceTemplates\/instanceTemplate
-- - projects\/project\/global\/instanceTemplates\/instanceTemplate -
-- global\/instanceTemplates\/instanceTemplate
iiiSourceInstanceTemplate :: Lens' InstancesInsert (Maybe Text)
iiiSourceInstanceTemplate
  = lens _iiiSourceInstanceTemplate
      (\ s a -> s{_iiiSourceInstanceTemplate = a})

instance GoogleRequest InstancesInsert where
        type Rs InstancesInsert = Operation
        type Scopes InstancesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesInsert'{..}
          = go _iiiProject _iiiZone _iiiRequestId
              _iiiSourceInstanceTemplate
              (Just AltJSON)
              _iiiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesInsertResource)
                      mempty
