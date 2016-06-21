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
data InstanceTemplatesInsert = InstanceTemplatesInsert'
    { _itiProject :: !Text
    , _itiPayload :: !InstanceTemplate
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _itiProject = pItiProject_
    , _itiPayload = pItiPayload_
    }

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
          = go _itiProject (Just AltJSON) _itiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesInsertResource)
                      mempty
