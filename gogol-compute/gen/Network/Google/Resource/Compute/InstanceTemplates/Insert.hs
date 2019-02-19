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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance template in the specified project using the data
-- that is included in the request. If you are creating a new template to
-- update an existing instance group, your new instance template must use
-- the same network or, if applicable, the same subnetwork as the original
-- template.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.insert@.
module Network.Google.Resource.Compute.InstanceTemplates.Insert
    (
    -- * REST Resource
      InstanceTemplatesInsertResource

    -- * Creating a Request
    , instanceTemplatesInsert
    , InstanceTemplatesInsert

    -- * Request Lenses
    , itiRequestId
    , itiProject
    , itiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.insert@ method which the
-- 'InstanceTemplatesInsert' request conforms to.
type InstanceTemplatesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InstanceTemplate :>
                       Post '[JSON] Operation

-- | Creates an instance template in the specified project using the data
-- that is included in the request. If you are creating a new template to
-- update an existing instance group, your new instance template must use
-- the same network or, if applicable, the same subnetwork as the original
-- template.
--
-- /See:/ 'instanceTemplatesInsert' smart constructor.
data InstanceTemplatesInsert =
  InstanceTemplatesInsert'
    { _itiRequestId :: !(Maybe Text)
    , _itiProject   :: !Text
    , _itiPayload   :: !InstanceTemplate
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceTemplatesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itiRequestId'
--
-- * 'itiProject'
--
-- * 'itiPayload'
instanceTemplatesInsert
    :: Text -- ^ 'itiProject'
    -> InstanceTemplate -- ^ 'itiPayload'
    -> InstanceTemplatesInsert
instanceTemplatesInsert pItiProject_ pItiPayload_ =
  InstanceTemplatesInsert'
    { _itiRequestId = Nothing
    , _itiProject = pItiProject_
    , _itiPayload = pItiPayload_
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
itiRequestId :: Lens' InstanceTemplatesInsert (Maybe Text)
itiRequestId
  = lens _itiRequestId (\ s a -> s{_itiRequestId = a})

-- | Project ID for this request.
itiProject :: Lens' InstanceTemplatesInsert Text
itiProject
  = lens _itiProject (\ s a -> s{_itiProject = a})

-- | Multipart request metadata.
itiPayload :: Lens' InstanceTemplatesInsert InstanceTemplate
itiPayload
  = lens _itiPayload (\ s a -> s{_itiPayload = a})

instance GoogleRequest InstanceTemplatesInsert where
        type Rs InstanceTemplatesInsert = Operation
        type Scopes InstanceTemplatesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceTemplatesInsert'{..}
          = go _itiProject _itiRequestId (Just AltJSON)
              _itiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesInsertResource)
                      mempty
