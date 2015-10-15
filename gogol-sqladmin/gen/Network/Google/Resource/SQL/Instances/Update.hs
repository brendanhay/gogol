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
-- Module      : Network.Google.Resource.SQL.Instances.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesUpdate@.
module Network.Google.Resource.SQL.Instances.Update
    (
    -- * REST Resource
      InstancesUpdateResource

    -- * Creating a Request
    , instancesUpdate'
    , InstancesUpdate'

    -- * Request Lenses
    , iuProject
    , iuPayload
    , iuInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesUpdate@ method which the
-- 'InstancesUpdate'' request conforms to.
type InstancesUpdateResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] DatabaseInstance :>
                 Put '[JSON] Operation

-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.
--
-- /See:/ 'instancesUpdate'' smart constructor.
data InstancesUpdate' = InstancesUpdate'
    { _iuProject  :: !Text
    , _iuPayload  :: !DatabaseInstance
    , _iuInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuProject'
--
-- * 'iuPayload'
--
-- * 'iuInstance'
instancesUpdate'
    :: Text -- ^ 'project'
    -> DatabaseInstance -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesUpdate'
instancesUpdate' pIuProject_ pIuPayload_ pIuInstance_ =
    InstancesUpdate'
    { _iuProject = pIuProject_
    , _iuPayload = pIuPayload_
    , _iuInstance = pIuInstance_
    }

-- | Project ID of the project that contains the instance.
iuProject :: Lens' InstancesUpdate' Text
iuProject
  = lens _iuProject (\ s a -> s{_iuProject = a})

-- | Multipart request metadata.
iuPayload :: Lens' InstancesUpdate' DatabaseInstance
iuPayload
  = lens _iuPayload (\ s a -> s{_iuPayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iuInstance :: Lens' InstancesUpdate' Text
iuInstance
  = lens _iuInstance (\ s a -> s{_iuInstance = a})

instance GoogleRequest InstancesUpdate' where
        type Rs InstancesUpdate' = Operation
        requestClient InstancesUpdate'{..}
          = go _iuProject _iuInstance (Just AltJSON) _iuPayload
              sQLAdmin
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesUpdateResource)
                      mempty
