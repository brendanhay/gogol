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
-- Module      : Network.Google.Resource.SQL.Instances.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.. This method supports patch
-- semantics.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.patch@.
module Network.Google.Resource.SQL.Instances.Patch
    (
    -- * REST Resource
      InstancesPatchResource

    -- * Creating a Request
    , instancesPatch
    , InstancesPatch

    -- * Request Lenses
    , ipProject
    , ipPayload
    , ipInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.patch@ method which the
-- 'InstancesPatch' request conforms to.
type InstancesPatchResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] DatabaseInstance :>
                 Patch '[JSON] Operation

-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.. This method supports patch
-- semantics.
--
-- /See:/ 'instancesPatch' smart constructor.
data InstancesPatch = InstancesPatch
    { _ipProject  :: !Text
    , _ipPayload  :: !DatabaseInstance
    , _ipInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipProject'
--
-- * 'ipPayload'
--
-- * 'ipInstance'
instancesPatch
    :: Text -- ^ 'ipProject'
    -> DatabaseInstance -- ^ 'ipPayload'
    -> Text -- ^ 'ipInstance'
    -> InstancesPatch
instancesPatch pIpProject_ pIpPayload_ pIpInstance_ =
    InstancesPatch
    { _ipProject = pIpProject_
    , _ipPayload = pIpPayload_
    , _ipInstance = pIpInstance_
    }

-- | Project ID of the project that contains the instance.
ipProject :: Lens' InstancesPatch Text
ipProject
  = lens _ipProject (\ s a -> s{_ipProject = a})

-- | Multipart request metadata.
ipPayload :: Lens' InstancesPatch DatabaseInstance
ipPayload
  = lens _ipPayload (\ s a -> s{_ipPayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ipInstance :: Lens' InstancesPatch Text
ipInstance
  = lens _ipInstance (\ s a -> s{_ipInstance = a})

instance GoogleRequest InstancesPatch where
        type Rs InstancesPatch = Operation
        requestClient InstancesPatch{..}
          = go _ipProject _ipInstance (Just AltJSON) _ipPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy InstancesPatchResource)
                      mempty
