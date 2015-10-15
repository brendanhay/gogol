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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an instance template in the specified project using the data
-- that is included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceTemplatesInsert@.
module Network.Google.Resource.Compute.InstanceTemplates.Insert
    (
    -- * REST Resource
      InstanceTemplatesInsertResource

    -- * Creating a Request
    , instanceTemplatesInsert'
    , InstanceTemplatesInsert'

    -- * Request Lenses
    , itiProject
    , itiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceTemplatesInsert@ method which the
-- 'InstanceTemplatesInsert'' request conforms to.
type InstanceTemplatesInsertResource =
     Capture "project" Text :>
       "global" :>
         "instanceTemplates" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] InstanceTemplate :>
               Post '[JSON] Operation

-- | Creates an instance template in the specified project using the data
-- that is included in the request.
--
-- /See:/ 'instanceTemplatesInsert'' smart constructor.
data InstanceTemplatesInsert' = InstanceTemplatesInsert'
    { _itiProject :: !Text
    , _itiPayload :: !InstanceTemplate
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itiProject'
--
-- * 'itiPayload'
instanceTemplatesInsert'
    :: Text -- ^ 'project'
    -> InstanceTemplate -- ^ 'payload'
    -> InstanceTemplatesInsert'
instanceTemplatesInsert' pItiProject_ pItiPayload_ =
    InstanceTemplatesInsert'
    { _itiProject = pItiProject_
    , _itiPayload = pItiPayload_
    }

-- | The project ID for this request.
itiProject :: Lens' InstanceTemplatesInsert' Text
itiProject
  = lens _itiProject (\ s a -> s{_itiProject = a})

-- | Multipart request metadata.
itiPayload :: Lens' InstanceTemplatesInsert' InstanceTemplate
itiPayload
  = lens _itiPayload (\ s a -> s{_itiPayload = a})

instance GoogleRequest InstanceTemplatesInsert' where
        type Rs InstanceTemplatesInsert' = Operation
        requestClient InstanceTemplatesInsert'{..}
          = go _itiProject (Just AltJSON) _itiPayload compute
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesInsertResource)
                      mempty
