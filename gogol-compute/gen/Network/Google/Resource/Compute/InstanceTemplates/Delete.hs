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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified instance template. Deleting an instance template
-- is permanent and cannot be undone. It is not possible to delete
-- templates that are already in use by a managed instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.delete@.
module Network.Google.Resource.Compute.InstanceTemplates.Delete
    (
    -- * REST Resource
      InstanceTemplatesDeleteResource

    -- * Creating a Request
    , instanceTemplatesDelete
    , InstanceTemplatesDelete

    -- * Request Lenses
    , itdRequestId
    , itdProject
    , itdInstanceTemplate
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.delete@ method which the
-- 'InstanceTemplatesDelete' request conforms to.
type InstanceTemplatesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 Capture "instanceTemplate" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified instance template. Deleting an instance template
-- is permanent and cannot be undone. It is not possible to delete
-- templates that are already in use by a managed instance group.
--
-- /See:/ 'instanceTemplatesDelete' smart constructor.
data InstanceTemplatesDelete =
  InstanceTemplatesDelete'
    { _itdRequestId :: !(Maybe Text)
    , _itdProject :: !Text
    , _itdInstanceTemplate :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itdRequestId'
--
-- * 'itdProject'
--
-- * 'itdInstanceTemplate'
instanceTemplatesDelete
    :: Text -- ^ 'itdProject'
    -> Text -- ^ 'itdInstanceTemplate'
    -> InstanceTemplatesDelete
instanceTemplatesDelete pItdProject_ pItdInstanceTemplate_ =
  InstanceTemplatesDelete'
    { _itdRequestId = Nothing
    , _itdProject = pItdProject_
    , _itdInstanceTemplate = pItdInstanceTemplate_
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
itdRequestId :: Lens' InstanceTemplatesDelete (Maybe Text)
itdRequestId
  = lens _itdRequestId (\ s a -> s{_itdRequestId = a})

-- | Project ID for this request.
itdProject :: Lens' InstanceTemplatesDelete Text
itdProject
  = lens _itdProject (\ s a -> s{_itdProject = a})

-- | The name of the instance template to delete.
itdInstanceTemplate :: Lens' InstanceTemplatesDelete Text
itdInstanceTemplate
  = lens _itdInstanceTemplate
      (\ s a -> s{_itdInstanceTemplate = a})

instance GoogleRequest InstanceTemplatesDelete where
        type Rs InstanceTemplatesDelete = Operation
        type Scopes InstanceTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceTemplatesDelete'{..}
          = go _itdProject _itdInstanceTemplate _itdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesDeleteResource)
                      mempty
