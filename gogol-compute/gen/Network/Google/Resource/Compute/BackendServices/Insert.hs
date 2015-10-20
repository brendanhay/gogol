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
-- Module      : Network.Google.Resource.Compute.BackendServices.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a BackendService resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.insert@.
module Network.Google.Resource.Compute.BackendServices.Insert
    (
    -- * REST Resource
      BackendServicesInsertResource

    -- * Creating a Request
    , backendServicesInsert
    , BackendServicesInsert

    -- * Request Lenses
    , bsiProject
    , bsiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.insert@ method which the
-- 'BackendServicesInsert' request conforms to.
type BackendServicesInsertResource =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] BackendService :>
               Post '[JSON] Operation

-- | Creates a BackendService resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'backendServicesInsert' smart constructor.
data BackendServicesInsert = BackendServicesInsert
    { _bsiProject :: !Text
    , _bsiPayload :: !BackendService
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsiProject'
--
-- * 'bsiPayload'
backendServicesInsert
    :: Text -- ^ 'bsiProject'
    -> BackendService -- ^ 'bsiPayload'
    -> BackendServicesInsert
backendServicesInsert pBsiProject_ pBsiPayload_ =
    BackendServicesInsert
    { _bsiProject = pBsiProject_
    , _bsiPayload = pBsiPayload_
    }

-- | Name of the project scoping this request.
bsiProject :: Lens' BackendServicesInsert Text
bsiProject
  = lens _bsiProject (\ s a -> s{_bsiProject = a})

-- | Multipart request metadata.
bsiPayload :: Lens' BackendServicesInsert BackendService
bsiPayload
  = lens _bsiPayload (\ s a -> s{_bsiPayload = a})

instance GoogleRequest BackendServicesInsert where
        type Rs BackendServicesInsert = Operation
        requestClient BackendServicesInsert{..}
          = go _bsiProject (Just AltJSON) _bsiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesInsertResource)
                      mempty
