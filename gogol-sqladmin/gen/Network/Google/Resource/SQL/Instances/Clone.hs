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
-- Module      : Network.Google.Resource.SQL.Instances.Clone
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Cloud SQL instance as a clone of the source instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.clone@.
module Network.Google.Resource.SQL.Instances.Clone
    (
    -- * REST Resource
      InstancesCloneResource

    -- * Creating a Request
    , instancesClone
    , InstancesClone

    -- * Request Lenses
    , icProject
    , icPayload
    , icInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.clone@ method which the
-- 'InstancesClone' request conforms to.
type InstancesCloneResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "clone" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] InstancesCloneRequest :>
                   Post '[JSON] Operation

-- | Creates a Cloud SQL instance as a clone of the source instance.
--
-- /See:/ 'instancesClone' smart constructor.
data InstancesClone = InstancesClone
    { _icProject  :: !Text
    , _icPayload  :: !InstancesCloneRequest
    , _icInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesClone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icProject'
--
-- * 'icPayload'
--
-- * 'icInstance'
instancesClone
    :: Text -- ^ 'icProject'
    -> InstancesCloneRequest -- ^ 'icPayload'
    -> Text -- ^ 'icInstance'
    -> InstancesClone
instancesClone pIcProject_ pIcPayload_ pIcInstance_ =
    InstancesClone
    { _icProject = pIcProject_
    , _icPayload = pIcPayload_
    , _icInstance = pIcInstance_
    }

-- | Project ID of the source as well as the clone Cloud SQL instance.
icProject :: Lens' InstancesClone Text
icProject
  = lens _icProject (\ s a -> s{_icProject = a})

-- | Multipart request metadata.
icPayload :: Lens' InstancesClone InstancesCloneRequest
icPayload
  = lens _icPayload (\ s a -> s{_icPayload = a})

-- | The ID of the Cloud SQL instance to be cloned (source). This does not
-- include the project ID.
icInstance :: Lens' InstancesClone Text
icInstance
  = lens _icInstance (\ s a -> s{_icInstance = a})

instance GoogleRequest InstancesClone where
        type Rs InstancesClone = Operation
        requestClient InstancesClone{..}
          = go _icProject _icInstance (Just AltJSON) _icPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy InstancesCloneResource)
                      mempty
